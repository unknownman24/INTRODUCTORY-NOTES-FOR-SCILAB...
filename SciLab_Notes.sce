//////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////
////////////                          INTRODUCTION TO SCILAB                              ////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////


//  There are very several data types in SciLab as in the MATLAB programming language.
//  These data types have been listed below.
//  % double,
//  % integer (1 byte, 2 byte, 4 byte),
//  % complex,
//  % boolean,
//  % strings,
//  % sparse,
//  % graphics handles,
//  % functions,
//  % lists,
//  % pointers,
//  CAUTION: double is the default data type of SciLab.
//  The code writer can also create matrices in SciLab.
//  There are also different integer types in SciLab, and these are also listed below.


//////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////
///////////                                                                                ///////////
///////////                                                                                ///////////
///////////                    int8             1 byte           type 1                    ///////////
///////////                    int16            2 byte           type 2                    ///////////
///////////                    int32            4 byte           type 4                    ///////////
///////////                    uint8            1 byte           type 11                   ///////////
///////////                    uint16           2 byte           type 12                   ///////////
///////////                    uint32           4 byte           type 14                   ///////////
///////////                                                                                ///////////
///////////                                                                                ///////////
//////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////


//  If you want to check the type of the variable, you should check the variable browser.
//  As you know, the default data type is double in SciLab.
//  If you want to change the type of data defined before, you should write the code below.

//////////////////
//////////////////
//  EXAMPLE 1   //
//______________//
x=1;
x;
y=int8(2);
y;
disp(inttype(y));
//////////////////
//////////////////
//  EXAMPLE 2   //
//______________//
z=int32(30);
disp(inttype(z));
z;
//////////////////
//////////////////
//  EXAMPLE 3   //
//______________//
a="Hello";
b=a+" World";
//////////////////
//////////////////

//////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////


//  There are also constant values in the SciLab.
//  Some of these constants have been listed below.
//  %pi,  (pi number.)
//  %i,   (Complex "i" number which is the "sqrt(-1)".)
//  %e,   (Euler number, which is equal to 2.71828182845904523536.)
//  %inf, (Indicates infinity)
//  %t,   (Boolean "TRUE")
//  %f,   (Boolean "FALSE")
//  %nan, (Not a Number)
//  %eps, (Describes the Epsilon number, and it shows the maximum number)
//  We can not use these constants instead of any variable name as they described as CONSTANT NUMBER.
//  Let's try these constants in SciLab.

//////////////////
//////////////////
//  EXAMPLE 4   //
//______________//
c=%e;
//////////////////
//////////////////
//  EXAMPLE 5   //
//______________//
d=%i;
//////////////////
//////////////////
//  EXAMPLE 6   //
//______________//
e=%inf;
//////////////////
//////////////////
//  EXAMPLE 7   //
//______________//
f=%eps;
//////////////////
//////////////////

////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////
///////////                   BASICS OF MATRICES AND MATRIX OPERATIONS                   ///////////
////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////


//  A matrix is defined as arrangement of numbers, or we can define a matrix as 2D array of numbers.
//  [ 1 2 3;4 5 6;7 8 9] is a 3x3 square matrix.
//  [1 2 3 4;2 4 6 8;4 8 12 16] is a 3x4 rectangular matrix having 3 rows and 4 columns.
//  A=[a_11 a_12   a_1n;a_21 a_22   a_2n;           ;           ;a_n1 a_n2   a_nn]
//  The matrix A shows the general form of a matrix and subscript shows element position.
//  There are some important points for matrices. Let's mention about these important points.
//  The first thing to consider about a matrix is the ORDER OF MATRİX.
//  The Order of a Matrix is the multiplication of the NUMBER OF ROWS and the NUMBER OF COLUMNS.
//  ORDER OF A MATRIX = (NUMBER OF ROWS x NUMBER OF COLUMNS)
//  ELEMENT = Every individual element is named as an element.
//  MATRIX ADDITION = We can just add two matrices having the SAME ORDER, as each element gets 
//  added to the correspınding element.
//  Matrix Multiplication Point 1: The order in which two matrices are multiplied matters. It 
//  is not commutative.
//  AB≠BA
//  Matrix Multiplication Point 2: The product AB of two matrices is possible ONLY if the number of 
//  columns of A=number of rows of B. 
//  The resultant matrix will be of e order number of rows of A × number of columns of B.
//  Vector: A matrix having just one column or one row is also called a vectorr. A row vector or a
//  column vector or simply a vector.
//  A=[10 5 2 4], B=[4; -5; -8; 2]
// If you want to multiply a matrix with a constant number, you should change all matrix elements 
// with the multiplication of the constant number with each element.


////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////
///////////                           TRANSPOSE OF A MATRIX                              ///////////
////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////


//  Transpose of a matrix is handled by making columns from rows, so first row becomes first column 
//  and so on!
//  Doing so the order of the rectangular matrix may change.
//  A   = [1 2 3; 4 5 6; 7 8 9]
//  A^T = [1 4 7; 2 5 8; 3 6 9]
//  Order of A   = 3 x 3
//  Order of A^T = 3 x 3
//  B   = [1 2 3 4; 5 6 7 8]
//  B^T = [1 5; 2 6; 3 7; 4 8]
//  Order of B = 2 x 4
//  Order of B^' = 4 x 2

//////////////////
//////////////////
//  EXAMPLE 8  //
//_____________//
g=[1 2 3;4 5 6;7 8 9];
h=[1,2,3;4,5,6;7,8,9];
i=g+h;
// to get the transpose of matrix g
j=g';
//////////////////
//////////////////

////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////
///////////                        MATRIX OPERATIONS IN SCILAB                           ///////////
////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////


k = [1 2 3;4 5 6;7 8 9];
//  to get the sum of all elements in a matrix, sum(matrix_name) command must be used.
l=sum(k);
//  to get the sum of each column in a row, sum(matrix_name,'r') command is required to be used.
m=sum(k,'r');
//  to get the sum of each column in a column, sum(matrix_name,'c') command is required to be used.
n=sum(k,'c');
//  to find the minimum value inside the matrix, min(matrix_name) command is needed.
o=min(k);
//  to find the minimum value of each column inside the matrix, min(matrix_name,'r') command 
//  is needed.
p=min(k,'r');
//  to find the length of a matrix, length(matrix_name) command is needed to be used.
r=length(k);
//  to get the power 2, (matrix_name)^2 is required to be used.
s=k^2;
//  to get the square of each element, (matrix_name).^2 command is needed.
t=k.^2;
//  to get mean of complete matrix, mean(matrix_name) command is required.
u=mean(k);
//  to calculate the mean of every column in a row, mean(matrix_name,'r') is required to be used.
v=mean(k,'r');
//  to calculate the determinant of a matrix, det(matrix_name) is required to be used.
w=det(k);
//  if you want to get the diagonal of a matrix, diag(matrix_name) finds the diagonal elements 
//  of your matrix.
y=diag(k);
//  to find the sum of the diagonal elements, trace(matrix_name) is used.
z=trace(k);
//  if you want to split a matrix into two parts as lower part and upper part, 
//  triu(matrix_name) is used to get upper part, and
//  tril(matrix_name) is used to get the lower part of a square matrix.
LOWER_PART=tril(k);
UPPER_PART=triu(k);
//  to produce a zero matrix, NAME_OF_ZERO_MATRIX=zeros(row_number,column_number) is used.
ZERO_MATRIX=zeros(4,4);
//  it produces zero matrix with 4 rows and 4 columns.
//  to produce a 3x3 diagonal matrix which have 1 value for all diagonal elements, eyes(3,3) is used.
DIAGONAL_MATRIX=eye(3,3);
//  to produce a 3x6 unit matrix which have 1 value for all elements, ones(3,6) is used.
UNIT_MATRIX=ones(3,6);
//  to generate a matrix having random numbers, RANDOM_MATRIX=rand(3,4) is used.
RANDOM_MATRIX=rand(3,4);


//////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////
////////////                     MATRIX ADDITION & MULTIPLICATION                         ////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////


//  If two matrices having same number of columns and rows, they can be added each other.
//  Otherwise, it is not available for addition.
//  EXAMPLE 9   //
//______________//
MATRIX_1=[1 2 3 4; 2 4 6 8;4 8 12 16];
MATRIX_2=[-5 7 8 9; -6 -4 -2 7;96 45 32 1];
ADDITION1TO2=MATRIX_1+MATRIX_2;
//  If the number of columns of the first matrix and rows of the second matrix are equal,
//  the matrix multiplication  operation is available.
//  Otherwise, the multiplication operation is not available.
MATRIX_3=[10 5 2 4];
MATRIX_4=[4;-5;-8;2];
MULTIPLICATON3TO4=MATRIX_3*MATRIX_4;
//  The order of resultant matrix would be 1 x 1. So, it will be a single element matrix.
MATRIX_5=[2 4 6;8 6 2];
MATRIX_6=[1 7;3 3;5 1];
MULTIPLICATON5TO6=MATRIX_5*MATRIX_6;
//  The order of resultant matrix would be 2 x 2. So, it will be a square matrix.


//////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////
////////////                      DETERMINANTS OF 2x2 & 3x3 MATRICES                      ////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////


//////////////////////////////////////////////////////////////////////////////////////////////////////
////////////                         DETERMINANTS OF 2x2 MATRICES                         ////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////


//  The determinant of a matrix is a number that represent the scaling factor of the linear 
//  transformation defined by that matrix.
//  If you want to calculate the determinant of a 2x2 matrix, you should multiply the right diagonal 
//  elements each other and left diagonal elements each other. Then, subtract the multiplication of 
//  the left diagonal elements from the multiplication of the right diagonal elements.
//  For example, A=[2 4; 8 6] matrix is a 2 x 2 matrix. If you want to take the determinant of the 
//  [A] matrix, it would be |A|=((2 x 6)-(4 x 8))=-20.


//////////////////////////////////////////////////////////////////////////////////////////////////////
////////////                         DETERMINANTS OF 3x3 MATRICES                         ////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////


//  If you want to calculate the determinant of a 3x3 matrix, you should organise the matrix as in the
//  form of |A|=|+ - +;- + -;+ - +|. If matrix is not in this form, you must utilise from some
//  specific inner matrix operations to convert the [A] matrix into this form.
//  Let [B]=[-1 2 -3;0 4 -2;-3 -4 1] is a 3x3 matrix. If we want to take the determinant of 
//  that mstrix, you should convert the matrix in the given form above.
//  At the starting point, [B] matrix is in |A|=|- + - ;+ + -;- - +|, to convert this matrix to the
//  expected form by sub-matrices.
//  Sub-matrix is different for each element and is acquired by ignoring the row and the column in
//  which that element resides.
//  The sub-matrix of -1 is obtained by ignoring the first row and column in which -1 resides.
//  |B|=|-1 2 -3;0 4 -2;-3 -4 1|====>>>|4 -2;-4 1|.
//  The sub-matrix of 2 is obtained by ignoring the 1st row and the 2nd column in which 2 resides.
//  |B|=|-1 2 -3;0 4 -2;-3 -4 1|====>>>|0 -2;-3 1|.
//  The sub-matrix of -3 is obtained by ignoring the 1st row and the 3rd column in which -3 resides.
//  |B|=|-1 2 -3;0 4 -2;-3 -4 1|====>>>|0 4;-3 -4|.
//  After the calculation of sub-matrices of any one row or any column, you can find the determinant
//  of this matrix. As we calculate the first row to find the sub-matrices, we will take into
//  consideration the checkerboard sign matrix and will ignore any other elements in both.
//  |-1 2 -3;0 4 -2;-3 -4 1| |+ - +;- + -;+ - +|
//  |4 -2;-4 1| |0 -2;-3 1| |0 4;-3 -4|
//  Now det(A)=|A|=
//  -1 x + x |4 -2;-4 1| + 2 x - x |0 -2;-3 1|+ -3 x + x |0 4;-3 -4|
//  =-1x{(4)x(1)-(-2)x(-4)}-2x{0-(-2)x(-3)}-3x{0-(-3)x(4)}
//  =-1x{4-8}-2x{-6}-3x{12}
//  =4+12-36=-20
MATRIX_7=[-1 2 -3;0 4 -2;-3 -4 1];
DETERMINANT=det(MATRIX_7);


//////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////
////////////                      HOW TO DRAW A BAR GRAPH ON SCILAB                       ////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////


//  Let's think a factory producing 3 different types of gear systems for robotic issues in 
//  a year, we can use the bar graph demonstration to calculate the total production 
//  number of each product.


//////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////
///////////                                                                                ///////////
///////////                       Conical        Rack & Pinion            Worm             ///////////
///////////         Month       Gear System       Gear System         Gear System          ///////////
///////////           1            1153               863                 924              ///////////
///////////           2             542               954                 562              ///////////
///////////           3            1201               336                 896              ///////////
///////////           4             453               745                 320              ///////////
///////////           5             250               410                 196              ///////////
///////////           6            1358               564                 963              ///////////
///////////           7             124               360                 456              ///////////
///////////           8            1456                96                 145              ///////////
///////////           9              89                56                 110              ///////////
///////////           10            698               567                 234              ///////////
///////////           11            654               329                 236              ///////////
///////////           12            452               165                 420              ///////////
///////////                                                                                ///////////
//////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////


Months=[1:1:12]
Gear_Systems=[1153 863 924;542 954 562;1201 336 896;453 745 320;250 410 196;1358 564 963;..
124 360 456;1456 96 145; 89 56 110;698 564 234;654 329 236;452 165 420]
bar(Months,Gear_Systems);
//  In order to group each individual product for an each month, we must use 'stacked' expression 
//  after the y axis in the graph. In order to see the difference of these two different 
//  demonstration, please press F5 after putting "//" to upper command and deleting "//" signs 
//  of next line.
//bar(months,Gear_Systems,'stacked');
//  To place a title on your bar graph and to label both axes,
//  xtitle("Graph_Title","Name_of_x_axis","Name_of_y_axis") 
xtitle("Data for Produced Gear Systems","Months (2020)","Products");
//  To place a legend on your bar graph,
//  Name_of_the_legend=(['DATA1',DATA2','DATA3']);
//lgnd=legend(['Conical Gear Systems','Rack & Pinion Gear Systems','Worm Gear Systems']);
//  In order to change the position of the legend to where you want, please change 
//  the command as seen in the below.
//  Name_of_the_legend=(['DATA1',DATA2','DATA3'],pos=5);
lgnd=legend(['Conical Gear Systems','Rack & Pinion Gear Systems','Worm Gear Systems'],pos=5);
