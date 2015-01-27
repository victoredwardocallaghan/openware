\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{unswmaths}[2013/01/01 Latex class for OW Maths documents]

\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{amsthm}
\RequirePackage[a4paper]{geometry}
\RequirePackage{fancyhdr}
\RequirePackage{cite}
\RequirePackage[pdftex]{graphicx}
\RequirePackage{epstopdf}

\LoadClass{article}
\setlength\parindent{0pt}
\setlength{\parskip}{5mm plus4mm minus3mm}

\def\author#1{\def\@author{#1}}
\def\subject#1{\def\@subject{#1}}
\def\title#1{\def\@title{#1}}
\def\studentno#1{\def\@studentno{#1}}
\def\supervisor#1{\def\@supervisor{#1}}

%This puts headers above and below each page.
\pagestyle{fancy}
\fancyfoot[l]{\@author}
\fancyfoot[r]{\today}
\fancyhead[l]{openware}
\fancyhead[r]{\@subject}


\newcommand{\HRule}{\rule{\linewidth}{0.5mm}}

%arguments in the order, author, student number, subject, title
\newcommand{\unswtitle}{
	\begin{titlepage}
	\begin{center}
	% Upper part of the page. The '~' is needed because \\
	% only works if a paragraph has started.
%	\includegraphics[width=0.5\textwidth]{artwork/unswlogo}~\\[0.5cm]
	% Upper part of the page. The '~' is needed because \\
	% only works if a paragraph has started.
	\includegraphics[width=0.4\textwidth]{artwork/mathslogo}~\\[1cm]
	\textsc{\LARGE SKITYL ENTERPRISES}\\[0.5cm]
	\textsc{\large }\\[0.5cm]
	% Title
	\HRule \\[0.4cm]
	{ \huge \bfseries \@title}\\[0.2cm]
	{ \Large \@subject }\\[0.2cm]
	\HRule \\[1.5cm]
	% Author and supervisor
	\begin{minipage}[t]{0.4\textwidth}
	\begin{flushleft} \large
	\emph{Author:}\\
	\@author\\[0.4cm]
    \ifx\@supervisor\undefined
    \else
        \emph{Supervisor:}\\
        \@supervisor
    \fi
	\end{flushleft}
	\end{minipage}
	\begin{minipage}[t]{0.4\textwidth}
	\begin{flushright} \large
	\emph{Student Number:}\\
	\@studentno
	\end{flushright}
	\end{minipage}
	\vfill
	\end{center}
	\end{titlepage}
}
\endinput
