% Description

\ProvidesClass{resume}[2023/03/14 custom resume class]

\LoadClass[11pt,letterpaper]{article} % Font size and paper type

\usepackage{parskip} % Remove paragraph indentation
\usepackage{xhfill} % Adds horizontal line
\usepackage{mathabx} % add some symbols
\usepackage{bold-extra} % Allows bold and small caps fonts together
\usepackage[left=0.4in,top=0.4in,right=0.4in,bottom=0.4in]{geometry} % Document margins
\pagestyle{empty} % Suppress page numbers

%----------------------------------------------------------------------------------------
%	TITLE COMMANDS: Commands for printing name and address
%----------------------------------------------------------------------------------------
\newcommand{\name}[1]{\newcommand{\@name}{#1}} % Defines the \name command to set name
\newcommand{\address}[1]{\newcommand{\@address}{#1}} % Defines the \address command to set address
\newcommand{\phone}[1]{\newcommand{\@phone}{#1}} % Defines the \phone command to set phone
\newcommand{\email}[1]{\newcommand{\@email}{#1}} % Defines the \email command to set email
% Redefine maketitle command
\renewcommand{\maketitle}{
    \begin{center}
        \textsc{\textbf{\huge \@name}} % inserts name in bold and small caps

        \noindent\xrfill[0ex]{3pt} % thick horizontal line

        \vspace{-\baselineskip} % tighten space between lines
        \noindent\xrfill[0.8ex]{1pt} % thin horizontal line
        
        \@address $\;\;\blackdiamond\;$ \@phone $\;\;\blackdiamond\;$ \@email % insert contact info
    \end{center}
}
%----------------------------------------------------------------------------------------
% Redefine section command
\renewcommand{\section}[1]{
    \par\vspace{10pt}\noindent % add space
    \xrfill[0.7ex]{1pt}\uppercase{\textbf{\ #1}}\xrfill[0.7ex]{1pt}\par % -----Section-----
    
}

\newcommand{\setspaces}{ % spacing settings for itemize environment
    \setlength\itemsep{-1ex} % spacing between items
    \setlength{\itemindent}{2.4em} % indent spacing
    \vspace{-4pt} % decrease space above
}
