«†5
µЕ
D
AddV2
x"T
y"T
z"T"
Ttype:
2	АР
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( И
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
R
Einsum
inputs"T*N
output"T"
equationstring"
Nint(0"	
Ttype
*
Erf
x"T
y"T"
Ttype:
2
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
Ѓ
GatherV2
params"Tparams
indices"Tindices
axis"Taxis
output"Tparams"

batch_dimsint "
Tparamstype"
Tindicestype:
2	"
Taxistype:
2	
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
Н
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
Ж
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( И
?
Mul
x"T
y"T
z"T"
Ttype:
2	Р

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
Н
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
@
ReadVariableOp
resource
value"dtype"
dtypetypeИ
@
RealDiv
x"T
y"T
z"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
•
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	И
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
.
Rsqrt
x"T
y"T"
Ttype:

2
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
9
Softmax
logits"T
softmax"T"
Ttype:
2
G
SquaredDifference
x"T
y"T
z"T"
Ttype:

2	Р
Ѕ
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring И®
@
StaticRegexFullMatch	
input

output
"
patternstring
2
StopGradient

input"T
output"T"	
Ttype
ч
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
<
Sub
x"T
y"T
z"T"
Ttype:
2	
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
Ц
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И"serve*2.10.02v2.10.0-rc3-6-g359c3cdfc5f8еС.
G
ConstConst*
_output_shapes
: *
dtype0*
value	B :
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
И
AdamW/v/dense_6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*'
shared_nameAdamW/v/dense_6/kernel
Б
*AdamW/v/dense_6/kernel/Read/ReadVariableOpReadVariableOpAdamW/v/dense_6/kernel*
_output_shapes

:*
dtype0
И
AdamW/m/dense_6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*'
shared_nameAdamW/m/dense_6/kernel
Б
*AdamW/m/dense_6/kernel/Read/ReadVariableOpReadVariableOpAdamW/m/dense_6/kernel*
_output_shapes

:*
dtype0
Ь
"AdamW/v/layer_normalization_5/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"AdamW/v/layer_normalization_5/beta
Х
6AdamW/v/layer_normalization_5/beta/Read/ReadVariableOpReadVariableOp"AdamW/v/layer_normalization_5/beta*
_output_shapes
:*
dtype0
Ь
"AdamW/m/layer_normalization_5/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"AdamW/m/layer_normalization_5/beta
Х
6AdamW/m/layer_normalization_5/beta/Read/ReadVariableOpReadVariableOp"AdamW/m/layer_normalization_5/beta*
_output_shapes
:*
dtype0
Ю
#AdamW/v/layer_normalization_5/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#AdamW/v/layer_normalization_5/gamma
Ч
7AdamW/v/layer_normalization_5/gamma/Read/ReadVariableOpReadVariableOp#AdamW/v/layer_normalization_5/gamma*
_output_shapes
:*
dtype0
Ю
#AdamW/m/layer_normalization_5/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#AdamW/m/layer_normalization_5/gamma
Ч
7AdamW/m/layer_normalization_5/gamma/Read/ReadVariableOpReadVariableOp#AdamW/m/layer_normalization_5/gamma*
_output_shapes
:*
dtype0
И
AdamW/v/dense_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*'
shared_nameAdamW/v/dense_5/kernel
Б
*AdamW/v/dense_5/kernel/Read/ReadVariableOpReadVariableOpAdamW/v/dense_5/kernel*
_output_shapes

:*
dtype0
И
AdamW/m/dense_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*'
shared_nameAdamW/m/dense_5/kernel
Б
*AdamW/m/dense_5/kernel/Read/ReadVariableOpReadVariableOpAdamW/m/dense_5/kernel*
_output_shapes

:*
dtype0
И
AdamW/v/dense_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*'
shared_nameAdamW/v/dense_4/kernel
Б
*AdamW/v/dense_4/kernel/Read/ReadVariableOpReadVariableOpAdamW/v/dense_4/kernel*
_output_shapes

:*
dtype0
И
AdamW/m/dense_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*'
shared_nameAdamW/m/dense_4/kernel
Б
*AdamW/m/dense_4/kernel/Read/ReadVariableOpReadVariableOpAdamW/m/dense_4/kernel*
_output_shapes

:*
dtype0
Ь
"AdamW/v/layer_normalization_4/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"AdamW/v/layer_normalization_4/beta
Х
6AdamW/v/layer_normalization_4/beta/Read/ReadVariableOpReadVariableOp"AdamW/v/layer_normalization_4/beta*
_output_shapes
:*
dtype0
Ь
"AdamW/m/layer_normalization_4/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"AdamW/m/layer_normalization_4/beta
Х
6AdamW/m/layer_normalization_4/beta/Read/ReadVariableOpReadVariableOp"AdamW/m/layer_normalization_4/beta*
_output_shapes
:*
dtype0
Ю
#AdamW/v/layer_normalization_4/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#AdamW/v/layer_normalization_4/gamma
Ч
7AdamW/v/layer_normalization_4/gamma/Read/ReadVariableOpReadVariableOp#AdamW/v/layer_normalization_4/gamma*
_output_shapes
:*
dtype0
Ю
#AdamW/m/layer_normalization_4/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#AdamW/m/layer_normalization_4/gamma
Ч
7AdamW/m/layer_normalization_4/gamma/Read/ReadVariableOpReadVariableOp#AdamW/m/layer_normalization_4/gamma*
_output_shapes
:*
dtype0
ј
4AdamW/v/multi_head_attention_2/attention_output/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*E
shared_name64AdamW/v/multi_head_attention_2/attention_output/bias
є
HAdamW/v/multi_head_attention_2/attention_output/bias/Read/ReadVariableOpReadVariableOp4AdamW/v/multi_head_attention_2/attention_output/bias*
_output_shapes
:*
dtype0
ј
4AdamW/m/multi_head_attention_2/attention_output/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*E
shared_name64AdamW/m/multi_head_attention_2/attention_output/bias
є
HAdamW/m/multi_head_attention_2/attention_output/bias/Read/ReadVariableOpReadVariableOp4AdamW/m/multi_head_attention_2/attention_output/bias*
_output_shapes
:*
dtype0
ћ
6AdamW/v/multi_head_attention_2/attention_output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*G
shared_name86AdamW/v/multi_head_attention_2/attention_output/kernel
≈
JAdamW/v/multi_head_attention_2/attention_output/kernel/Read/ReadVariableOpReadVariableOp6AdamW/v/multi_head_attention_2/attention_output/kernel*"
_output_shapes
:*
dtype0
ћ
6AdamW/m/multi_head_attention_2/attention_output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*G
shared_name86AdamW/m/multi_head_attention_2/attention_output/kernel
≈
JAdamW/m/multi_head_attention_2/attention_output/kernel/Read/ReadVariableOpReadVariableOp6AdamW/m/multi_head_attention_2/attention_output/kernel*"
_output_shapes
:*
dtype0
Ѓ
)AdamW/v/multi_head_attention_2/value/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*:
shared_name+)AdamW/v/multi_head_attention_2/value/bias
І
=AdamW/v/multi_head_attention_2/value/bias/Read/ReadVariableOpReadVariableOp)AdamW/v/multi_head_attention_2/value/bias*
_output_shapes

:*
dtype0
Ѓ
)AdamW/m/multi_head_attention_2/value/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*:
shared_name+)AdamW/m/multi_head_attention_2/value/bias
І
=AdamW/m/multi_head_attention_2/value/bias/Read/ReadVariableOpReadVariableOp)AdamW/m/multi_head_attention_2/value/bias*
_output_shapes

:*
dtype0
ґ
+AdamW/v/multi_head_attention_2/value/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*<
shared_name-+AdamW/v/multi_head_attention_2/value/kernel
ѓ
?AdamW/v/multi_head_attention_2/value/kernel/Read/ReadVariableOpReadVariableOp+AdamW/v/multi_head_attention_2/value/kernel*"
_output_shapes
:*
dtype0
ґ
+AdamW/m/multi_head_attention_2/value/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*<
shared_name-+AdamW/m/multi_head_attention_2/value/kernel
ѓ
?AdamW/m/multi_head_attention_2/value/kernel/Read/ReadVariableOpReadVariableOp+AdamW/m/multi_head_attention_2/value/kernel*"
_output_shapes
:*
dtype0
™
'AdamW/v/multi_head_attention_2/key/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*8
shared_name)'AdamW/v/multi_head_attention_2/key/bias
£
;AdamW/v/multi_head_attention_2/key/bias/Read/ReadVariableOpReadVariableOp'AdamW/v/multi_head_attention_2/key/bias*
_output_shapes

:*
dtype0
™
'AdamW/m/multi_head_attention_2/key/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*8
shared_name)'AdamW/m/multi_head_attention_2/key/bias
£
;AdamW/m/multi_head_attention_2/key/bias/Read/ReadVariableOpReadVariableOp'AdamW/m/multi_head_attention_2/key/bias*
_output_shapes

:*
dtype0
≤
)AdamW/v/multi_head_attention_2/key/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*:
shared_name+)AdamW/v/multi_head_attention_2/key/kernel
Ђ
=AdamW/v/multi_head_attention_2/key/kernel/Read/ReadVariableOpReadVariableOp)AdamW/v/multi_head_attention_2/key/kernel*"
_output_shapes
:*
dtype0
≤
)AdamW/m/multi_head_attention_2/key/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*:
shared_name+)AdamW/m/multi_head_attention_2/key/kernel
Ђ
=AdamW/m/multi_head_attention_2/key/kernel/Read/ReadVariableOpReadVariableOp)AdamW/m/multi_head_attention_2/key/kernel*"
_output_shapes
:*
dtype0
Ѓ
)AdamW/v/multi_head_attention_2/query/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*:
shared_name+)AdamW/v/multi_head_attention_2/query/bias
І
=AdamW/v/multi_head_attention_2/query/bias/Read/ReadVariableOpReadVariableOp)AdamW/v/multi_head_attention_2/query/bias*
_output_shapes

:*
dtype0
Ѓ
)AdamW/m/multi_head_attention_2/query/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*:
shared_name+)AdamW/m/multi_head_attention_2/query/bias
І
=AdamW/m/multi_head_attention_2/query/bias/Read/ReadVariableOpReadVariableOp)AdamW/m/multi_head_attention_2/query/bias*
_output_shapes

:*
dtype0
ґ
+AdamW/v/multi_head_attention_2/query/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*<
shared_name-+AdamW/v/multi_head_attention_2/query/kernel
ѓ
?AdamW/v/multi_head_attention_2/query/kernel/Read/ReadVariableOpReadVariableOp+AdamW/v/multi_head_attention_2/query/kernel*"
_output_shapes
:*
dtype0
ґ
+AdamW/m/multi_head_attention_2/query/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*<
shared_name-+AdamW/m/multi_head_attention_2/query/kernel
ѓ
?AdamW/m/multi_head_attention_2/query/kernel/Read/ReadVariableOpReadVariableOp+AdamW/m/multi_head_attention_2/query/kernel*"
_output_shapes
:*
dtype0
Ь
"AdamW/v/layer_normalization_3/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"AdamW/v/layer_normalization_3/beta
Х
6AdamW/v/layer_normalization_3/beta/Read/ReadVariableOpReadVariableOp"AdamW/v/layer_normalization_3/beta*
_output_shapes
:*
dtype0
Ь
"AdamW/m/layer_normalization_3/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"AdamW/m/layer_normalization_3/beta
Х
6AdamW/m/layer_normalization_3/beta/Read/ReadVariableOpReadVariableOp"AdamW/m/layer_normalization_3/beta*
_output_shapes
:*
dtype0
Ю
#AdamW/v/layer_normalization_3/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#AdamW/v/layer_normalization_3/gamma
Ч
7AdamW/v/layer_normalization_3/gamma/Read/ReadVariableOpReadVariableOp#AdamW/v/layer_normalization_3/gamma*
_output_shapes
:*
dtype0
Ю
#AdamW/m/layer_normalization_3/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#AdamW/m/layer_normalization_3/gamma
Ч
7AdamW/m/layer_normalization_3/gamma/Read/ReadVariableOpReadVariableOp#AdamW/m/layer_normalization_3/gamma*
_output_shapes
:*
dtype0
И
AdamW/v/dense_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*'
shared_nameAdamW/v/dense_3/kernel
Б
*AdamW/v/dense_3/kernel/Read/ReadVariableOpReadVariableOpAdamW/v/dense_3/kernel*
_output_shapes

:*
dtype0
И
AdamW/m/dense_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*'
shared_nameAdamW/m/dense_3/kernel
Б
*AdamW/m/dense_3/kernel/Read/ReadVariableOpReadVariableOpAdamW/m/dense_3/kernel*
_output_shapes

:*
dtype0
И
AdamW/v/dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*'
shared_nameAdamW/v/dense_2/kernel
Б
*AdamW/v/dense_2/kernel/Read/ReadVariableOpReadVariableOpAdamW/v/dense_2/kernel*
_output_shapes

:*
dtype0
И
AdamW/m/dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*'
shared_nameAdamW/m/dense_2/kernel
Б
*AdamW/m/dense_2/kernel/Read/ReadVariableOpReadVariableOpAdamW/m/dense_2/kernel*
_output_shapes

:*
dtype0
Ь
"AdamW/v/layer_normalization_2/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"AdamW/v/layer_normalization_2/beta
Х
6AdamW/v/layer_normalization_2/beta/Read/ReadVariableOpReadVariableOp"AdamW/v/layer_normalization_2/beta*
_output_shapes
:*
dtype0
Ь
"AdamW/m/layer_normalization_2/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"AdamW/m/layer_normalization_2/beta
Х
6AdamW/m/layer_normalization_2/beta/Read/ReadVariableOpReadVariableOp"AdamW/m/layer_normalization_2/beta*
_output_shapes
:*
dtype0
Ю
#AdamW/v/layer_normalization_2/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#AdamW/v/layer_normalization_2/gamma
Ч
7AdamW/v/layer_normalization_2/gamma/Read/ReadVariableOpReadVariableOp#AdamW/v/layer_normalization_2/gamma*
_output_shapes
:*
dtype0
Ю
#AdamW/m/layer_normalization_2/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#AdamW/m/layer_normalization_2/gamma
Ч
7AdamW/m/layer_normalization_2/gamma/Read/ReadVariableOpReadVariableOp#AdamW/m/layer_normalization_2/gamma*
_output_shapes
:*
dtype0
ј
4AdamW/v/multi_head_attention_1/attention_output/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*E
shared_name64AdamW/v/multi_head_attention_1/attention_output/bias
є
HAdamW/v/multi_head_attention_1/attention_output/bias/Read/ReadVariableOpReadVariableOp4AdamW/v/multi_head_attention_1/attention_output/bias*
_output_shapes
:*
dtype0
ј
4AdamW/m/multi_head_attention_1/attention_output/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*E
shared_name64AdamW/m/multi_head_attention_1/attention_output/bias
є
HAdamW/m/multi_head_attention_1/attention_output/bias/Read/ReadVariableOpReadVariableOp4AdamW/m/multi_head_attention_1/attention_output/bias*
_output_shapes
:*
dtype0
ћ
6AdamW/v/multi_head_attention_1/attention_output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*G
shared_name86AdamW/v/multi_head_attention_1/attention_output/kernel
≈
JAdamW/v/multi_head_attention_1/attention_output/kernel/Read/ReadVariableOpReadVariableOp6AdamW/v/multi_head_attention_1/attention_output/kernel*"
_output_shapes
:*
dtype0
ћ
6AdamW/m/multi_head_attention_1/attention_output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*G
shared_name86AdamW/m/multi_head_attention_1/attention_output/kernel
≈
JAdamW/m/multi_head_attention_1/attention_output/kernel/Read/ReadVariableOpReadVariableOp6AdamW/m/multi_head_attention_1/attention_output/kernel*"
_output_shapes
:*
dtype0
Ѓ
)AdamW/v/multi_head_attention_1/value/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*:
shared_name+)AdamW/v/multi_head_attention_1/value/bias
І
=AdamW/v/multi_head_attention_1/value/bias/Read/ReadVariableOpReadVariableOp)AdamW/v/multi_head_attention_1/value/bias*
_output_shapes

:*
dtype0
Ѓ
)AdamW/m/multi_head_attention_1/value/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*:
shared_name+)AdamW/m/multi_head_attention_1/value/bias
І
=AdamW/m/multi_head_attention_1/value/bias/Read/ReadVariableOpReadVariableOp)AdamW/m/multi_head_attention_1/value/bias*
_output_shapes

:*
dtype0
ґ
+AdamW/v/multi_head_attention_1/value/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*<
shared_name-+AdamW/v/multi_head_attention_1/value/kernel
ѓ
?AdamW/v/multi_head_attention_1/value/kernel/Read/ReadVariableOpReadVariableOp+AdamW/v/multi_head_attention_1/value/kernel*"
_output_shapes
:*
dtype0
ґ
+AdamW/m/multi_head_attention_1/value/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*<
shared_name-+AdamW/m/multi_head_attention_1/value/kernel
ѓ
?AdamW/m/multi_head_attention_1/value/kernel/Read/ReadVariableOpReadVariableOp+AdamW/m/multi_head_attention_1/value/kernel*"
_output_shapes
:*
dtype0
™
'AdamW/v/multi_head_attention_1/key/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*8
shared_name)'AdamW/v/multi_head_attention_1/key/bias
£
;AdamW/v/multi_head_attention_1/key/bias/Read/ReadVariableOpReadVariableOp'AdamW/v/multi_head_attention_1/key/bias*
_output_shapes

:*
dtype0
™
'AdamW/m/multi_head_attention_1/key/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*8
shared_name)'AdamW/m/multi_head_attention_1/key/bias
£
;AdamW/m/multi_head_attention_1/key/bias/Read/ReadVariableOpReadVariableOp'AdamW/m/multi_head_attention_1/key/bias*
_output_shapes

:*
dtype0
≤
)AdamW/v/multi_head_attention_1/key/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*:
shared_name+)AdamW/v/multi_head_attention_1/key/kernel
Ђ
=AdamW/v/multi_head_attention_1/key/kernel/Read/ReadVariableOpReadVariableOp)AdamW/v/multi_head_attention_1/key/kernel*"
_output_shapes
:*
dtype0
≤
)AdamW/m/multi_head_attention_1/key/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*:
shared_name+)AdamW/m/multi_head_attention_1/key/kernel
Ђ
=AdamW/m/multi_head_attention_1/key/kernel/Read/ReadVariableOpReadVariableOp)AdamW/m/multi_head_attention_1/key/kernel*"
_output_shapes
:*
dtype0
Ѓ
)AdamW/v/multi_head_attention_1/query/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*:
shared_name+)AdamW/v/multi_head_attention_1/query/bias
І
=AdamW/v/multi_head_attention_1/query/bias/Read/ReadVariableOpReadVariableOp)AdamW/v/multi_head_attention_1/query/bias*
_output_shapes

:*
dtype0
Ѓ
)AdamW/m/multi_head_attention_1/query/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*:
shared_name+)AdamW/m/multi_head_attention_1/query/bias
І
=AdamW/m/multi_head_attention_1/query/bias/Read/ReadVariableOpReadVariableOp)AdamW/m/multi_head_attention_1/query/bias*
_output_shapes

:*
dtype0
ґ
+AdamW/v/multi_head_attention_1/query/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*<
shared_name-+AdamW/v/multi_head_attention_1/query/kernel
ѓ
?AdamW/v/multi_head_attention_1/query/kernel/Read/ReadVariableOpReadVariableOp+AdamW/v/multi_head_attention_1/query/kernel*"
_output_shapes
:*
dtype0
ґ
+AdamW/m/multi_head_attention_1/query/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*<
shared_name-+AdamW/m/multi_head_attention_1/query/kernel
ѓ
?AdamW/m/multi_head_attention_1/query/kernel/Read/ReadVariableOpReadVariableOp+AdamW/m/multi_head_attention_1/query/kernel*"
_output_shapes
:*
dtype0
Ь
"AdamW/v/layer_normalization_1/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"AdamW/v/layer_normalization_1/beta
Х
6AdamW/v/layer_normalization_1/beta/Read/ReadVariableOpReadVariableOp"AdamW/v/layer_normalization_1/beta*
_output_shapes
:*
dtype0
Ь
"AdamW/m/layer_normalization_1/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"AdamW/m/layer_normalization_1/beta
Х
6AdamW/m/layer_normalization_1/beta/Read/ReadVariableOpReadVariableOp"AdamW/m/layer_normalization_1/beta*
_output_shapes
:*
dtype0
Ю
#AdamW/v/layer_normalization_1/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#AdamW/v/layer_normalization_1/gamma
Ч
7AdamW/v/layer_normalization_1/gamma/Read/ReadVariableOpReadVariableOp#AdamW/v/layer_normalization_1/gamma*
_output_shapes
:*
dtype0
Ю
#AdamW/m/layer_normalization_1/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#AdamW/m/layer_normalization_1/gamma
Ч
7AdamW/m/layer_normalization_1/gamma/Read/ReadVariableOpReadVariableOp#AdamW/m/layer_normalization_1/gamma*
_output_shapes
:*
dtype0
И
AdamW/v/dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*'
shared_nameAdamW/v/dense_1/kernel
Б
*AdamW/v/dense_1/kernel/Read/ReadVariableOpReadVariableOpAdamW/v/dense_1/kernel*
_output_shapes

:*
dtype0
И
AdamW/m/dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*'
shared_nameAdamW/m/dense_1/kernel
Б
*AdamW/m/dense_1/kernel/Read/ReadVariableOpReadVariableOpAdamW/m/dense_1/kernel*
_output_shapes

:*
dtype0
Д
AdamW/v/dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*%
shared_nameAdamW/v/dense/kernel
}
(AdamW/v/dense/kernel/Read/ReadVariableOpReadVariableOpAdamW/v/dense/kernel*
_output_shapes

:*
dtype0
Д
AdamW/m/dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*%
shared_nameAdamW/m/dense/kernel
}
(AdamW/m/dense/kernel/Read/ReadVariableOpReadVariableOpAdamW/m/dense/kernel*
_output_shapes

:*
dtype0
Ш
 AdamW/v/layer_normalization/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" AdamW/v/layer_normalization/beta
С
4AdamW/v/layer_normalization/beta/Read/ReadVariableOpReadVariableOp AdamW/v/layer_normalization/beta*
_output_shapes
:*
dtype0
Ш
 AdamW/m/layer_normalization/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" AdamW/m/layer_normalization/beta
С
4AdamW/m/layer_normalization/beta/Read/ReadVariableOpReadVariableOp AdamW/m/layer_normalization/beta*
_output_shapes
:*
dtype0
Ъ
!AdamW/v/layer_normalization/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!AdamW/v/layer_normalization/gamma
У
5AdamW/v/layer_normalization/gamma/Read/ReadVariableOpReadVariableOp!AdamW/v/layer_normalization/gamma*
_output_shapes
:*
dtype0
Ъ
!AdamW/m/layer_normalization/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!AdamW/m/layer_normalization/gamma
У
5AdamW/m/layer_normalization/gamma/Read/ReadVariableOpReadVariableOp!AdamW/m/layer_normalization/gamma*
_output_shapes
:*
dtype0
Љ
2AdamW/v/multi_head_attention/attention_output/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*C
shared_name42AdamW/v/multi_head_attention/attention_output/bias
µ
FAdamW/v/multi_head_attention/attention_output/bias/Read/ReadVariableOpReadVariableOp2AdamW/v/multi_head_attention/attention_output/bias*
_output_shapes
:*
dtype0
Љ
2AdamW/m/multi_head_attention/attention_output/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*C
shared_name42AdamW/m/multi_head_attention/attention_output/bias
µ
FAdamW/m/multi_head_attention/attention_output/bias/Read/ReadVariableOpReadVariableOp2AdamW/m/multi_head_attention/attention_output/bias*
_output_shapes
:*
dtype0
»
4AdamW/v/multi_head_attention/attention_output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*E
shared_name64AdamW/v/multi_head_attention/attention_output/kernel
Ѕ
HAdamW/v/multi_head_attention/attention_output/kernel/Read/ReadVariableOpReadVariableOp4AdamW/v/multi_head_attention/attention_output/kernel*"
_output_shapes
:*
dtype0
»
4AdamW/m/multi_head_attention/attention_output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*E
shared_name64AdamW/m/multi_head_attention/attention_output/kernel
Ѕ
HAdamW/m/multi_head_attention/attention_output/kernel/Read/ReadVariableOpReadVariableOp4AdamW/m/multi_head_attention/attention_output/kernel*"
_output_shapes
:*
dtype0
™
'AdamW/v/multi_head_attention/value/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*8
shared_name)'AdamW/v/multi_head_attention/value/bias
£
;AdamW/v/multi_head_attention/value/bias/Read/ReadVariableOpReadVariableOp'AdamW/v/multi_head_attention/value/bias*
_output_shapes

:*
dtype0
™
'AdamW/m/multi_head_attention/value/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*8
shared_name)'AdamW/m/multi_head_attention/value/bias
£
;AdamW/m/multi_head_attention/value/bias/Read/ReadVariableOpReadVariableOp'AdamW/m/multi_head_attention/value/bias*
_output_shapes

:*
dtype0
≤
)AdamW/v/multi_head_attention/value/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*:
shared_name+)AdamW/v/multi_head_attention/value/kernel
Ђ
=AdamW/v/multi_head_attention/value/kernel/Read/ReadVariableOpReadVariableOp)AdamW/v/multi_head_attention/value/kernel*"
_output_shapes
:*
dtype0
≤
)AdamW/m/multi_head_attention/value/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*:
shared_name+)AdamW/m/multi_head_attention/value/kernel
Ђ
=AdamW/m/multi_head_attention/value/kernel/Read/ReadVariableOpReadVariableOp)AdamW/m/multi_head_attention/value/kernel*"
_output_shapes
:*
dtype0
¶
%AdamW/v/multi_head_attention/key/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*6
shared_name'%AdamW/v/multi_head_attention/key/bias
Я
9AdamW/v/multi_head_attention/key/bias/Read/ReadVariableOpReadVariableOp%AdamW/v/multi_head_attention/key/bias*
_output_shapes

:*
dtype0
¶
%AdamW/m/multi_head_attention/key/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*6
shared_name'%AdamW/m/multi_head_attention/key/bias
Я
9AdamW/m/multi_head_attention/key/bias/Read/ReadVariableOpReadVariableOp%AdamW/m/multi_head_attention/key/bias*
_output_shapes

:*
dtype0
Ѓ
'AdamW/v/multi_head_attention/key/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*8
shared_name)'AdamW/v/multi_head_attention/key/kernel
І
;AdamW/v/multi_head_attention/key/kernel/Read/ReadVariableOpReadVariableOp'AdamW/v/multi_head_attention/key/kernel*"
_output_shapes
:*
dtype0
Ѓ
'AdamW/m/multi_head_attention/key/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*8
shared_name)'AdamW/m/multi_head_attention/key/kernel
І
;AdamW/m/multi_head_attention/key/kernel/Read/ReadVariableOpReadVariableOp'AdamW/m/multi_head_attention/key/kernel*"
_output_shapes
:*
dtype0
™
'AdamW/v/multi_head_attention/query/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*8
shared_name)'AdamW/v/multi_head_attention/query/bias
£
;AdamW/v/multi_head_attention/query/bias/Read/ReadVariableOpReadVariableOp'AdamW/v/multi_head_attention/query/bias*
_output_shapes

:*
dtype0
™
'AdamW/m/multi_head_attention/query/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*8
shared_name)'AdamW/m/multi_head_attention/query/bias
£
;AdamW/m/multi_head_attention/query/bias/Read/ReadVariableOpReadVariableOp'AdamW/m/multi_head_attention/query/bias*
_output_shapes

:*
dtype0
≤
)AdamW/v/multi_head_attention/query/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*:
shared_name+)AdamW/v/multi_head_attention/query/kernel
Ђ
=AdamW/v/multi_head_attention/query/kernel/Read/ReadVariableOpReadVariableOp)AdamW/v/multi_head_attention/query/kernel*"
_output_shapes
:*
dtype0
≤
)AdamW/m/multi_head_attention/query/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*:
shared_name+)AdamW/m/multi_head_attention/query/kernel
Ђ
=AdamW/m/multi_head_attention/query/kernel/Read/ReadVariableOpReadVariableOp)AdamW/m/multi_head_attention/query/kernel*"
_output_shapes
:*
dtype0
К
AdamW/v/tokenize/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*(
shared_nameAdamW/v/tokenize/kernel
Г
+AdamW/v/tokenize/kernel/Read/ReadVariableOpReadVariableOpAdamW/v/tokenize/kernel*
_output_shapes

:*
dtype0
К
AdamW/m/tokenize/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*(
shared_nameAdamW/m/tokenize/kernel
Г
+AdamW/m/tokenize/kernel/Read/ReadVariableOpReadVariableOpAdamW/m/tokenize/kernel*
_output_shapes

:*
dtype0
Ш
AdamW/v/embedding_1/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*/
shared_name AdamW/v/embedding_1/embeddings
С
2AdamW/v/embedding_1/embeddings/Read/ReadVariableOpReadVariableOpAdamW/v/embedding_1/embeddings*
_output_shapes

:*
dtype0
Ш
AdamW/m/embedding_1/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*/
shared_name AdamW/m/embedding_1/embeddings
С
2AdamW/m/embedding_1/embeddings/Read/ReadVariableOpReadVariableOpAdamW/m/embedding_1/embeddings*
_output_shapes

:*
dtype0
Ф
AdamW/v/embedding/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*-
shared_nameAdamW/v/embedding/embeddings
Н
0AdamW/v/embedding/embeddings/Read/ReadVariableOpReadVariableOpAdamW/v/embedding/embeddings*
_output_shapes

:*
dtype0
Ф
AdamW/m/embedding/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*-
shared_nameAdamW/m/embedding/embeddings
Н
0AdamW/m/embedding/embeddings/Read/ReadVariableOpReadVariableOpAdamW/m/embedding/embeddings*
_output_shapes

:*
dtype0
n
learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namelearning_rate
g
!learning_rate/Read/ReadVariableOpReadVariableOplearning_rate*
_output_shapes
: *
dtype0
f
	iterationVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	iteration
_
iteration/Read/ReadVariableOpReadVariableOp	iteration*
_output_shapes
: *
dtype0	
∞
,multi_head_attention_2/attention_output/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*=
shared_name.,multi_head_attention_2/attention_output/bias
©
@multi_head_attention_2/attention_output/bias/Read/ReadVariableOpReadVariableOp,multi_head_attention_2/attention_output/bias*
_output_shapes
:*
dtype0
Љ
.multi_head_attention_2/attention_output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*?
shared_name0.multi_head_attention_2/attention_output/kernel
µ
Bmulti_head_attention_2/attention_output/kernel/Read/ReadVariableOpReadVariableOp.multi_head_attention_2/attention_output/kernel*"
_output_shapes
:*
dtype0
Ю
!multi_head_attention_2/value/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*2
shared_name#!multi_head_attention_2/value/bias
Ч
5multi_head_attention_2/value/bias/Read/ReadVariableOpReadVariableOp!multi_head_attention_2/value/bias*
_output_shapes

:*
dtype0
¶
#multi_head_attention_2/value/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#multi_head_attention_2/value/kernel
Я
7multi_head_attention_2/value/kernel/Read/ReadVariableOpReadVariableOp#multi_head_attention_2/value/kernel*"
_output_shapes
:*
dtype0
Ъ
multi_head_attention_2/key/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*0
shared_name!multi_head_attention_2/key/bias
У
3multi_head_attention_2/key/bias/Read/ReadVariableOpReadVariableOpmulti_head_attention_2/key/bias*
_output_shapes

:*
dtype0
Ґ
!multi_head_attention_2/key/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!multi_head_attention_2/key/kernel
Ы
5multi_head_attention_2/key/kernel/Read/ReadVariableOpReadVariableOp!multi_head_attention_2/key/kernel*"
_output_shapes
:*
dtype0
Ю
!multi_head_attention_2/query/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*2
shared_name#!multi_head_attention_2/query/bias
Ч
5multi_head_attention_2/query/bias/Read/ReadVariableOpReadVariableOp!multi_head_attention_2/query/bias*
_output_shapes

:*
dtype0
¶
#multi_head_attention_2/query/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#multi_head_attention_2/query/kernel
Я
7multi_head_attention_2/query/kernel/Read/ReadVariableOpReadVariableOp#multi_head_attention_2/query/kernel*"
_output_shapes
:*
dtype0
∞
,multi_head_attention_1/attention_output/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*=
shared_name.,multi_head_attention_1/attention_output/bias
©
@multi_head_attention_1/attention_output/bias/Read/ReadVariableOpReadVariableOp,multi_head_attention_1/attention_output/bias*
_output_shapes
:*
dtype0
Љ
.multi_head_attention_1/attention_output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*?
shared_name0.multi_head_attention_1/attention_output/kernel
µ
Bmulti_head_attention_1/attention_output/kernel/Read/ReadVariableOpReadVariableOp.multi_head_attention_1/attention_output/kernel*"
_output_shapes
:*
dtype0
Ю
!multi_head_attention_1/value/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*2
shared_name#!multi_head_attention_1/value/bias
Ч
5multi_head_attention_1/value/bias/Read/ReadVariableOpReadVariableOp!multi_head_attention_1/value/bias*
_output_shapes

:*
dtype0
¶
#multi_head_attention_1/value/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#multi_head_attention_1/value/kernel
Я
7multi_head_attention_1/value/kernel/Read/ReadVariableOpReadVariableOp#multi_head_attention_1/value/kernel*"
_output_shapes
:*
dtype0
Ъ
multi_head_attention_1/key/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*0
shared_name!multi_head_attention_1/key/bias
У
3multi_head_attention_1/key/bias/Read/ReadVariableOpReadVariableOpmulti_head_attention_1/key/bias*
_output_shapes

:*
dtype0
Ґ
!multi_head_attention_1/key/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!multi_head_attention_1/key/kernel
Ы
5multi_head_attention_1/key/kernel/Read/ReadVariableOpReadVariableOp!multi_head_attention_1/key/kernel*"
_output_shapes
:*
dtype0
Ю
!multi_head_attention_1/query/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*2
shared_name#!multi_head_attention_1/query/bias
Ч
5multi_head_attention_1/query/bias/Read/ReadVariableOpReadVariableOp!multi_head_attention_1/query/bias*
_output_shapes

:*
dtype0
¶
#multi_head_attention_1/query/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#multi_head_attention_1/query/kernel
Я
7multi_head_attention_1/query/kernel/Read/ReadVariableOpReadVariableOp#multi_head_attention_1/query/kernel*"
_output_shapes
:*
dtype0
ђ
*multi_head_attention/attention_output/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*;
shared_name,*multi_head_attention/attention_output/bias
•
>multi_head_attention/attention_output/bias/Read/ReadVariableOpReadVariableOp*multi_head_attention/attention_output/bias*
_output_shapes
:*
dtype0
Є
,multi_head_attention/attention_output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*=
shared_name.,multi_head_attention/attention_output/kernel
±
@multi_head_attention/attention_output/kernel/Read/ReadVariableOpReadVariableOp,multi_head_attention/attention_output/kernel*"
_output_shapes
:*
dtype0
Ъ
multi_head_attention/value/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*0
shared_name!multi_head_attention/value/bias
У
3multi_head_attention/value/bias/Read/ReadVariableOpReadVariableOpmulti_head_attention/value/bias*
_output_shapes

:*
dtype0
Ґ
!multi_head_attention/value/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!multi_head_attention/value/kernel
Ы
5multi_head_attention/value/kernel/Read/ReadVariableOpReadVariableOp!multi_head_attention/value/kernel*"
_output_shapes
:*
dtype0
Ц
multi_head_attention/key/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*.
shared_namemulti_head_attention/key/bias
П
1multi_head_attention/key/bias/Read/ReadVariableOpReadVariableOpmulti_head_attention/key/bias*
_output_shapes

:*
dtype0
Ю
multi_head_attention/key/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*0
shared_name!multi_head_attention/key/kernel
Ч
3multi_head_attention/key/kernel/Read/ReadVariableOpReadVariableOpmulti_head_attention/key/kernel*"
_output_shapes
:*
dtype0
Ъ
multi_head_attention/query/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*0
shared_name!multi_head_attention/query/bias
У
3multi_head_attention/query/bias/Read/ReadVariableOpReadVariableOpmulti_head_attention/query/bias*
_output_shapes

:*
dtype0
Ґ
!multi_head_attention/query/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!multi_head_attention/query/kernel
Ы
5multi_head_attention/query/kernel/Read/ReadVariableOpReadVariableOp!multi_head_attention/query/kernel*"
_output_shapes
:*
dtype0
x
dense_6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*
shared_namedense_6/kernel
q
"dense_6/kernel/Read/ReadVariableOpReadVariableOpdense_6/kernel*
_output_shapes

:*
dtype0
М
layer_normalization_5/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_namelayer_normalization_5/beta
Е
.layer_normalization_5/beta/Read/ReadVariableOpReadVariableOplayer_normalization_5/beta*
_output_shapes
:*
dtype0
О
layer_normalization_5/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namelayer_normalization_5/gamma
З
/layer_normalization_5/gamma/Read/ReadVariableOpReadVariableOplayer_normalization_5/gamma*
_output_shapes
:*
dtype0
x
dense_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*
shared_namedense_5/kernel
q
"dense_5/kernel/Read/ReadVariableOpReadVariableOpdense_5/kernel*
_output_shapes

:*
dtype0
x
dense_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*
shared_namedense_4/kernel
q
"dense_4/kernel/Read/ReadVariableOpReadVariableOpdense_4/kernel*
_output_shapes

:*
dtype0
М
layer_normalization_4/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_namelayer_normalization_4/beta
Е
.layer_normalization_4/beta/Read/ReadVariableOpReadVariableOplayer_normalization_4/beta*
_output_shapes
:*
dtype0
О
layer_normalization_4/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namelayer_normalization_4/gamma
З
/layer_normalization_4/gamma/Read/ReadVariableOpReadVariableOplayer_normalization_4/gamma*
_output_shapes
:*
dtype0
М
layer_normalization_3/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_namelayer_normalization_3/beta
Е
.layer_normalization_3/beta/Read/ReadVariableOpReadVariableOplayer_normalization_3/beta*
_output_shapes
:*
dtype0
О
layer_normalization_3/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namelayer_normalization_3/gamma
З
/layer_normalization_3/gamma/Read/ReadVariableOpReadVariableOplayer_normalization_3/gamma*
_output_shapes
:*
dtype0
x
dense_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*
shared_namedense_3/kernel
q
"dense_3/kernel/Read/ReadVariableOpReadVariableOpdense_3/kernel*
_output_shapes

:*
dtype0
x
dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*
shared_namedense_2/kernel
q
"dense_2/kernel/Read/ReadVariableOpReadVariableOpdense_2/kernel*
_output_shapes

:*
dtype0
М
layer_normalization_2/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_namelayer_normalization_2/beta
Е
.layer_normalization_2/beta/Read/ReadVariableOpReadVariableOplayer_normalization_2/beta*
_output_shapes
:*
dtype0
О
layer_normalization_2/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namelayer_normalization_2/gamma
З
/layer_normalization_2/gamma/Read/ReadVariableOpReadVariableOplayer_normalization_2/gamma*
_output_shapes
:*
dtype0
М
layer_normalization_1/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_namelayer_normalization_1/beta
Е
.layer_normalization_1/beta/Read/ReadVariableOpReadVariableOplayer_normalization_1/beta*
_output_shapes
:*
dtype0
О
layer_normalization_1/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namelayer_normalization_1/gamma
З
/layer_normalization_1/gamma/Read/ReadVariableOpReadVariableOplayer_normalization_1/gamma*
_output_shapes
:*
dtype0
x
dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*
shared_namedense_1/kernel
q
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel*
_output_shapes

:*
dtype0
t
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*
shared_namedense/kernel
m
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*
_output_shapes

:*
dtype0
И
layer_normalization/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_namelayer_normalization/beta
Б
,layer_normalization/beta/Read/ReadVariableOpReadVariableOplayer_normalization/beta*
_output_shapes
:*
dtype0
К
layer_normalization/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_namelayer_normalization/gamma
Г
-layer_normalization/gamma/Read/ReadVariableOpReadVariableOplayer_normalization/gamma*
_output_shapes
:*
dtype0
z
tokenize/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:* 
shared_nametokenize/kernel
s
#tokenize/kernel/Read/ReadVariableOpReadVariableOptokenize/kernel*
_output_shapes

:*
dtype0
И
embedding_1/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*'
shared_nameembedding_1/embeddings
Б
*embedding_1/embeddings/Read/ReadVariableOpReadVariableOpembedding_1/embeddings*
_output_shapes

:*
dtype0
Д
embedding/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*%
shared_nameembedding/embeddings
}
(embedding/embeddings/Read/ReadVariableOpReadVariableOpembedding/embeddings*
_output_shapes

:*
dtype0
z
serving_default_input_1Placeholder*'
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
z
serving_default_input_2Placeholder*'
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
і
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1serving_default_input_2Constembedding/embeddingsembedding_1/embeddingstokenize/kernel!multi_head_attention/query/kernelmulti_head_attention/query/biasmulti_head_attention/key/kernelmulti_head_attention/key/bias!multi_head_attention/value/kernelmulti_head_attention/value/bias,multi_head_attention/attention_output/kernel*multi_head_attention/attention_output/biaslayer_normalization/gammalayer_normalization/betadense/kerneldense_1/kernellayer_normalization_1/gammalayer_normalization_1/beta#multi_head_attention_1/query/kernel!multi_head_attention_1/query/bias!multi_head_attention_1/key/kernelmulti_head_attention_1/key/bias#multi_head_attention_1/value/kernel!multi_head_attention_1/value/bias.multi_head_attention_1/attention_output/kernel,multi_head_attention_1/attention_output/biaslayer_normalization_2/gammalayer_normalization_2/betadense_2/kerneldense_3/kernellayer_normalization_3/gammalayer_normalization_3/beta#multi_head_attention_2/query/kernel!multi_head_attention_2/query/bias!multi_head_attention_2/key/kernelmulti_head_attention_2/key/bias#multi_head_attention_2/value/kernel!multi_head_attention_2/value/bias.multi_head_attention_2/attention_output/kernel,multi_head_attention_2/attention_output/biaslayer_normalization_4/gammalayer_normalization_4/betadense_4/kerneldense_5/kernellayer_normalization_5/gammalayer_normalization_5/betadense_6/kernel*<
Tin5
321*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*P
_read_only_resource_inputs2
0.	
 !"#$%&'()*+,-./0*-
config_proto

CPU

GPU 2J 8В *,
f'R%
#__inference_signature_wrapper_22613

NoOpNoOp
Яф
Const_1Const"/device:CPU:0*
_output_shapes
: *
dtype0*„у
valueћуB»у Bју
џ	
layer-0
layer-1
layer-2
layer-3
layer-4
layer_with_weights-0
layer-5
layer_with_weights-1
layer-6
layer_with_weights-2
layer-7
	layer-8

layer_with_weights-3

layer-9
layer-10
layer_with_weights-4
layer-11
layer_with_weights-5
layer-12
layer-13
layer_with_weights-6
layer-14
layer-15
layer-16
layer_with_weights-7
layer-17
layer_with_weights-8
layer-18
layer-19
layer_with_weights-9
layer-20
layer_with_weights-10
layer-21
layer-22
layer_with_weights-11
layer-23
layer-24
layer-25
layer_with_weights-12
layer-26
layer_with_weights-13
layer-27
layer-28
layer_with_weights-14
layer-29
layer_with_weights-15
layer-30
 layer-31
!layer_with_weights-16
!layer-32
"layer-33
#layer-34
$layer_with_weights-17
$layer-35
%layer-36
&layer_with_weights-18
&layer-37
'layer-38
(	variables
)trainable_variables
*regularization_losses
+	keras_api
,__call__
*-&call_and_return_all_conditional_losses
._default_save_signature
/	optimizer
0
signatures*
* 

1	keras_api* 

2	keras_api* 

3	keras_api* 
* 
†
4	variables
5trainable_variables
6regularization_losses
7	keras_api
8__call__
*9&call_and_return_all_conditional_losses
:
embeddings*
†
;	variables
<trainable_variables
=regularization_losses
>	keras_api
?__call__
*@&call_and_return_all_conditional_losses
A
embeddings*
Ь
B	variables
Ctrainable_variables
Dregularization_losses
E	keras_api
F__call__
*G&call_and_return_all_conditional_losses

Hkernel*

I	keras_api* 
щ
J	variables
Ktrainable_variables
Lregularization_losses
M	keras_api
N__call__
*O&call_and_return_all_conditional_losses
P_query_dense
Q
_key_dense
R_value_dense
S_softmax
T_dropout_layer
U_output_dense*
О
V	variables
Wtrainable_variables
Xregularization_losses
Y	keras_api
Z__call__
*[&call_and_return_all_conditional_losses* 
ѓ
\	variables
]trainable_variables
^regularization_losses
_	keras_api
`__call__
*a&call_and_return_all_conditional_losses
baxis
	cgamma
dbeta*
Ь
e	variables
ftrainable_variables
gregularization_losses
h	keras_api
i__call__
*j&call_and_return_all_conditional_losses

kkernel*

l	keras_api* 
Ь
m	variables
ntrainable_variables
oregularization_losses
p	keras_api
q__call__
*r&call_and_return_all_conditional_losses

skernel*
•
t	variables
utrainable_variables
vregularization_losses
w	keras_api
x__call__
*y&call_and_return_all_conditional_losses
z_random_generator* 
П
{	variables
|trainable_variables
}regularization_losses
~	keras_api
__call__
+А&call_and_return_all_conditional_losses* 
Є
Б	variables
Вtrainable_variables
Гregularization_losses
Д	keras_api
Е__call__
+Ж&call_and_return_all_conditional_losses
	Зaxis

Иgamma
	Йbeta*
Е
К	variables
Лtrainable_variables
Мregularization_losses
Н	keras_api
О__call__
+П&call_and_return_all_conditional_losses
Р_query_dense
С
_key_dense
Т_value_dense
У_softmax
Ф_dropout_layer
Х_output_dense*
Ф
Ц	variables
Чtrainable_variables
Шregularization_losses
Щ	keras_api
Ъ__call__
+Ы&call_and_return_all_conditional_losses* 
Є
Ь	variables
Эtrainable_variables
Юregularization_losses
Я	keras_api
†__call__
+°&call_and_return_all_conditional_losses
	Ґaxis

£gamma
	§beta*
£
•	variables
¶trainable_variables
Іregularization_losses
®	keras_api
©__call__
+™&call_and_return_all_conditional_losses
Ђkernel*

ђ	keras_api* 
£
≠	variables
Ѓtrainable_variables
ѓregularization_losses
∞	keras_api
±__call__
+≤&call_and_return_all_conditional_losses
≥kernel*
ђ
і	variables
µtrainable_variables
ґregularization_losses
Ј	keras_api
Є__call__
+є&call_and_return_all_conditional_losses
Ї_random_generator* 
Ф
ї	variables
Љtrainable_variables
љregularization_losses
Њ	keras_api
њ__call__
+ј&call_and_return_all_conditional_losses* 
Є
Ѕ	variables
¬trainable_variables
√regularization_losses
ƒ	keras_api
≈__call__
+∆&call_and_return_all_conditional_losses
	«axis

»gamma
	…beta*
Е
 	variables
Ћtrainable_variables
ћregularization_losses
Ќ	keras_api
ќ__call__
+ѕ&call_and_return_all_conditional_losses
–_query_dense
—
_key_dense
“_value_dense
”_softmax
‘_dropout_layer
’_output_dense*
Ф
÷	variables
„trainable_variables
Ўregularization_losses
ў	keras_api
Џ__call__
+џ&call_and_return_all_conditional_losses* 
Є
№	variables
Ёtrainable_variables
ёregularization_losses
я	keras_api
а__call__
+б&call_and_return_all_conditional_losses
	вaxis

гgamma
	дbeta*
£
е	variables
жtrainable_variables
зregularization_losses
и	keras_api
й__call__
+к&call_and_return_all_conditional_losses
лkernel*

м	keras_api* 
£
н	variables
оtrainable_variables
пregularization_losses
р	keras_api
с__call__
+т&call_and_return_all_conditional_losses
уkernel*
ђ
ф	variables
хtrainable_variables
цregularization_losses
ч	keras_api
ш__call__
+щ&call_and_return_all_conditional_losses
ъ_random_generator* 
Ф
ы	variables
ьtrainable_variables
эregularization_losses
ю	keras_api
€__call__
+А&call_and_return_all_conditional_losses* 
Є
Б	variables
Вtrainable_variables
Гregularization_losses
Д	keras_api
Е__call__
+Ж&call_and_return_all_conditional_losses
	Зaxis

Иgamma
	Йbeta*

К	keras_api* 
£
Л	variables
Мtrainable_variables
Нregularization_losses
О	keras_api
П__call__
+Р&call_and_return_all_conditional_losses
Сkernel*

Т	keras_api* 
С
:0
A1
H2
У3
Ф4
Х5
Ц6
Ч7
Ш8
Щ9
Ъ10
c11
d12
k13
s14
И15
Й16
Ы17
Ь18
Э19
Ю20
Я21
†22
°23
Ґ24
£25
§26
Ђ27
≥28
»29
…30
£31
§32
•33
¶34
І35
®36
©37
™38
г39
д40
л41
у42
И43
Й44
С45*
С
:0
A1
H2
У3
Ф4
Х5
Ц6
Ч7
Ш8
Щ9
Ъ10
c11
d12
k13
s14
И15
Й16
Ы17
Ь18
Э19
Ю20
Я21
†22
°23
Ґ24
£25
§26
Ђ27
≥28
»29
…30
£31
§32
•33
¶34
І35
®36
©37
™38
г39
д40
л41
у42
И43
Й44
С45*
* 
µ
Ђnon_trainable_variables
ђlayers
≠metrics
 Ѓlayer_regularization_losses
ѓlayer_metrics
(	variables
)trainable_variables
*regularization_losses
,__call__
._default_save_signature
*-&call_and_return_all_conditional_losses
&-"call_and_return_conditional_losses*
:
∞trace_0
±trace_1
≤trace_2
≥trace_3* 
:
іtrace_0
µtrace_1
ґtrace_2
Јtrace_3* 

Є	capture_0* 
И
є_iterations
Ї
_variables
ї_learning_rate
Љ_index_dict
љ
_momentums
Њ_velocities
њ_update_step_xla*

јserving_default* 
* 
* 
* 

:0*

:0*
* 
Ш
Ѕnon_trainable_variables
¬layers
√metrics
 ƒlayer_regularization_losses
≈layer_metrics
4	variables
5trainable_variables
6regularization_losses
8__call__
*9&call_and_return_all_conditional_losses
&9"call_and_return_conditional_losses*

∆trace_0* 

«trace_0* 
hb
VARIABLE_VALUEembedding/embeddings:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUE*

A0*

A0*
* 
Ш
»non_trainable_variables
…layers
 metrics
 Ћlayer_regularization_losses
ћlayer_metrics
;	variables
<trainable_variables
=regularization_losses
?__call__
*@&call_and_return_all_conditional_losses
&@"call_and_return_conditional_losses*

Ќtrace_0* 

ќtrace_0* 
jd
VARIABLE_VALUEembedding_1/embeddings:layer_with_weights-1/embeddings/.ATTRIBUTES/VARIABLE_VALUE*

H0*

H0*
* 
Ш
ѕnon_trainable_variables
–layers
—metrics
 “layer_regularization_losses
”layer_metrics
B	variables
Ctrainable_variables
Dregularization_losses
F__call__
*G&call_and_return_all_conditional_losses
&G"call_and_return_conditional_losses*

‘trace_0* 

’trace_0* 
_Y
VARIABLE_VALUEtokenize/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
* 
D
У0
Ф1
Х2
Ц3
Ч4
Ш5
Щ6
Ъ7*
D
У0
Ф1
Х2
Ц3
Ч4
Ш5
Щ6
Ъ7*
* 
Ш
÷non_trainable_variables
„layers
Ўmetrics
 ўlayer_regularization_losses
Џlayer_metrics
J	variables
Ktrainable_variables
Lregularization_losses
N__call__
*O&call_and_return_all_conditional_losses
&O"call_and_return_conditional_losses*

џtrace_0
№trace_1* 

Ёtrace_0
ёtrace_1* 
б
я	variables
аtrainable_variables
бregularization_losses
в	keras_api
г__call__
+д&call_and_return_all_conditional_losses
еpartial_output_shape
жfull_output_shape
Уkernel
	Фbias*
б
з	variables
иtrainable_variables
йregularization_losses
к	keras_api
л__call__
+м&call_and_return_all_conditional_losses
нpartial_output_shape
оfull_output_shape
Хkernel
	Цbias*
б
п	variables
рtrainable_variables
сregularization_losses
т	keras_api
у__call__
+ф&call_and_return_all_conditional_losses
хpartial_output_shape
цfull_output_shape
Чkernel
	Шbias*
Ф
ч	variables
шtrainable_variables
щregularization_losses
ъ	keras_api
ы__call__
+ь&call_and_return_all_conditional_losses* 
ђ
э	variables
юtrainable_variables
€regularization_losses
А	keras_api
Б__call__
+В&call_and_return_all_conditional_losses
Г_random_generator* 
б
Д	variables
Еtrainable_variables
Жregularization_losses
З	keras_api
И__call__
+Й&call_and_return_all_conditional_losses
Кpartial_output_shape
Лfull_output_shape
Щkernel
	Ъbias*
* 
* 
* 
Ц
Мnon_trainable_variables
Нlayers
Оmetrics
 Пlayer_regularization_losses
Рlayer_metrics
V	variables
Wtrainable_variables
Xregularization_losses
Z__call__
*[&call_and_return_all_conditional_losses
&["call_and_return_conditional_losses* 

Сtrace_0* 

Тtrace_0* 

c0
d1*

c0
d1*
* 
Ш
Уnon_trainable_variables
Фlayers
Хmetrics
 Цlayer_regularization_losses
Чlayer_metrics
\	variables
]trainable_variables
^regularization_losses
`__call__
*a&call_and_return_all_conditional_losses
&a"call_and_return_conditional_losses*

Шtrace_0* 

Щtrace_0* 
* 
hb
VARIABLE_VALUElayer_normalization/gamma5layer_with_weights-4/gamma/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUElayer_normalization/beta4layer_with_weights-4/beta/.ATTRIBUTES/VARIABLE_VALUE*

k0*

k0*
* 
Ш
Ъnon_trainable_variables
Ыlayers
Ьmetrics
 Эlayer_regularization_losses
Юlayer_metrics
e	variables
ftrainable_variables
gregularization_losses
i__call__
*j&call_and_return_all_conditional_losses
&j"call_and_return_conditional_losses*

Яtrace_0* 

†trace_0* 
\V
VARIABLE_VALUEdense/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE*
* 

s0*

s0*
* 
Ш
°non_trainable_variables
Ґlayers
£metrics
 §layer_regularization_losses
•layer_metrics
m	variables
ntrainable_variables
oregularization_losses
q__call__
*r&call_and_return_all_conditional_losses
&r"call_and_return_conditional_losses*

¶trace_0* 

Іtrace_0* 
^X
VARIABLE_VALUEdense_1/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
Ц
®non_trainable_variables
©layers
™metrics
 Ђlayer_regularization_losses
ђlayer_metrics
t	variables
utrainable_variables
vregularization_losses
x__call__
*y&call_and_return_all_conditional_losses
&y"call_and_return_conditional_losses* 

≠trace_0
Ѓtrace_1* 

ѓtrace_0
∞trace_1* 
* 
* 
* 
* 
Ш
±non_trainable_variables
≤layers
≥metrics
 іlayer_regularization_losses
µlayer_metrics
{	variables
|trainable_variables
}regularization_losses
__call__
+А&call_and_return_all_conditional_losses
'А"call_and_return_conditional_losses* 

ґtrace_0* 

Јtrace_0* 

И0
Й1*

И0
Й1*
* 
Ю
Єnon_trainable_variables
єlayers
Їmetrics
 їlayer_regularization_losses
Љlayer_metrics
Б	variables
Вtrainable_variables
Гregularization_losses
Е__call__
+Ж&call_and_return_all_conditional_losses
'Ж"call_and_return_conditional_losses*

љtrace_0* 

Њtrace_0* 
* 
jd
VARIABLE_VALUElayer_normalization_1/gamma5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUElayer_normalization_1/beta4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUE*
D
Ы0
Ь1
Э2
Ю3
Я4
†5
°6
Ґ7*
D
Ы0
Ь1
Э2
Ю3
Я4
†5
°6
Ґ7*
* 
Ю
њnon_trainable_variables
јlayers
Ѕmetrics
 ¬layer_regularization_losses
√layer_metrics
К	variables
Лtrainable_variables
Мregularization_losses
О__call__
+П&call_and_return_all_conditional_losses
'П"call_and_return_conditional_losses*

ƒtrace_0
≈trace_1* 

∆trace_0
«trace_1* 
б
»	variables
…trainable_variables
 regularization_losses
Ћ	keras_api
ћ__call__
+Ќ&call_and_return_all_conditional_losses
ќpartial_output_shape
ѕfull_output_shape
Ыkernel
	Ьbias*
б
–	variables
—trainable_variables
“regularization_losses
”	keras_api
‘__call__
+’&call_and_return_all_conditional_losses
÷partial_output_shape
„full_output_shape
Эkernel
	Юbias*
б
Ў	variables
ўtrainable_variables
Џregularization_losses
џ	keras_api
№__call__
+Ё&call_and_return_all_conditional_losses
ёpartial_output_shape
яfull_output_shape
Яkernel
	†bias*
Ф
а	variables
бtrainable_variables
вregularization_losses
г	keras_api
д__call__
+е&call_and_return_all_conditional_losses* 
ђ
ж	variables
зtrainable_variables
иregularization_losses
й	keras_api
к__call__
+л&call_and_return_all_conditional_losses
м_random_generator* 
б
н	variables
оtrainable_variables
пregularization_losses
р	keras_api
с__call__
+т&call_and_return_all_conditional_losses
уpartial_output_shape
фfull_output_shape
°kernel
	Ґbias*
* 
* 
* 
Ь
хnon_trainable_variables
цlayers
чmetrics
 шlayer_regularization_losses
щlayer_metrics
Ц	variables
Чtrainable_variables
Шregularization_losses
Ъ__call__
+Ы&call_and_return_all_conditional_losses
'Ы"call_and_return_conditional_losses* 

ъtrace_0* 

ыtrace_0* 

£0
§1*

£0
§1*
* 
Ю
ьnon_trainable_variables
эlayers
юmetrics
 €layer_regularization_losses
Аlayer_metrics
Ь	variables
Эtrainable_variables
Юregularization_losses
†__call__
+°&call_and_return_all_conditional_losses
'°"call_and_return_conditional_losses*

Бtrace_0* 

Вtrace_0* 
* 
jd
VARIABLE_VALUElayer_normalization_2/gamma5layer_with_weights-9/gamma/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUElayer_normalization_2/beta4layer_with_weights-9/beta/.ATTRIBUTES/VARIABLE_VALUE*

Ђ0*

Ђ0*
* 
Ю
Гnon_trainable_variables
Дlayers
Еmetrics
 Жlayer_regularization_losses
Зlayer_metrics
•	variables
¶trainable_variables
Іregularization_losses
©__call__
+™&call_and_return_all_conditional_losses
'™"call_and_return_conditional_losses*

Иtrace_0* 

Йtrace_0* 
_Y
VARIABLE_VALUEdense_2/kernel7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUE*
* 

≥0*

≥0*
* 
Ю
Кnon_trainable_variables
Лlayers
Мmetrics
 Нlayer_regularization_losses
Оlayer_metrics
≠	variables
Ѓtrainable_variables
ѓregularization_losses
±__call__
+≤&call_and_return_all_conditional_losses
'≤"call_and_return_conditional_losses*

Пtrace_0* 

Рtrace_0* 
_Y
VARIABLE_VALUEdense_3/kernel7layer_with_weights-11/kernel/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
Ь
Сnon_trainable_variables
Тlayers
Уmetrics
 Фlayer_regularization_losses
Хlayer_metrics
і	variables
µtrainable_variables
ґregularization_losses
Є__call__
+є&call_and_return_all_conditional_losses
'є"call_and_return_conditional_losses* 

Цtrace_0
Чtrace_1* 

Шtrace_0
Щtrace_1* 
* 
* 
* 
* 
Ь
Ъnon_trainable_variables
Ыlayers
Ьmetrics
 Эlayer_regularization_losses
Юlayer_metrics
ї	variables
Љtrainable_variables
љregularization_losses
њ__call__
+ј&call_and_return_all_conditional_losses
'ј"call_and_return_conditional_losses* 

Яtrace_0* 

†trace_0* 

»0
…1*

»0
…1*
* 
Ю
°non_trainable_variables
Ґlayers
£metrics
 §layer_regularization_losses
•layer_metrics
Ѕ	variables
¬trainable_variables
√regularization_losses
≈__call__
+∆&call_and_return_all_conditional_losses
'∆"call_and_return_conditional_losses*

¶trace_0* 

Іtrace_0* 
* 
ke
VARIABLE_VALUElayer_normalization_3/gamma6layer_with_weights-12/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUElayer_normalization_3/beta5layer_with_weights-12/beta/.ATTRIBUTES/VARIABLE_VALUE*
D
£0
§1
•2
¶3
І4
®5
©6
™7*
D
£0
§1
•2
¶3
І4
®5
©6
™7*
* 
Ю
®non_trainable_variables
©layers
™metrics
 Ђlayer_regularization_losses
ђlayer_metrics
 	variables
Ћtrainable_variables
ћregularization_losses
ќ__call__
+ѕ&call_and_return_all_conditional_losses
'ѕ"call_and_return_conditional_losses*

≠trace_0
Ѓtrace_1* 

ѓtrace_0
∞trace_1* 
б
±	variables
≤trainable_variables
≥regularization_losses
і	keras_api
µ__call__
+ґ&call_and_return_all_conditional_losses
Јpartial_output_shape
Єfull_output_shape
£kernel
	§bias*
б
є	variables
Їtrainable_variables
їregularization_losses
Љ	keras_api
љ__call__
+Њ&call_and_return_all_conditional_losses
њpartial_output_shape
јfull_output_shape
•kernel
	¶bias*
б
Ѕ	variables
¬trainable_variables
√regularization_losses
ƒ	keras_api
≈__call__
+∆&call_and_return_all_conditional_losses
«partial_output_shape
»full_output_shape
Іkernel
	®bias*
Ф
…	variables
 trainable_variables
Ћregularization_losses
ћ	keras_api
Ќ__call__
+ќ&call_and_return_all_conditional_losses* 
ђ
ѕ	variables
–trainable_variables
—regularization_losses
“	keras_api
”__call__
+‘&call_and_return_all_conditional_losses
’_random_generator* 
б
÷	variables
„trainable_variables
Ўregularization_losses
ў	keras_api
Џ__call__
+џ&call_and_return_all_conditional_losses
№partial_output_shape
Ёfull_output_shape
©kernel
	™bias*
* 
* 
* 
Ь
ёnon_trainable_variables
яlayers
аmetrics
 бlayer_regularization_losses
вlayer_metrics
÷	variables
„trainable_variables
Ўregularization_losses
Џ__call__
+џ&call_and_return_all_conditional_losses
'џ"call_and_return_conditional_losses* 

гtrace_0* 

дtrace_0* 

г0
д1*

г0
д1*
* 
Ю
еnon_trainable_variables
жlayers
зmetrics
 иlayer_regularization_losses
йlayer_metrics
№	variables
Ёtrainable_variables
ёregularization_losses
а__call__
+б&call_and_return_all_conditional_losses
'б"call_and_return_conditional_losses*

кtrace_0* 

лtrace_0* 
* 
ke
VARIABLE_VALUElayer_normalization_4/gamma6layer_with_weights-14/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUElayer_normalization_4/beta5layer_with_weights-14/beta/.ATTRIBUTES/VARIABLE_VALUE*

л0*

л0*
* 
Ю
мnon_trainable_variables
нlayers
оmetrics
 пlayer_regularization_losses
рlayer_metrics
е	variables
жtrainable_variables
зregularization_losses
й__call__
+к&call_and_return_all_conditional_losses
'к"call_and_return_conditional_losses*

сtrace_0* 

тtrace_0* 
_Y
VARIABLE_VALUEdense_4/kernel7layer_with_weights-15/kernel/.ATTRIBUTES/VARIABLE_VALUE*
* 

у0*

у0*
* 
Ю
уnon_trainable_variables
фlayers
хmetrics
 цlayer_regularization_losses
чlayer_metrics
н	variables
оtrainable_variables
пregularization_losses
с__call__
+т&call_and_return_all_conditional_losses
'т"call_and_return_conditional_losses*

шtrace_0* 

щtrace_0* 
_Y
VARIABLE_VALUEdense_5/kernel7layer_with_weights-16/kernel/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
Ь
ъnon_trainable_variables
ыlayers
ьmetrics
 эlayer_regularization_losses
юlayer_metrics
ф	variables
хtrainable_variables
цregularization_losses
ш__call__
+щ&call_and_return_all_conditional_losses
'щ"call_and_return_conditional_losses* 

€trace_0
Аtrace_1* 

Бtrace_0
Вtrace_1* 
* 
* 
* 
* 
Ь
Гnon_trainable_variables
Дlayers
Еmetrics
 Жlayer_regularization_losses
Зlayer_metrics
ы	variables
ьtrainable_variables
эregularization_losses
€__call__
+А&call_and_return_all_conditional_losses
'А"call_and_return_conditional_losses* 

Иtrace_0* 

Йtrace_0* 

И0
Й1*

И0
Й1*
* 
Ю
Кnon_trainable_variables
Лlayers
Мmetrics
 Нlayer_regularization_losses
Оlayer_metrics
Б	variables
Вtrainable_variables
Гregularization_losses
Е__call__
+Ж&call_and_return_all_conditional_losses
'Ж"call_and_return_conditional_losses*

Пtrace_0* 

Рtrace_0* 
* 
ke
VARIABLE_VALUElayer_normalization_5/gamma6layer_with_weights-17/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUElayer_normalization_5/beta5layer_with_weights-17/beta/.ATTRIBUTES/VARIABLE_VALUE*
* 

С0*

С0*
* 
Ю
Сnon_trainable_variables
Тlayers
Уmetrics
 Фlayer_regularization_losses
Хlayer_metrics
Л	variables
Мtrainable_variables
Нregularization_losses
П__call__
+Р&call_and_return_all_conditional_losses
'Р"call_and_return_conditional_losses*

Цtrace_0* 

Чtrace_0* 
_Y
VARIABLE_VALUEdense_6/kernel7layer_with_weights-18/kernel/.ATTRIBUTES/VARIABLE_VALUE*
* 
a[
VARIABLE_VALUE!multi_head_attention/query/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEmulti_head_attention/query/bias&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEmulti_head_attention/key/kernel&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEmulti_head_attention/key/bias&variables/6/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUE!multi_head_attention/value/kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEmulti_head_attention/value/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE*
lf
VARIABLE_VALUE,multi_head_attention/attention_output/kernel&variables/9/.ATTRIBUTES/VARIABLE_VALUE*
ke
VARIABLE_VALUE*multi_head_attention/attention_output/bias'variables/10/.ATTRIBUTES/VARIABLE_VALUE*
d^
VARIABLE_VALUE#multi_head_attention_1/query/kernel'variables/17/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUE!multi_head_attention_1/query/bias'variables/18/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUE!multi_head_attention_1/key/kernel'variables/19/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEmulti_head_attention_1/key/bias'variables/20/.ATTRIBUTES/VARIABLE_VALUE*
d^
VARIABLE_VALUE#multi_head_attention_1/value/kernel'variables/21/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUE!multi_head_attention_1/value/bias'variables/22/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUE.multi_head_attention_1/attention_output/kernel'variables/23/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE,multi_head_attention_1/attention_output/bias'variables/24/.ATTRIBUTES/VARIABLE_VALUE*
d^
VARIABLE_VALUE#multi_head_attention_2/query/kernel'variables/31/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUE!multi_head_attention_2/query/bias'variables/32/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUE!multi_head_attention_2/key/kernel'variables/33/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEmulti_head_attention_2/key/bias'variables/34/.ATTRIBUTES/VARIABLE_VALUE*
d^
VARIABLE_VALUE#multi_head_attention_2/value/kernel'variables/35/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUE!multi_head_attention_2/value/bias'variables/36/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUE.multi_head_attention_2/attention_output/kernel'variables/37/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE,multi_head_attention_2/attention_output/bias'variables/38/.ATTRIBUTES/VARIABLE_VALUE*
* 
≤
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24
25
26
27
28
29
30
 31
!32
"33
#34
$35
%36
&37
'38*

Ш0
Щ1*
* 
* 

Є	capture_0* 

Є	capture_0* 

Є	capture_0* 

Є	capture_0* 

Є	capture_0* 

Є	capture_0* 

Є	capture_0* 

Є	capture_0* 
* 
SM
VARIABLE_VALUE	iteration0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
ґ
Ъ0
Ы1
Ь2
Э3
Ю4
Я5
†6
°7
Ґ8
£9
§10
•11
¶12
І13
®14
©15
™16
Ђ17
ђ18
≠19
Ѓ20
ѓ21
∞22
±23
≤24
≥25
і26
µ27
ґ28
Ј29
Є30
є31
Ї32
ї33
Љ34
љ35
Њ36
њ37
ј38
Ѕ39
¬40
√41
ƒ42
≈43
∆44
«45
»46
…47
 48
Ћ49
ћ50
Ќ51
ќ52
ѕ53
–54
—55
“56
”57
‘58
’59
÷60
„61
Ў62
ў63
Џ64
џ65
№66
Ё67
ё68
я69
а70
б71
в72
г73
д74
е75
ж76
з77
и78
й79
к80
л81
м82
н83
о84
п85
р86
с87
т88
у89
ф90
х91*
ZT
VARIABLE_VALUElearning_rate3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
Ш
Ъ0
Ь1
Ю2
†3
Ґ4
§5
¶6
®7
™8
ђ9
Ѓ10
∞11
≤12
і13
ґ14
Є15
Ї16
Љ17
Њ18
ј19
¬20
ƒ21
∆22
»23
 24
ћ25
ќ26
–27
“28
‘29
÷30
Ў31
Џ32
№33
ё34
а35
в36
д37
ж38
и39
к40
м41
о42
р43
т44
ф45*
Ш
Ы0
Э1
Я2
°3
£4
•5
І6
©7
Ђ8
≠9
ѓ10
±11
≥12
µ13
Ј14
є15
ї16
љ17
њ18
Ѕ19
√20
≈21
«22
…23
Ћ24
Ќ25
ѕ26
—27
”28
’29
„30
ў31
џ32
Ё33
я34
б35
г36
е37
з38
й39
л40
н41
п42
с43
у44
х45*
* 

Є	capture_0* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
.
P0
Q1
R2
S3
T4
U5*
* 
* 
* 
* 
* 
* 
* 

У0
Ф1*

У0
Ф1*
* 
Ю
цnon_trainable_variables
чlayers
шmetrics
 щlayer_regularization_losses
ъlayer_metrics
я	variables
аtrainable_variables
бregularization_losses
г__call__
+д&call_and_return_all_conditional_losses
'д"call_and_return_conditional_losses*
* 
* 
* 
* 

Х0
Ц1*

Х0
Ц1*
* 
Ю
ыnon_trainable_variables
ьlayers
эmetrics
 юlayer_regularization_losses
€layer_metrics
з	variables
иtrainable_variables
йregularization_losses
л__call__
+м&call_and_return_all_conditional_losses
'м"call_and_return_conditional_losses*
* 
* 
* 
* 

Ч0
Ш1*

Ч0
Ш1*
* 
Ю
Аnon_trainable_variables
Бlayers
Вmetrics
 Гlayer_regularization_losses
Дlayer_metrics
п	variables
рtrainable_variables
сregularization_losses
у__call__
+ф&call_and_return_all_conditional_losses
'ф"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 
* 
Ь
Еnon_trainable_variables
Жlayers
Зmetrics
 Иlayer_regularization_losses
Йlayer_metrics
ч	variables
шtrainable_variables
щregularization_losses
ы__call__
+ь&call_and_return_all_conditional_losses
'ь"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
Ь
Кnon_trainable_variables
Лlayers
Мmetrics
 Нlayer_regularization_losses
Оlayer_metrics
э	variables
юtrainable_variables
€regularization_losses
Б__call__
+В&call_and_return_all_conditional_losses
'В"call_and_return_conditional_losses* 
* 
* 
* 

Щ0
Ъ1*

Щ0
Ъ1*
* 
Ю
Пnon_trainable_variables
Рlayers
Сmetrics
 Тlayer_regularization_losses
Уlayer_metrics
Д	variables
Еtrainable_variables
Жregularization_losses
И__call__
+Й&call_and_return_all_conditional_losses
'Й"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
4
Р0
С1
Т2
У3
Ф4
Х5*
* 
* 
* 
* 
* 
* 
* 

Ы0
Ь1*

Ы0
Ь1*
* 
Ю
Фnon_trainable_variables
Хlayers
Цmetrics
 Чlayer_regularization_losses
Шlayer_metrics
»	variables
…trainable_variables
 regularization_losses
ћ__call__
+Ќ&call_and_return_all_conditional_losses
'Ќ"call_and_return_conditional_losses*
* 
* 
* 
* 

Э0
Ю1*

Э0
Ю1*
* 
Ю
Щnon_trainable_variables
Ъlayers
Ыmetrics
 Ьlayer_regularization_losses
Эlayer_metrics
–	variables
—trainable_variables
“regularization_losses
‘__call__
+’&call_and_return_all_conditional_losses
'’"call_and_return_conditional_losses*
* 
* 
* 
* 

Я0
†1*

Я0
†1*
* 
Ю
Юnon_trainable_variables
Яlayers
†metrics
 °layer_regularization_losses
Ґlayer_metrics
Ў	variables
ўtrainable_variables
Џregularization_losses
№__call__
+Ё&call_and_return_all_conditional_losses
'Ё"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 
* 
Ь
£non_trainable_variables
§layers
•metrics
 ¶layer_regularization_losses
Іlayer_metrics
а	variables
бtrainable_variables
вregularization_losses
д__call__
+е&call_and_return_all_conditional_losses
'е"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
Ь
®non_trainable_variables
©layers
™metrics
 Ђlayer_regularization_losses
ђlayer_metrics
ж	variables
зtrainable_variables
иregularization_losses
к__call__
+л&call_and_return_all_conditional_losses
'л"call_and_return_conditional_losses* 
* 
* 
* 

°0
Ґ1*

°0
Ґ1*
* 
Ю
≠non_trainable_variables
Ѓlayers
ѓmetrics
 ∞layer_regularization_losses
±layer_metrics
н	variables
оtrainable_variables
пregularization_losses
с__call__
+т&call_and_return_all_conditional_losses
'т"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
4
–0
—1
“2
”3
‘4
’5*
* 
* 
* 
* 
* 
* 
* 

£0
§1*

£0
§1*
* 
Ю
≤non_trainable_variables
≥layers
іmetrics
 µlayer_regularization_losses
ґlayer_metrics
±	variables
≤trainable_variables
≥regularization_losses
µ__call__
+ґ&call_and_return_all_conditional_losses
'ґ"call_and_return_conditional_losses*
* 
* 
* 
* 

•0
¶1*

•0
¶1*
* 
Ю
Јnon_trainable_variables
Єlayers
єmetrics
 Їlayer_regularization_losses
їlayer_metrics
є	variables
Їtrainable_variables
їregularization_losses
љ__call__
+Њ&call_and_return_all_conditional_losses
'Њ"call_and_return_conditional_losses*
* 
* 
* 
* 

І0
®1*

І0
®1*
* 
Ю
Љnon_trainable_variables
љlayers
Њmetrics
 њlayer_regularization_losses
јlayer_metrics
Ѕ	variables
¬trainable_variables
√regularization_losses
≈__call__
+∆&call_and_return_all_conditional_losses
'∆"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 
* 
Ь
Ѕnon_trainable_variables
¬layers
√metrics
 ƒlayer_regularization_losses
≈layer_metrics
…	variables
 trainable_variables
Ћregularization_losses
Ќ__call__
+ќ&call_and_return_all_conditional_losses
'ќ"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
Ь
∆non_trainable_variables
«layers
»metrics
 …layer_regularization_losses
 layer_metrics
ѕ	variables
–trainable_variables
—regularization_losses
”__call__
+‘&call_and_return_all_conditional_losses
'‘"call_and_return_conditional_losses* 
* 
* 
* 

©0
™1*

©0
™1*
* 
Ю
Ћnon_trainable_variables
ћlayers
Ќmetrics
 ќlayer_regularization_losses
ѕlayer_metrics
÷	variables
„trainable_variables
Ўregularization_losses
Џ__call__
+џ&call_and_return_all_conditional_losses
'џ"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
<
–	variables
—	keras_api

“total

”count*
M
‘	variables
’	keras_api

÷total

„count
Ў
_fn_kwargs*
ga
VARIABLE_VALUEAdamW/m/embedding/embeddings1optimizer/_variables/0/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUEAdamW/v/embedding/embeddings1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEAdamW/m/embedding_1/embeddings1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEAdamW/v/embedding_1/embeddings1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdamW/m/tokenize/kernel1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdamW/v/tokenize/kernel1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUE)AdamW/m/multi_head_attention/query/kernel1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUE)AdamW/v/multi_head_attention/query/kernel1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUE'AdamW/m/multi_head_attention/query/bias1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUE'AdamW/v/multi_head_attention/query/bias1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUE*
sm
VARIABLE_VALUE'AdamW/m/multi_head_attention/key/kernel2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUE*
sm
VARIABLE_VALUE'AdamW/v/multi_head_attention/key/kernel2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUE%AdamW/m/multi_head_attention/key/bias2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUE%AdamW/v/multi_head_attention/key/bias2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUE*
uo
VARIABLE_VALUE)AdamW/m/multi_head_attention/value/kernel2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUE*
uo
VARIABLE_VALUE)AdamW/v/multi_head_attention/value/kernel2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUE*
sm
VARIABLE_VALUE'AdamW/m/multi_head_attention/value/bias2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUE*
sm
VARIABLE_VALUE'AdamW/v/multi_head_attention/value/bias2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUE*
Аz
VARIABLE_VALUE4AdamW/m/multi_head_attention/attention_output/kernel2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUE*
Аz
VARIABLE_VALUE4AdamW/v/multi_head_attention/attention_output/kernel2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE2AdamW/m/multi_head_attention/attention_output/bias2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE2AdamW/v/multi_head_attention/attention_output/bias2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE!AdamW/m/layer_normalization/gamma2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE!AdamW/v/layer_normalization/gamma2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUE*
lf
VARIABLE_VALUE AdamW/m/layer_normalization/beta2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUE*
lf
VARIABLE_VALUE AdamW/v/layer_normalization/beta2optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdamW/m/dense/kernel2optimizer/_variables/26/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdamW/v/dense/kernel2optimizer/_variables/27/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdamW/m/dense_1/kernel2optimizer/_variables/28/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdamW/v/dense_1/kernel2optimizer/_variables/29/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUE#AdamW/m/layer_normalization_1/gamma2optimizer/_variables/30/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUE#AdamW/v/layer_normalization_1/gamma2optimizer/_variables/31/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE"AdamW/m/layer_normalization_1/beta2optimizer/_variables/32/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE"AdamW/v/layer_normalization_1/beta2optimizer/_variables/33/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE+AdamW/m/multi_head_attention_1/query/kernel2optimizer/_variables/34/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE+AdamW/v/multi_head_attention_1/query/kernel2optimizer/_variables/35/.ATTRIBUTES/VARIABLE_VALUE*
uo
VARIABLE_VALUE)AdamW/m/multi_head_attention_1/query/bias2optimizer/_variables/36/.ATTRIBUTES/VARIABLE_VALUE*
uo
VARIABLE_VALUE)AdamW/v/multi_head_attention_1/query/bias2optimizer/_variables/37/.ATTRIBUTES/VARIABLE_VALUE*
uo
VARIABLE_VALUE)AdamW/m/multi_head_attention_1/key/kernel2optimizer/_variables/38/.ATTRIBUTES/VARIABLE_VALUE*
uo
VARIABLE_VALUE)AdamW/v/multi_head_attention_1/key/kernel2optimizer/_variables/39/.ATTRIBUTES/VARIABLE_VALUE*
sm
VARIABLE_VALUE'AdamW/m/multi_head_attention_1/key/bias2optimizer/_variables/40/.ATTRIBUTES/VARIABLE_VALUE*
sm
VARIABLE_VALUE'AdamW/v/multi_head_attention_1/key/bias2optimizer/_variables/41/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE+AdamW/m/multi_head_attention_1/value/kernel2optimizer/_variables/42/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE+AdamW/v/multi_head_attention_1/value/kernel2optimizer/_variables/43/.ATTRIBUTES/VARIABLE_VALUE*
uo
VARIABLE_VALUE)AdamW/m/multi_head_attention_1/value/bias2optimizer/_variables/44/.ATTRIBUTES/VARIABLE_VALUE*
uo
VARIABLE_VALUE)AdamW/v/multi_head_attention_1/value/bias2optimizer/_variables/45/.ATTRIBUTES/VARIABLE_VALUE*
В|
VARIABLE_VALUE6AdamW/m/multi_head_attention_1/attention_output/kernel2optimizer/_variables/46/.ATTRIBUTES/VARIABLE_VALUE*
В|
VARIABLE_VALUE6AdamW/v/multi_head_attention_1/attention_output/kernel2optimizer/_variables/47/.ATTRIBUTES/VARIABLE_VALUE*
Аz
VARIABLE_VALUE4AdamW/m/multi_head_attention_1/attention_output/bias2optimizer/_variables/48/.ATTRIBUTES/VARIABLE_VALUE*
Аz
VARIABLE_VALUE4AdamW/v/multi_head_attention_1/attention_output/bias2optimizer/_variables/49/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUE#AdamW/m/layer_normalization_2/gamma2optimizer/_variables/50/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUE#AdamW/v/layer_normalization_2/gamma2optimizer/_variables/51/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE"AdamW/m/layer_normalization_2/beta2optimizer/_variables/52/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE"AdamW/v/layer_normalization_2/beta2optimizer/_variables/53/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdamW/m/dense_2/kernel2optimizer/_variables/54/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdamW/v/dense_2/kernel2optimizer/_variables/55/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdamW/m/dense_3/kernel2optimizer/_variables/56/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdamW/v/dense_3/kernel2optimizer/_variables/57/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUE#AdamW/m/layer_normalization_3/gamma2optimizer/_variables/58/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUE#AdamW/v/layer_normalization_3/gamma2optimizer/_variables/59/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE"AdamW/m/layer_normalization_3/beta2optimizer/_variables/60/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE"AdamW/v/layer_normalization_3/beta2optimizer/_variables/61/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE+AdamW/m/multi_head_attention_2/query/kernel2optimizer/_variables/62/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE+AdamW/v/multi_head_attention_2/query/kernel2optimizer/_variables/63/.ATTRIBUTES/VARIABLE_VALUE*
uo
VARIABLE_VALUE)AdamW/m/multi_head_attention_2/query/bias2optimizer/_variables/64/.ATTRIBUTES/VARIABLE_VALUE*
uo
VARIABLE_VALUE)AdamW/v/multi_head_attention_2/query/bias2optimizer/_variables/65/.ATTRIBUTES/VARIABLE_VALUE*
uo
VARIABLE_VALUE)AdamW/m/multi_head_attention_2/key/kernel2optimizer/_variables/66/.ATTRIBUTES/VARIABLE_VALUE*
uo
VARIABLE_VALUE)AdamW/v/multi_head_attention_2/key/kernel2optimizer/_variables/67/.ATTRIBUTES/VARIABLE_VALUE*
sm
VARIABLE_VALUE'AdamW/m/multi_head_attention_2/key/bias2optimizer/_variables/68/.ATTRIBUTES/VARIABLE_VALUE*
sm
VARIABLE_VALUE'AdamW/v/multi_head_attention_2/key/bias2optimizer/_variables/69/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE+AdamW/m/multi_head_attention_2/value/kernel2optimizer/_variables/70/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE+AdamW/v/multi_head_attention_2/value/kernel2optimizer/_variables/71/.ATTRIBUTES/VARIABLE_VALUE*
uo
VARIABLE_VALUE)AdamW/m/multi_head_attention_2/value/bias2optimizer/_variables/72/.ATTRIBUTES/VARIABLE_VALUE*
uo
VARIABLE_VALUE)AdamW/v/multi_head_attention_2/value/bias2optimizer/_variables/73/.ATTRIBUTES/VARIABLE_VALUE*
В|
VARIABLE_VALUE6AdamW/m/multi_head_attention_2/attention_output/kernel2optimizer/_variables/74/.ATTRIBUTES/VARIABLE_VALUE*
В|
VARIABLE_VALUE6AdamW/v/multi_head_attention_2/attention_output/kernel2optimizer/_variables/75/.ATTRIBUTES/VARIABLE_VALUE*
Аz
VARIABLE_VALUE4AdamW/m/multi_head_attention_2/attention_output/bias2optimizer/_variables/76/.ATTRIBUTES/VARIABLE_VALUE*
Аz
VARIABLE_VALUE4AdamW/v/multi_head_attention_2/attention_output/bias2optimizer/_variables/77/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUE#AdamW/m/layer_normalization_4/gamma2optimizer/_variables/78/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUE#AdamW/v/layer_normalization_4/gamma2optimizer/_variables/79/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE"AdamW/m/layer_normalization_4/beta2optimizer/_variables/80/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE"AdamW/v/layer_normalization_4/beta2optimizer/_variables/81/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdamW/m/dense_4/kernel2optimizer/_variables/82/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdamW/v/dense_4/kernel2optimizer/_variables/83/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdamW/m/dense_5/kernel2optimizer/_variables/84/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdamW/v/dense_5/kernel2optimizer/_variables/85/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUE#AdamW/m/layer_normalization_5/gamma2optimizer/_variables/86/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUE#AdamW/v/layer_normalization_5/gamma2optimizer/_variables/87/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE"AdamW/m/layer_normalization_5/beta2optimizer/_variables/88/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE"AdamW/v/layer_normalization_5/beta2optimizer/_variables/89/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdamW/m/dense_6/kernel2optimizer/_variables/90/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdamW/v/dense_6/kernel2optimizer/_variables/91/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

“0
”1*

–	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

÷0
„1*

‘	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
ЩA
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename(embedding/embeddings/Read/ReadVariableOp*embedding_1/embeddings/Read/ReadVariableOp#tokenize/kernel/Read/ReadVariableOp-layer_normalization/gamma/Read/ReadVariableOp,layer_normalization/beta/Read/ReadVariableOp dense/kernel/Read/ReadVariableOp"dense_1/kernel/Read/ReadVariableOp/layer_normalization_1/gamma/Read/ReadVariableOp.layer_normalization_1/beta/Read/ReadVariableOp/layer_normalization_2/gamma/Read/ReadVariableOp.layer_normalization_2/beta/Read/ReadVariableOp"dense_2/kernel/Read/ReadVariableOp"dense_3/kernel/Read/ReadVariableOp/layer_normalization_3/gamma/Read/ReadVariableOp.layer_normalization_3/beta/Read/ReadVariableOp/layer_normalization_4/gamma/Read/ReadVariableOp.layer_normalization_4/beta/Read/ReadVariableOp"dense_4/kernel/Read/ReadVariableOp"dense_5/kernel/Read/ReadVariableOp/layer_normalization_5/gamma/Read/ReadVariableOp.layer_normalization_5/beta/Read/ReadVariableOp"dense_6/kernel/Read/ReadVariableOp5multi_head_attention/query/kernel/Read/ReadVariableOp3multi_head_attention/query/bias/Read/ReadVariableOp3multi_head_attention/key/kernel/Read/ReadVariableOp1multi_head_attention/key/bias/Read/ReadVariableOp5multi_head_attention/value/kernel/Read/ReadVariableOp3multi_head_attention/value/bias/Read/ReadVariableOp@multi_head_attention/attention_output/kernel/Read/ReadVariableOp>multi_head_attention/attention_output/bias/Read/ReadVariableOp7multi_head_attention_1/query/kernel/Read/ReadVariableOp5multi_head_attention_1/query/bias/Read/ReadVariableOp5multi_head_attention_1/key/kernel/Read/ReadVariableOp3multi_head_attention_1/key/bias/Read/ReadVariableOp7multi_head_attention_1/value/kernel/Read/ReadVariableOp5multi_head_attention_1/value/bias/Read/ReadVariableOpBmulti_head_attention_1/attention_output/kernel/Read/ReadVariableOp@multi_head_attention_1/attention_output/bias/Read/ReadVariableOp7multi_head_attention_2/query/kernel/Read/ReadVariableOp5multi_head_attention_2/query/bias/Read/ReadVariableOp5multi_head_attention_2/key/kernel/Read/ReadVariableOp3multi_head_attention_2/key/bias/Read/ReadVariableOp7multi_head_attention_2/value/kernel/Read/ReadVariableOp5multi_head_attention_2/value/bias/Read/ReadVariableOpBmulti_head_attention_2/attention_output/kernel/Read/ReadVariableOp@multi_head_attention_2/attention_output/bias/Read/ReadVariableOpiteration/Read/ReadVariableOp!learning_rate/Read/ReadVariableOp0AdamW/m/embedding/embeddings/Read/ReadVariableOp0AdamW/v/embedding/embeddings/Read/ReadVariableOp2AdamW/m/embedding_1/embeddings/Read/ReadVariableOp2AdamW/v/embedding_1/embeddings/Read/ReadVariableOp+AdamW/m/tokenize/kernel/Read/ReadVariableOp+AdamW/v/tokenize/kernel/Read/ReadVariableOp=AdamW/m/multi_head_attention/query/kernel/Read/ReadVariableOp=AdamW/v/multi_head_attention/query/kernel/Read/ReadVariableOp;AdamW/m/multi_head_attention/query/bias/Read/ReadVariableOp;AdamW/v/multi_head_attention/query/bias/Read/ReadVariableOp;AdamW/m/multi_head_attention/key/kernel/Read/ReadVariableOp;AdamW/v/multi_head_attention/key/kernel/Read/ReadVariableOp9AdamW/m/multi_head_attention/key/bias/Read/ReadVariableOp9AdamW/v/multi_head_attention/key/bias/Read/ReadVariableOp=AdamW/m/multi_head_attention/value/kernel/Read/ReadVariableOp=AdamW/v/multi_head_attention/value/kernel/Read/ReadVariableOp;AdamW/m/multi_head_attention/value/bias/Read/ReadVariableOp;AdamW/v/multi_head_attention/value/bias/Read/ReadVariableOpHAdamW/m/multi_head_attention/attention_output/kernel/Read/ReadVariableOpHAdamW/v/multi_head_attention/attention_output/kernel/Read/ReadVariableOpFAdamW/m/multi_head_attention/attention_output/bias/Read/ReadVariableOpFAdamW/v/multi_head_attention/attention_output/bias/Read/ReadVariableOp5AdamW/m/layer_normalization/gamma/Read/ReadVariableOp5AdamW/v/layer_normalization/gamma/Read/ReadVariableOp4AdamW/m/layer_normalization/beta/Read/ReadVariableOp4AdamW/v/layer_normalization/beta/Read/ReadVariableOp(AdamW/m/dense/kernel/Read/ReadVariableOp(AdamW/v/dense/kernel/Read/ReadVariableOp*AdamW/m/dense_1/kernel/Read/ReadVariableOp*AdamW/v/dense_1/kernel/Read/ReadVariableOp7AdamW/m/layer_normalization_1/gamma/Read/ReadVariableOp7AdamW/v/layer_normalization_1/gamma/Read/ReadVariableOp6AdamW/m/layer_normalization_1/beta/Read/ReadVariableOp6AdamW/v/layer_normalization_1/beta/Read/ReadVariableOp?AdamW/m/multi_head_attention_1/query/kernel/Read/ReadVariableOp?AdamW/v/multi_head_attention_1/query/kernel/Read/ReadVariableOp=AdamW/m/multi_head_attention_1/query/bias/Read/ReadVariableOp=AdamW/v/multi_head_attention_1/query/bias/Read/ReadVariableOp=AdamW/m/multi_head_attention_1/key/kernel/Read/ReadVariableOp=AdamW/v/multi_head_attention_1/key/kernel/Read/ReadVariableOp;AdamW/m/multi_head_attention_1/key/bias/Read/ReadVariableOp;AdamW/v/multi_head_attention_1/key/bias/Read/ReadVariableOp?AdamW/m/multi_head_attention_1/value/kernel/Read/ReadVariableOp?AdamW/v/multi_head_attention_1/value/kernel/Read/ReadVariableOp=AdamW/m/multi_head_attention_1/value/bias/Read/ReadVariableOp=AdamW/v/multi_head_attention_1/value/bias/Read/ReadVariableOpJAdamW/m/multi_head_attention_1/attention_output/kernel/Read/ReadVariableOpJAdamW/v/multi_head_attention_1/attention_output/kernel/Read/ReadVariableOpHAdamW/m/multi_head_attention_1/attention_output/bias/Read/ReadVariableOpHAdamW/v/multi_head_attention_1/attention_output/bias/Read/ReadVariableOp7AdamW/m/layer_normalization_2/gamma/Read/ReadVariableOp7AdamW/v/layer_normalization_2/gamma/Read/ReadVariableOp6AdamW/m/layer_normalization_2/beta/Read/ReadVariableOp6AdamW/v/layer_normalization_2/beta/Read/ReadVariableOp*AdamW/m/dense_2/kernel/Read/ReadVariableOp*AdamW/v/dense_2/kernel/Read/ReadVariableOp*AdamW/m/dense_3/kernel/Read/ReadVariableOp*AdamW/v/dense_3/kernel/Read/ReadVariableOp7AdamW/m/layer_normalization_3/gamma/Read/ReadVariableOp7AdamW/v/layer_normalization_3/gamma/Read/ReadVariableOp6AdamW/m/layer_normalization_3/beta/Read/ReadVariableOp6AdamW/v/layer_normalization_3/beta/Read/ReadVariableOp?AdamW/m/multi_head_attention_2/query/kernel/Read/ReadVariableOp?AdamW/v/multi_head_attention_2/query/kernel/Read/ReadVariableOp=AdamW/m/multi_head_attention_2/query/bias/Read/ReadVariableOp=AdamW/v/multi_head_attention_2/query/bias/Read/ReadVariableOp=AdamW/m/multi_head_attention_2/key/kernel/Read/ReadVariableOp=AdamW/v/multi_head_attention_2/key/kernel/Read/ReadVariableOp;AdamW/m/multi_head_attention_2/key/bias/Read/ReadVariableOp;AdamW/v/multi_head_attention_2/key/bias/Read/ReadVariableOp?AdamW/m/multi_head_attention_2/value/kernel/Read/ReadVariableOp?AdamW/v/multi_head_attention_2/value/kernel/Read/ReadVariableOp=AdamW/m/multi_head_attention_2/value/bias/Read/ReadVariableOp=AdamW/v/multi_head_attention_2/value/bias/Read/ReadVariableOpJAdamW/m/multi_head_attention_2/attention_output/kernel/Read/ReadVariableOpJAdamW/v/multi_head_attention_2/attention_output/kernel/Read/ReadVariableOpHAdamW/m/multi_head_attention_2/attention_output/bias/Read/ReadVariableOpHAdamW/v/multi_head_attention_2/attention_output/bias/Read/ReadVariableOp7AdamW/m/layer_normalization_4/gamma/Read/ReadVariableOp7AdamW/v/layer_normalization_4/gamma/Read/ReadVariableOp6AdamW/m/layer_normalization_4/beta/Read/ReadVariableOp6AdamW/v/layer_normalization_4/beta/Read/ReadVariableOp*AdamW/m/dense_4/kernel/Read/ReadVariableOp*AdamW/v/dense_4/kernel/Read/ReadVariableOp*AdamW/m/dense_5/kernel/Read/ReadVariableOp*AdamW/v/dense_5/kernel/Read/ReadVariableOp7AdamW/m/layer_normalization_5/gamma/Read/ReadVariableOp7AdamW/v/layer_normalization_5/gamma/Read/ReadVariableOp6AdamW/m/layer_normalization_5/beta/Read/ReadVariableOp6AdamW/v/layer_normalization_5/beta/Read/ReadVariableOp*AdamW/m/dense_6/kernel/Read/ReadVariableOp*AdamW/v/dense_6/kernel/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOpConst_1*†
TinШ
Х2Т	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *'
f"R 
__inference__traced_save_25106
“*
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameembedding/embeddingsembedding_1/embeddingstokenize/kernellayer_normalization/gammalayer_normalization/betadense/kerneldense_1/kernellayer_normalization_1/gammalayer_normalization_1/betalayer_normalization_2/gammalayer_normalization_2/betadense_2/kerneldense_3/kernellayer_normalization_3/gammalayer_normalization_3/betalayer_normalization_4/gammalayer_normalization_4/betadense_4/kerneldense_5/kernellayer_normalization_5/gammalayer_normalization_5/betadense_6/kernel!multi_head_attention/query/kernelmulti_head_attention/query/biasmulti_head_attention/key/kernelmulti_head_attention/key/bias!multi_head_attention/value/kernelmulti_head_attention/value/bias,multi_head_attention/attention_output/kernel*multi_head_attention/attention_output/bias#multi_head_attention_1/query/kernel!multi_head_attention_1/query/bias!multi_head_attention_1/key/kernelmulti_head_attention_1/key/bias#multi_head_attention_1/value/kernel!multi_head_attention_1/value/bias.multi_head_attention_1/attention_output/kernel,multi_head_attention_1/attention_output/bias#multi_head_attention_2/query/kernel!multi_head_attention_2/query/bias!multi_head_attention_2/key/kernelmulti_head_attention_2/key/bias#multi_head_attention_2/value/kernel!multi_head_attention_2/value/bias.multi_head_attention_2/attention_output/kernel,multi_head_attention_2/attention_output/bias	iterationlearning_rateAdamW/m/embedding/embeddingsAdamW/v/embedding/embeddingsAdamW/m/embedding_1/embeddingsAdamW/v/embedding_1/embeddingsAdamW/m/tokenize/kernelAdamW/v/tokenize/kernel)AdamW/m/multi_head_attention/query/kernel)AdamW/v/multi_head_attention/query/kernel'AdamW/m/multi_head_attention/query/bias'AdamW/v/multi_head_attention/query/bias'AdamW/m/multi_head_attention/key/kernel'AdamW/v/multi_head_attention/key/kernel%AdamW/m/multi_head_attention/key/bias%AdamW/v/multi_head_attention/key/bias)AdamW/m/multi_head_attention/value/kernel)AdamW/v/multi_head_attention/value/kernel'AdamW/m/multi_head_attention/value/bias'AdamW/v/multi_head_attention/value/bias4AdamW/m/multi_head_attention/attention_output/kernel4AdamW/v/multi_head_attention/attention_output/kernel2AdamW/m/multi_head_attention/attention_output/bias2AdamW/v/multi_head_attention/attention_output/bias!AdamW/m/layer_normalization/gamma!AdamW/v/layer_normalization/gamma AdamW/m/layer_normalization/beta AdamW/v/layer_normalization/betaAdamW/m/dense/kernelAdamW/v/dense/kernelAdamW/m/dense_1/kernelAdamW/v/dense_1/kernel#AdamW/m/layer_normalization_1/gamma#AdamW/v/layer_normalization_1/gamma"AdamW/m/layer_normalization_1/beta"AdamW/v/layer_normalization_1/beta+AdamW/m/multi_head_attention_1/query/kernel+AdamW/v/multi_head_attention_1/query/kernel)AdamW/m/multi_head_attention_1/query/bias)AdamW/v/multi_head_attention_1/query/bias)AdamW/m/multi_head_attention_1/key/kernel)AdamW/v/multi_head_attention_1/key/kernel'AdamW/m/multi_head_attention_1/key/bias'AdamW/v/multi_head_attention_1/key/bias+AdamW/m/multi_head_attention_1/value/kernel+AdamW/v/multi_head_attention_1/value/kernel)AdamW/m/multi_head_attention_1/value/bias)AdamW/v/multi_head_attention_1/value/bias6AdamW/m/multi_head_attention_1/attention_output/kernel6AdamW/v/multi_head_attention_1/attention_output/kernel4AdamW/m/multi_head_attention_1/attention_output/bias4AdamW/v/multi_head_attention_1/attention_output/bias#AdamW/m/layer_normalization_2/gamma#AdamW/v/layer_normalization_2/gamma"AdamW/m/layer_normalization_2/beta"AdamW/v/layer_normalization_2/betaAdamW/m/dense_2/kernelAdamW/v/dense_2/kernelAdamW/m/dense_3/kernelAdamW/v/dense_3/kernel#AdamW/m/layer_normalization_3/gamma#AdamW/v/layer_normalization_3/gamma"AdamW/m/layer_normalization_3/beta"AdamW/v/layer_normalization_3/beta+AdamW/m/multi_head_attention_2/query/kernel+AdamW/v/multi_head_attention_2/query/kernel)AdamW/m/multi_head_attention_2/query/bias)AdamW/v/multi_head_attention_2/query/bias)AdamW/m/multi_head_attention_2/key/kernel)AdamW/v/multi_head_attention_2/key/kernel'AdamW/m/multi_head_attention_2/key/bias'AdamW/v/multi_head_attention_2/key/bias+AdamW/m/multi_head_attention_2/value/kernel+AdamW/v/multi_head_attention_2/value/kernel)AdamW/m/multi_head_attention_2/value/bias)AdamW/v/multi_head_attention_2/value/bias6AdamW/m/multi_head_attention_2/attention_output/kernel6AdamW/v/multi_head_attention_2/attention_output/kernel4AdamW/m/multi_head_attention_2/attention_output/bias4AdamW/v/multi_head_attention_2/attention_output/bias#AdamW/m/layer_normalization_4/gamma#AdamW/v/layer_normalization_4/gamma"AdamW/m/layer_normalization_4/beta"AdamW/v/layer_normalization_4/betaAdamW/m/dense_4/kernelAdamW/v/dense_4/kernelAdamW/m/dense_5/kernelAdamW/v/dense_5/kernel#AdamW/m/layer_normalization_5/gamma#AdamW/v/layer_normalization_5/gamma"AdamW/m/layer_normalization_5/beta"AdamW/v/layer_normalization_5/betaAdamW/m/dense_6/kernelAdamW/v/dense_6/kerneltotal_1count_1totalcount*Я
TinЧ
Ф2С*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В **
f%R#
!__inference__traced_restore_25548Ґњ'
•
≈
#__inference_signature_wrapper_22613
input_1
input_2
unknown
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:

unknown_11:

unknown_12:

unknown_13:

unknown_14:

unknown_15:

unknown_16: 

unknown_17:

unknown_18: 

unknown_19:

unknown_20: 

unknown_21:

unknown_22: 

unknown_23:

unknown_24:

unknown_25:

unknown_26:

unknown_27:

unknown_28:

unknown_29:

unknown_30: 

unknown_31:

unknown_32: 

unknown_33:

unknown_34: 

unknown_35:

unknown_36: 

unknown_37:

unknown_38:

unknown_39:

unknown_40:

unknown_41:

unknown_42:

unknown_43:

unknown_44:

unknown_45:
identityИҐStatefulPartitionedCallђ
StatefulPartitionedCallStatefulPartitionedCallinput_1input_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44
unknown_45*<
Tin5
321*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*P
_read_only_resource_inputs2
0.	
 !"#$%&'()*+,-./0*-
config_proto

CPU

GPU 2J 8В *)
f$R"
 __inference__wrapped_model_20413o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Щ
_input_shapesЗ
Д:€€€€€€€€€:€€€€€€€€€: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:€€€€€€€€€
!
_user_specified_name	input_1:PL
'
_output_shapes
:€€€€€€€€€
!
_user_specified_name	input_2:

_output_shapes
: 
Р

a
B__inference_dropout_layer_call_and_return_conditional_losses_21560

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *д8О?h
dropout/MulMulinputsdropout/Const:output:0*
T0*+
_output_shapes
:€€€€€€€€€	C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:Р
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*+
_output_shapes
:€€€€€€€€€	*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ=™
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:€€€€€€€€€	s
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:€€€€€€€€€	m
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*+
_output_shapes
:€€€€€€€€€	]
IdentityIdentitydropout/Mul_1:z:0*
T0*+
_output_shapes
:€€€€€€€€€	"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€	:S O
+
_output_shapes
:€€€€€€€€€	
 
_user_specified_nameinputs
в1
ш
O__inference_multi_head_attention_layer_call_and_return_conditional_losses_21664	
query	
valueA
+query_einsum_einsum_readvariableop_resource:3
!query_add_readvariableop_resource:?
)key_einsum_einsum_readvariableop_resource:1
key_add_readvariableop_resource:A
+value_einsum_einsum_readvariableop_resource:3
!value_add_readvariableop_resource:L
6attention_output_einsum_einsum_readvariableop_resource::
,attention_output_add_readvariableop_resource:
identityИҐ#attention_output/add/ReadVariableOpҐ-attention_output/einsum/Einsum/ReadVariableOpҐkey/add/ReadVariableOpҐ key/einsum/Einsum/ReadVariableOpҐquery/add/ReadVariableOpҐ"query/einsum/Einsum/ReadVariableOpҐvalue/add/ReadVariableOpҐ"value/einsum/Einsum/ReadVariableOpТ
"query/einsum/Einsum/ReadVariableOpReadVariableOp+query_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0∞
query/einsum/EinsumEinsumquery*query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:€€€€€€€€€	*
equationabc,cde->abdez
query/add/ReadVariableOpReadVariableOp!query_add_readvariableop_resource*
_output_shapes

:*
dtype0М
	query/addAddV2query/einsum/Einsum:output:0 query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€	О
 key/einsum/Einsum/ReadVariableOpReadVariableOp)key_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0ђ
key/einsum/EinsumEinsumvalue(key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:€€€€€€€€€	*
equationabc,cde->abdev
key/add/ReadVariableOpReadVariableOpkey_add_readvariableop_resource*
_output_shapes

:*
dtype0Ж
key/addAddV2key/einsum/Einsum:output:0key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€	Т
"value/einsum/Einsum/ReadVariableOpReadVariableOp+value_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0∞
value/einsum/EinsumEinsumvalue*value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:€€€€€€€€€	*
equationabc,cde->abdez
value/add/ReadVariableOpReadVariableOp!value_add_readvariableop_resource*
_output_shapes

:*
dtype0М
	value/addAddV2value/einsum/Einsum:output:0 value/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€	J
Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>c
MulMulquery/add:z:0Mul/y:output:0*
T0*/
_output_shapes
:€€€€€€€€€	П
einsum/EinsumEinsumkey/add:z:0Mul:z:0*
N*
T0*/
_output_shapes
:€€€€€€€€€		*
equationaecd,abcd->acbel
softmax/SoftmaxSoftmaxeinsum/Einsum:output:0*
T0*/
_output_shapes
:€€€€€€€€€		Z
dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  †?П
dropout/dropout/MulMulsoftmax/Softmax:softmax:0dropout/dropout/Const:output:0*
T0*/
_output_shapes
:€€€€€€€€€		^
dropout/dropout/ShapeShapesoftmax/Softmax:softmax:0*
T0*
_output_shapes
:§
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape:output:0*
T0*/
_output_shapes
:€€€€€€€€€		*
dtype0c
dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћL>∆
dropout/dropout/GreaterEqualGreaterEqual5dropout/dropout/random_uniform/RandomUniform:output:0'dropout/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:€€€€€€€€€		З
dropout/dropout/CastCast dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:€€€€€€€€€		Й
dropout/dropout/Mul_1Muldropout/dropout/Mul:z:0dropout/dropout/Cast:y:0*
T0*/
_output_shapes
:€€€€€€€€€		•
einsum_1/EinsumEinsumdropout/dropout/Mul_1:z:0value/add:z:0*
N*
T0*/
_output_shapes
:€€€€€€€€€	*
equationacbe,aecd->abcd®
-attention_output/einsum/Einsum/ReadVariableOpReadVariableOp6attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0’
attention_output/einsum/EinsumEinsumeinsum_1/Einsum:output:05attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:€€€€€€€€€	*
equationabcd,cde->abeМ
#attention_output/add/ReadVariableOpReadVariableOp,attention_output_add_readvariableop_resource*
_output_shapes
:*
dtype0©
attention_output/addAddV2'attention_output/einsum/Einsum:output:0+attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€	k
IdentityIdentityattention_output/add:z:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€	Ў
NoOpNoOp$^attention_output/add/ReadVariableOp.^attention_output/einsum/Einsum/ReadVariableOp^key/add/ReadVariableOp!^key/einsum/Einsum/ReadVariableOp^query/add/ReadVariableOp#^query/einsum/Einsum/ReadVariableOp^value/add/ReadVariableOp#^value/einsum/Einsum/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:€€€€€€€€€	:€€€€€€€€€	: : : : : : : : 2J
#attention_output/add/ReadVariableOp#attention_output/add/ReadVariableOp2^
-attention_output/einsum/Einsum/ReadVariableOp-attention_output/einsum/Einsum/ReadVariableOp20
key/add/ReadVariableOpkey/add/ReadVariableOp2D
 key/einsum/Einsum/ReadVariableOp key/einsum/Einsum/ReadVariableOp24
query/add/ReadVariableOpquery/add/ReadVariableOp2H
"query/einsum/Einsum/ReadVariableOp"query/einsum/Einsum/ReadVariableOp24
value/add/ReadVariableOpvalue/add/ReadVariableOp2H
"value/einsum/Einsum/ReadVariableOp"value/einsum/Einsum/ReadVariableOp:R N
+
_output_shapes
:€€€€€€€€€	

_user_specified_namequery:RN
+
_output_shapes
:€€€€€€€€€	

_user_specified_namevalue
Ю	
Ґ
F__inference_embedding_1_layer_call_and_return_conditional_losses_23713

inputs(
embedding_lookup_23707:
identityИҐembedding_lookupU
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:€€€€€€€€€є
embedding_lookupResourceGatherembedding_lookup_23707Cast:y:0*
Tindices0*)
_class
loc:@embedding_lookup/23707*+
_output_shapes
:€€€€€€€€€*
dtype0°
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*)
_class
loc:@embedding_lookup/23707*+
_output_shapes
:€€€€€€€€€Б
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:€€€€€€€€€w
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€Y
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:€€€€€€€€€: 2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
Ќ
j
@__inference_add_5_layer_call_and_return_conditional_losses_21051

inputs
inputs_1
identityT
addAddV2inputsinputs_1*
T0*+
_output_shapes
:€€€€€€€€€	S
IdentityIdentityadd:z:0*
T0*+
_output_shapes
:€€€€€€€€€	"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:€€€€€€€€€	:€€€€€€€€€	:S O
+
_output_shapes
:€€€€€€€€€	
 
_user_specified_nameinputs:SO
+
_output_shapes
:€€€€€€€€€	
 
_user_specified_nameinputs
©
C
'__inference_dropout_layer_call_fn_23966

inputs
identity±
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€	* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_20639d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:€€€€€€€€€	"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€	:S O
+
_output_shapes
:€€€€€€€€€	
 
_user_specified_nameinputs
•

+__inference_embedding_1_layer_call_fn_23703

inputs
unknown:
identityИҐStatefulPartitionedCall“
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_embedding_1_layer_call_and_return_conditional_losses_20456s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:€€€€€€€€€: 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
≤
Q
%__inference_add_4_layer_call_fn_24460
inputs_0
inputs_1
identityЉ
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€	* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *I
fDRB
@__inference_add_4_layer_call_and_return_conditional_losses_20938d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:€€€€€€€€€	"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:€€€€€€€€€	:€€€€€€€€€	:U Q
+
_output_shapes
:€€€€€€€€€	
"
_user_specified_name
inputs/0:UQ
+
_output_shapes
:€€€€€€€€€	
"
_user_specified_name
inputs/1
•
{
'__inference_dense_3_layer_call_fn_24236

inputs
unknown:
identityИҐStatefulPartitionedCallќ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€	*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_20832s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€	`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:€€€€€€€€€	: 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€	
 
_user_specified_nameinputs
Ќ
…
%__inference_model_layer_call_fn_22715
inputs_0
inputs_1
unknown
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:

unknown_11:

unknown_12:

unknown_13:

unknown_14:

unknown_15:

unknown_16: 

unknown_17:

unknown_18: 

unknown_19:

unknown_20: 

unknown_21:

unknown_22: 

unknown_23:

unknown_24:

unknown_25:

unknown_26:

unknown_27:

unknown_28:

unknown_29:

unknown_30: 

unknown_31:

unknown_32: 

unknown_33:

unknown_34: 

unknown_35:

unknown_36: 

unknown_37:

unknown_38:

unknown_39:

unknown_40:

unknown_41:

unknown_42:

unknown_43:

unknown_44:

unknown_45:
identityИҐStatefulPartitionedCallќ
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44
unknown_45*<
Tin5
321*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*P
_read_only_resource_inputs2
0.	
 !"#$%&'()*+,-./0*-
config_proto

CPU

GPU 2J 8В *I
fDRB
@__inference_model_layer_call_and_return_conditional_losses_21098o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Щ
_input_shapesЗ
Д:€€€€€€€€€:€€€€€€€€€: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
inputs/1:

_output_shapes
: 
п
П
P__inference_layer_normalization_1_layer_call_and_return_conditional_losses_24031

inputs3
%batchnorm_mul_readvariableop_resource:/
!batchnorm_readvariableop_resource:
identityИҐbatchnorm/ReadVariableOpҐbatchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:М
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:€€€€€€€€€	*
	keep_dims(q
moments/StopGradientStopGradientmoments/mean:output:0*
T0*+
_output_shapes
:€€€€€€€€€	Л
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*+
_output_shapes
:€€€€€€€€€	l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:Ђ
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:€€€€€€€€€	*
	keep_dims(T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *љ7Ж5Б
batchnorm/addAddV2moments/variance:output:0batchnorm/add/y:output:0*
T0*+
_output_shapes
:€€€€€€€€€	a
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*+
_output_shapes
:€€€€€€€€€	~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0Е
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€	g
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€	v
batchnorm/mul_2Mulmoments/mean:output:0batchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€	v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0Б
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*+
_output_shapes
:€€€€€€€€€	v
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*+
_output_shapes
:€€€€€€€€€	f
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€	А
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€	: : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:S O
+
_output_shapes
:€€€€€€€€€	
 
_user_specified_nameinputs
Т

c
D__inference_dropout_2_layer_call_and_return_conditional_losses_21240

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *д8О?h
dropout/MulMulinputsdropout/Const:output:0*
T0*+
_output_shapes
:€€€€€€€€€	C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:Р
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*+
_output_shapes
:€€€€€€€€€	*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ=™
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:€€€€€€€€€	s
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:€€€€€€€€€	m
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*+
_output_shapes
:€€€€€€€€€	]
IdentityIdentitydropout/Mul_1:z:0*
T0*+
_output_shapes
:€€€€€€€€€	"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€	:S O
+
_output_shapes
:€€€€€€€€€	
 
_user_specified_nameinputs
з
b
D__inference_dropout_2_layer_call_and_return_conditional_losses_21043

inputs

identity_1R
IdentityIdentityinputs*
T0*+
_output_shapes
:€€€€€€€€€	_

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:€€€€€€€€€	"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€	:S O
+
_output_shapes
:€€€€€€€€€	
 
_user_specified_nameinputs
п
П
P__inference_layer_normalization_5_layer_call_and_return_conditional_losses_21075

inputs3
%batchnorm_mul_readvariableop_resource:/
!batchnorm_readvariableop_resource:
identityИҐbatchnorm/ReadVariableOpҐbatchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:М
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:€€€€€€€€€	*
	keep_dims(q
moments/StopGradientStopGradientmoments/mean:output:0*
T0*+
_output_shapes
:€€€€€€€€€	Л
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*+
_output_shapes
:€€€€€€€€€	l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:Ђ
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:€€€€€€€€€	*
	keep_dims(T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *љ7Ж5Б
batchnorm/addAddV2moments/variance:output:0batchnorm/add/y:output:0*
T0*+
_output_shapes
:€€€€€€€€€	a
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*+
_output_shapes
:€€€€€€€€€	~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0Е
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€	g
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€	v
batchnorm/mul_2Mulmoments/mean:output:0batchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€	v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0Б
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*+
_output_shapes
:€€€€€€€€€	v
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*+
_output_shapes
:€€€€€€€€€	f
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€	А
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€	: : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:S O
+
_output_shapes
:€€€€€€€€€	
 
_user_specified_nameinputs
ƒ
Ђ
B__inference_dense_6_layer_call_and_return_conditional_losses_21092

inputs0
matmul_readvariableop_resource:
identityИҐMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€_
IdentityIdentityMatMul:product:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€^
NoOpNoOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:€€€€€€€€€: 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
ж
Ю
5__inference_layer_normalization_1_layer_call_fn_24009

inputs
unknown:
	unknown_0:
identityИҐStatefulPartitionedCallй
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Y
fTRR
P__inference_layer_normalization_1_layer_call_and_return_conditional_losses_20671s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€	`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€	: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€	
 
_user_specified_nameinputs
д1
ъ
Q__inference_multi_head_attention_1_layer_call_and_return_conditional_losses_24152	
query	
valueA
+query_einsum_einsum_readvariableop_resource:3
!query_add_readvariableop_resource:?
)key_einsum_einsum_readvariableop_resource:1
key_add_readvariableop_resource:A
+value_einsum_einsum_readvariableop_resource:3
!value_add_readvariableop_resource:L
6attention_output_einsum_einsum_readvariableop_resource::
,attention_output_add_readvariableop_resource:
identityИҐ#attention_output/add/ReadVariableOpҐ-attention_output/einsum/Einsum/ReadVariableOpҐkey/add/ReadVariableOpҐ key/einsum/Einsum/ReadVariableOpҐquery/add/ReadVariableOpҐ"query/einsum/Einsum/ReadVariableOpҐvalue/add/ReadVariableOpҐ"value/einsum/Einsum/ReadVariableOpТ
"query/einsum/Einsum/ReadVariableOpReadVariableOp+query_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0∞
query/einsum/EinsumEinsumquery*query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:€€€€€€€€€	*
equationabc,cde->abdez
query/add/ReadVariableOpReadVariableOp!query_add_readvariableop_resource*
_output_shapes

:*
dtype0М
	query/addAddV2query/einsum/Einsum:output:0 query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€	О
 key/einsum/Einsum/ReadVariableOpReadVariableOp)key_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0ђ
key/einsum/EinsumEinsumvalue(key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:€€€€€€€€€	*
equationabc,cde->abdev
key/add/ReadVariableOpReadVariableOpkey_add_readvariableop_resource*
_output_shapes

:*
dtype0Ж
key/addAddV2key/einsum/Einsum:output:0key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€	Т
"value/einsum/Einsum/ReadVariableOpReadVariableOp+value_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0∞
value/einsum/EinsumEinsumvalue*value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:€€€€€€€€€	*
equationabc,cde->abdez
value/add/ReadVariableOpReadVariableOp!value_add_readvariableop_resource*
_output_shapes

:*
dtype0М
	value/addAddV2value/einsum/Einsum:output:0 value/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€	J
Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>c
MulMulquery/add:z:0Mul/y:output:0*
T0*/
_output_shapes
:€€€€€€€€€	П
einsum/EinsumEinsumkey/add:z:0Mul:z:0*
N*
T0*/
_output_shapes
:€€€€€€€€€		*
equationaecd,abcd->acbel
softmax/SoftmaxSoftmaxeinsum/Einsum:output:0*
T0*/
_output_shapes
:€€€€€€€€€		Z
dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  †?П
dropout/dropout/MulMulsoftmax/Softmax:softmax:0dropout/dropout/Const:output:0*
T0*/
_output_shapes
:€€€€€€€€€		^
dropout/dropout/ShapeShapesoftmax/Softmax:softmax:0*
T0*
_output_shapes
:§
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape:output:0*
T0*/
_output_shapes
:€€€€€€€€€		*
dtype0c
dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћL>∆
dropout/dropout/GreaterEqualGreaterEqual5dropout/dropout/random_uniform/RandomUniform:output:0'dropout/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:€€€€€€€€€		З
dropout/dropout/CastCast dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:€€€€€€€€€		Й
dropout/dropout/Mul_1Muldropout/dropout/Mul:z:0dropout/dropout/Cast:y:0*
T0*/
_output_shapes
:€€€€€€€€€		•
einsum_1/EinsumEinsumdropout/dropout/Mul_1:z:0value/add:z:0*
N*
T0*/
_output_shapes
:€€€€€€€€€	*
equationacbe,aecd->abcd®
-attention_output/einsum/Einsum/ReadVariableOpReadVariableOp6attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0’
attention_output/einsum/EinsumEinsumeinsum_1/Einsum:output:05attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:€€€€€€€€€	*
equationabcd,cde->abeМ
#attention_output/add/ReadVariableOpReadVariableOp,attention_output_add_readvariableop_resource*
_output_shapes
:*
dtype0©
attention_output/addAddV2'attention_output/einsum/Einsum:output:0+attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€	k
IdentityIdentityattention_output/add:z:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€	Ў
NoOpNoOp$^attention_output/add/ReadVariableOp.^attention_output/einsum/Einsum/ReadVariableOp^key/add/ReadVariableOp!^key/einsum/Einsum/ReadVariableOp^query/add/ReadVariableOp#^query/einsum/Einsum/ReadVariableOp^value/add/ReadVariableOp#^value/einsum/Einsum/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:€€€€€€€€€	:€€€€€€€€€	: : : : : : : : 2J
#attention_output/add/ReadVariableOp#attention_output/add/ReadVariableOp2^
-attention_output/einsum/Einsum/ReadVariableOp-attention_output/einsum/Einsum/ReadVariableOp20
key/add/ReadVariableOpkey/add/ReadVariableOp2D
 key/einsum/Einsum/ReadVariableOp key/einsum/Einsum/ReadVariableOp24
query/add/ReadVariableOpquery/add/ReadVariableOp2H
"query/einsum/Einsum/ReadVariableOp"query/einsum/Einsum/ReadVariableOp24
value/add/ReadVariableOpvalue/add/ReadVariableOp2H
"value/einsum/Einsum/ReadVariableOp"value/einsum/Einsum/ReadVariableOp:R N
+
_output_shapes
:€€€€€€€€€	

_user_specified_namequery:RN
+
_output_shapes
:€€€€€€€€€	

_user_specified_namevalue
в1
ш
O__inference_multi_head_attention_layer_call_and_return_conditional_losses_23850	
query	
valueA
+query_einsum_einsum_readvariableop_resource:3
!query_add_readvariableop_resource:?
)key_einsum_einsum_readvariableop_resource:1
key_add_readvariableop_resource:A
+value_einsum_einsum_readvariableop_resource:3
!value_add_readvariableop_resource:L
6attention_output_einsum_einsum_readvariableop_resource::
,attention_output_add_readvariableop_resource:
identityИҐ#attention_output/add/ReadVariableOpҐ-attention_output/einsum/Einsum/ReadVariableOpҐkey/add/ReadVariableOpҐ key/einsum/Einsum/ReadVariableOpҐquery/add/ReadVariableOpҐ"query/einsum/Einsum/ReadVariableOpҐvalue/add/ReadVariableOpҐ"value/einsum/Einsum/ReadVariableOpТ
"query/einsum/Einsum/ReadVariableOpReadVariableOp+query_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0∞
query/einsum/EinsumEinsumquery*query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:€€€€€€€€€	*
equationabc,cde->abdez
query/add/ReadVariableOpReadVariableOp!query_add_readvariableop_resource*
_output_shapes

:*
dtype0М
	query/addAddV2query/einsum/Einsum:output:0 query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€	О
 key/einsum/Einsum/ReadVariableOpReadVariableOp)key_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0ђ
key/einsum/EinsumEinsumvalue(key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:€€€€€€€€€	*
equationabc,cde->abdev
key/add/ReadVariableOpReadVariableOpkey_add_readvariableop_resource*
_output_shapes

:*
dtype0Ж
key/addAddV2key/einsum/Einsum:output:0key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€	Т
"value/einsum/Einsum/ReadVariableOpReadVariableOp+value_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0∞
value/einsum/EinsumEinsumvalue*value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:€€€€€€€€€	*
equationabc,cde->abdez
value/add/ReadVariableOpReadVariableOp!value_add_readvariableop_resource*
_output_shapes

:*
dtype0М
	value/addAddV2value/einsum/Einsum:output:0 value/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€	J
Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>c
MulMulquery/add:z:0Mul/y:output:0*
T0*/
_output_shapes
:€€€€€€€€€	П
einsum/EinsumEinsumkey/add:z:0Mul:z:0*
N*
T0*/
_output_shapes
:€€€€€€€€€		*
equationaecd,abcd->acbel
softmax/SoftmaxSoftmaxeinsum/Einsum:output:0*
T0*/
_output_shapes
:€€€€€€€€€		Z
dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  †?П
dropout/dropout/MulMulsoftmax/Softmax:softmax:0dropout/dropout/Const:output:0*
T0*/
_output_shapes
:€€€€€€€€€		^
dropout/dropout/ShapeShapesoftmax/Softmax:softmax:0*
T0*
_output_shapes
:§
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape:output:0*
T0*/
_output_shapes
:€€€€€€€€€		*
dtype0c
dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћL>∆
dropout/dropout/GreaterEqualGreaterEqual5dropout/dropout/random_uniform/RandomUniform:output:0'dropout/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:€€€€€€€€€		З
dropout/dropout/CastCast dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:€€€€€€€€€		Й
dropout/dropout/Mul_1Muldropout/dropout/Mul:z:0dropout/dropout/Cast:y:0*
T0*/
_output_shapes
:€€€€€€€€€		•
einsum_1/EinsumEinsumdropout/dropout/Mul_1:z:0value/add:z:0*
N*
T0*/
_output_shapes
:€€€€€€€€€	*
equationacbe,aecd->abcd®
-attention_output/einsum/Einsum/ReadVariableOpReadVariableOp6attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0’
attention_output/einsum/EinsumEinsumeinsum_1/Einsum:output:05attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:€€€€€€€€€	*
equationabcd,cde->abeМ
#attention_output/add/ReadVariableOpReadVariableOp,attention_output_add_readvariableop_resource*
_output_shapes
:*
dtype0©
attention_output/addAddV2'attention_output/einsum/Einsum:output:0+attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€	k
IdentityIdentityattention_output/add:z:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€	Ў
NoOpNoOp$^attention_output/add/ReadVariableOp.^attention_output/einsum/Einsum/ReadVariableOp^key/add/ReadVariableOp!^key/einsum/Einsum/ReadVariableOp^query/add/ReadVariableOp#^query/einsum/Einsum/ReadVariableOp^value/add/ReadVariableOp#^value/einsum/Einsum/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:€€€€€€€€€	:€€€€€€€€€	: : : : : : : : 2J
#attention_output/add/ReadVariableOp#attention_output/add/ReadVariableOp2^
-attention_output/einsum/Einsum/ReadVariableOp-attention_output/einsum/Einsum/ReadVariableOp20
key/add/ReadVariableOpkey/add/ReadVariableOp2D
 key/einsum/Einsum/ReadVariableOp key/einsum/Einsum/ReadVariableOp24
query/add/ReadVariableOpquery/add/ReadVariableOp2H
"query/einsum/Einsum/ReadVariableOp"query/einsum/Einsum/ReadVariableOp24
value/add/ReadVariableOpvalue/add/ReadVariableOp2H
"value/einsum/Einsum/ReadVariableOp"value/einsum/Einsum/ReadVariableOp:R N
+
_output_shapes
:€€€€€€€€€	

_user_specified_namequery:RN
+
_output_shapes
:€€€€€€€€€	

_user_specified_namevalue
Ю*
ъ
Q__inference_multi_head_attention_2_layer_call_and_return_conditional_losses_20914	
query	
valueA
+query_einsum_einsum_readvariableop_resource:3
!query_add_readvariableop_resource:?
)key_einsum_einsum_readvariableop_resource:1
key_add_readvariableop_resource:A
+value_einsum_einsum_readvariableop_resource:3
!value_add_readvariableop_resource:L
6attention_output_einsum_einsum_readvariableop_resource::
,attention_output_add_readvariableop_resource:
identityИҐ#attention_output/add/ReadVariableOpҐ-attention_output/einsum/Einsum/ReadVariableOpҐkey/add/ReadVariableOpҐ key/einsum/Einsum/ReadVariableOpҐquery/add/ReadVariableOpҐ"query/einsum/Einsum/ReadVariableOpҐvalue/add/ReadVariableOpҐ"value/einsum/Einsum/ReadVariableOpТ
"query/einsum/Einsum/ReadVariableOpReadVariableOp+query_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0∞
query/einsum/EinsumEinsumquery*query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:€€€€€€€€€	*
equationabc,cde->abdez
query/add/ReadVariableOpReadVariableOp!query_add_readvariableop_resource*
_output_shapes

:*
dtype0М
	query/addAddV2query/einsum/Einsum:output:0 query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€	О
 key/einsum/Einsum/ReadVariableOpReadVariableOp)key_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0ђ
key/einsum/EinsumEinsumvalue(key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:€€€€€€€€€	*
equationabc,cde->abdev
key/add/ReadVariableOpReadVariableOpkey_add_readvariableop_resource*
_output_shapes

:*
dtype0Ж
key/addAddV2key/einsum/Einsum:output:0key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€	Т
"value/einsum/Einsum/ReadVariableOpReadVariableOp+value_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0∞
value/einsum/EinsumEinsumvalue*value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:€€€€€€€€€	*
equationabc,cde->abdez
value/add/ReadVariableOpReadVariableOp!value_add_readvariableop_resource*
_output_shapes

:*
dtype0М
	value/addAddV2value/einsum/Einsum:output:0 value/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€	J
Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>c
MulMulquery/add:z:0Mul/y:output:0*
T0*/
_output_shapes
:€€€€€€€€€	П
einsum/EinsumEinsumkey/add:z:0Mul:z:0*
N*
T0*/
_output_shapes
:€€€€€€€€€		*
equationaecd,abcd->acbel
softmax/SoftmaxSoftmaxeinsum/Einsum:output:0*
T0*/
_output_shapes
:€€€€€€€€€		q
dropout/IdentityIdentitysoftmax/Softmax:softmax:0*
T0*/
_output_shapes
:€€€€€€€€€		•
einsum_1/EinsumEinsumdropout/Identity:output:0value/add:z:0*
N*
T0*/
_output_shapes
:€€€€€€€€€	*
equationacbe,aecd->abcd®
-attention_output/einsum/Einsum/ReadVariableOpReadVariableOp6attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0’
attention_output/einsum/EinsumEinsumeinsum_1/Einsum:output:05attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:€€€€€€€€€	*
equationabcd,cde->abeМ
#attention_output/add/ReadVariableOpReadVariableOp,attention_output_add_readvariableop_resource*
_output_shapes
:*
dtype0©
attention_output/addAddV2'attention_output/einsum/Einsum:output:0+attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€	k
IdentityIdentityattention_output/add:z:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€	Ў
NoOpNoOp$^attention_output/add/ReadVariableOp.^attention_output/einsum/Einsum/ReadVariableOp^key/add/ReadVariableOp!^key/einsum/Einsum/ReadVariableOp^query/add/ReadVariableOp#^query/einsum/Einsum/ReadVariableOp^value/add/ReadVariableOp#^value/einsum/Einsum/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:€€€€€€€€€	:€€€€€€€€€	: : : : : : : : 2J
#attention_output/add/ReadVariableOp#attention_output/add/ReadVariableOp2^
-attention_output/einsum/Einsum/ReadVariableOp-attention_output/einsum/Einsum/ReadVariableOp20
key/add/ReadVariableOpkey/add/ReadVariableOp2D
 key/einsum/Einsum/ReadVariableOp key/einsum/Einsum/ReadVariableOp24
query/add/ReadVariableOpquery/add/ReadVariableOp2H
"query/einsum/Einsum/ReadVariableOp"query/einsum/Einsum/ReadVariableOp24
value/add/ReadVariableOpvalue/add/ReadVariableOp2H
"value/einsum/Einsum/ReadVariableOp"value/einsum/Einsum/ReadVariableOp:R N
+
_output_shapes
:€€€€€€€€€	

_user_specified_namequery:RN
+
_output_shapes
:€€€€€€€€€	

_user_specified_namevalue
”
j
>__inference_add_layer_call_and_return_conditional_losses_23862
inputs_0
inputs_1
identityV
addAddV2inputs_0inputs_1*
T0*+
_output_shapes
:€€€€€€€€€	S
IdentityIdentityadd:z:0*
T0*+
_output_shapes
:€€€€€€€€€	"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:€€€€€€€€€	:€€€€€€€€€	:U Q
+
_output_shapes
:€€€€€€€€€	
"
_user_specified_name
inputs/0:UQ
+
_output_shapes
:€€€€€€€€€	
"
_user_specified_name
inputs/1
Ќ
j
@__inference_add_4_layer_call_and_return_conditional_losses_20938

inputs
inputs_1
identityT
addAddV2inputsinputs_1*
T0*+
_output_shapes
:€€€€€€€€€	S
IdentityIdentityadd:z:0*
T0*+
_output_shapes
:€€€€€€€€€	"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:€€€€€€€€€	:€€€€€€€€€	:S O
+
_output_shapes
:€€€€€€€€€	
 
_user_specified_nameinputs:SO
+
_output_shapes
:€€€€€€€€€	
 
_user_specified_nameinputs
Т

c
D__inference_dropout_2_layer_call_and_return_conditional_losses_24592

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *д8О?h
dropout/MulMulinputsdropout/Const:output:0*
T0*+
_output_shapes
:€€€€€€€€€	C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:Р
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*+
_output_shapes
:€€€€€€€€€	*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ=™
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:€€€€€€€€€	s
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:€€€€€€€€€	m
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*+
_output_shapes
:€€€€€€€€€	]
IdentityIdentitydropout/Mul_1:z:0*
T0*+
_output_shapes
:€€€€€€€€€	"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€	:S O
+
_output_shapes
:€€€€€€€€€	
 
_user_specified_nameinputs
≤
Q
%__inference_add_3_layer_call_fn_24296
inputs_0
inputs_1
identityЉ
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€	* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *I
fDRB
@__inference_add_3_layer_call_and_return_conditional_losses_20849d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:€€€€€€€€€	"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:€€€€€€€€€	:€€€€€€€€€	:U Q
+
_output_shapes
:€€€€€€€€€	
"
_user_specified_name
inputs/0:UQ
+
_output_shapes
:€€€€€€€€€	
"
_user_specified_name
inputs/1
ц
¶
C__inference_tokenize_layer_call_and_return_conditional_losses_23729

inputs-
mul_readvariableop_resource:
identityИҐmul/ReadVariableOpP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :o

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*+
_output_shapes
:€€€€€€€€€n
mul/ReadVariableOpReadVariableOpmul_readvariableop_resource*
_output_shapes

:*
dtype0q
mulMulExpandDims:output:0mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€Z
IdentityIdentitymul:z:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€[
NoOpNoOp^mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:€€€€€€€€€: 2(
mul/ReadVariableOpmul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
п
П
P__inference_layer_normalization_3_layer_call_and_return_conditional_losses_24333

inputs3
%batchnorm_mul_readvariableop_resource:/
!batchnorm_readvariableop_resource:
identityИҐbatchnorm/ReadVariableOpҐbatchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:М
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:€€€€€€€€€	*
	keep_dims(q
moments/StopGradientStopGradientmoments/mean:output:0*
T0*+
_output_shapes
:€€€€€€€€€	Л
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*+
_output_shapes
:€€€€€€€€€	l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:Ђ
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:€€€€€€€€€	*
	keep_dims(T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *љ7Ж5Б
batchnorm/addAddV2moments/variance:output:0batchnorm/add/y:output:0*
T0*+
_output_shapes
:€€€€€€€€€	a
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*+
_output_shapes
:€€€€€€€€€	~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0Е
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€	g
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€	v
batchnorm/mul_2Mulmoments/mean:output:0batchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€	v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0Б
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*+
_output_shapes
:€€€€€€€€€	v
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*+
_output_shapes
:€€€€€€€€€	f
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€	А
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€	: : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:S O
+
_output_shapes
:€€€€€€€€€	
 
_user_specified_nameinputs
ƒ
±
B__inference_dense_3_layer_call_and_return_conditional_losses_20832

inputs3
!tensordot_readvariableop_resource:
identityИҐTensordot/ReadVariableOpz
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ї
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : њ
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ь
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:y
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:€€€€€€€€€	К
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€К
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : І
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Г
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:€€€€€€€€€	e
IdentityIdentityTensordot:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€	a
NoOpNoOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:€€€€€€€€€	: 24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:€€€€€€€€€	
 
_user_specified_nameinputs
ж
Ю
5__inference_layer_normalization_2_layer_call_fn_24173

inputs
unknown:
	unknown_0:
identityИҐStatefulPartitionedCallй
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Y
fTRR
P__inference_layer_normalization_2_layer_call_and_return_conditional_losses_20760s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€	`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€	: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€	
 
_user_specified_nameinputs
°
}
)__inference_embedding_layer_call_fn_23686

inputs
unknown:
identityИҐStatefulPartitionedCall–
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_embedding_layer_call_and_return_conditional_losses_20442s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:€€€€€€€€€: 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
Ќ÷
Р2
 __inference__wrapped_model_20413
input_1
input_2
model_200118
&model_embedding_embedding_lookup_20017::
(model_embedding_1_embedding_lookup_20023:<
*model_tokenize_mul_readvariableop_resource:\
Fmodel_multi_head_attention_query_einsum_einsum_readvariableop_resource:N
<model_multi_head_attention_query_add_readvariableop_resource:Z
Dmodel_multi_head_attention_key_einsum_einsum_readvariableop_resource:L
:model_multi_head_attention_key_add_readvariableop_resource:\
Fmodel_multi_head_attention_value_einsum_einsum_readvariableop_resource:N
<model_multi_head_attention_value_add_readvariableop_resource:g
Qmodel_multi_head_attention_attention_output_einsum_einsum_readvariableop_resource:U
Gmodel_multi_head_attention_attention_output_add_readvariableop_resource:M
?model_layer_normalization_batchnorm_mul_readvariableop_resource:I
;model_layer_normalization_batchnorm_readvariableop_resource:?
-model_dense_tensordot_readvariableop_resource:A
/model_dense_1_tensordot_readvariableop_resource:O
Amodel_layer_normalization_1_batchnorm_mul_readvariableop_resource:K
=model_layer_normalization_1_batchnorm_readvariableop_resource:^
Hmodel_multi_head_attention_1_query_einsum_einsum_readvariableop_resource:P
>model_multi_head_attention_1_query_add_readvariableop_resource:\
Fmodel_multi_head_attention_1_key_einsum_einsum_readvariableop_resource:N
<model_multi_head_attention_1_key_add_readvariableop_resource:^
Hmodel_multi_head_attention_1_value_einsum_einsum_readvariableop_resource:P
>model_multi_head_attention_1_value_add_readvariableop_resource:i
Smodel_multi_head_attention_1_attention_output_einsum_einsum_readvariableop_resource:W
Imodel_multi_head_attention_1_attention_output_add_readvariableop_resource:O
Amodel_layer_normalization_2_batchnorm_mul_readvariableop_resource:K
=model_layer_normalization_2_batchnorm_readvariableop_resource:A
/model_dense_2_tensordot_readvariableop_resource:A
/model_dense_3_tensordot_readvariableop_resource:O
Amodel_layer_normalization_3_batchnorm_mul_readvariableop_resource:K
=model_layer_normalization_3_batchnorm_readvariableop_resource:^
Hmodel_multi_head_attention_2_query_einsum_einsum_readvariableop_resource:P
>model_multi_head_attention_2_query_add_readvariableop_resource:\
Fmodel_multi_head_attention_2_key_einsum_einsum_readvariableop_resource:N
<model_multi_head_attention_2_key_add_readvariableop_resource:^
Hmodel_multi_head_attention_2_value_einsum_einsum_readvariableop_resource:P
>model_multi_head_attention_2_value_add_readvariableop_resource:i
Smodel_multi_head_attention_2_attention_output_einsum_einsum_readvariableop_resource:W
Imodel_multi_head_attention_2_attention_output_add_readvariableop_resource:O
Amodel_layer_normalization_4_batchnorm_mul_readvariableop_resource:K
=model_layer_normalization_4_batchnorm_readvariableop_resource:A
/model_dense_4_tensordot_readvariableop_resource:A
/model_dense_5_tensordot_readvariableop_resource:O
Amodel_layer_normalization_5_batchnorm_mul_readvariableop_resource:K
=model_layer_normalization_5_batchnorm_readvariableop_resource:>
,model_dense_6_matmul_readvariableop_resource:
identityИҐ$model/dense/Tensordot/ReadVariableOpҐ&model/dense_1/Tensordot/ReadVariableOpҐ&model/dense_2/Tensordot/ReadVariableOpҐ&model/dense_3/Tensordot/ReadVariableOpҐ&model/dense_4/Tensordot/ReadVariableOpҐ&model/dense_5/Tensordot/ReadVariableOpҐ#model/dense_6/MatMul/ReadVariableOpҐ model/embedding/embedding_lookupҐ"model/embedding_1/embedding_lookupҐ2model/layer_normalization/batchnorm/ReadVariableOpҐ6model/layer_normalization/batchnorm/mul/ReadVariableOpҐ4model/layer_normalization_1/batchnorm/ReadVariableOpҐ8model/layer_normalization_1/batchnorm/mul/ReadVariableOpҐ4model/layer_normalization_2/batchnorm/ReadVariableOpҐ8model/layer_normalization_2/batchnorm/mul/ReadVariableOpҐ4model/layer_normalization_3/batchnorm/ReadVariableOpҐ8model/layer_normalization_3/batchnorm/mul/ReadVariableOpҐ4model/layer_normalization_4/batchnorm/ReadVariableOpҐ8model/layer_normalization_4/batchnorm/mul/ReadVariableOpҐ4model/layer_normalization_5/batchnorm/ReadVariableOpҐ8model/layer_normalization_5/batchnorm/mul/ReadVariableOpҐ>model/multi_head_attention/attention_output/add/ReadVariableOpҐHmodel/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOpҐ1model/multi_head_attention/key/add/ReadVariableOpҐ;model/multi_head_attention/key/einsum/Einsum/ReadVariableOpҐ3model/multi_head_attention/query/add/ReadVariableOpҐ=model/multi_head_attention/query/einsum/Einsum/ReadVariableOpҐ3model/multi_head_attention/value/add/ReadVariableOpҐ=model/multi_head_attention/value/einsum/Einsum/ReadVariableOpҐ@model/multi_head_attention_1/attention_output/add/ReadVariableOpҐJmodel/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpҐ3model/multi_head_attention_1/key/add/ReadVariableOpҐ=model/multi_head_attention_1/key/einsum/Einsum/ReadVariableOpҐ5model/multi_head_attention_1/query/add/ReadVariableOpҐ?model/multi_head_attention_1/query/einsum/Einsum/ReadVariableOpҐ5model/multi_head_attention_1/value/add/ReadVariableOpҐ?model/multi_head_attention_1/value/einsum/Einsum/ReadVariableOpҐ@model/multi_head_attention_2/attention_output/add/ReadVariableOpҐJmodel/multi_head_attention_2/attention_output/einsum/Einsum/ReadVariableOpҐ3model/multi_head_attention_2/key/add/ReadVariableOpҐ=model/multi_head_attention_2/key/einsum/Einsum/ReadVariableOpҐ5model/multi_head_attention_2/query/add/ReadVariableOpҐ?model/multi_head_attention_2/query/einsum/Einsum/ReadVariableOpҐ5model/multi_head_attention_2/value/add/ReadVariableOpҐ?model/multi_head_attention_2/value/einsum/Einsum/ReadVariableOpҐ!model/tokenize/mul/ReadVariableOpU
model/tf.compat.v1.shape/ShapeShapeinput_1*
T0*
_output_shapes
:|
2model/tf.__operators__.getitem/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ~
4model/tf.__operators__.getitem/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:~
4model/tf.__operators__.getitem/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
,model/tf.__operators__.getitem/strided_sliceStridedSlice'model/tf.compat.v1.shape/Shape:output:0;model/tf.__operators__.getitem/strided_slice/stack:output:0=model/tf.__operators__.getitem/strided_slice/stack_1:output:0=model/tf.__operators__.getitem/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskХ
model/tf.zeros/zeros/packedPack5model/tf.__operators__.getitem/strided_slice:output:0model_20011*
N*
T0*
_output_shapes
:_
model/tf.zeros/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Щ
model/tf.zeros/zerosFill$model/tf.zeros/zeros/packed:output:0#model/tf.zeros/zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€|
model/embedding/CastCastmodel/tf.zeros/zeros:output:0*

DstT0*

SrcT0*'
_output_shapes
:€€€€€€€€€щ
 model/embedding/embedding_lookupResourceGather&model_embedding_embedding_lookup_20017model/embedding/Cast:y:0*
Tindices0*9
_class/
-+loc:@model/embedding/embedding_lookup/20017*+
_output_shapes
:€€€€€€€€€*
dtype0—
)model/embedding/embedding_lookup/IdentityIdentity)model/embedding/embedding_lookup:output:0*
T0*9
_class/
-+loc:@model/embedding/embedding_lookup/20017*+
_output_shapes
:€€€€€€€€€°
+model/embedding/embedding_lookup/Identity_1Identity2model/embedding/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:€€€€€€€€€h
model/embedding_1/CastCastinput_1*

DstT0*

SrcT0*'
_output_shapes
:€€€€€€€€€Б
"model/embedding_1/embedding_lookupResourceGather(model_embedding_1_embedding_lookup_20023model/embedding_1/Cast:y:0*
Tindices0*;
_class1
/-loc:@model/embedding_1/embedding_lookup/20023*+
_output_shapes
:€€€€€€€€€*
dtype0„
+model/embedding_1/embedding_lookup/IdentityIdentity+model/embedding_1/embedding_lookup:output:0*
T0*;
_class1
/-loc:@model/embedding_1/embedding_lookup/20023*+
_output_shapes
:€€€€€€€€€•
-model/embedding_1/embedding_lookup/Identity_1Identity4model/embedding_1/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:€€€€€€€€€_
model/tokenize/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :О
model/tokenize/ExpandDims
ExpandDimsinput_2&model/tokenize/ExpandDims/dim:output:0*
T0*+
_output_shapes
:€€€€€€€€€М
!model/tokenize/mul/ReadVariableOpReadVariableOp*model_tokenize_mul_readvariableop_resource*
_output_shapes

:*
dtype0Ю
model/tokenize/mulMul"model/tokenize/ExpandDims:output:0)model/tokenize/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€]
model/tf.concat/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :Н
model/tf.concat/concatConcatV24model/embedding/embedding_lookup/Identity_1:output:06model/embedding_1/embedding_lookup/Identity_1:output:0model/tokenize/mul:z:0$model/tf.concat/concat/axis:output:0*
N*
T0*+
_output_shapes
:€€€€€€€€€	»
=model/multi_head_attention/query/einsum/Einsum/ReadVariableOpReadVariableOpFmodel_multi_head_attention_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0А
.model/multi_head_attention/query/einsum/EinsumEinsummodel/tf.concat/concat:output:0Emodel/multi_head_attention/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:€€€€€€€€€	*
equationabc,cde->abde∞
3model/multi_head_attention/query/add/ReadVariableOpReadVariableOp<model_multi_head_attention_query_add_readvariableop_resource*
_output_shapes

:*
dtype0Ё
$model/multi_head_attention/query/addAddV27model/multi_head_attention/query/einsum/Einsum:output:0;model/multi_head_attention/query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€	ƒ
;model/multi_head_attention/key/einsum/Einsum/ReadVariableOpReadVariableOpDmodel_multi_head_attention_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0ь
,model/multi_head_attention/key/einsum/EinsumEinsummodel/tf.concat/concat:output:0Cmodel/multi_head_attention/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:€€€€€€€€€	*
equationabc,cde->abdeђ
1model/multi_head_attention/key/add/ReadVariableOpReadVariableOp:model_multi_head_attention_key_add_readvariableop_resource*
_output_shapes

:*
dtype0„
"model/multi_head_attention/key/addAddV25model/multi_head_attention/key/einsum/Einsum:output:09model/multi_head_attention/key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€	»
=model/multi_head_attention/value/einsum/Einsum/ReadVariableOpReadVariableOpFmodel_multi_head_attention_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0А
.model/multi_head_attention/value/einsum/EinsumEinsummodel/tf.concat/concat:output:0Emodel/multi_head_attention/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:€€€€€€€€€	*
equationabc,cde->abde∞
3model/multi_head_attention/value/add/ReadVariableOpReadVariableOp<model_multi_head_attention_value_add_readvariableop_resource*
_output_shapes

:*
dtype0Ё
$model/multi_head_attention/value/addAddV27model/multi_head_attention/value/einsum/Einsum:output:0;model/multi_head_attention/value/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€	e
 model/multi_head_attention/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>і
model/multi_head_attention/MulMul(model/multi_head_attention/query/add:z:0)model/multi_head_attention/Mul/y:output:0*
T0*/
_output_shapes
:€€€€€€€€€	а
(model/multi_head_attention/einsum/EinsumEinsum&model/multi_head_attention/key/add:z:0"model/multi_head_attention/Mul:z:0*
N*
T0*/
_output_shapes
:€€€€€€€€€		*
equationaecd,abcd->acbeҐ
*model/multi_head_attention/softmax/SoftmaxSoftmax1model/multi_head_attention/einsum/Einsum:output:0*
T0*/
_output_shapes
:€€€€€€€€€		І
+model/multi_head_attention/dropout/IdentityIdentity4model/multi_head_attention/softmax/Softmax:softmax:0*
T0*/
_output_shapes
:€€€€€€€€€		ц
*model/multi_head_attention/einsum_1/EinsumEinsum4model/multi_head_attention/dropout/Identity:output:0(model/multi_head_attention/value/add:z:0*
N*
T0*/
_output_shapes
:€€€€€€€€€	*
equationacbe,aecd->abcdё
Hmodel/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpQmodel_multi_head_attention_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0¶
9model/multi_head_attention/attention_output/einsum/EinsumEinsum3model/multi_head_attention/einsum_1/Einsum:output:0Pmodel/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:€€€€€€€€€	*
equationabcd,cde->abe¬
>model/multi_head_attention/attention_output/add/ReadVariableOpReadVariableOpGmodel_multi_head_attention_attention_output_add_readvariableop_resource*
_output_shapes
:*
dtype0ъ
/model/multi_head_attention/attention_output/addAddV2Bmodel/multi_head_attention/attention_output/einsum/Einsum:output:0Fmodel/multi_head_attention/attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€	Ґ
model/add/addAddV2model/tf.concat/concat:output:03model/multi_head_attention/attention_output/add:z:0*
T0*+
_output_shapes
:€€€€€€€€€	В
8model/layer_normalization/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:Ћ
&model/layer_normalization/moments/meanMeanmodel/add/add:z:0Amodel/layer_normalization/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:€€€€€€€€€	*
	keep_dims(•
.model/layer_normalization/moments/StopGradientStopGradient/model/layer_normalization/moments/mean:output:0*
T0*+
_output_shapes
:€€€€€€€€€	 
3model/layer_normalization/moments/SquaredDifferenceSquaredDifferencemodel/add/add:z:07model/layer_normalization/moments/StopGradient:output:0*
T0*+
_output_shapes
:€€€€€€€€€	Ж
<model/layer_normalization/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:щ
*model/layer_normalization/moments/varianceMean7model/layer_normalization/moments/SquaredDifference:z:0Emodel/layer_normalization/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:€€€€€€€€€	*
	keep_dims(n
)model/layer_normalization/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *љ7Ж5ѕ
'model/layer_normalization/batchnorm/addAddV23model/layer_normalization/moments/variance:output:02model/layer_normalization/batchnorm/add/y:output:0*
T0*+
_output_shapes
:€€€€€€€€€	Х
)model/layer_normalization/batchnorm/RsqrtRsqrt+model/layer_normalization/batchnorm/add:z:0*
T0*+
_output_shapes
:€€€€€€€€€	≤
6model/layer_normalization/batchnorm/mul/ReadVariableOpReadVariableOp?model_layer_normalization_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0”
'model/layer_normalization/batchnorm/mulMul-model/layer_normalization/batchnorm/Rsqrt:y:0>model/layer_normalization/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€	¶
)model/layer_normalization/batchnorm/mul_1Mulmodel/add/add:z:0+model/layer_normalization/batchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€	ƒ
)model/layer_normalization/batchnorm/mul_2Mul/model/layer_normalization/moments/mean:output:0+model/layer_normalization/batchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€	™
2model/layer_normalization/batchnorm/ReadVariableOpReadVariableOp;model_layer_normalization_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0ѕ
'model/layer_normalization/batchnorm/subSub:model/layer_normalization/batchnorm/ReadVariableOp:value:0-model/layer_normalization/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:€€€€€€€€€	ƒ
)model/layer_normalization/batchnorm/add_1AddV2-model/layer_normalization/batchnorm/mul_1:z:0+model/layer_normalization/batchnorm/sub:z:0*
T0*+
_output_shapes
:€€€€€€€€€	Т
$model/dense/Tensordot/ReadVariableOpReadVariableOp-model_dense_tensordot_readvariableop_resource*
_output_shapes

:*
dtype0d
model/dense/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:k
model/dense/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       x
model/dense/Tensordot/ShapeShape-model/layer_normalization/batchnorm/add_1:z:0*
T0*
_output_shapes
:e
#model/dense/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : л
model/dense/Tensordot/GatherV2GatherV2$model/dense/Tensordot/Shape:output:0#model/dense/Tensordot/free:output:0,model/dense/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:g
%model/dense/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : п
 model/dense/Tensordot/GatherV2_1GatherV2$model/dense/Tensordot/Shape:output:0#model/dense/Tensordot/axes:output:0.model/dense/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:e
model/dense/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: Т
model/dense/Tensordot/ProdProd'model/dense/Tensordot/GatherV2:output:0$model/dense/Tensordot/Const:output:0*
T0*
_output_shapes
: g
model/dense/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: Ш
model/dense/Tensordot/Prod_1Prod)model/dense/Tensordot/GatherV2_1:output:0&model/dense/Tensordot/Const_1:output:0*
T0*
_output_shapes
: c
!model/dense/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ћ
model/dense/Tensordot/concatConcatV2#model/dense/Tensordot/free:output:0#model/dense/Tensordot/axes:output:0*model/dense/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:Э
model/dense/Tensordot/stackPack#model/dense/Tensordot/Prod:output:0%model/dense/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:Є
model/dense/Tensordot/transpose	Transpose-model/layer_normalization/batchnorm/add_1:z:0%model/dense/Tensordot/concat:output:0*
T0*+
_output_shapes
:€€€€€€€€€	Ѓ
model/dense/Tensordot/ReshapeReshape#model/dense/Tensordot/transpose:y:0$model/dense/Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€Ѓ
model/dense/Tensordot/MatMulMatMul&model/dense/Tensordot/Reshape:output:0,model/dense/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€g
model/dense/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:e
#model/dense/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : „
model/dense/Tensordot/concat_1ConcatV2'model/dense/Tensordot/GatherV2:output:0&model/dense/Tensordot/Const_2:output:0,model/dense/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:І
model/dense/TensordotReshape&model/dense/Tensordot/MatMul:product:0'model/dense/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:€€€€€€€€€	`
model/tf.nn.gelu/Gelu/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?Ь
model/tf.nn.gelu/Gelu/mulMul$model/tf.nn.gelu/Gelu/mul/x:output:0model/dense/Tensordot:output:0*
T0*+
_output_shapes
:€€€€€€€€€	a
model/tf.nn.gelu/Gelu/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *уµ?•
model/tf.nn.gelu/Gelu/truedivRealDivmodel/dense/Tensordot:output:0%model/tf.nn.gelu/Gelu/Cast/x:output:0*
T0*+
_output_shapes
:€€€€€€€€€	y
model/tf.nn.gelu/Gelu/ErfErf!model/tf.nn.gelu/Gelu/truediv:z:0*
T0*+
_output_shapes
:€€€€€€€€€	`
model/tf.nn.gelu/Gelu/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Э
model/tf.nn.gelu/Gelu/addAddV2$model/tf.nn.gelu/Gelu/add/x:output:0model/tf.nn.gelu/Gelu/Erf:y:0*
T0*+
_output_shapes
:€€€€€€€€€	Ц
model/tf.nn.gelu/Gelu/mul_1Mulmodel/tf.nn.gelu/Gelu/mul:z:0model/tf.nn.gelu/Gelu/add:z:0*
T0*+
_output_shapes
:€€€€€€€€€	Ц
&model/dense_1/Tensordot/ReadVariableOpReadVariableOp/model_dense_1_tensordot_readvariableop_resource*
_output_shapes

:*
dtype0f
model/dense_1/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:m
model/dense_1/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       l
model/dense_1/Tensordot/ShapeShapemodel/tf.nn.gelu/Gelu/mul_1:z:0*
T0*
_output_shapes
:g
%model/dense_1/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : у
 model/dense_1/Tensordot/GatherV2GatherV2&model/dense_1/Tensordot/Shape:output:0%model/dense_1/Tensordot/free:output:0.model/dense_1/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:i
'model/dense_1/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ч
"model/dense_1/Tensordot/GatherV2_1GatherV2&model/dense_1/Tensordot/Shape:output:0%model/dense_1/Tensordot/axes:output:00model/dense_1/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:g
model/dense_1/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: Ш
model/dense_1/Tensordot/ProdProd)model/dense_1/Tensordot/GatherV2:output:0&model/dense_1/Tensordot/Const:output:0*
T0*
_output_shapes
: i
model/dense_1/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: Ю
model/dense_1/Tensordot/Prod_1Prod+model/dense_1/Tensordot/GatherV2_1:output:0(model/dense_1/Tensordot/Const_1:output:0*
T0*
_output_shapes
: e
#model/dense_1/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ‘
model/dense_1/Tensordot/concatConcatV2%model/dense_1/Tensordot/free:output:0%model/dense_1/Tensordot/axes:output:0,model/dense_1/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:£
model/dense_1/Tensordot/stackPack%model/dense_1/Tensordot/Prod:output:0'model/dense_1/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:Ѓ
!model/dense_1/Tensordot/transpose	Transposemodel/tf.nn.gelu/Gelu/mul_1:z:0'model/dense_1/Tensordot/concat:output:0*
T0*+
_output_shapes
:€€€€€€€€€	і
model/dense_1/Tensordot/ReshapeReshape%model/dense_1/Tensordot/transpose:y:0&model/dense_1/Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€і
model/dense_1/Tensordot/MatMulMatMul(model/dense_1/Tensordot/Reshape:output:0.model/dense_1/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€i
model/dense_1/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:g
%model/dense_1/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : я
 model/dense_1/Tensordot/concat_1ConcatV2)model/dense_1/Tensordot/GatherV2:output:0(model/dense_1/Tensordot/Const_2:output:0.model/dense_1/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:≠
model/dense_1/TensordotReshape(model/dense_1/Tensordot/MatMul:product:0)model/dense_1/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:€€€€€€€€€	z
model/dropout/IdentityIdentity model/dense_1/Tensordot:output:0*
T0*+
_output_shapes
:€€€€€€€€€	Ю
model/add_1/addAddV2-model/layer_normalization/batchnorm/add_1:z:0model/dropout/Identity:output:0*
T0*+
_output_shapes
:€€€€€€€€€	Д
:model/layer_normalization_1/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:—
(model/layer_normalization_1/moments/meanMeanmodel/add_1/add:z:0Cmodel/layer_normalization_1/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:€€€€€€€€€	*
	keep_dims(©
0model/layer_normalization_1/moments/StopGradientStopGradient1model/layer_normalization_1/moments/mean:output:0*
T0*+
_output_shapes
:€€€€€€€€€	–
5model/layer_normalization_1/moments/SquaredDifferenceSquaredDifferencemodel/add_1/add:z:09model/layer_normalization_1/moments/StopGradient:output:0*
T0*+
_output_shapes
:€€€€€€€€€	И
>model/layer_normalization_1/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:€
,model/layer_normalization_1/moments/varianceMean9model/layer_normalization_1/moments/SquaredDifference:z:0Gmodel/layer_normalization_1/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:€€€€€€€€€	*
	keep_dims(p
+model/layer_normalization_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *љ7Ж5’
)model/layer_normalization_1/batchnorm/addAddV25model/layer_normalization_1/moments/variance:output:04model/layer_normalization_1/batchnorm/add/y:output:0*
T0*+
_output_shapes
:€€€€€€€€€	Щ
+model/layer_normalization_1/batchnorm/RsqrtRsqrt-model/layer_normalization_1/batchnorm/add:z:0*
T0*+
_output_shapes
:€€€€€€€€€	ґ
8model/layer_normalization_1/batchnorm/mul/ReadVariableOpReadVariableOpAmodel_layer_normalization_1_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0ў
)model/layer_normalization_1/batchnorm/mulMul/model/layer_normalization_1/batchnorm/Rsqrt:y:0@model/layer_normalization_1/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€	ђ
+model/layer_normalization_1/batchnorm/mul_1Mulmodel/add_1/add:z:0-model/layer_normalization_1/batchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€	 
+model/layer_normalization_1/batchnorm/mul_2Mul1model/layer_normalization_1/moments/mean:output:0-model/layer_normalization_1/batchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€	Ѓ
4model/layer_normalization_1/batchnorm/ReadVariableOpReadVariableOp=model_layer_normalization_1_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0’
)model/layer_normalization_1/batchnorm/subSub<model/layer_normalization_1/batchnorm/ReadVariableOp:value:0/model/layer_normalization_1/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:€€€€€€€€€	 
+model/layer_normalization_1/batchnorm/add_1AddV2/model/layer_normalization_1/batchnorm/mul_1:z:0-model/layer_normalization_1/batchnorm/sub:z:0*
T0*+
_output_shapes
:€€€€€€€€€	ћ
?model/multi_head_attention_1/query/einsum/Einsum/ReadVariableOpReadVariableOpHmodel_multi_head_attention_1_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0Ф
0model/multi_head_attention_1/query/einsum/EinsumEinsum/model/layer_normalization_1/batchnorm/add_1:z:0Gmodel/multi_head_attention_1/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:€€€€€€€€€	*
equationabc,cde->abdeі
5model/multi_head_attention_1/query/add/ReadVariableOpReadVariableOp>model_multi_head_attention_1_query_add_readvariableop_resource*
_output_shapes

:*
dtype0г
&model/multi_head_attention_1/query/addAddV29model/multi_head_attention_1/query/einsum/Einsum:output:0=model/multi_head_attention_1/query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€	»
=model/multi_head_attention_1/key/einsum/Einsum/ReadVariableOpReadVariableOpFmodel_multi_head_attention_1_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0Р
.model/multi_head_attention_1/key/einsum/EinsumEinsum/model/layer_normalization_1/batchnorm/add_1:z:0Emodel/multi_head_attention_1/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:€€€€€€€€€	*
equationabc,cde->abde∞
3model/multi_head_attention_1/key/add/ReadVariableOpReadVariableOp<model_multi_head_attention_1_key_add_readvariableop_resource*
_output_shapes

:*
dtype0Ё
$model/multi_head_attention_1/key/addAddV27model/multi_head_attention_1/key/einsum/Einsum:output:0;model/multi_head_attention_1/key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€	ћ
?model/multi_head_attention_1/value/einsum/Einsum/ReadVariableOpReadVariableOpHmodel_multi_head_attention_1_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0Ф
0model/multi_head_attention_1/value/einsum/EinsumEinsum/model/layer_normalization_1/batchnorm/add_1:z:0Gmodel/multi_head_attention_1/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:€€€€€€€€€	*
equationabc,cde->abdeі
5model/multi_head_attention_1/value/add/ReadVariableOpReadVariableOp>model_multi_head_attention_1_value_add_readvariableop_resource*
_output_shapes

:*
dtype0г
&model/multi_head_attention_1/value/addAddV29model/multi_head_attention_1/value/einsum/Einsum:output:0=model/multi_head_attention_1/value/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€	g
"model/multi_head_attention_1/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>Ї
 model/multi_head_attention_1/MulMul*model/multi_head_attention_1/query/add:z:0+model/multi_head_attention_1/Mul/y:output:0*
T0*/
_output_shapes
:€€€€€€€€€	ж
*model/multi_head_attention_1/einsum/EinsumEinsum(model/multi_head_attention_1/key/add:z:0$model/multi_head_attention_1/Mul:z:0*
N*
T0*/
_output_shapes
:€€€€€€€€€		*
equationaecd,abcd->acbe¶
,model/multi_head_attention_1/softmax/SoftmaxSoftmax3model/multi_head_attention_1/einsum/Einsum:output:0*
T0*/
_output_shapes
:€€€€€€€€€		Ђ
-model/multi_head_attention_1/dropout/IdentityIdentity6model/multi_head_attention_1/softmax/Softmax:softmax:0*
T0*/
_output_shapes
:€€€€€€€€€		ь
,model/multi_head_attention_1/einsum_1/EinsumEinsum6model/multi_head_attention_1/dropout/Identity:output:0*model/multi_head_attention_1/value/add:z:0*
N*
T0*/
_output_shapes
:€€€€€€€€€	*
equationacbe,aecd->abcdв
Jmodel/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpSmodel_multi_head_attention_1_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0ђ
;model/multi_head_attention_1/attention_output/einsum/EinsumEinsum5model/multi_head_attention_1/einsum_1/Einsum:output:0Rmodel/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:€€€€€€€€€	*
equationabcd,cde->abe∆
@model/multi_head_attention_1/attention_output/add/ReadVariableOpReadVariableOpImodel_multi_head_attention_1_attention_output_add_readvariableop_resource*
_output_shapes
:*
dtype0А
1model/multi_head_attention_1/attention_output/addAddV2Dmodel/multi_head_attention_1/attention_output/einsum/Einsum:output:0Hmodel/multi_head_attention_1/attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€	ґ
model/add_2/addAddV2/model/layer_normalization_1/batchnorm/add_1:z:05model/multi_head_attention_1/attention_output/add:z:0*
T0*+
_output_shapes
:€€€€€€€€€	Д
:model/layer_normalization_2/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:—
(model/layer_normalization_2/moments/meanMeanmodel/add_2/add:z:0Cmodel/layer_normalization_2/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:€€€€€€€€€	*
	keep_dims(©
0model/layer_normalization_2/moments/StopGradientStopGradient1model/layer_normalization_2/moments/mean:output:0*
T0*+
_output_shapes
:€€€€€€€€€	–
5model/layer_normalization_2/moments/SquaredDifferenceSquaredDifferencemodel/add_2/add:z:09model/layer_normalization_2/moments/StopGradient:output:0*
T0*+
_output_shapes
:€€€€€€€€€	И
>model/layer_normalization_2/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:€
,model/layer_normalization_2/moments/varianceMean9model/layer_normalization_2/moments/SquaredDifference:z:0Gmodel/layer_normalization_2/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:€€€€€€€€€	*
	keep_dims(p
+model/layer_normalization_2/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *љ7Ж5’
)model/layer_normalization_2/batchnorm/addAddV25model/layer_normalization_2/moments/variance:output:04model/layer_normalization_2/batchnorm/add/y:output:0*
T0*+
_output_shapes
:€€€€€€€€€	Щ
+model/layer_normalization_2/batchnorm/RsqrtRsqrt-model/layer_normalization_2/batchnorm/add:z:0*
T0*+
_output_shapes
:€€€€€€€€€	ґ
8model/layer_normalization_2/batchnorm/mul/ReadVariableOpReadVariableOpAmodel_layer_normalization_2_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0ў
)model/layer_normalization_2/batchnorm/mulMul/model/layer_normalization_2/batchnorm/Rsqrt:y:0@model/layer_normalization_2/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€	ђ
+model/layer_normalization_2/batchnorm/mul_1Mulmodel/add_2/add:z:0-model/layer_normalization_2/batchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€	 
+model/layer_normalization_2/batchnorm/mul_2Mul1model/layer_normalization_2/moments/mean:output:0-model/layer_normalization_2/batchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€	Ѓ
4model/layer_normalization_2/batchnorm/ReadVariableOpReadVariableOp=model_layer_normalization_2_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0’
)model/layer_normalization_2/batchnorm/subSub<model/layer_normalization_2/batchnorm/ReadVariableOp:value:0/model/layer_normalization_2/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:€€€€€€€€€	 
+model/layer_normalization_2/batchnorm/add_1AddV2/model/layer_normalization_2/batchnorm/mul_1:z:0-model/layer_normalization_2/batchnorm/sub:z:0*
T0*+
_output_shapes
:€€€€€€€€€	Ц
&model/dense_2/Tensordot/ReadVariableOpReadVariableOp/model_dense_2_tensordot_readvariableop_resource*
_output_shapes

:*
dtype0f
model/dense_2/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:m
model/dense_2/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       |
model/dense_2/Tensordot/ShapeShape/model/layer_normalization_2/batchnorm/add_1:z:0*
T0*
_output_shapes
:g
%model/dense_2/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : у
 model/dense_2/Tensordot/GatherV2GatherV2&model/dense_2/Tensordot/Shape:output:0%model/dense_2/Tensordot/free:output:0.model/dense_2/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:i
'model/dense_2/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ч
"model/dense_2/Tensordot/GatherV2_1GatherV2&model/dense_2/Tensordot/Shape:output:0%model/dense_2/Tensordot/axes:output:00model/dense_2/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:g
model/dense_2/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: Ш
model/dense_2/Tensordot/ProdProd)model/dense_2/Tensordot/GatherV2:output:0&model/dense_2/Tensordot/Const:output:0*
T0*
_output_shapes
: i
model/dense_2/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: Ю
model/dense_2/Tensordot/Prod_1Prod+model/dense_2/Tensordot/GatherV2_1:output:0(model/dense_2/Tensordot/Const_1:output:0*
T0*
_output_shapes
: e
#model/dense_2/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ‘
model/dense_2/Tensordot/concatConcatV2%model/dense_2/Tensordot/free:output:0%model/dense_2/Tensordot/axes:output:0,model/dense_2/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:£
model/dense_2/Tensordot/stackPack%model/dense_2/Tensordot/Prod:output:0'model/dense_2/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:Њ
!model/dense_2/Tensordot/transpose	Transpose/model/layer_normalization_2/batchnorm/add_1:z:0'model/dense_2/Tensordot/concat:output:0*
T0*+
_output_shapes
:€€€€€€€€€	і
model/dense_2/Tensordot/ReshapeReshape%model/dense_2/Tensordot/transpose:y:0&model/dense_2/Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€і
model/dense_2/Tensordot/MatMulMatMul(model/dense_2/Tensordot/Reshape:output:0.model/dense_2/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€i
model/dense_2/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:g
%model/dense_2/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : я
 model/dense_2/Tensordot/concat_1ConcatV2)model/dense_2/Tensordot/GatherV2:output:0(model/dense_2/Tensordot/Const_2:output:0.model/dense_2/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:≠
model/dense_2/TensordotReshape(model/dense_2/Tensordot/MatMul:product:0)model/dense_2/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:€€€€€€€€€	b
model/tf.nn.gelu_1/Gelu/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?Ґ
model/tf.nn.gelu_1/Gelu/mulMul&model/tf.nn.gelu_1/Gelu/mul/x:output:0 model/dense_2/Tensordot:output:0*
T0*+
_output_shapes
:€€€€€€€€€	c
model/tf.nn.gelu_1/Gelu/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *уµ?Ђ
model/tf.nn.gelu_1/Gelu/truedivRealDiv model/dense_2/Tensordot:output:0'model/tf.nn.gelu_1/Gelu/Cast/x:output:0*
T0*+
_output_shapes
:€€€€€€€€€	}
model/tf.nn.gelu_1/Gelu/ErfErf#model/tf.nn.gelu_1/Gelu/truediv:z:0*
T0*+
_output_shapes
:€€€€€€€€€	b
model/tf.nn.gelu_1/Gelu/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?£
model/tf.nn.gelu_1/Gelu/addAddV2&model/tf.nn.gelu_1/Gelu/add/x:output:0model/tf.nn.gelu_1/Gelu/Erf:y:0*
T0*+
_output_shapes
:€€€€€€€€€	Ь
model/tf.nn.gelu_1/Gelu/mul_1Mulmodel/tf.nn.gelu_1/Gelu/mul:z:0model/tf.nn.gelu_1/Gelu/add:z:0*
T0*+
_output_shapes
:€€€€€€€€€	Ц
&model/dense_3/Tensordot/ReadVariableOpReadVariableOp/model_dense_3_tensordot_readvariableop_resource*
_output_shapes

:*
dtype0f
model/dense_3/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:m
model/dense_3/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       n
model/dense_3/Tensordot/ShapeShape!model/tf.nn.gelu_1/Gelu/mul_1:z:0*
T0*
_output_shapes
:g
%model/dense_3/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : у
 model/dense_3/Tensordot/GatherV2GatherV2&model/dense_3/Tensordot/Shape:output:0%model/dense_3/Tensordot/free:output:0.model/dense_3/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:i
'model/dense_3/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ч
"model/dense_3/Tensordot/GatherV2_1GatherV2&model/dense_3/Tensordot/Shape:output:0%model/dense_3/Tensordot/axes:output:00model/dense_3/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:g
model/dense_3/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: Ш
model/dense_3/Tensordot/ProdProd)model/dense_3/Tensordot/GatherV2:output:0&model/dense_3/Tensordot/Const:output:0*
T0*
_output_shapes
: i
model/dense_3/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: Ю
model/dense_3/Tensordot/Prod_1Prod+model/dense_3/Tensordot/GatherV2_1:output:0(model/dense_3/Tensordot/Const_1:output:0*
T0*
_output_shapes
: e
#model/dense_3/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ‘
model/dense_3/Tensordot/concatConcatV2%model/dense_3/Tensordot/free:output:0%model/dense_3/Tensordot/axes:output:0,model/dense_3/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:£
model/dense_3/Tensordot/stackPack%model/dense_3/Tensordot/Prod:output:0'model/dense_3/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:∞
!model/dense_3/Tensordot/transpose	Transpose!model/tf.nn.gelu_1/Gelu/mul_1:z:0'model/dense_3/Tensordot/concat:output:0*
T0*+
_output_shapes
:€€€€€€€€€	і
model/dense_3/Tensordot/ReshapeReshape%model/dense_3/Tensordot/transpose:y:0&model/dense_3/Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€і
model/dense_3/Tensordot/MatMulMatMul(model/dense_3/Tensordot/Reshape:output:0.model/dense_3/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€i
model/dense_3/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:g
%model/dense_3/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : я
 model/dense_3/Tensordot/concat_1ConcatV2)model/dense_3/Tensordot/GatherV2:output:0(model/dense_3/Tensordot/Const_2:output:0.model/dense_3/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:≠
model/dense_3/TensordotReshape(model/dense_3/Tensordot/MatMul:product:0)model/dense_3/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:€€€€€€€€€	|
model/dropout_1/IdentityIdentity model/dense_3/Tensordot:output:0*
T0*+
_output_shapes
:€€€€€€€€€	Ґ
model/add_3/addAddV2/model/layer_normalization_2/batchnorm/add_1:z:0!model/dropout_1/Identity:output:0*
T0*+
_output_shapes
:€€€€€€€€€	Д
:model/layer_normalization_3/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:—
(model/layer_normalization_3/moments/meanMeanmodel/add_3/add:z:0Cmodel/layer_normalization_3/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:€€€€€€€€€	*
	keep_dims(©
0model/layer_normalization_3/moments/StopGradientStopGradient1model/layer_normalization_3/moments/mean:output:0*
T0*+
_output_shapes
:€€€€€€€€€	–
5model/layer_normalization_3/moments/SquaredDifferenceSquaredDifferencemodel/add_3/add:z:09model/layer_normalization_3/moments/StopGradient:output:0*
T0*+
_output_shapes
:€€€€€€€€€	И
>model/layer_normalization_3/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:€
,model/layer_normalization_3/moments/varianceMean9model/layer_normalization_3/moments/SquaredDifference:z:0Gmodel/layer_normalization_3/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:€€€€€€€€€	*
	keep_dims(p
+model/layer_normalization_3/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *љ7Ж5’
)model/layer_normalization_3/batchnorm/addAddV25model/layer_normalization_3/moments/variance:output:04model/layer_normalization_3/batchnorm/add/y:output:0*
T0*+
_output_shapes
:€€€€€€€€€	Щ
+model/layer_normalization_3/batchnorm/RsqrtRsqrt-model/layer_normalization_3/batchnorm/add:z:0*
T0*+
_output_shapes
:€€€€€€€€€	ґ
8model/layer_normalization_3/batchnorm/mul/ReadVariableOpReadVariableOpAmodel_layer_normalization_3_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0ў
)model/layer_normalization_3/batchnorm/mulMul/model/layer_normalization_3/batchnorm/Rsqrt:y:0@model/layer_normalization_3/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€	ђ
+model/layer_normalization_3/batchnorm/mul_1Mulmodel/add_3/add:z:0-model/layer_normalization_3/batchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€	 
+model/layer_normalization_3/batchnorm/mul_2Mul1model/layer_normalization_3/moments/mean:output:0-model/layer_normalization_3/batchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€	Ѓ
4model/layer_normalization_3/batchnorm/ReadVariableOpReadVariableOp=model_layer_normalization_3_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0’
)model/layer_normalization_3/batchnorm/subSub<model/layer_normalization_3/batchnorm/ReadVariableOp:value:0/model/layer_normalization_3/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:€€€€€€€€€	 
+model/layer_normalization_3/batchnorm/add_1AddV2/model/layer_normalization_3/batchnorm/mul_1:z:0-model/layer_normalization_3/batchnorm/sub:z:0*
T0*+
_output_shapes
:€€€€€€€€€	ћ
?model/multi_head_attention_2/query/einsum/Einsum/ReadVariableOpReadVariableOpHmodel_multi_head_attention_2_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0Ф
0model/multi_head_attention_2/query/einsum/EinsumEinsum/model/layer_normalization_3/batchnorm/add_1:z:0Gmodel/multi_head_attention_2/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:€€€€€€€€€	*
equationabc,cde->abdeі
5model/multi_head_attention_2/query/add/ReadVariableOpReadVariableOp>model_multi_head_attention_2_query_add_readvariableop_resource*
_output_shapes

:*
dtype0г
&model/multi_head_attention_2/query/addAddV29model/multi_head_attention_2/query/einsum/Einsum:output:0=model/multi_head_attention_2/query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€	»
=model/multi_head_attention_2/key/einsum/Einsum/ReadVariableOpReadVariableOpFmodel_multi_head_attention_2_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0Р
.model/multi_head_attention_2/key/einsum/EinsumEinsum/model/layer_normalization_3/batchnorm/add_1:z:0Emodel/multi_head_attention_2/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:€€€€€€€€€	*
equationabc,cde->abde∞
3model/multi_head_attention_2/key/add/ReadVariableOpReadVariableOp<model_multi_head_attention_2_key_add_readvariableop_resource*
_output_shapes

:*
dtype0Ё
$model/multi_head_attention_2/key/addAddV27model/multi_head_attention_2/key/einsum/Einsum:output:0;model/multi_head_attention_2/key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€	ћ
?model/multi_head_attention_2/value/einsum/Einsum/ReadVariableOpReadVariableOpHmodel_multi_head_attention_2_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0Ф
0model/multi_head_attention_2/value/einsum/EinsumEinsum/model/layer_normalization_3/batchnorm/add_1:z:0Gmodel/multi_head_attention_2/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:€€€€€€€€€	*
equationabc,cde->abdeі
5model/multi_head_attention_2/value/add/ReadVariableOpReadVariableOp>model_multi_head_attention_2_value_add_readvariableop_resource*
_output_shapes

:*
dtype0г
&model/multi_head_attention_2/value/addAddV29model/multi_head_attention_2/value/einsum/Einsum:output:0=model/multi_head_attention_2/value/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€	g
"model/multi_head_attention_2/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>Ї
 model/multi_head_attention_2/MulMul*model/multi_head_attention_2/query/add:z:0+model/multi_head_attention_2/Mul/y:output:0*
T0*/
_output_shapes
:€€€€€€€€€	ж
*model/multi_head_attention_2/einsum/EinsumEinsum(model/multi_head_attention_2/key/add:z:0$model/multi_head_attention_2/Mul:z:0*
N*
T0*/
_output_shapes
:€€€€€€€€€		*
equationaecd,abcd->acbe¶
,model/multi_head_attention_2/softmax/SoftmaxSoftmax3model/multi_head_attention_2/einsum/Einsum:output:0*
T0*/
_output_shapes
:€€€€€€€€€		Ђ
-model/multi_head_attention_2/dropout/IdentityIdentity6model/multi_head_attention_2/softmax/Softmax:softmax:0*
T0*/
_output_shapes
:€€€€€€€€€		ь
,model/multi_head_attention_2/einsum_1/EinsumEinsum6model/multi_head_attention_2/dropout/Identity:output:0*model/multi_head_attention_2/value/add:z:0*
N*
T0*/
_output_shapes
:€€€€€€€€€	*
equationacbe,aecd->abcdв
Jmodel/multi_head_attention_2/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpSmodel_multi_head_attention_2_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0ђ
;model/multi_head_attention_2/attention_output/einsum/EinsumEinsum5model/multi_head_attention_2/einsum_1/Einsum:output:0Rmodel/multi_head_attention_2/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:€€€€€€€€€	*
equationabcd,cde->abe∆
@model/multi_head_attention_2/attention_output/add/ReadVariableOpReadVariableOpImodel_multi_head_attention_2_attention_output_add_readvariableop_resource*
_output_shapes
:*
dtype0А
1model/multi_head_attention_2/attention_output/addAddV2Dmodel/multi_head_attention_2/attention_output/einsum/Einsum:output:0Hmodel/multi_head_attention_2/attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€	ґ
model/add_4/addAddV2/model/layer_normalization_3/batchnorm/add_1:z:05model/multi_head_attention_2/attention_output/add:z:0*
T0*+
_output_shapes
:€€€€€€€€€	Д
:model/layer_normalization_4/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:—
(model/layer_normalization_4/moments/meanMeanmodel/add_4/add:z:0Cmodel/layer_normalization_4/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:€€€€€€€€€	*
	keep_dims(©
0model/layer_normalization_4/moments/StopGradientStopGradient1model/layer_normalization_4/moments/mean:output:0*
T0*+
_output_shapes
:€€€€€€€€€	–
5model/layer_normalization_4/moments/SquaredDifferenceSquaredDifferencemodel/add_4/add:z:09model/layer_normalization_4/moments/StopGradient:output:0*
T0*+
_output_shapes
:€€€€€€€€€	И
>model/layer_normalization_4/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:€
,model/layer_normalization_4/moments/varianceMean9model/layer_normalization_4/moments/SquaredDifference:z:0Gmodel/layer_normalization_4/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:€€€€€€€€€	*
	keep_dims(p
+model/layer_normalization_4/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *љ7Ж5’
)model/layer_normalization_4/batchnorm/addAddV25model/layer_normalization_4/moments/variance:output:04model/layer_normalization_4/batchnorm/add/y:output:0*
T0*+
_output_shapes
:€€€€€€€€€	Щ
+model/layer_normalization_4/batchnorm/RsqrtRsqrt-model/layer_normalization_4/batchnorm/add:z:0*
T0*+
_output_shapes
:€€€€€€€€€	ґ
8model/layer_normalization_4/batchnorm/mul/ReadVariableOpReadVariableOpAmodel_layer_normalization_4_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0ў
)model/layer_normalization_4/batchnorm/mulMul/model/layer_normalization_4/batchnorm/Rsqrt:y:0@model/layer_normalization_4/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€	ђ
+model/layer_normalization_4/batchnorm/mul_1Mulmodel/add_4/add:z:0-model/layer_normalization_4/batchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€	 
+model/layer_normalization_4/batchnorm/mul_2Mul1model/layer_normalization_4/moments/mean:output:0-model/layer_normalization_4/batchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€	Ѓ
4model/layer_normalization_4/batchnorm/ReadVariableOpReadVariableOp=model_layer_normalization_4_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0’
)model/layer_normalization_4/batchnorm/subSub<model/layer_normalization_4/batchnorm/ReadVariableOp:value:0/model/layer_normalization_4/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:€€€€€€€€€	 
+model/layer_normalization_4/batchnorm/add_1AddV2/model/layer_normalization_4/batchnorm/mul_1:z:0-model/layer_normalization_4/batchnorm/sub:z:0*
T0*+
_output_shapes
:€€€€€€€€€	Ц
&model/dense_4/Tensordot/ReadVariableOpReadVariableOp/model_dense_4_tensordot_readvariableop_resource*
_output_shapes

:*
dtype0f
model/dense_4/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:m
model/dense_4/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       |
model/dense_4/Tensordot/ShapeShape/model/layer_normalization_4/batchnorm/add_1:z:0*
T0*
_output_shapes
:g
%model/dense_4/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : у
 model/dense_4/Tensordot/GatherV2GatherV2&model/dense_4/Tensordot/Shape:output:0%model/dense_4/Tensordot/free:output:0.model/dense_4/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:i
'model/dense_4/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ч
"model/dense_4/Tensordot/GatherV2_1GatherV2&model/dense_4/Tensordot/Shape:output:0%model/dense_4/Tensordot/axes:output:00model/dense_4/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:g
model/dense_4/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: Ш
model/dense_4/Tensordot/ProdProd)model/dense_4/Tensordot/GatherV2:output:0&model/dense_4/Tensordot/Const:output:0*
T0*
_output_shapes
: i
model/dense_4/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: Ю
model/dense_4/Tensordot/Prod_1Prod+model/dense_4/Tensordot/GatherV2_1:output:0(model/dense_4/Tensordot/Const_1:output:0*
T0*
_output_shapes
: e
#model/dense_4/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ‘
model/dense_4/Tensordot/concatConcatV2%model/dense_4/Tensordot/free:output:0%model/dense_4/Tensordot/axes:output:0,model/dense_4/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:£
model/dense_4/Tensordot/stackPack%model/dense_4/Tensordot/Prod:output:0'model/dense_4/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:Њ
!model/dense_4/Tensordot/transpose	Transpose/model/layer_normalization_4/batchnorm/add_1:z:0'model/dense_4/Tensordot/concat:output:0*
T0*+
_output_shapes
:€€€€€€€€€	і
model/dense_4/Tensordot/ReshapeReshape%model/dense_4/Tensordot/transpose:y:0&model/dense_4/Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€і
model/dense_4/Tensordot/MatMulMatMul(model/dense_4/Tensordot/Reshape:output:0.model/dense_4/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€i
model/dense_4/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:g
%model/dense_4/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : я
 model/dense_4/Tensordot/concat_1ConcatV2)model/dense_4/Tensordot/GatherV2:output:0(model/dense_4/Tensordot/Const_2:output:0.model/dense_4/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:≠
model/dense_4/TensordotReshape(model/dense_4/Tensordot/MatMul:product:0)model/dense_4/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:€€€€€€€€€	b
model/tf.nn.gelu_2/Gelu/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?Ґ
model/tf.nn.gelu_2/Gelu/mulMul&model/tf.nn.gelu_2/Gelu/mul/x:output:0 model/dense_4/Tensordot:output:0*
T0*+
_output_shapes
:€€€€€€€€€	c
model/tf.nn.gelu_2/Gelu/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *уµ?Ђ
model/tf.nn.gelu_2/Gelu/truedivRealDiv model/dense_4/Tensordot:output:0'model/tf.nn.gelu_2/Gelu/Cast/x:output:0*
T0*+
_output_shapes
:€€€€€€€€€	}
model/tf.nn.gelu_2/Gelu/ErfErf#model/tf.nn.gelu_2/Gelu/truediv:z:0*
T0*+
_output_shapes
:€€€€€€€€€	b
model/tf.nn.gelu_2/Gelu/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?£
model/tf.nn.gelu_2/Gelu/addAddV2&model/tf.nn.gelu_2/Gelu/add/x:output:0model/tf.nn.gelu_2/Gelu/Erf:y:0*
T0*+
_output_shapes
:€€€€€€€€€	Ь
model/tf.nn.gelu_2/Gelu/mul_1Mulmodel/tf.nn.gelu_2/Gelu/mul:z:0model/tf.nn.gelu_2/Gelu/add:z:0*
T0*+
_output_shapes
:€€€€€€€€€	Ц
&model/dense_5/Tensordot/ReadVariableOpReadVariableOp/model_dense_5_tensordot_readvariableop_resource*
_output_shapes

:*
dtype0f
model/dense_5/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:m
model/dense_5/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       n
model/dense_5/Tensordot/ShapeShape!model/tf.nn.gelu_2/Gelu/mul_1:z:0*
T0*
_output_shapes
:g
%model/dense_5/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : у
 model/dense_5/Tensordot/GatherV2GatherV2&model/dense_5/Tensordot/Shape:output:0%model/dense_5/Tensordot/free:output:0.model/dense_5/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:i
'model/dense_5/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ч
"model/dense_5/Tensordot/GatherV2_1GatherV2&model/dense_5/Tensordot/Shape:output:0%model/dense_5/Tensordot/axes:output:00model/dense_5/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:g
model/dense_5/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: Ш
model/dense_5/Tensordot/ProdProd)model/dense_5/Tensordot/GatherV2:output:0&model/dense_5/Tensordot/Const:output:0*
T0*
_output_shapes
: i
model/dense_5/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: Ю
model/dense_5/Tensordot/Prod_1Prod+model/dense_5/Tensordot/GatherV2_1:output:0(model/dense_5/Tensordot/Const_1:output:0*
T0*
_output_shapes
: e
#model/dense_5/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ‘
model/dense_5/Tensordot/concatConcatV2%model/dense_5/Tensordot/free:output:0%model/dense_5/Tensordot/axes:output:0,model/dense_5/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:£
model/dense_5/Tensordot/stackPack%model/dense_5/Tensordot/Prod:output:0'model/dense_5/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:∞
!model/dense_5/Tensordot/transpose	Transpose!model/tf.nn.gelu_2/Gelu/mul_1:z:0'model/dense_5/Tensordot/concat:output:0*
T0*+
_output_shapes
:€€€€€€€€€	і
model/dense_5/Tensordot/ReshapeReshape%model/dense_5/Tensordot/transpose:y:0&model/dense_5/Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€і
model/dense_5/Tensordot/MatMulMatMul(model/dense_5/Tensordot/Reshape:output:0.model/dense_5/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€i
model/dense_5/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:g
%model/dense_5/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : я
 model/dense_5/Tensordot/concat_1ConcatV2)model/dense_5/Tensordot/GatherV2:output:0(model/dense_5/Tensordot/Const_2:output:0.model/dense_5/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:≠
model/dense_5/TensordotReshape(model/dense_5/Tensordot/MatMul:product:0)model/dense_5/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:€€€€€€€€€	|
model/dropout_2/IdentityIdentity model/dense_5/Tensordot:output:0*
T0*+
_output_shapes
:€€€€€€€€€	Ґ
model/add_5/addAddV2/model/layer_normalization_4/batchnorm/add_1:z:0!model/dropout_2/Identity:output:0*
T0*+
_output_shapes
:€€€€€€€€€	Д
:model/layer_normalization_5/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:—
(model/layer_normalization_5/moments/meanMeanmodel/add_5/add:z:0Cmodel/layer_normalization_5/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:€€€€€€€€€	*
	keep_dims(©
0model/layer_normalization_5/moments/StopGradientStopGradient1model/layer_normalization_5/moments/mean:output:0*
T0*+
_output_shapes
:€€€€€€€€€	–
5model/layer_normalization_5/moments/SquaredDifferenceSquaredDifferencemodel/add_5/add:z:09model/layer_normalization_5/moments/StopGradient:output:0*
T0*+
_output_shapes
:€€€€€€€€€	И
>model/layer_normalization_5/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:€
,model/layer_normalization_5/moments/varianceMean9model/layer_normalization_5/moments/SquaredDifference:z:0Gmodel/layer_normalization_5/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:€€€€€€€€€	*
	keep_dims(p
+model/layer_normalization_5/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *љ7Ж5’
)model/layer_normalization_5/batchnorm/addAddV25model/layer_normalization_5/moments/variance:output:04model/layer_normalization_5/batchnorm/add/y:output:0*
T0*+
_output_shapes
:€€€€€€€€€	Щ
+model/layer_normalization_5/batchnorm/RsqrtRsqrt-model/layer_normalization_5/batchnorm/add:z:0*
T0*+
_output_shapes
:€€€€€€€€€	ґ
8model/layer_normalization_5/batchnorm/mul/ReadVariableOpReadVariableOpAmodel_layer_normalization_5_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0ў
)model/layer_normalization_5/batchnorm/mulMul/model/layer_normalization_5/batchnorm/Rsqrt:y:0@model/layer_normalization_5/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€	ђ
+model/layer_normalization_5/batchnorm/mul_1Mulmodel/add_5/add:z:0-model/layer_normalization_5/batchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€	 
+model/layer_normalization_5/batchnorm/mul_2Mul1model/layer_normalization_5/moments/mean:output:0-model/layer_normalization_5/batchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€	Ѓ
4model/layer_normalization_5/batchnorm/ReadVariableOpReadVariableOp=model_layer_normalization_5_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0’
)model/layer_normalization_5/batchnorm/subSub<model/layer_normalization_5/batchnorm/ReadVariableOp:value:0/model/layer_normalization_5/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:€€€€€€€€€	 
+model/layer_normalization_5/batchnorm/add_1AddV2/model/layer_normalization_5/batchnorm/mul_1:z:0-model/layer_normalization_5/batchnorm/sub:z:0*
T0*+
_output_shapes
:€€€€€€€€€	Е
4model/tf.__operators__.getitem_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        З
6model/tf.__operators__.getitem_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       З
6model/tf.__operators__.getitem_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ©
.model/tf.__operators__.getitem_1/strided_sliceStridedSlice/model/layer_normalization_5/batchnorm/add_1:z:0=model/tf.__operators__.getitem_1/strided_slice/stack:output:0?model/tf.__operators__.getitem_1/strided_slice/stack_1:output:0?model/tf.__operators__.getitem_1/strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
shrink_axis_maskР
#model/dense_6/MatMul/ReadVariableOpReadVariableOp,model_dense_6_matmul_readvariableop_resource*
_output_shapes

:*
dtype0ґ
model/dense_6/MatMulMatMul7model/tf.__operators__.getitem_1/strided_slice:output:0+model/dense_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€z
model/tf.math.sigmoid/SigmoidSigmoidmodel/dense_6/MatMul:product:0*
T0*'
_output_shapes
:€€€€€€€€€p
IdentityIdentity!model/tf.math.sigmoid/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€“
NoOpNoOp%^model/dense/Tensordot/ReadVariableOp'^model/dense_1/Tensordot/ReadVariableOp'^model/dense_2/Tensordot/ReadVariableOp'^model/dense_3/Tensordot/ReadVariableOp'^model/dense_4/Tensordot/ReadVariableOp'^model/dense_5/Tensordot/ReadVariableOp$^model/dense_6/MatMul/ReadVariableOp!^model/embedding/embedding_lookup#^model/embedding_1/embedding_lookup3^model/layer_normalization/batchnorm/ReadVariableOp7^model/layer_normalization/batchnorm/mul/ReadVariableOp5^model/layer_normalization_1/batchnorm/ReadVariableOp9^model/layer_normalization_1/batchnorm/mul/ReadVariableOp5^model/layer_normalization_2/batchnorm/ReadVariableOp9^model/layer_normalization_2/batchnorm/mul/ReadVariableOp5^model/layer_normalization_3/batchnorm/ReadVariableOp9^model/layer_normalization_3/batchnorm/mul/ReadVariableOp5^model/layer_normalization_4/batchnorm/ReadVariableOp9^model/layer_normalization_4/batchnorm/mul/ReadVariableOp5^model/layer_normalization_5/batchnorm/ReadVariableOp9^model/layer_normalization_5/batchnorm/mul/ReadVariableOp?^model/multi_head_attention/attention_output/add/ReadVariableOpI^model/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOp2^model/multi_head_attention/key/add/ReadVariableOp<^model/multi_head_attention/key/einsum/Einsum/ReadVariableOp4^model/multi_head_attention/query/add/ReadVariableOp>^model/multi_head_attention/query/einsum/Einsum/ReadVariableOp4^model/multi_head_attention/value/add/ReadVariableOp>^model/multi_head_attention/value/einsum/Einsum/ReadVariableOpA^model/multi_head_attention_1/attention_output/add/ReadVariableOpK^model/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp4^model/multi_head_attention_1/key/add/ReadVariableOp>^model/multi_head_attention_1/key/einsum/Einsum/ReadVariableOp6^model/multi_head_attention_1/query/add/ReadVariableOp@^model/multi_head_attention_1/query/einsum/Einsum/ReadVariableOp6^model/multi_head_attention_1/value/add/ReadVariableOp@^model/multi_head_attention_1/value/einsum/Einsum/ReadVariableOpA^model/multi_head_attention_2/attention_output/add/ReadVariableOpK^model/multi_head_attention_2/attention_output/einsum/Einsum/ReadVariableOp4^model/multi_head_attention_2/key/add/ReadVariableOp>^model/multi_head_attention_2/key/einsum/Einsum/ReadVariableOp6^model/multi_head_attention_2/query/add/ReadVariableOp@^model/multi_head_attention_2/query/einsum/Einsum/ReadVariableOp6^model/multi_head_attention_2/value/add/ReadVariableOp@^model/multi_head_attention_2/value/einsum/Einsum/ReadVariableOp"^model/tokenize/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Щ
_input_shapesЗ
Д:€€€€€€€€€:€€€€€€€€€: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2L
$model/dense/Tensordot/ReadVariableOp$model/dense/Tensordot/ReadVariableOp2P
&model/dense_1/Tensordot/ReadVariableOp&model/dense_1/Tensordot/ReadVariableOp2P
&model/dense_2/Tensordot/ReadVariableOp&model/dense_2/Tensordot/ReadVariableOp2P
&model/dense_3/Tensordot/ReadVariableOp&model/dense_3/Tensordot/ReadVariableOp2P
&model/dense_4/Tensordot/ReadVariableOp&model/dense_4/Tensordot/ReadVariableOp2P
&model/dense_5/Tensordot/ReadVariableOp&model/dense_5/Tensordot/ReadVariableOp2J
#model/dense_6/MatMul/ReadVariableOp#model/dense_6/MatMul/ReadVariableOp2D
 model/embedding/embedding_lookup model/embedding/embedding_lookup2H
"model/embedding_1/embedding_lookup"model/embedding_1/embedding_lookup2h
2model/layer_normalization/batchnorm/ReadVariableOp2model/layer_normalization/batchnorm/ReadVariableOp2p
6model/layer_normalization/batchnorm/mul/ReadVariableOp6model/layer_normalization/batchnorm/mul/ReadVariableOp2l
4model/layer_normalization_1/batchnorm/ReadVariableOp4model/layer_normalization_1/batchnorm/ReadVariableOp2t
8model/layer_normalization_1/batchnorm/mul/ReadVariableOp8model/layer_normalization_1/batchnorm/mul/ReadVariableOp2l
4model/layer_normalization_2/batchnorm/ReadVariableOp4model/layer_normalization_2/batchnorm/ReadVariableOp2t
8model/layer_normalization_2/batchnorm/mul/ReadVariableOp8model/layer_normalization_2/batchnorm/mul/ReadVariableOp2l
4model/layer_normalization_3/batchnorm/ReadVariableOp4model/layer_normalization_3/batchnorm/ReadVariableOp2t
8model/layer_normalization_3/batchnorm/mul/ReadVariableOp8model/layer_normalization_3/batchnorm/mul/ReadVariableOp2l
4model/layer_normalization_4/batchnorm/ReadVariableOp4model/layer_normalization_4/batchnorm/ReadVariableOp2t
8model/layer_normalization_4/batchnorm/mul/ReadVariableOp8model/layer_normalization_4/batchnorm/mul/ReadVariableOp2l
4model/layer_normalization_5/batchnorm/ReadVariableOp4model/layer_normalization_5/batchnorm/ReadVariableOp2t
8model/layer_normalization_5/batchnorm/mul/ReadVariableOp8model/layer_normalization_5/batchnorm/mul/ReadVariableOp2А
>model/multi_head_attention/attention_output/add/ReadVariableOp>model/multi_head_attention/attention_output/add/ReadVariableOp2Ф
Hmodel/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOpHmodel/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOp2f
1model/multi_head_attention/key/add/ReadVariableOp1model/multi_head_attention/key/add/ReadVariableOp2z
;model/multi_head_attention/key/einsum/Einsum/ReadVariableOp;model/multi_head_attention/key/einsum/Einsum/ReadVariableOp2j
3model/multi_head_attention/query/add/ReadVariableOp3model/multi_head_attention/query/add/ReadVariableOp2~
=model/multi_head_attention/query/einsum/Einsum/ReadVariableOp=model/multi_head_attention/query/einsum/Einsum/ReadVariableOp2j
3model/multi_head_attention/value/add/ReadVariableOp3model/multi_head_attention/value/add/ReadVariableOp2~
=model/multi_head_attention/value/einsum/Einsum/ReadVariableOp=model/multi_head_attention/value/einsum/Einsum/ReadVariableOp2Д
@model/multi_head_attention_1/attention_output/add/ReadVariableOp@model/multi_head_attention_1/attention_output/add/ReadVariableOp2Ш
Jmodel/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpJmodel/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp2j
3model/multi_head_attention_1/key/add/ReadVariableOp3model/multi_head_attention_1/key/add/ReadVariableOp2~
=model/multi_head_attention_1/key/einsum/Einsum/ReadVariableOp=model/multi_head_attention_1/key/einsum/Einsum/ReadVariableOp2n
5model/multi_head_attention_1/query/add/ReadVariableOp5model/multi_head_attention_1/query/add/ReadVariableOp2В
?model/multi_head_attention_1/query/einsum/Einsum/ReadVariableOp?model/multi_head_attention_1/query/einsum/Einsum/ReadVariableOp2n
5model/multi_head_attention_1/value/add/ReadVariableOp5model/multi_head_attention_1/value/add/ReadVariableOp2В
?model/multi_head_attention_1/value/einsum/Einsum/ReadVariableOp?model/multi_head_attention_1/value/einsum/Einsum/ReadVariableOp2Д
@model/multi_head_attention_2/attention_output/add/ReadVariableOp@model/multi_head_attention_2/attention_output/add/ReadVariableOp2Ш
Jmodel/multi_head_attention_2/attention_output/einsum/Einsum/ReadVariableOpJmodel/multi_head_attention_2/attention_output/einsum/Einsum/ReadVariableOp2j
3model/multi_head_attention_2/key/add/ReadVariableOp3model/multi_head_attention_2/key/add/ReadVariableOp2~
=model/multi_head_attention_2/key/einsum/Einsum/ReadVariableOp=model/multi_head_attention_2/key/einsum/Einsum/ReadVariableOp2n
5model/multi_head_attention_2/query/add/ReadVariableOp5model/multi_head_attention_2/query/add/ReadVariableOp2В
?model/multi_head_attention_2/query/einsum/Einsum/ReadVariableOp?model/multi_head_attention_2/query/einsum/Einsum/ReadVariableOp2n
5model/multi_head_attention_2/value/add/ReadVariableOp5model/multi_head_attention_2/value/add/ReadVariableOp2В
?model/multi_head_attention_2/value/einsum/Einsum/ReadVariableOp?model/multi_head_attention_2/value/einsum/Einsum/ReadVariableOp2F
!model/tokenize/mul/ReadVariableOp!model/tokenize/mul/ReadVariableOp:P L
'
_output_shapes
:€€€€€€€€€
!
_user_specified_name	input_1:PL
'
_output_shapes
:€€€€€€€€€
!
_user_specified_name	input_2:

_output_shapes
: 
ƒ
±
B__inference_dense_1_layer_call_and_return_conditional_losses_20630

inputs3
!tensordot_readvariableop_resource:
identityИҐTensordot/ReadVariableOpz
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ї
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : њ
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ь
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:y
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:€€€€€€€€€	К
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€К
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : І
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Г
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:€€€€€€€€€	e
IdentityIdentityTensordot:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€	a
NoOpNoOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:€€€€€€€€€	: 24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:€€€€€€€€€	
 
_user_specified_nameinputs
п
П
P__inference_layer_normalization_4_layer_call_and_return_conditional_losses_24497

inputs3
%batchnorm_mul_readvariableop_resource:/
!batchnorm_readvariableop_resource:
identityИҐbatchnorm/ReadVariableOpҐbatchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:М
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:€€€€€€€€€	*
	keep_dims(q
moments/StopGradientStopGradientmoments/mean:output:0*
T0*+
_output_shapes
:€€€€€€€€€	Л
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*+
_output_shapes
:€€€€€€€€€	l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:Ђ
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:€€€€€€€€€	*
	keep_dims(T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *љ7Ж5Б
batchnorm/addAddV2moments/variance:output:0batchnorm/add/y:output:0*
T0*+
_output_shapes
:€€€€€€€€€	a
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*+
_output_shapes
:€€€€€€€€€	~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0Е
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€	g
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€	v
batchnorm/mul_2Mulmoments/mean:output:0batchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€	v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0Б
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*+
_output_shapes
:€€€€€€€€€	v
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*+
_output_shapes
:€€€€€€€€€	f
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€	А
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€	: : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:S O
+
_output_shapes
:€€€€€€€€€	
 
_user_specified_nameinputs
п
П
P__inference_layer_normalization_4_layer_call_and_return_conditional_losses_20962

inputs3
%batchnorm_mul_readvariableop_resource:/
!batchnorm_readvariableop_resource:
identityИҐbatchnorm/ReadVariableOpҐbatchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:М
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:€€€€€€€€€	*
	keep_dims(q
moments/StopGradientStopGradientmoments/mean:output:0*
T0*+
_output_shapes
:€€€€€€€€€	Л
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*+
_output_shapes
:€€€€€€€€€	l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:Ђ
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:€€€€€€€€€	*
	keep_dims(T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *љ7Ж5Б
batchnorm/addAddV2moments/variance:output:0batchnorm/add/y:output:0*
T0*+
_output_shapes
:€€€€€€€€€	a
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*+
_output_shapes
:€€€€€€€€€	~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0Е
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€	g
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€	v
batchnorm/mul_2Mulmoments/mean:output:0batchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€	v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0Б
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*+
_output_shapes
:€€€€€€€€€	v
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*+
_output_shapes
:€€€€€€€€€	f
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€	А
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€	: : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:S O
+
_output_shapes
:€€€€€€€€€	
 
_user_specified_nameinputs
п
П
P__inference_layer_normalization_1_layer_call_and_return_conditional_losses_20671

inputs3
%batchnorm_mul_readvariableop_resource:/
!batchnorm_readvariableop_resource:
identityИҐbatchnorm/ReadVariableOpҐbatchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:М
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:€€€€€€€€€	*
	keep_dims(q
moments/StopGradientStopGradientmoments/mean:output:0*
T0*+
_output_shapes
:€€€€€€€€€	Л
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*+
_output_shapes
:€€€€€€€€€	l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:Ђ
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:€€€€€€€€€	*
	keep_dims(T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *љ7Ж5Б
batchnorm/addAddV2moments/variance:output:0batchnorm/add/y:output:0*
T0*+
_output_shapes
:€€€€€€€€€	a
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*+
_output_shapes
:€€€€€€€€€	~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0Е
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€	g
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€	v
batchnorm/mul_2Mulmoments/mean:output:0batchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€	v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0Б
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*+
_output_shapes
:€€€€€€€€€	v
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*+
_output_shapes
:€€€€€€€€€	f
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€	А
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€	: : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:S O
+
_output_shapes
:€€€€€€€€€	
 
_user_specified_nameinputs
Ѓ
O
#__inference_add_layer_call_fn_23856
inputs_0
inputs_1
identityЇ
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€	* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *G
fBR@
>__inference_add_layer_call_and_return_conditional_losses_20534d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:€€€€€€€€€	"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:€€€€€€€€€	:€€€€€€€€€	:U Q
+
_output_shapes
:€€€€€€€€€	
"
_user_specified_name
inputs/0:UQ
+
_output_shapes
:€€€€€€€€€	
"
_user_specified_name
inputs/1
Ќ
j
@__inference_add_1_layer_call_and_return_conditional_losses_20647

inputs
inputs_1
identityT
addAddV2inputsinputs_1*
T0*+
_output_shapes
:€€€€€€€€€	S
IdentityIdentityadd:z:0*
T0*+
_output_shapes
:€€€€€€€€€	"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:€€€€€€€€€	:€€€€€€€€€	:S O
+
_output_shapes
:€€€€€€€€€	
 
_user_specified_nameinputs:SO
+
_output_shapes
:€€€€€€€€€	
 
_user_specified_nameinputs
•
{
'__inference_dense_2_layer_call_fn_24202

inputs
unknown:
identityИҐStatefulPartitionedCallќ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€	*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_20793s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€	`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:€€€€€€€€€	: 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€	
 
_user_specified_nameinputs
ƒ
±
B__inference_dense_5_layer_call_and_return_conditional_losses_24565

inputs3
!tensordot_readvariableop_resource:
identityИҐTensordot/ReadVariableOpz
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ї
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : њ
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ь
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:y
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:€€€€€€€€€	К
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€К
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : І
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Г
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:€€€€€€€€€	e
IdentityIdentityTensordot:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€	a
NoOpNoOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:€€€€€€€€€	: 24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:€€€€€€€€€	
 
_user_specified_nameinputs
Уґ
е
@__inference_model_layer_call_and_return_conditional_losses_21098

inputs
inputs_1
unknown!
embedding_20443:#
embedding_1_20457: 
tokenize_20470:0
multi_head_attention_20511:,
multi_head_attention_20513:0
multi_head_attention_20515:,
multi_head_attention_20517:0
multi_head_attention_20519:,
multi_head_attention_20521:0
multi_head_attention_20523:(
multi_head_attention_20525:'
layer_normalization_20559:'
layer_normalization_20561:
dense_20592:
dense_1_20631:)
layer_normalization_1_20672:)
layer_normalization_1_20674:2
multi_head_attention_1_20713:.
multi_head_attention_1_20715:2
multi_head_attention_1_20717:.
multi_head_attention_1_20719:2
multi_head_attention_1_20721:.
multi_head_attention_1_20723:2
multi_head_attention_1_20725:*
multi_head_attention_1_20727:)
layer_normalization_2_20761:)
layer_normalization_2_20763:
dense_2_20794:
dense_3_20833:)
layer_normalization_3_20874:)
layer_normalization_3_20876:2
multi_head_attention_2_20915:.
multi_head_attention_2_20917:2
multi_head_attention_2_20919:.
multi_head_attention_2_20921:2
multi_head_attention_2_20923:.
multi_head_attention_2_20925:2
multi_head_attention_2_20927:*
multi_head_attention_2_20929:)
layer_normalization_4_20963:)
layer_normalization_4_20965:
dense_4_20996:
dense_5_21035:)
layer_normalization_5_21076:)
layer_normalization_5_21078:
dense_6_21093:
identityИҐdense/StatefulPartitionedCallҐdense_1/StatefulPartitionedCallҐdense_2/StatefulPartitionedCallҐdense_3/StatefulPartitionedCallҐdense_4/StatefulPartitionedCallҐdense_5/StatefulPartitionedCallҐdense_6/StatefulPartitionedCallҐ!embedding/StatefulPartitionedCallҐ#embedding_1/StatefulPartitionedCallҐ+layer_normalization/StatefulPartitionedCallҐ-layer_normalization_1/StatefulPartitionedCallҐ-layer_normalization_2/StatefulPartitionedCallҐ-layer_normalization_3/StatefulPartitionedCallҐ-layer_normalization_4/StatefulPartitionedCallҐ-layer_normalization_5/StatefulPartitionedCallҐ,multi_head_attention/StatefulPartitionedCallҐ.multi_head_attention_1/StatefulPartitionedCallҐ.multi_head_attention_2/StatefulPartitionedCallҐ tokenize/StatefulPartitionedCallN
tf.compat.v1.shape/ShapeShapeinputs*
T0*
_output_shapes
:v
,tf.__operators__.getitem/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.tf.__operators__.getitem/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.tf.__operators__.getitem/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:»
&tf.__operators__.getitem/strided_sliceStridedSlice!tf.compat.v1.shape/Shape:output:05tf.__operators__.getitem/strided_slice/stack:output:07tf.__operators__.getitem/strided_slice/stack_1:output:07tf.__operators__.getitem/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskЕ
tf.zeros/zeros/packedPack/tf.__operators__.getitem/strided_slice:output:0unknown*
N*
T0*
_output_shapes
:Y
tf.zeros/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    З
tf.zeros/zerosFilltf.zeros/zeros/packed:output:0tf.zeros/zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€у
!embedding/StatefulPartitionedCallStatefulPartitionedCalltf.zeros/zeros:output:0embedding_20443*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_embedding_layer_call_and_return_conditional_losses_20442и
#embedding_1/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_1_20457*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_embedding_1_layer_call_and_return_conditional_losses_20456б
 tokenize/StatefulPartitionedCallStatefulPartitionedCallinputs_1tokenize_20470*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_tokenize_layer_call_and_return_conditional_losses_20469W
tf.concat/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :А
tf.concat/concatConcatV2*embedding/StatefulPartitionedCall:output:0,embedding_1/StatefulPartitionedCall:output:0)tokenize/StatefulPartitionedCall:output:0tf.concat/concat/axis:output:0*
N*
T0*+
_output_shapes
:€€€€€€€€€	Д
,multi_head_attention/StatefulPartitionedCallStatefulPartitionedCalltf.concat/concat:output:0tf.concat/concat:output:0multi_head_attention_20511multi_head_attention_20513multi_head_attention_20515multi_head_attention_20517multi_head_attention_20519multi_head_attention_20521multi_head_attention_20523multi_head_attention_20525*
Tin
2
*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€	**
_read_only_resource_inputs

	*-
config_proto

CPU

GPU 2J 8В *X
fSRQ
O__inference_multi_head_attention_layer_call_and_return_conditional_losses_20510ь
add/PartitionedCallPartitionedCalltf.concat/concat:output:05multi_head_attention/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€	* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *G
fBR@
>__inference_add_layer_call_and_return_conditional_losses_20534≥
+layer_normalization/StatefulPartitionedCallStatefulPartitionedCalladd/PartitionedCall:output:0layer_normalization_20559layer_normalization_20561*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *W
fRRP
N__inference_layer_normalization_layer_call_and_return_conditional_losses_20558Д
dense/StatefulPartitionedCallStatefulPartitionedCall4layer_normalization/StatefulPartitionedCall:output:0dense_20592*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€	*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_20591Z
tf.nn.gelu/Gelu/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?Ш
tf.nn.gelu/Gelu/mulMultf.nn.gelu/Gelu/mul/x:output:0&dense/StatefulPartitionedCall:output:0*
T0*+
_output_shapes
:€€€€€€€€€	[
tf.nn.gelu/Gelu/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *уµ?°
tf.nn.gelu/Gelu/truedivRealDiv&dense/StatefulPartitionedCall:output:0tf.nn.gelu/Gelu/Cast/x:output:0*
T0*+
_output_shapes
:€€€€€€€€€	m
tf.nn.gelu/Gelu/ErfErftf.nn.gelu/Gelu/truediv:z:0*
T0*+
_output_shapes
:€€€€€€€€€	Z
tf.nn.gelu/Gelu/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Л
tf.nn.gelu/Gelu/addAddV2tf.nn.gelu/Gelu/add/x:output:0tf.nn.gelu/Gelu/Erf:y:0*
T0*+
_output_shapes
:€€€€€€€€€	Д
tf.nn.gelu/Gelu/mul_1Multf.nn.gelu/Gelu/mul:z:0tf.nn.gelu/Gelu/add:z:0*
T0*+
_output_shapes
:€€€€€€€€€	п
dense_1/StatefulPartitionedCallStatefulPartitionedCalltf.nn.gelu/Gelu/mul_1:z:0dense_1_20631*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€	*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_20630џ
dropout/PartitionedCallPartitionedCall(dense_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€	* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_20639Ж
add_1/PartitionedCallPartitionedCall4layer_normalization/StatefulPartitionedCall:output:0 dropout/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€	* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *I
fDRB
@__inference_add_1_layer_call_and_return_conditional_losses_20647љ
-layer_normalization_1/StatefulPartitionedCallStatefulPartitionedCalladd_1/PartitionedCall:output:0layer_normalization_1_20672layer_normalization_1_20674*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Y
fTRR
P__inference_layer_normalization_1_layer_call_and_return_conditional_losses_20671“
.multi_head_attention_1/StatefulPartitionedCallStatefulPartitionedCall6layer_normalization_1/StatefulPartitionedCall:output:06layer_normalization_1/StatefulPartitionedCall:output:0multi_head_attention_1_20713multi_head_attention_1_20715multi_head_attention_1_20717multi_head_attention_1_20719multi_head_attention_1_20721multi_head_attention_1_20723multi_head_attention_1_20725multi_head_attention_1_20727*
Tin
2
*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€	**
_read_only_resource_inputs

	*-
config_proto

CPU

GPU 2J 8В *Z
fURS
Q__inference_multi_head_attention_1_layer_call_and_return_conditional_losses_20712Я
add_2/PartitionedCallPartitionedCall6layer_normalization_1/StatefulPartitionedCall:output:07multi_head_attention_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€	* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *I
fDRB
@__inference_add_2_layer_call_and_return_conditional_losses_20736љ
-layer_normalization_2/StatefulPartitionedCallStatefulPartitionedCalladd_2/PartitionedCall:output:0layer_normalization_2_20761layer_normalization_2_20763*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Y
fTRR
P__inference_layer_normalization_2_layer_call_and_return_conditional_losses_20760М
dense_2/StatefulPartitionedCallStatefulPartitionedCall6layer_normalization_2/StatefulPartitionedCall:output:0dense_2_20794*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€	*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_20793\
tf.nn.gelu_1/Gelu/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?Ю
tf.nn.gelu_1/Gelu/mulMul tf.nn.gelu_1/Gelu/mul/x:output:0(dense_2/StatefulPartitionedCall:output:0*
T0*+
_output_shapes
:€€€€€€€€€	]
tf.nn.gelu_1/Gelu/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *уµ?І
tf.nn.gelu_1/Gelu/truedivRealDiv(dense_2/StatefulPartitionedCall:output:0!tf.nn.gelu_1/Gelu/Cast/x:output:0*
T0*+
_output_shapes
:€€€€€€€€€	q
tf.nn.gelu_1/Gelu/ErfErftf.nn.gelu_1/Gelu/truediv:z:0*
T0*+
_output_shapes
:€€€€€€€€€	\
tf.nn.gelu_1/Gelu/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?С
tf.nn.gelu_1/Gelu/addAddV2 tf.nn.gelu_1/Gelu/add/x:output:0tf.nn.gelu_1/Gelu/Erf:y:0*
T0*+
_output_shapes
:€€€€€€€€€	К
tf.nn.gelu_1/Gelu/mul_1Multf.nn.gelu_1/Gelu/mul:z:0tf.nn.gelu_1/Gelu/add:z:0*
T0*+
_output_shapes
:€€€€€€€€€	с
dense_3/StatefulPartitionedCallStatefulPartitionedCalltf.nn.gelu_1/Gelu/mul_1:z:0dense_3_20833*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€	*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_20832я
dropout_1/PartitionedCallPartitionedCall(dense_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€	* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_1_layer_call_and_return_conditional_losses_20841К
add_3/PartitionedCallPartitionedCall6layer_normalization_2/StatefulPartitionedCall:output:0"dropout_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€	* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *I
fDRB
@__inference_add_3_layer_call_and_return_conditional_losses_20849љ
-layer_normalization_3/StatefulPartitionedCallStatefulPartitionedCalladd_3/PartitionedCall:output:0layer_normalization_3_20874layer_normalization_3_20876*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Y
fTRR
P__inference_layer_normalization_3_layer_call_and_return_conditional_losses_20873“
.multi_head_attention_2/StatefulPartitionedCallStatefulPartitionedCall6layer_normalization_3/StatefulPartitionedCall:output:06layer_normalization_3/StatefulPartitionedCall:output:0multi_head_attention_2_20915multi_head_attention_2_20917multi_head_attention_2_20919multi_head_attention_2_20921multi_head_attention_2_20923multi_head_attention_2_20925multi_head_attention_2_20927multi_head_attention_2_20929*
Tin
2
*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€	**
_read_only_resource_inputs

	*-
config_proto

CPU

GPU 2J 8В *Z
fURS
Q__inference_multi_head_attention_2_layer_call_and_return_conditional_losses_20914Я
add_4/PartitionedCallPartitionedCall6layer_normalization_3/StatefulPartitionedCall:output:07multi_head_attention_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€	* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *I
fDRB
@__inference_add_4_layer_call_and_return_conditional_losses_20938љ
-layer_normalization_4/StatefulPartitionedCallStatefulPartitionedCalladd_4/PartitionedCall:output:0layer_normalization_4_20963layer_normalization_4_20965*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Y
fTRR
P__inference_layer_normalization_4_layer_call_and_return_conditional_losses_20962М
dense_4/StatefulPartitionedCallStatefulPartitionedCall6layer_normalization_4/StatefulPartitionedCall:output:0dense_4_20996*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€	*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense_4_layer_call_and_return_conditional_losses_20995\
tf.nn.gelu_2/Gelu/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?Ю
tf.nn.gelu_2/Gelu/mulMul tf.nn.gelu_2/Gelu/mul/x:output:0(dense_4/StatefulPartitionedCall:output:0*
T0*+
_output_shapes
:€€€€€€€€€	]
tf.nn.gelu_2/Gelu/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *уµ?І
tf.nn.gelu_2/Gelu/truedivRealDiv(dense_4/StatefulPartitionedCall:output:0!tf.nn.gelu_2/Gelu/Cast/x:output:0*
T0*+
_output_shapes
:€€€€€€€€€	q
tf.nn.gelu_2/Gelu/ErfErftf.nn.gelu_2/Gelu/truediv:z:0*
T0*+
_output_shapes
:€€€€€€€€€	\
tf.nn.gelu_2/Gelu/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?С
tf.nn.gelu_2/Gelu/addAddV2 tf.nn.gelu_2/Gelu/add/x:output:0tf.nn.gelu_2/Gelu/Erf:y:0*
T0*+
_output_shapes
:€€€€€€€€€	К
tf.nn.gelu_2/Gelu/mul_1Multf.nn.gelu_2/Gelu/mul:z:0tf.nn.gelu_2/Gelu/add:z:0*
T0*+
_output_shapes
:€€€€€€€€€	с
dense_5/StatefulPartitionedCallStatefulPartitionedCalltf.nn.gelu_2/Gelu/mul_1:z:0dense_5_21035*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€	*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense_5_layer_call_and_return_conditional_losses_21034я
dropout_2/PartitionedCallPartitionedCall(dense_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€	* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_2_layer_call_and_return_conditional_losses_21043К
add_5/PartitionedCallPartitionedCall6layer_normalization_4/StatefulPartitionedCall:output:0"dropout_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€	* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *I
fDRB
@__inference_add_5_layer_call_and_return_conditional_losses_21051љ
-layer_normalization_5/StatefulPartitionedCallStatefulPartitionedCalladd_5/PartitionedCall:output:0layer_normalization_5_21076layer_normalization_5_21078*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Y
fTRR
P__inference_layer_normalization_5_layer_call_and_return_conditional_losses_21075
.tf.__operators__.getitem_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        Б
0tf.__operators__.getitem_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       Б
0tf.__operators__.getitem_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ш
(tf.__operators__.getitem_1/strided_sliceStridedSlice6layer_normalization_5/StatefulPartitionedCall:output:07tf.__operators__.getitem_1/strided_slice/stack:output:09tf.__operators__.getitem_1/strided_slice/stack_1:output:09tf.__operators__.getitem_1/strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
shrink_axis_maskГ
dense_6/StatefulPartitionedCallStatefulPartitionedCall1tf.__operators__.getitem_1/strided_slice:output:0dense_6_21093*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense_6_layer_call_and_return_conditional_losses_21092~
tf.math.sigmoid/SigmoidSigmoid(dense_6/StatefulPartitionedCall:output:0*
T0*'
_output_shapes
:€€€€€€€€€j
IdentityIdentitytf.math.sigmoid/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ќ
NoOpNoOp^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall"^embedding/StatefulPartitionedCall$^embedding_1/StatefulPartitionedCall,^layer_normalization/StatefulPartitionedCall.^layer_normalization_1/StatefulPartitionedCall.^layer_normalization_2/StatefulPartitionedCall.^layer_normalization_3/StatefulPartitionedCall.^layer_normalization_4/StatefulPartitionedCall.^layer_normalization_5/StatefulPartitionedCall-^multi_head_attention/StatefulPartitionedCall/^multi_head_attention_1/StatefulPartitionedCall/^multi_head_attention_2/StatefulPartitionedCall!^tokenize/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Щ
_input_shapesЗ
Д:€€€€€€€€€:€€€€€€€€€: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2J
#embedding_1/StatefulPartitionedCall#embedding_1/StatefulPartitionedCall2Z
+layer_normalization/StatefulPartitionedCall+layer_normalization/StatefulPartitionedCall2^
-layer_normalization_1/StatefulPartitionedCall-layer_normalization_1/StatefulPartitionedCall2^
-layer_normalization_2/StatefulPartitionedCall-layer_normalization_2/StatefulPartitionedCall2^
-layer_normalization_3/StatefulPartitionedCall-layer_normalization_3/StatefulPartitionedCall2^
-layer_normalization_4/StatefulPartitionedCall-layer_normalization_4/StatefulPartitionedCall2^
-layer_normalization_5/StatefulPartitionedCall-layer_normalization_5/StatefulPartitionedCall2\
,multi_head_attention/StatefulPartitionedCall,multi_head_attention/StatefulPartitionedCall2`
.multi_head_attention_1/StatefulPartitionedCall.multi_head_attention_1/StatefulPartitionedCall2`
.multi_head_attention_2/StatefulPartitionedCall.multi_head_attention_2/StatefulPartitionedCall2D
 tokenize/StatefulPartitionedCall tokenize/StatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:OK
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:

_output_shapes
: 
Ь*
ш
O__inference_multi_head_attention_layer_call_and_return_conditional_losses_23808	
query	
valueA
+query_einsum_einsum_readvariableop_resource:3
!query_add_readvariableop_resource:?
)key_einsum_einsum_readvariableop_resource:1
key_add_readvariableop_resource:A
+value_einsum_einsum_readvariableop_resource:3
!value_add_readvariableop_resource:L
6attention_output_einsum_einsum_readvariableop_resource::
,attention_output_add_readvariableop_resource:
identityИҐ#attention_output/add/ReadVariableOpҐ-attention_output/einsum/Einsum/ReadVariableOpҐkey/add/ReadVariableOpҐ key/einsum/Einsum/ReadVariableOpҐquery/add/ReadVariableOpҐ"query/einsum/Einsum/ReadVariableOpҐvalue/add/ReadVariableOpҐ"value/einsum/Einsum/ReadVariableOpТ
"query/einsum/Einsum/ReadVariableOpReadVariableOp+query_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0∞
query/einsum/EinsumEinsumquery*query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:€€€€€€€€€	*
equationabc,cde->abdez
query/add/ReadVariableOpReadVariableOp!query_add_readvariableop_resource*
_output_shapes

:*
dtype0М
	query/addAddV2query/einsum/Einsum:output:0 query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€	О
 key/einsum/Einsum/ReadVariableOpReadVariableOp)key_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0ђ
key/einsum/EinsumEinsumvalue(key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:€€€€€€€€€	*
equationabc,cde->abdev
key/add/ReadVariableOpReadVariableOpkey_add_readvariableop_resource*
_output_shapes

:*
dtype0Ж
key/addAddV2key/einsum/Einsum:output:0key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€	Т
"value/einsum/Einsum/ReadVariableOpReadVariableOp+value_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0∞
value/einsum/EinsumEinsumvalue*value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:€€€€€€€€€	*
equationabc,cde->abdez
value/add/ReadVariableOpReadVariableOp!value_add_readvariableop_resource*
_output_shapes

:*
dtype0М
	value/addAddV2value/einsum/Einsum:output:0 value/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€	J
Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>c
MulMulquery/add:z:0Mul/y:output:0*
T0*/
_output_shapes
:€€€€€€€€€	П
einsum/EinsumEinsumkey/add:z:0Mul:z:0*
N*
T0*/
_output_shapes
:€€€€€€€€€		*
equationaecd,abcd->acbel
softmax/SoftmaxSoftmaxeinsum/Einsum:output:0*
T0*/
_output_shapes
:€€€€€€€€€		q
dropout/IdentityIdentitysoftmax/Softmax:softmax:0*
T0*/
_output_shapes
:€€€€€€€€€		•
einsum_1/EinsumEinsumdropout/Identity:output:0value/add:z:0*
N*
T0*/
_output_shapes
:€€€€€€€€€	*
equationacbe,aecd->abcd®
-attention_output/einsum/Einsum/ReadVariableOpReadVariableOp6attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0’
attention_output/einsum/EinsumEinsumeinsum_1/Einsum:output:05attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:€€€€€€€€€	*
equationabcd,cde->abeМ
#attention_output/add/ReadVariableOpReadVariableOp,attention_output_add_readvariableop_resource*
_output_shapes
:*
dtype0©
attention_output/addAddV2'attention_output/einsum/Einsum:output:0+attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€	k
IdentityIdentityattention_output/add:z:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€	Ў
NoOpNoOp$^attention_output/add/ReadVariableOp.^attention_output/einsum/Einsum/ReadVariableOp^key/add/ReadVariableOp!^key/einsum/Einsum/ReadVariableOp^query/add/ReadVariableOp#^query/einsum/Einsum/ReadVariableOp^value/add/ReadVariableOp#^value/einsum/Einsum/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:€€€€€€€€€	:€€€€€€€€€	: : : : : : : : 2J
#attention_output/add/ReadVariableOp#attention_output/add/ReadVariableOp2^
-attention_output/einsum/Einsum/ReadVariableOp-attention_output/einsum/Einsum/ReadVariableOp20
key/add/ReadVariableOpkey/add/ReadVariableOp2D
 key/einsum/Einsum/ReadVariableOp key/einsum/Einsum/ReadVariableOp24
query/add/ReadVariableOpquery/add/ReadVariableOp2H
"query/einsum/Einsum/ReadVariableOp"query/einsum/Einsum/ReadVariableOp24
value/add/ReadVariableOpvalue/add/ReadVariableOp2H
"value/einsum/Einsum/ReadVariableOp"value/einsum/Einsum/ReadVariableOp:R N
+
_output_shapes
:€€€€€€€€€	

_user_specified_namequery:RN
+
_output_shapes
:€€€€€€€€€	

_user_specified_namevalue
Ь*
ш
O__inference_multi_head_attention_layer_call_and_return_conditional_losses_20510	
query	
valueA
+query_einsum_einsum_readvariableop_resource:3
!query_add_readvariableop_resource:?
)key_einsum_einsum_readvariableop_resource:1
key_add_readvariableop_resource:A
+value_einsum_einsum_readvariableop_resource:3
!value_add_readvariableop_resource:L
6attention_output_einsum_einsum_readvariableop_resource::
,attention_output_add_readvariableop_resource:
identityИҐ#attention_output/add/ReadVariableOpҐ-attention_output/einsum/Einsum/ReadVariableOpҐkey/add/ReadVariableOpҐ key/einsum/Einsum/ReadVariableOpҐquery/add/ReadVariableOpҐ"query/einsum/Einsum/ReadVariableOpҐvalue/add/ReadVariableOpҐ"value/einsum/Einsum/ReadVariableOpТ
"query/einsum/Einsum/ReadVariableOpReadVariableOp+query_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0∞
query/einsum/EinsumEinsumquery*query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:€€€€€€€€€	*
equationabc,cde->abdez
query/add/ReadVariableOpReadVariableOp!query_add_readvariableop_resource*
_output_shapes

:*
dtype0М
	query/addAddV2query/einsum/Einsum:output:0 query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€	О
 key/einsum/Einsum/ReadVariableOpReadVariableOp)key_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0ђ
key/einsum/EinsumEinsumvalue(key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:€€€€€€€€€	*
equationabc,cde->abdev
key/add/ReadVariableOpReadVariableOpkey_add_readvariableop_resource*
_output_shapes

:*
dtype0Ж
key/addAddV2key/einsum/Einsum:output:0key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€	Т
"value/einsum/Einsum/ReadVariableOpReadVariableOp+value_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0∞
value/einsum/EinsumEinsumvalue*value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:€€€€€€€€€	*
equationabc,cde->abdez
value/add/ReadVariableOpReadVariableOp!value_add_readvariableop_resource*
_output_shapes

:*
dtype0М
	value/addAddV2value/einsum/Einsum:output:0 value/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€	J
Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>c
MulMulquery/add:z:0Mul/y:output:0*
T0*/
_output_shapes
:€€€€€€€€€	П
einsum/EinsumEinsumkey/add:z:0Mul:z:0*
N*
T0*/
_output_shapes
:€€€€€€€€€		*
equationaecd,abcd->acbel
softmax/SoftmaxSoftmaxeinsum/Einsum:output:0*
T0*/
_output_shapes
:€€€€€€€€€		q
dropout/IdentityIdentitysoftmax/Softmax:softmax:0*
T0*/
_output_shapes
:€€€€€€€€€		•
einsum_1/EinsumEinsumdropout/Identity:output:0value/add:z:0*
N*
T0*/
_output_shapes
:€€€€€€€€€	*
equationacbe,aecd->abcd®
-attention_output/einsum/Einsum/ReadVariableOpReadVariableOp6attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0’
attention_output/einsum/EinsumEinsumeinsum_1/Einsum:output:05attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:€€€€€€€€€	*
equationabcd,cde->abeМ
#attention_output/add/ReadVariableOpReadVariableOp,attention_output_add_readvariableop_resource*
_output_shapes
:*
dtype0©
attention_output/addAddV2'attention_output/einsum/Einsum:output:0+attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€	k
IdentityIdentityattention_output/add:z:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€	Ў
NoOpNoOp$^attention_output/add/ReadVariableOp.^attention_output/einsum/Einsum/ReadVariableOp^key/add/ReadVariableOp!^key/einsum/Einsum/ReadVariableOp^query/add/ReadVariableOp#^query/einsum/Einsum/ReadVariableOp^value/add/ReadVariableOp#^value/einsum/Einsum/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:€€€€€€€€€	:€€€€€€€€€	: : : : : : : : 2J
#attention_output/add/ReadVariableOp#attention_output/add/ReadVariableOp2^
-attention_output/einsum/Einsum/ReadVariableOp-attention_output/einsum/Einsum/ReadVariableOp20
key/add/ReadVariableOpkey/add/ReadVariableOp2D
 key/einsum/Einsum/ReadVariableOp key/einsum/Einsum/ReadVariableOp24
query/add/ReadVariableOpquery/add/ReadVariableOp2H
"query/einsum/Einsum/ReadVariableOp"query/einsum/Einsum/ReadVariableOp24
value/add/ReadVariableOpvalue/add/ReadVariableOp2H
"value/einsum/Einsum/ReadVariableOp"value/einsum/Einsum/ReadVariableOp:R N
+
_output_shapes
:€€€€€€€€€	

_user_specified_namequery:RN
+
_output_shapes
:€€€€€€€€€	

_user_specified_namevalue
ћЇ
ѕ
@__inference_model_layer_call_and_return_conditional_losses_22505
input_1
input_2
unknown!
embedding_22353:#
embedding_1_22356: 
tokenize_22359:0
multi_head_attention_22364:,
multi_head_attention_22366:0
multi_head_attention_22368:,
multi_head_attention_22370:0
multi_head_attention_22372:,
multi_head_attention_22374:0
multi_head_attention_22376:(
multi_head_attention_22378:'
layer_normalization_22382:'
layer_normalization_22384:
dense_22387:
dense_1_22398:)
layer_normalization_1_22403:)
layer_normalization_1_22405:2
multi_head_attention_1_22408:.
multi_head_attention_1_22410:2
multi_head_attention_1_22412:.
multi_head_attention_1_22414:2
multi_head_attention_1_22416:.
multi_head_attention_1_22418:2
multi_head_attention_1_22420:*
multi_head_attention_1_22422:)
layer_normalization_2_22426:)
layer_normalization_2_22428:
dense_2_22431:
dense_3_22442:)
layer_normalization_3_22447:)
layer_normalization_3_22449:2
multi_head_attention_2_22452:.
multi_head_attention_2_22454:2
multi_head_attention_2_22456:.
multi_head_attention_2_22458:2
multi_head_attention_2_22460:.
multi_head_attention_2_22462:2
multi_head_attention_2_22464:*
multi_head_attention_2_22466:)
layer_normalization_4_22470:)
layer_normalization_4_22472:
dense_4_22475:
dense_5_22486:)
layer_normalization_5_22491:)
layer_normalization_5_22493:
dense_6_22500:
identityИҐdense/StatefulPartitionedCallҐdense_1/StatefulPartitionedCallҐdense_2/StatefulPartitionedCallҐdense_3/StatefulPartitionedCallҐdense_4/StatefulPartitionedCallҐdense_5/StatefulPartitionedCallҐdense_6/StatefulPartitionedCallҐdropout/StatefulPartitionedCallҐ!dropout_1/StatefulPartitionedCallҐ!dropout_2/StatefulPartitionedCallҐ!embedding/StatefulPartitionedCallҐ#embedding_1/StatefulPartitionedCallҐ+layer_normalization/StatefulPartitionedCallҐ-layer_normalization_1/StatefulPartitionedCallҐ-layer_normalization_2/StatefulPartitionedCallҐ-layer_normalization_3/StatefulPartitionedCallҐ-layer_normalization_4/StatefulPartitionedCallҐ-layer_normalization_5/StatefulPartitionedCallҐ,multi_head_attention/StatefulPartitionedCallҐ.multi_head_attention_1/StatefulPartitionedCallҐ.multi_head_attention_2/StatefulPartitionedCallҐ tokenize/StatefulPartitionedCallO
tf.compat.v1.shape/ShapeShapeinput_1*
T0*
_output_shapes
:v
,tf.__operators__.getitem/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.tf.__operators__.getitem/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.tf.__operators__.getitem/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:»
&tf.__operators__.getitem/strided_sliceStridedSlice!tf.compat.v1.shape/Shape:output:05tf.__operators__.getitem/strided_slice/stack:output:07tf.__operators__.getitem/strided_slice/stack_1:output:07tf.__operators__.getitem/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskЕ
tf.zeros/zeros/packedPack/tf.__operators__.getitem/strided_slice:output:0unknown*
N*
T0*
_output_shapes
:Y
tf.zeros/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    З
tf.zeros/zerosFilltf.zeros/zeros/packed:output:0tf.zeros/zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€у
!embedding/StatefulPartitionedCallStatefulPartitionedCalltf.zeros/zeros:output:0embedding_22353*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_embedding_layer_call_and_return_conditional_losses_20442й
#embedding_1/StatefulPartitionedCallStatefulPartitionedCallinput_1embedding_1_22356*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_embedding_1_layer_call_and_return_conditional_losses_20456а
 tokenize/StatefulPartitionedCallStatefulPartitionedCallinput_2tokenize_22359*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_tokenize_layer_call_and_return_conditional_losses_20469W
tf.concat/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :А
tf.concat/concatConcatV2*embedding/StatefulPartitionedCall:output:0,embedding_1/StatefulPartitionedCall:output:0)tokenize/StatefulPartitionedCall:output:0tf.concat/concat/axis:output:0*
N*
T0*+
_output_shapes
:€€€€€€€€€	Д
,multi_head_attention/StatefulPartitionedCallStatefulPartitionedCalltf.concat/concat:output:0tf.concat/concat:output:0multi_head_attention_22364multi_head_attention_22366multi_head_attention_22368multi_head_attention_22370multi_head_attention_22372multi_head_attention_22374multi_head_attention_22376multi_head_attention_22378*
Tin
2
*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€	**
_read_only_resource_inputs

	*-
config_proto

CPU

GPU 2J 8В *X
fSRQ
O__inference_multi_head_attention_layer_call_and_return_conditional_losses_21664ь
add/PartitionedCallPartitionedCalltf.concat/concat:output:05multi_head_attention/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€	* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *G
fBR@
>__inference_add_layer_call_and_return_conditional_losses_20534≥
+layer_normalization/StatefulPartitionedCallStatefulPartitionedCalladd/PartitionedCall:output:0layer_normalization_22382layer_normalization_22384*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *W
fRRP
N__inference_layer_normalization_layer_call_and_return_conditional_losses_20558Д
dense/StatefulPartitionedCallStatefulPartitionedCall4layer_normalization/StatefulPartitionedCall:output:0dense_22387*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€	*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_20591Z
tf.nn.gelu/Gelu/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?Ш
tf.nn.gelu/Gelu/mulMultf.nn.gelu/Gelu/mul/x:output:0&dense/StatefulPartitionedCall:output:0*
T0*+
_output_shapes
:€€€€€€€€€	[
tf.nn.gelu/Gelu/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *уµ?°
tf.nn.gelu/Gelu/truedivRealDiv&dense/StatefulPartitionedCall:output:0tf.nn.gelu/Gelu/Cast/x:output:0*
T0*+
_output_shapes
:€€€€€€€€€	m
tf.nn.gelu/Gelu/ErfErftf.nn.gelu/Gelu/truediv:z:0*
T0*+
_output_shapes
:€€€€€€€€€	Z
tf.nn.gelu/Gelu/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Л
tf.nn.gelu/Gelu/addAddV2tf.nn.gelu/Gelu/add/x:output:0tf.nn.gelu/Gelu/Erf:y:0*
T0*+
_output_shapes
:€€€€€€€€€	Д
tf.nn.gelu/Gelu/mul_1Multf.nn.gelu/Gelu/mul:z:0tf.nn.gelu/Gelu/add:z:0*
T0*+
_output_shapes
:€€€€€€€€€	п
dense_1/StatefulPartitionedCallStatefulPartitionedCalltf.nn.gelu/Gelu/mul_1:z:0dense_1_22398*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€	*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_20630л
dropout/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€	* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_21560О
add_1/PartitionedCallPartitionedCall4layer_normalization/StatefulPartitionedCall:output:0(dropout/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€	* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *I
fDRB
@__inference_add_1_layer_call_and_return_conditional_losses_20647љ
-layer_normalization_1/StatefulPartitionedCallStatefulPartitionedCalladd_1/PartitionedCall:output:0layer_normalization_1_22403layer_normalization_1_22405*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Y
fTRR
P__inference_layer_normalization_1_layer_call_and_return_conditional_losses_20671“
.multi_head_attention_1/StatefulPartitionedCallStatefulPartitionedCall6layer_normalization_1/StatefulPartitionedCall:output:06layer_normalization_1/StatefulPartitionedCall:output:0multi_head_attention_1_22408multi_head_attention_1_22410multi_head_attention_1_22412multi_head_attention_1_22414multi_head_attention_1_22416multi_head_attention_1_22418multi_head_attention_1_22420multi_head_attention_1_22422*
Tin
2
*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€	**
_read_only_resource_inputs

	*-
config_proto

CPU

GPU 2J 8В *Z
fURS
Q__inference_multi_head_attention_1_layer_call_and_return_conditional_losses_21504Я
add_2/PartitionedCallPartitionedCall6layer_normalization_1/StatefulPartitionedCall:output:07multi_head_attention_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€	* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *I
fDRB
@__inference_add_2_layer_call_and_return_conditional_losses_20736љ
-layer_normalization_2/StatefulPartitionedCallStatefulPartitionedCalladd_2/PartitionedCall:output:0layer_normalization_2_22426layer_normalization_2_22428*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Y
fTRR
P__inference_layer_normalization_2_layer_call_and_return_conditional_losses_20760М
dense_2/StatefulPartitionedCallStatefulPartitionedCall6layer_normalization_2/StatefulPartitionedCall:output:0dense_2_22431*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€	*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_20793\
tf.nn.gelu_1/Gelu/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?Ю
tf.nn.gelu_1/Gelu/mulMul tf.nn.gelu_1/Gelu/mul/x:output:0(dense_2/StatefulPartitionedCall:output:0*
T0*+
_output_shapes
:€€€€€€€€€	]
tf.nn.gelu_1/Gelu/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *уµ?І
tf.nn.gelu_1/Gelu/truedivRealDiv(dense_2/StatefulPartitionedCall:output:0!tf.nn.gelu_1/Gelu/Cast/x:output:0*
T0*+
_output_shapes
:€€€€€€€€€	q
tf.nn.gelu_1/Gelu/ErfErftf.nn.gelu_1/Gelu/truediv:z:0*
T0*+
_output_shapes
:€€€€€€€€€	\
tf.nn.gelu_1/Gelu/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?С
tf.nn.gelu_1/Gelu/addAddV2 tf.nn.gelu_1/Gelu/add/x:output:0tf.nn.gelu_1/Gelu/Erf:y:0*
T0*+
_output_shapes
:€€€€€€€€€	К
tf.nn.gelu_1/Gelu/mul_1Multf.nn.gelu_1/Gelu/mul:z:0tf.nn.gelu_1/Gelu/add:z:0*
T0*+
_output_shapes
:€€€€€€€€€	с
dense_3/StatefulPartitionedCallStatefulPartitionedCalltf.nn.gelu_1/Gelu/mul_1:z:0dense_3_22442*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€	*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_20832С
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall(dense_3/StatefulPartitionedCall:output:0 ^dropout/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€	* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_1_layer_call_and_return_conditional_losses_21400Т
add_3/PartitionedCallPartitionedCall6layer_normalization_2/StatefulPartitionedCall:output:0*dropout_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€	* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *I
fDRB
@__inference_add_3_layer_call_and_return_conditional_losses_20849љ
-layer_normalization_3/StatefulPartitionedCallStatefulPartitionedCalladd_3/PartitionedCall:output:0layer_normalization_3_22447layer_normalization_3_22449*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Y
fTRR
P__inference_layer_normalization_3_layer_call_and_return_conditional_losses_20873“
.multi_head_attention_2/StatefulPartitionedCallStatefulPartitionedCall6layer_normalization_3/StatefulPartitionedCall:output:06layer_normalization_3/StatefulPartitionedCall:output:0multi_head_attention_2_22452multi_head_attention_2_22454multi_head_attention_2_22456multi_head_attention_2_22458multi_head_attention_2_22460multi_head_attention_2_22462multi_head_attention_2_22464multi_head_attention_2_22466*
Tin
2
*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€	**
_read_only_resource_inputs

	*-
config_proto

CPU

GPU 2J 8В *Z
fURS
Q__inference_multi_head_attention_2_layer_call_and_return_conditional_losses_21344Я
add_4/PartitionedCallPartitionedCall6layer_normalization_3/StatefulPartitionedCall:output:07multi_head_attention_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€	* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *I
fDRB
@__inference_add_4_layer_call_and_return_conditional_losses_20938љ
-layer_normalization_4/StatefulPartitionedCallStatefulPartitionedCalladd_4/PartitionedCall:output:0layer_normalization_4_22470layer_normalization_4_22472*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Y
fTRR
P__inference_layer_normalization_4_layer_call_and_return_conditional_losses_20962М
dense_4/StatefulPartitionedCallStatefulPartitionedCall6layer_normalization_4/StatefulPartitionedCall:output:0dense_4_22475*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€	*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense_4_layer_call_and_return_conditional_losses_20995\
tf.nn.gelu_2/Gelu/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?Ю
tf.nn.gelu_2/Gelu/mulMul tf.nn.gelu_2/Gelu/mul/x:output:0(dense_4/StatefulPartitionedCall:output:0*
T0*+
_output_shapes
:€€€€€€€€€	]
tf.nn.gelu_2/Gelu/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *уµ?І
tf.nn.gelu_2/Gelu/truedivRealDiv(dense_4/StatefulPartitionedCall:output:0!tf.nn.gelu_2/Gelu/Cast/x:output:0*
T0*+
_output_shapes
:€€€€€€€€€	q
tf.nn.gelu_2/Gelu/ErfErftf.nn.gelu_2/Gelu/truediv:z:0*
T0*+
_output_shapes
:€€€€€€€€€	\
tf.nn.gelu_2/Gelu/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?С
tf.nn.gelu_2/Gelu/addAddV2 tf.nn.gelu_2/Gelu/add/x:output:0tf.nn.gelu_2/Gelu/Erf:y:0*
T0*+
_output_shapes
:€€€€€€€€€	К
tf.nn.gelu_2/Gelu/mul_1Multf.nn.gelu_2/Gelu/mul:z:0tf.nn.gelu_2/Gelu/add:z:0*
T0*+
_output_shapes
:€€€€€€€€€	с
dense_5/StatefulPartitionedCallStatefulPartitionedCalltf.nn.gelu_2/Gelu/mul_1:z:0dense_5_22486*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€	*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense_5_layer_call_and_return_conditional_losses_21034У
!dropout_2/StatefulPartitionedCallStatefulPartitionedCall(dense_5/StatefulPartitionedCall:output:0"^dropout_1/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€	* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_2_layer_call_and_return_conditional_losses_21240Т
add_5/PartitionedCallPartitionedCall6layer_normalization_4/StatefulPartitionedCall:output:0*dropout_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€	* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *I
fDRB
@__inference_add_5_layer_call_and_return_conditional_losses_21051љ
-layer_normalization_5/StatefulPartitionedCallStatefulPartitionedCalladd_5/PartitionedCall:output:0layer_normalization_5_22491layer_normalization_5_22493*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Y
fTRR
P__inference_layer_normalization_5_layer_call_and_return_conditional_losses_21075
.tf.__operators__.getitem_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        Б
0tf.__operators__.getitem_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       Б
0tf.__operators__.getitem_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ш
(tf.__operators__.getitem_1/strided_sliceStridedSlice6layer_normalization_5/StatefulPartitionedCall:output:07tf.__operators__.getitem_1/strided_slice/stack:output:09tf.__operators__.getitem_1/strided_slice/stack_1:output:09tf.__operators__.getitem_1/strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
shrink_axis_maskГ
dense_6/StatefulPartitionedCallStatefulPartitionedCall1tf.__operators__.getitem_1/strided_slice:output:0dense_6_22500*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense_6_layer_call_and_return_conditional_losses_21092~
tf.math.sigmoid/SigmoidSigmoid(dense_6/StatefulPartitionedCall:output:0*
T0*'
_output_shapes
:€€€€€€€€€j
IdentityIdentitytf.math.sigmoid/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€Є
NoOpNoOp^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall ^dropout/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall"^dropout_2/StatefulPartitionedCall"^embedding/StatefulPartitionedCall$^embedding_1/StatefulPartitionedCall,^layer_normalization/StatefulPartitionedCall.^layer_normalization_1/StatefulPartitionedCall.^layer_normalization_2/StatefulPartitionedCall.^layer_normalization_3/StatefulPartitionedCall.^layer_normalization_4/StatefulPartitionedCall.^layer_normalization_5/StatefulPartitionedCall-^multi_head_attention/StatefulPartitionedCall/^multi_head_attention_1/StatefulPartitionedCall/^multi_head_attention_2/StatefulPartitionedCall!^tokenize/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Щ
_input_shapesЗ
Д:€€€€€€€€€:€€€€€€€€€: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall2F
!dropout_2/StatefulPartitionedCall!dropout_2/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2J
#embedding_1/StatefulPartitionedCall#embedding_1/StatefulPartitionedCall2Z
+layer_normalization/StatefulPartitionedCall+layer_normalization/StatefulPartitionedCall2^
-layer_normalization_1/StatefulPartitionedCall-layer_normalization_1/StatefulPartitionedCall2^
-layer_normalization_2/StatefulPartitionedCall-layer_normalization_2/StatefulPartitionedCall2^
-layer_normalization_3/StatefulPartitionedCall-layer_normalization_3/StatefulPartitionedCall2^
-layer_normalization_4/StatefulPartitionedCall-layer_normalization_4/StatefulPartitionedCall2^
-layer_normalization_5/StatefulPartitionedCall-layer_normalization_5/StatefulPartitionedCall2\
,multi_head_attention/StatefulPartitionedCall,multi_head_attention/StatefulPartitionedCall2`
.multi_head_attention_1/StatefulPartitionedCall.multi_head_attention_1/StatefulPartitionedCall2`
.multi_head_attention_2/StatefulPartitionedCall.multi_head_attention_2/StatefulPartitionedCall2D
 tokenize/StatefulPartitionedCall tokenize/StatefulPartitionedCall:P L
'
_output_shapes
:€€€€€€€€€
!
_user_specified_name	input_1:PL
'
_output_shapes
:€€€€€€€€€
!
_user_specified_name	input_2:

_output_shapes
: 
д1
ъ
Q__inference_multi_head_attention_2_layer_call_and_return_conditional_losses_21344	
query	
valueA
+query_einsum_einsum_readvariableop_resource:3
!query_add_readvariableop_resource:?
)key_einsum_einsum_readvariableop_resource:1
key_add_readvariableop_resource:A
+value_einsum_einsum_readvariableop_resource:3
!value_add_readvariableop_resource:L
6attention_output_einsum_einsum_readvariableop_resource::
,attention_output_add_readvariableop_resource:
identityИҐ#attention_output/add/ReadVariableOpҐ-attention_output/einsum/Einsum/ReadVariableOpҐkey/add/ReadVariableOpҐ key/einsum/Einsum/ReadVariableOpҐquery/add/ReadVariableOpҐ"query/einsum/Einsum/ReadVariableOpҐvalue/add/ReadVariableOpҐ"value/einsum/Einsum/ReadVariableOpТ
"query/einsum/Einsum/ReadVariableOpReadVariableOp+query_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0∞
query/einsum/EinsumEinsumquery*query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:€€€€€€€€€	*
equationabc,cde->abdez
query/add/ReadVariableOpReadVariableOp!query_add_readvariableop_resource*
_output_shapes

:*
dtype0М
	query/addAddV2query/einsum/Einsum:output:0 query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€	О
 key/einsum/Einsum/ReadVariableOpReadVariableOp)key_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0ђ
key/einsum/EinsumEinsumvalue(key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:€€€€€€€€€	*
equationabc,cde->abdev
key/add/ReadVariableOpReadVariableOpkey_add_readvariableop_resource*
_output_shapes

:*
dtype0Ж
key/addAddV2key/einsum/Einsum:output:0key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€	Т
"value/einsum/Einsum/ReadVariableOpReadVariableOp+value_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0∞
value/einsum/EinsumEinsumvalue*value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:€€€€€€€€€	*
equationabc,cde->abdez
value/add/ReadVariableOpReadVariableOp!value_add_readvariableop_resource*
_output_shapes

:*
dtype0М
	value/addAddV2value/einsum/Einsum:output:0 value/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€	J
Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>c
MulMulquery/add:z:0Mul/y:output:0*
T0*/
_output_shapes
:€€€€€€€€€	П
einsum/EinsumEinsumkey/add:z:0Mul:z:0*
N*
T0*/
_output_shapes
:€€€€€€€€€		*
equationaecd,abcd->acbel
softmax/SoftmaxSoftmaxeinsum/Einsum:output:0*
T0*/
_output_shapes
:€€€€€€€€€		Z
dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  †?П
dropout/dropout/MulMulsoftmax/Softmax:softmax:0dropout/dropout/Const:output:0*
T0*/
_output_shapes
:€€€€€€€€€		^
dropout/dropout/ShapeShapesoftmax/Softmax:softmax:0*
T0*
_output_shapes
:§
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape:output:0*
T0*/
_output_shapes
:€€€€€€€€€		*
dtype0c
dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћL>∆
dropout/dropout/GreaterEqualGreaterEqual5dropout/dropout/random_uniform/RandomUniform:output:0'dropout/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:€€€€€€€€€		З
dropout/dropout/CastCast dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:€€€€€€€€€		Й
dropout/dropout/Mul_1Muldropout/dropout/Mul:z:0dropout/dropout/Cast:y:0*
T0*/
_output_shapes
:€€€€€€€€€		•
einsum_1/EinsumEinsumdropout/dropout/Mul_1:z:0value/add:z:0*
N*
T0*/
_output_shapes
:€€€€€€€€€	*
equationacbe,aecd->abcd®
-attention_output/einsum/Einsum/ReadVariableOpReadVariableOp6attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0’
attention_output/einsum/EinsumEinsumeinsum_1/Einsum:output:05attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:€€€€€€€€€	*
equationabcd,cde->abeМ
#attention_output/add/ReadVariableOpReadVariableOp,attention_output_add_readvariableop_resource*
_output_shapes
:*
dtype0©
attention_output/addAddV2'attention_output/einsum/Einsum:output:0+attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€	k
IdentityIdentityattention_output/add:z:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€	Ў
NoOpNoOp$^attention_output/add/ReadVariableOp.^attention_output/einsum/Einsum/ReadVariableOp^key/add/ReadVariableOp!^key/einsum/Einsum/ReadVariableOp^query/add/ReadVariableOp#^query/einsum/Einsum/ReadVariableOp^value/add/ReadVariableOp#^value/einsum/Einsum/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:€€€€€€€€€	:€€€€€€€€€	: : : : : : : : 2J
#attention_output/add/ReadVariableOp#attention_output/add/ReadVariableOp2^
-attention_output/einsum/Einsum/ReadVariableOp-attention_output/einsum/Einsum/ReadVariableOp20
key/add/ReadVariableOpkey/add/ReadVariableOp2D
 key/einsum/Einsum/ReadVariableOp key/einsum/Einsum/ReadVariableOp24
query/add/ReadVariableOpquery/add/ReadVariableOp2H
"query/einsum/Einsum/ReadVariableOp"query/einsum/Einsum/ReadVariableOp24
value/add/ReadVariableOpvalue/add/ReadVariableOp2H
"value/einsum/Einsum/ReadVariableOp"value/einsum/Einsum/ReadVariableOp:R N
+
_output_shapes
:€€€€€€€€€	

_user_specified_namequery:RN
+
_output_shapes
:€€€€€€€€€	

_user_specified_namevalue
ƒ
±
B__inference_dense_4_layer_call_and_return_conditional_losses_20995

inputs3
!tensordot_readvariableop_resource:
identityИҐTensordot/ReadVariableOpz
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ї
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : њ
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ь
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:y
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:€€€€€€€€€	К
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€К
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : І
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Г
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:€€€€€€€€€	e
IdentityIdentityTensordot:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€	a
NoOpNoOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:€€€€€€€€€	: 24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:€€€€€€€€€	
 
_user_specified_nameinputs
≠
E
)__inference_dropout_1_layer_call_fn_24268

inputs
identity≥
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€	* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_1_layer_call_and_return_conditional_losses_20841d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:€€€€€€€€€	"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€	:S O
+
_output_shapes
:€€€€€€€€€	
 
_user_specified_nameinputs
ƒ
±
B__inference_dense_5_layer_call_and_return_conditional_losses_21034

inputs3
!tensordot_readvariableop_resource:
identityИҐTensordot/ReadVariableOpz
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ї
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : њ
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ь
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:y
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:€€€€€€€€€	К
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€К
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : І
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Г
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:€€€€€€€€€	e
IdentityIdentityTensordot:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€	a
NoOpNoOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:€€€€€€€€€	: 24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:€€€€€€€€€	
 
_user_specified_nameinputs
п
П
P__inference_layer_normalization_2_layer_call_and_return_conditional_losses_24195

inputs3
%batchnorm_mul_readvariableop_resource:/
!batchnorm_readvariableop_resource:
identityИҐbatchnorm/ReadVariableOpҐbatchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:М
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:€€€€€€€€€	*
	keep_dims(q
moments/StopGradientStopGradientmoments/mean:output:0*
T0*+
_output_shapes
:€€€€€€€€€	Л
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*+
_output_shapes
:€€€€€€€€€	l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:Ђ
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:€€€€€€€€€	*
	keep_dims(T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *љ7Ж5Б
batchnorm/addAddV2moments/variance:output:0batchnorm/add/y:output:0*
T0*+
_output_shapes
:€€€€€€€€€	a
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*+
_output_shapes
:€€€€€€€€€	~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0Е
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€	g
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€	v
batchnorm/mul_2Mulmoments/mean:output:0batchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€	v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0Б
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*+
_output_shapes
:€€€€€€€€€	v
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*+
_output_shapes
:€€€€€€€€€	f
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€	А
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€	: : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:S O
+
_output_shapes
:€€€€€€€€€	
 
_user_specified_nameinputs
е
`
B__inference_dropout_layer_call_and_return_conditional_losses_23976

inputs

identity_1R
IdentityIdentityinputs*
T0*+
_output_shapes
:€€€€€€€€€	_

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:€€€€€€€€€	"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€	:S O
+
_output_shapes
:€€€€€€€€€	
 
_user_specified_nameinputs
Ь	
†
D__inference_embedding_layer_call_and_return_conditional_losses_23696

inputs(
embedding_lookup_23690:
identityИҐembedding_lookupU
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:€€€€€€€€€є
embedding_lookupResourceGatherembedding_lookup_23690Cast:y:0*
Tindices0*)
_class
loc:@embedding_lookup/23690*+
_output_shapes
:€€€€€€€€€*
dtype0°
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*)
_class
loc:@embedding_lookup/23690*+
_output_shapes
:€€€€€€€€€Б
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:€€€€€€€€€w
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€Y
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:€€€€€€€€€: 2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
ЈТ
ЖK
__inference__traced_save_25106
file_prefix3
/savev2_embedding_embeddings_read_readvariableop5
1savev2_embedding_1_embeddings_read_readvariableop.
*savev2_tokenize_kernel_read_readvariableop8
4savev2_layer_normalization_gamma_read_readvariableop7
3savev2_layer_normalization_beta_read_readvariableop+
'savev2_dense_kernel_read_readvariableop-
)savev2_dense_1_kernel_read_readvariableop:
6savev2_layer_normalization_1_gamma_read_readvariableop9
5savev2_layer_normalization_1_beta_read_readvariableop:
6savev2_layer_normalization_2_gamma_read_readvariableop9
5savev2_layer_normalization_2_beta_read_readvariableop-
)savev2_dense_2_kernel_read_readvariableop-
)savev2_dense_3_kernel_read_readvariableop:
6savev2_layer_normalization_3_gamma_read_readvariableop9
5savev2_layer_normalization_3_beta_read_readvariableop:
6savev2_layer_normalization_4_gamma_read_readvariableop9
5savev2_layer_normalization_4_beta_read_readvariableop-
)savev2_dense_4_kernel_read_readvariableop-
)savev2_dense_5_kernel_read_readvariableop:
6savev2_layer_normalization_5_gamma_read_readvariableop9
5savev2_layer_normalization_5_beta_read_readvariableop-
)savev2_dense_6_kernel_read_readvariableop@
<savev2_multi_head_attention_query_kernel_read_readvariableop>
:savev2_multi_head_attention_query_bias_read_readvariableop>
:savev2_multi_head_attention_key_kernel_read_readvariableop<
8savev2_multi_head_attention_key_bias_read_readvariableop@
<savev2_multi_head_attention_value_kernel_read_readvariableop>
:savev2_multi_head_attention_value_bias_read_readvariableopK
Gsavev2_multi_head_attention_attention_output_kernel_read_readvariableopI
Esavev2_multi_head_attention_attention_output_bias_read_readvariableopB
>savev2_multi_head_attention_1_query_kernel_read_readvariableop@
<savev2_multi_head_attention_1_query_bias_read_readvariableop@
<savev2_multi_head_attention_1_key_kernel_read_readvariableop>
:savev2_multi_head_attention_1_key_bias_read_readvariableopB
>savev2_multi_head_attention_1_value_kernel_read_readvariableop@
<savev2_multi_head_attention_1_value_bias_read_readvariableopM
Isavev2_multi_head_attention_1_attention_output_kernel_read_readvariableopK
Gsavev2_multi_head_attention_1_attention_output_bias_read_readvariableopB
>savev2_multi_head_attention_2_query_kernel_read_readvariableop@
<savev2_multi_head_attention_2_query_bias_read_readvariableop@
<savev2_multi_head_attention_2_key_kernel_read_readvariableop>
:savev2_multi_head_attention_2_key_bias_read_readvariableopB
>savev2_multi_head_attention_2_value_kernel_read_readvariableop@
<savev2_multi_head_attention_2_value_bias_read_readvariableopM
Isavev2_multi_head_attention_2_attention_output_kernel_read_readvariableopK
Gsavev2_multi_head_attention_2_attention_output_bias_read_readvariableop(
$savev2_iteration_read_readvariableop	,
(savev2_learning_rate_read_readvariableop;
7savev2_adamw_m_embedding_embeddings_read_readvariableop;
7savev2_adamw_v_embedding_embeddings_read_readvariableop=
9savev2_adamw_m_embedding_1_embeddings_read_readvariableop=
9savev2_adamw_v_embedding_1_embeddings_read_readvariableop6
2savev2_adamw_m_tokenize_kernel_read_readvariableop6
2savev2_adamw_v_tokenize_kernel_read_readvariableopH
Dsavev2_adamw_m_multi_head_attention_query_kernel_read_readvariableopH
Dsavev2_adamw_v_multi_head_attention_query_kernel_read_readvariableopF
Bsavev2_adamw_m_multi_head_attention_query_bias_read_readvariableopF
Bsavev2_adamw_v_multi_head_attention_query_bias_read_readvariableopF
Bsavev2_adamw_m_multi_head_attention_key_kernel_read_readvariableopF
Bsavev2_adamw_v_multi_head_attention_key_kernel_read_readvariableopD
@savev2_adamw_m_multi_head_attention_key_bias_read_readvariableopD
@savev2_adamw_v_multi_head_attention_key_bias_read_readvariableopH
Dsavev2_adamw_m_multi_head_attention_value_kernel_read_readvariableopH
Dsavev2_adamw_v_multi_head_attention_value_kernel_read_readvariableopF
Bsavev2_adamw_m_multi_head_attention_value_bias_read_readvariableopF
Bsavev2_adamw_v_multi_head_attention_value_bias_read_readvariableopS
Osavev2_adamw_m_multi_head_attention_attention_output_kernel_read_readvariableopS
Osavev2_adamw_v_multi_head_attention_attention_output_kernel_read_readvariableopQ
Msavev2_adamw_m_multi_head_attention_attention_output_bias_read_readvariableopQ
Msavev2_adamw_v_multi_head_attention_attention_output_bias_read_readvariableop@
<savev2_adamw_m_layer_normalization_gamma_read_readvariableop@
<savev2_adamw_v_layer_normalization_gamma_read_readvariableop?
;savev2_adamw_m_layer_normalization_beta_read_readvariableop?
;savev2_adamw_v_layer_normalization_beta_read_readvariableop3
/savev2_adamw_m_dense_kernel_read_readvariableop3
/savev2_adamw_v_dense_kernel_read_readvariableop5
1savev2_adamw_m_dense_1_kernel_read_readvariableop5
1savev2_adamw_v_dense_1_kernel_read_readvariableopB
>savev2_adamw_m_layer_normalization_1_gamma_read_readvariableopB
>savev2_adamw_v_layer_normalization_1_gamma_read_readvariableopA
=savev2_adamw_m_layer_normalization_1_beta_read_readvariableopA
=savev2_adamw_v_layer_normalization_1_beta_read_readvariableopJ
Fsavev2_adamw_m_multi_head_attention_1_query_kernel_read_readvariableopJ
Fsavev2_adamw_v_multi_head_attention_1_query_kernel_read_readvariableopH
Dsavev2_adamw_m_multi_head_attention_1_query_bias_read_readvariableopH
Dsavev2_adamw_v_multi_head_attention_1_query_bias_read_readvariableopH
Dsavev2_adamw_m_multi_head_attention_1_key_kernel_read_readvariableopH
Dsavev2_adamw_v_multi_head_attention_1_key_kernel_read_readvariableopF
Bsavev2_adamw_m_multi_head_attention_1_key_bias_read_readvariableopF
Bsavev2_adamw_v_multi_head_attention_1_key_bias_read_readvariableopJ
Fsavev2_adamw_m_multi_head_attention_1_value_kernel_read_readvariableopJ
Fsavev2_adamw_v_multi_head_attention_1_value_kernel_read_readvariableopH
Dsavev2_adamw_m_multi_head_attention_1_value_bias_read_readvariableopH
Dsavev2_adamw_v_multi_head_attention_1_value_bias_read_readvariableopU
Qsavev2_adamw_m_multi_head_attention_1_attention_output_kernel_read_readvariableopU
Qsavev2_adamw_v_multi_head_attention_1_attention_output_kernel_read_readvariableopS
Osavev2_adamw_m_multi_head_attention_1_attention_output_bias_read_readvariableopS
Osavev2_adamw_v_multi_head_attention_1_attention_output_bias_read_readvariableopB
>savev2_adamw_m_layer_normalization_2_gamma_read_readvariableopB
>savev2_adamw_v_layer_normalization_2_gamma_read_readvariableopA
=savev2_adamw_m_layer_normalization_2_beta_read_readvariableopA
=savev2_adamw_v_layer_normalization_2_beta_read_readvariableop5
1savev2_adamw_m_dense_2_kernel_read_readvariableop5
1savev2_adamw_v_dense_2_kernel_read_readvariableop5
1savev2_adamw_m_dense_3_kernel_read_readvariableop5
1savev2_adamw_v_dense_3_kernel_read_readvariableopB
>savev2_adamw_m_layer_normalization_3_gamma_read_readvariableopB
>savev2_adamw_v_layer_normalization_3_gamma_read_readvariableopA
=savev2_adamw_m_layer_normalization_3_beta_read_readvariableopA
=savev2_adamw_v_layer_normalization_3_beta_read_readvariableopJ
Fsavev2_adamw_m_multi_head_attention_2_query_kernel_read_readvariableopJ
Fsavev2_adamw_v_multi_head_attention_2_query_kernel_read_readvariableopH
Dsavev2_adamw_m_multi_head_attention_2_query_bias_read_readvariableopH
Dsavev2_adamw_v_multi_head_attention_2_query_bias_read_readvariableopH
Dsavev2_adamw_m_multi_head_attention_2_key_kernel_read_readvariableopH
Dsavev2_adamw_v_multi_head_attention_2_key_kernel_read_readvariableopF
Bsavev2_adamw_m_multi_head_attention_2_key_bias_read_readvariableopF
Bsavev2_adamw_v_multi_head_attention_2_key_bias_read_readvariableopJ
Fsavev2_adamw_m_multi_head_attention_2_value_kernel_read_readvariableopJ
Fsavev2_adamw_v_multi_head_attention_2_value_kernel_read_readvariableopH
Dsavev2_adamw_m_multi_head_attention_2_value_bias_read_readvariableopH
Dsavev2_adamw_v_multi_head_attention_2_value_bias_read_readvariableopU
Qsavev2_adamw_m_multi_head_attention_2_attention_output_kernel_read_readvariableopU
Qsavev2_adamw_v_multi_head_attention_2_attention_output_kernel_read_readvariableopS
Osavev2_adamw_m_multi_head_attention_2_attention_output_bias_read_readvariableopS
Osavev2_adamw_v_multi_head_attention_2_attention_output_bias_read_readvariableopB
>savev2_adamw_m_layer_normalization_4_gamma_read_readvariableopB
>savev2_adamw_v_layer_normalization_4_gamma_read_readvariableopA
=savev2_adamw_m_layer_normalization_4_beta_read_readvariableopA
=savev2_adamw_v_layer_normalization_4_beta_read_readvariableop5
1savev2_adamw_m_dense_4_kernel_read_readvariableop5
1savev2_adamw_v_dense_4_kernel_read_readvariableop5
1savev2_adamw_m_dense_5_kernel_read_readvariableop5
1savev2_adamw_v_dense_5_kernel_read_readvariableopB
>savev2_adamw_m_layer_normalization_5_gamma_read_readvariableopB
>savev2_adamw_v_layer_normalization_5_gamma_read_readvariableopA
=savev2_adamw_m_layer_normalization_5_beta_read_readvariableopA
=savev2_adamw_v_layer_normalization_5_beta_read_readvariableop5
1savev2_adamw_m_dense_6_kernel_read_readvariableop5
1savev2_adamw_v_dense_6_kernel_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop
savev2_const_1

identity_1ИҐMergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/partБ
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : У
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: У:
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes	
:С*
dtype0*ї9
value±9BЃ9СB:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-1/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-4/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-9/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/beta/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-11/kernel/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-12/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-12/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-14/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-14/beta/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-15/kernel/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-16/kernel/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-17/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-17/beta/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-18/kernel/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/20/.ATTRIBUTES/VARIABLE_VALUEB'variables/21/.ATTRIBUTES/VARIABLE_VALUEB'variables/22/.ATTRIBUTES/VARIABLE_VALUEB'variables/23/.ATTRIBUTES/VARIABLE_VALUEB'variables/24/.ATTRIBUTES/VARIABLE_VALUEB'variables/31/.ATTRIBUTES/VARIABLE_VALUEB'variables/32/.ATTRIBUTES/VARIABLE_VALUEB'variables/33/.ATTRIBUTES/VARIABLE_VALUEB'variables/34/.ATTRIBUTES/VARIABLE_VALUEB'variables/35/.ATTRIBUTES/VARIABLE_VALUEB'variables/36/.ATTRIBUTES/VARIABLE_VALUEB'variables/37/.ATTRIBUTES/VARIABLE_VALUEB'variables/38/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/0/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/26/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/27/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/28/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/29/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/30/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/31/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/32/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/33/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/34/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/35/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/36/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/37/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/38/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/39/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/40/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/41/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/42/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/43/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/44/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/45/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/46/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/47/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/48/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/49/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/50/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/51/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/52/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/53/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/54/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/55/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/56/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/57/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/58/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/59/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/60/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/61/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/62/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/63/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/64/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/65/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/66/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/67/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/68/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/69/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/70/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/71/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/72/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/73/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/74/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/75/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/76/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/77/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/78/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/79/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/80/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/81/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/82/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/83/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/84/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/85/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/86/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/87/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/88/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/89/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/90/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/91/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHФ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes	
:С*
dtype0*Є
valueЃBЂСB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ЯH
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0/savev2_embedding_embeddings_read_readvariableop1savev2_embedding_1_embeddings_read_readvariableop*savev2_tokenize_kernel_read_readvariableop4savev2_layer_normalization_gamma_read_readvariableop3savev2_layer_normalization_beta_read_readvariableop'savev2_dense_kernel_read_readvariableop)savev2_dense_1_kernel_read_readvariableop6savev2_layer_normalization_1_gamma_read_readvariableop5savev2_layer_normalization_1_beta_read_readvariableop6savev2_layer_normalization_2_gamma_read_readvariableop5savev2_layer_normalization_2_beta_read_readvariableop)savev2_dense_2_kernel_read_readvariableop)savev2_dense_3_kernel_read_readvariableop6savev2_layer_normalization_3_gamma_read_readvariableop5savev2_layer_normalization_3_beta_read_readvariableop6savev2_layer_normalization_4_gamma_read_readvariableop5savev2_layer_normalization_4_beta_read_readvariableop)savev2_dense_4_kernel_read_readvariableop)savev2_dense_5_kernel_read_readvariableop6savev2_layer_normalization_5_gamma_read_readvariableop5savev2_layer_normalization_5_beta_read_readvariableop)savev2_dense_6_kernel_read_readvariableop<savev2_multi_head_attention_query_kernel_read_readvariableop:savev2_multi_head_attention_query_bias_read_readvariableop:savev2_multi_head_attention_key_kernel_read_readvariableop8savev2_multi_head_attention_key_bias_read_readvariableop<savev2_multi_head_attention_value_kernel_read_readvariableop:savev2_multi_head_attention_value_bias_read_readvariableopGsavev2_multi_head_attention_attention_output_kernel_read_readvariableopEsavev2_multi_head_attention_attention_output_bias_read_readvariableop>savev2_multi_head_attention_1_query_kernel_read_readvariableop<savev2_multi_head_attention_1_query_bias_read_readvariableop<savev2_multi_head_attention_1_key_kernel_read_readvariableop:savev2_multi_head_attention_1_key_bias_read_readvariableop>savev2_multi_head_attention_1_value_kernel_read_readvariableop<savev2_multi_head_attention_1_value_bias_read_readvariableopIsavev2_multi_head_attention_1_attention_output_kernel_read_readvariableopGsavev2_multi_head_attention_1_attention_output_bias_read_readvariableop>savev2_multi_head_attention_2_query_kernel_read_readvariableop<savev2_multi_head_attention_2_query_bias_read_readvariableop<savev2_multi_head_attention_2_key_kernel_read_readvariableop:savev2_multi_head_attention_2_key_bias_read_readvariableop>savev2_multi_head_attention_2_value_kernel_read_readvariableop<savev2_multi_head_attention_2_value_bias_read_readvariableopIsavev2_multi_head_attention_2_attention_output_kernel_read_readvariableopGsavev2_multi_head_attention_2_attention_output_bias_read_readvariableop$savev2_iteration_read_readvariableop(savev2_learning_rate_read_readvariableop7savev2_adamw_m_embedding_embeddings_read_readvariableop7savev2_adamw_v_embedding_embeddings_read_readvariableop9savev2_adamw_m_embedding_1_embeddings_read_readvariableop9savev2_adamw_v_embedding_1_embeddings_read_readvariableop2savev2_adamw_m_tokenize_kernel_read_readvariableop2savev2_adamw_v_tokenize_kernel_read_readvariableopDsavev2_adamw_m_multi_head_attention_query_kernel_read_readvariableopDsavev2_adamw_v_multi_head_attention_query_kernel_read_readvariableopBsavev2_adamw_m_multi_head_attention_query_bias_read_readvariableopBsavev2_adamw_v_multi_head_attention_query_bias_read_readvariableopBsavev2_adamw_m_multi_head_attention_key_kernel_read_readvariableopBsavev2_adamw_v_multi_head_attention_key_kernel_read_readvariableop@savev2_adamw_m_multi_head_attention_key_bias_read_readvariableop@savev2_adamw_v_multi_head_attention_key_bias_read_readvariableopDsavev2_adamw_m_multi_head_attention_value_kernel_read_readvariableopDsavev2_adamw_v_multi_head_attention_value_kernel_read_readvariableopBsavev2_adamw_m_multi_head_attention_value_bias_read_readvariableopBsavev2_adamw_v_multi_head_attention_value_bias_read_readvariableopOsavev2_adamw_m_multi_head_attention_attention_output_kernel_read_readvariableopOsavev2_adamw_v_multi_head_attention_attention_output_kernel_read_readvariableopMsavev2_adamw_m_multi_head_attention_attention_output_bias_read_readvariableopMsavev2_adamw_v_multi_head_attention_attention_output_bias_read_readvariableop<savev2_adamw_m_layer_normalization_gamma_read_readvariableop<savev2_adamw_v_layer_normalization_gamma_read_readvariableop;savev2_adamw_m_layer_normalization_beta_read_readvariableop;savev2_adamw_v_layer_normalization_beta_read_readvariableop/savev2_adamw_m_dense_kernel_read_readvariableop/savev2_adamw_v_dense_kernel_read_readvariableop1savev2_adamw_m_dense_1_kernel_read_readvariableop1savev2_adamw_v_dense_1_kernel_read_readvariableop>savev2_adamw_m_layer_normalization_1_gamma_read_readvariableop>savev2_adamw_v_layer_normalization_1_gamma_read_readvariableop=savev2_adamw_m_layer_normalization_1_beta_read_readvariableop=savev2_adamw_v_layer_normalization_1_beta_read_readvariableopFsavev2_adamw_m_multi_head_attention_1_query_kernel_read_readvariableopFsavev2_adamw_v_multi_head_attention_1_query_kernel_read_readvariableopDsavev2_adamw_m_multi_head_attention_1_query_bias_read_readvariableopDsavev2_adamw_v_multi_head_attention_1_query_bias_read_readvariableopDsavev2_adamw_m_multi_head_attention_1_key_kernel_read_readvariableopDsavev2_adamw_v_multi_head_attention_1_key_kernel_read_readvariableopBsavev2_adamw_m_multi_head_attention_1_key_bias_read_readvariableopBsavev2_adamw_v_multi_head_attention_1_key_bias_read_readvariableopFsavev2_adamw_m_multi_head_attention_1_value_kernel_read_readvariableopFsavev2_adamw_v_multi_head_attention_1_value_kernel_read_readvariableopDsavev2_adamw_m_multi_head_attention_1_value_bias_read_readvariableopDsavev2_adamw_v_multi_head_attention_1_value_bias_read_readvariableopQsavev2_adamw_m_multi_head_attention_1_attention_output_kernel_read_readvariableopQsavev2_adamw_v_multi_head_attention_1_attention_output_kernel_read_readvariableopOsavev2_adamw_m_multi_head_attention_1_attention_output_bias_read_readvariableopOsavev2_adamw_v_multi_head_attention_1_attention_output_bias_read_readvariableop>savev2_adamw_m_layer_normalization_2_gamma_read_readvariableop>savev2_adamw_v_layer_normalization_2_gamma_read_readvariableop=savev2_adamw_m_layer_normalization_2_beta_read_readvariableop=savev2_adamw_v_layer_normalization_2_beta_read_readvariableop1savev2_adamw_m_dense_2_kernel_read_readvariableop1savev2_adamw_v_dense_2_kernel_read_readvariableop1savev2_adamw_m_dense_3_kernel_read_readvariableop1savev2_adamw_v_dense_3_kernel_read_readvariableop>savev2_adamw_m_layer_normalization_3_gamma_read_readvariableop>savev2_adamw_v_layer_normalization_3_gamma_read_readvariableop=savev2_adamw_m_layer_normalization_3_beta_read_readvariableop=savev2_adamw_v_layer_normalization_3_beta_read_readvariableopFsavev2_adamw_m_multi_head_attention_2_query_kernel_read_readvariableopFsavev2_adamw_v_multi_head_attention_2_query_kernel_read_readvariableopDsavev2_adamw_m_multi_head_attention_2_query_bias_read_readvariableopDsavev2_adamw_v_multi_head_attention_2_query_bias_read_readvariableopDsavev2_adamw_m_multi_head_attention_2_key_kernel_read_readvariableopDsavev2_adamw_v_multi_head_attention_2_key_kernel_read_readvariableopBsavev2_adamw_m_multi_head_attention_2_key_bias_read_readvariableopBsavev2_adamw_v_multi_head_attention_2_key_bias_read_readvariableopFsavev2_adamw_m_multi_head_attention_2_value_kernel_read_readvariableopFsavev2_adamw_v_multi_head_attention_2_value_kernel_read_readvariableopDsavev2_adamw_m_multi_head_attention_2_value_bias_read_readvariableopDsavev2_adamw_v_multi_head_attention_2_value_bias_read_readvariableopQsavev2_adamw_m_multi_head_attention_2_attention_output_kernel_read_readvariableopQsavev2_adamw_v_multi_head_attention_2_attention_output_kernel_read_readvariableopOsavev2_adamw_m_multi_head_attention_2_attention_output_bias_read_readvariableopOsavev2_adamw_v_multi_head_attention_2_attention_output_bias_read_readvariableop>savev2_adamw_m_layer_normalization_4_gamma_read_readvariableop>savev2_adamw_v_layer_normalization_4_gamma_read_readvariableop=savev2_adamw_m_layer_normalization_4_beta_read_readvariableop=savev2_adamw_v_layer_normalization_4_beta_read_readvariableop1savev2_adamw_m_dense_4_kernel_read_readvariableop1savev2_adamw_v_dense_4_kernel_read_readvariableop1savev2_adamw_m_dense_5_kernel_read_readvariableop1savev2_adamw_v_dense_5_kernel_read_readvariableop>savev2_adamw_m_layer_normalization_5_gamma_read_readvariableop>savev2_adamw_v_layer_normalization_5_gamma_read_readvariableop=savev2_adamw_m_layer_normalization_5_beta_read_readvariableop=savev2_adamw_v_layer_normalization_5_beta_read_readvariableop1savev2_adamw_m_dense_6_kernel_read_readvariableop1savev2_adamw_v_dense_6_kernel_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableopsavev2_const_1"/device:CPU:0*
_output_shapes
 *Ґ
dtypesЧ
Ф2С	Р
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:Л
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*е

_input_shapes”

–
: ::::::::::::::::::::::::::::::::::::::::::::::: : ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

:: 

_output_shapes
:: 

_output_shapes
::$ 

_output_shapes

::$ 

_output_shapes

:: 

_output_shapes
:: 	

_output_shapes
:: 


_output_shapes
:: 

_output_shapes
::$ 

_output_shapes

::$ 

_output_shapes

:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::$ 

_output_shapes

::$ 

_output_shapes

:: 

_output_shapes
:: 

_output_shapes
::$ 

_output_shapes

::($
"
_output_shapes
::$ 

_output_shapes

::($
"
_output_shapes
::$ 

_output_shapes

::($
"
_output_shapes
::$ 

_output_shapes

::($
"
_output_shapes
:: 

_output_shapes
::($
"
_output_shapes
::$  

_output_shapes

::(!$
"
_output_shapes
::$" 

_output_shapes

::(#$
"
_output_shapes
::$$ 

_output_shapes

::(%$
"
_output_shapes
:: &

_output_shapes
::('$
"
_output_shapes
::$( 

_output_shapes

::()$
"
_output_shapes
::$* 

_output_shapes

::(+$
"
_output_shapes
::$, 

_output_shapes

::(-$
"
_output_shapes
:: .

_output_shapes
::/

_output_shapes
: :0

_output_shapes
: :$1 

_output_shapes

::$2 

_output_shapes

::$3 

_output_shapes

::$4 

_output_shapes

::$5 

_output_shapes

::$6 

_output_shapes

::(7$
"
_output_shapes
::(8$
"
_output_shapes
::$9 

_output_shapes

::$: 

_output_shapes

::(;$
"
_output_shapes
::(<$
"
_output_shapes
::$= 

_output_shapes

::$> 

_output_shapes

::(?$
"
_output_shapes
::(@$
"
_output_shapes
::$A 

_output_shapes

::$B 

_output_shapes

::(C$
"
_output_shapes
::(D$
"
_output_shapes
:: E

_output_shapes
:: F

_output_shapes
:: G

_output_shapes
:: H

_output_shapes
:: I

_output_shapes
:: J

_output_shapes
::$K 

_output_shapes

::$L 

_output_shapes

::$M 

_output_shapes

::$N 

_output_shapes

:: O

_output_shapes
:: P

_output_shapes
:: Q

_output_shapes
:: R

_output_shapes
::(S$
"
_output_shapes
::(T$
"
_output_shapes
::$U 

_output_shapes

::$V 

_output_shapes

::(W$
"
_output_shapes
::(X$
"
_output_shapes
::$Y 

_output_shapes

::$Z 

_output_shapes

::([$
"
_output_shapes
::(\$
"
_output_shapes
::$] 

_output_shapes

::$^ 

_output_shapes

::(_$
"
_output_shapes
::(`$
"
_output_shapes
:: a

_output_shapes
:: b

_output_shapes
:: c

_output_shapes
:: d

_output_shapes
:: e

_output_shapes
:: f

_output_shapes
::$g 

_output_shapes

::$h 

_output_shapes

::$i 

_output_shapes

::$j 

_output_shapes

:: k

_output_shapes
:: l

_output_shapes
:: m

_output_shapes
:: n

_output_shapes
::(o$
"
_output_shapes
::(p$
"
_output_shapes
::$q 

_output_shapes

::$r 

_output_shapes

::(s$
"
_output_shapes
::(t$
"
_output_shapes
::$u 

_output_shapes

::$v 

_output_shapes

::(w$
"
_output_shapes
::(x$
"
_output_shapes
::$y 

_output_shapes

::$z 

_output_shapes

::({$
"
_output_shapes
::(|$
"
_output_shapes
:: }

_output_shapes
:: ~

_output_shapes
:: 

_output_shapes
::!А

_output_shapes
::!Б

_output_shapes
::!В

_output_shapes
::%Г 

_output_shapes

::%Д 

_output_shapes

::%Е 

_output_shapes

::%Ж 

_output_shapes

::!З

_output_shapes
::!И

_output_shapes
::!Й

_output_shapes
::!К

_output_shapes
::%Л 

_output_shapes

::%М 

_output_shapes

::Н

_output_shapes
: :О

_output_shapes
: :П

_output_shapes
: :Р

_output_shapes
: :С

_output_shapes
: 
•
{
'__inference_dense_4_layer_call_fn_24504

inputs
unknown:
identityИҐStatefulPartitionedCallќ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€	*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense_4_layer_call_and_return_conditional_losses_20995s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€	`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:€€€€€€€€€	: 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€	
 
_user_specified_nameinputs
’
l
@__inference_add_4_layer_call_and_return_conditional_losses_24466
inputs_0
inputs_1
identityV
addAddV2inputs_0inputs_1*
T0*+
_output_shapes
:€€€€€€€€€	S
IdentityIdentityadd:z:0*
T0*+
_output_shapes
:€€€€€€€€€	"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:€€€€€€€€€	:€€€€€€€€€	:U Q
+
_output_shapes
:€€€€€€€€€	
"
_user_specified_name
inputs/0:UQ
+
_output_shapes
:€€€€€€€€€	
"
_user_specified_name
inputs/1
д1
ъ
Q__inference_multi_head_attention_1_layer_call_and_return_conditional_losses_21504	
query	
valueA
+query_einsum_einsum_readvariableop_resource:3
!query_add_readvariableop_resource:?
)key_einsum_einsum_readvariableop_resource:1
key_add_readvariableop_resource:A
+value_einsum_einsum_readvariableop_resource:3
!value_add_readvariableop_resource:L
6attention_output_einsum_einsum_readvariableop_resource::
,attention_output_add_readvariableop_resource:
identityИҐ#attention_output/add/ReadVariableOpҐ-attention_output/einsum/Einsum/ReadVariableOpҐkey/add/ReadVariableOpҐ key/einsum/Einsum/ReadVariableOpҐquery/add/ReadVariableOpҐ"query/einsum/Einsum/ReadVariableOpҐvalue/add/ReadVariableOpҐ"value/einsum/Einsum/ReadVariableOpТ
"query/einsum/Einsum/ReadVariableOpReadVariableOp+query_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0∞
query/einsum/EinsumEinsumquery*query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:€€€€€€€€€	*
equationabc,cde->abdez
query/add/ReadVariableOpReadVariableOp!query_add_readvariableop_resource*
_output_shapes

:*
dtype0М
	query/addAddV2query/einsum/Einsum:output:0 query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€	О
 key/einsum/Einsum/ReadVariableOpReadVariableOp)key_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0ђ
key/einsum/EinsumEinsumvalue(key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:€€€€€€€€€	*
equationabc,cde->abdev
key/add/ReadVariableOpReadVariableOpkey_add_readvariableop_resource*
_output_shapes

:*
dtype0Ж
key/addAddV2key/einsum/Einsum:output:0key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€	Т
"value/einsum/Einsum/ReadVariableOpReadVariableOp+value_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0∞
value/einsum/EinsumEinsumvalue*value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:€€€€€€€€€	*
equationabc,cde->abdez
value/add/ReadVariableOpReadVariableOp!value_add_readvariableop_resource*
_output_shapes

:*
dtype0М
	value/addAddV2value/einsum/Einsum:output:0 value/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€	J
Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>c
MulMulquery/add:z:0Mul/y:output:0*
T0*/
_output_shapes
:€€€€€€€€€	П
einsum/EinsumEinsumkey/add:z:0Mul:z:0*
N*
T0*/
_output_shapes
:€€€€€€€€€		*
equationaecd,abcd->acbel
softmax/SoftmaxSoftmaxeinsum/Einsum:output:0*
T0*/
_output_shapes
:€€€€€€€€€		Z
dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  †?П
dropout/dropout/MulMulsoftmax/Softmax:softmax:0dropout/dropout/Const:output:0*
T0*/
_output_shapes
:€€€€€€€€€		^
dropout/dropout/ShapeShapesoftmax/Softmax:softmax:0*
T0*
_output_shapes
:§
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape:output:0*
T0*/
_output_shapes
:€€€€€€€€€		*
dtype0c
dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћL>∆
dropout/dropout/GreaterEqualGreaterEqual5dropout/dropout/random_uniform/RandomUniform:output:0'dropout/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:€€€€€€€€€		З
dropout/dropout/CastCast dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:€€€€€€€€€		Й
dropout/dropout/Mul_1Muldropout/dropout/Mul:z:0dropout/dropout/Cast:y:0*
T0*/
_output_shapes
:€€€€€€€€€		•
einsum_1/EinsumEinsumdropout/dropout/Mul_1:z:0value/add:z:0*
N*
T0*/
_output_shapes
:€€€€€€€€€	*
equationacbe,aecd->abcd®
-attention_output/einsum/Einsum/ReadVariableOpReadVariableOp6attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0’
attention_output/einsum/EinsumEinsumeinsum_1/Einsum:output:05attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:€€€€€€€€€	*
equationabcd,cde->abeМ
#attention_output/add/ReadVariableOpReadVariableOp,attention_output_add_readvariableop_resource*
_output_shapes
:*
dtype0©
attention_output/addAddV2'attention_output/einsum/Einsum:output:0+attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€	k
IdentityIdentityattention_output/add:z:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€	Ў
NoOpNoOp$^attention_output/add/ReadVariableOp.^attention_output/einsum/Einsum/ReadVariableOp^key/add/ReadVariableOp!^key/einsum/Einsum/ReadVariableOp^query/add/ReadVariableOp#^query/einsum/Einsum/ReadVariableOp^value/add/ReadVariableOp#^value/einsum/Einsum/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:€€€€€€€€€	:€€€€€€€€€	: : : : : : : : 2J
#attention_output/add/ReadVariableOp#attention_output/add/ReadVariableOp2^
-attention_output/einsum/Einsum/ReadVariableOp-attention_output/einsum/Einsum/ReadVariableOp20
key/add/ReadVariableOpkey/add/ReadVariableOp2D
 key/einsum/Einsum/ReadVariableOp key/einsum/Einsum/ReadVariableOp24
query/add/ReadVariableOpquery/add/ReadVariableOp2H
"query/einsum/Einsum/ReadVariableOp"query/einsum/Einsum/ReadVariableOp24
value/add/ReadVariableOpvalue/add/ReadVariableOp2H
"value/einsum/Einsum/ReadVariableOp"value/einsum/Einsum/ReadVariableOp:R N
+
_output_shapes
:€€€€€€€€€	

_user_specified_namequery:RN
+
_output_shapes
:€€€€€€€€€	

_user_specified_namevalue
А•
Ж.
@__inference_model_layer_call_and_return_conditional_losses_23226
inputs_0
inputs_1
unknown2
 embedding_embedding_lookup_22830:4
"embedding_1_embedding_lookup_22836:6
$tokenize_mul_readvariableop_resource:V
@multi_head_attention_query_einsum_einsum_readvariableop_resource:H
6multi_head_attention_query_add_readvariableop_resource:T
>multi_head_attention_key_einsum_einsum_readvariableop_resource:F
4multi_head_attention_key_add_readvariableop_resource:V
@multi_head_attention_value_einsum_einsum_readvariableop_resource:H
6multi_head_attention_value_add_readvariableop_resource:a
Kmulti_head_attention_attention_output_einsum_einsum_readvariableop_resource:O
Amulti_head_attention_attention_output_add_readvariableop_resource:G
9layer_normalization_batchnorm_mul_readvariableop_resource:C
5layer_normalization_batchnorm_readvariableop_resource:9
'dense_tensordot_readvariableop_resource:;
)dense_1_tensordot_readvariableop_resource:I
;layer_normalization_1_batchnorm_mul_readvariableop_resource:E
7layer_normalization_1_batchnorm_readvariableop_resource:X
Bmulti_head_attention_1_query_einsum_einsum_readvariableop_resource:J
8multi_head_attention_1_query_add_readvariableop_resource:V
@multi_head_attention_1_key_einsum_einsum_readvariableop_resource:H
6multi_head_attention_1_key_add_readvariableop_resource:X
Bmulti_head_attention_1_value_einsum_einsum_readvariableop_resource:J
8multi_head_attention_1_value_add_readvariableop_resource:c
Mmulti_head_attention_1_attention_output_einsum_einsum_readvariableop_resource:Q
Cmulti_head_attention_1_attention_output_add_readvariableop_resource:I
;layer_normalization_2_batchnorm_mul_readvariableop_resource:E
7layer_normalization_2_batchnorm_readvariableop_resource:;
)dense_2_tensordot_readvariableop_resource:;
)dense_3_tensordot_readvariableop_resource:I
;layer_normalization_3_batchnorm_mul_readvariableop_resource:E
7layer_normalization_3_batchnorm_readvariableop_resource:X
Bmulti_head_attention_2_query_einsum_einsum_readvariableop_resource:J
8multi_head_attention_2_query_add_readvariableop_resource:V
@multi_head_attention_2_key_einsum_einsum_readvariableop_resource:H
6multi_head_attention_2_key_add_readvariableop_resource:X
Bmulti_head_attention_2_value_einsum_einsum_readvariableop_resource:J
8multi_head_attention_2_value_add_readvariableop_resource:c
Mmulti_head_attention_2_attention_output_einsum_einsum_readvariableop_resource:Q
Cmulti_head_attention_2_attention_output_add_readvariableop_resource:I
;layer_normalization_4_batchnorm_mul_readvariableop_resource:E
7layer_normalization_4_batchnorm_readvariableop_resource:;
)dense_4_tensordot_readvariableop_resource:;
)dense_5_tensordot_readvariableop_resource:I
;layer_normalization_5_batchnorm_mul_readvariableop_resource:E
7layer_normalization_5_batchnorm_readvariableop_resource:8
&dense_6_matmul_readvariableop_resource:
identityИҐdense/Tensordot/ReadVariableOpҐ dense_1/Tensordot/ReadVariableOpҐ dense_2/Tensordot/ReadVariableOpҐ dense_3/Tensordot/ReadVariableOpҐ dense_4/Tensordot/ReadVariableOpҐ dense_5/Tensordot/ReadVariableOpҐdense_6/MatMul/ReadVariableOpҐembedding/embedding_lookupҐembedding_1/embedding_lookupҐ,layer_normalization/batchnorm/ReadVariableOpҐ0layer_normalization/batchnorm/mul/ReadVariableOpҐ.layer_normalization_1/batchnorm/ReadVariableOpҐ2layer_normalization_1/batchnorm/mul/ReadVariableOpҐ.layer_normalization_2/batchnorm/ReadVariableOpҐ2layer_normalization_2/batchnorm/mul/ReadVariableOpҐ.layer_normalization_3/batchnorm/ReadVariableOpҐ2layer_normalization_3/batchnorm/mul/ReadVariableOpҐ.layer_normalization_4/batchnorm/ReadVariableOpҐ2layer_normalization_4/batchnorm/mul/ReadVariableOpҐ.layer_normalization_5/batchnorm/ReadVariableOpҐ2layer_normalization_5/batchnorm/mul/ReadVariableOpҐ8multi_head_attention/attention_output/add/ReadVariableOpҐBmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOpҐ+multi_head_attention/key/add/ReadVariableOpҐ5multi_head_attention/key/einsum/Einsum/ReadVariableOpҐ-multi_head_attention/query/add/ReadVariableOpҐ7multi_head_attention/query/einsum/Einsum/ReadVariableOpҐ-multi_head_attention/value/add/ReadVariableOpҐ7multi_head_attention/value/einsum/Einsum/ReadVariableOpҐ:multi_head_attention_1/attention_output/add/ReadVariableOpҐDmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpҐ-multi_head_attention_1/key/add/ReadVariableOpҐ7multi_head_attention_1/key/einsum/Einsum/ReadVariableOpҐ/multi_head_attention_1/query/add/ReadVariableOpҐ9multi_head_attention_1/query/einsum/Einsum/ReadVariableOpҐ/multi_head_attention_1/value/add/ReadVariableOpҐ9multi_head_attention_1/value/einsum/Einsum/ReadVariableOpҐ:multi_head_attention_2/attention_output/add/ReadVariableOpҐDmulti_head_attention_2/attention_output/einsum/Einsum/ReadVariableOpҐ-multi_head_attention_2/key/add/ReadVariableOpҐ7multi_head_attention_2/key/einsum/Einsum/ReadVariableOpҐ/multi_head_attention_2/query/add/ReadVariableOpҐ9multi_head_attention_2/query/einsum/Einsum/ReadVariableOpҐ/multi_head_attention_2/value/add/ReadVariableOpҐ9multi_head_attention_2/value/einsum/Einsum/ReadVariableOpҐtokenize/mul/ReadVariableOpP
tf.compat.v1.shape/ShapeShapeinputs_0*
T0*
_output_shapes
:v
,tf.__operators__.getitem/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.tf.__operators__.getitem/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.tf.__operators__.getitem/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:»
&tf.__operators__.getitem/strided_sliceStridedSlice!tf.compat.v1.shape/Shape:output:05tf.__operators__.getitem/strided_slice/stack:output:07tf.__operators__.getitem/strided_slice/stack_1:output:07tf.__operators__.getitem/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskЕ
tf.zeros/zeros/packedPack/tf.__operators__.getitem/strided_slice:output:0unknown*
N*
T0*
_output_shapes
:Y
tf.zeros/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    З
tf.zeros/zerosFilltf.zeros/zeros/packed:output:0tf.zeros/zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€p
embedding/CastCasttf.zeros/zeros:output:0*

DstT0*

SrcT0*'
_output_shapes
:€€€€€€€€€б
embedding/embedding_lookupResourceGather embedding_embedding_lookup_22830embedding/Cast:y:0*
Tindices0*3
_class)
'%loc:@embedding/embedding_lookup/22830*+
_output_shapes
:€€€€€€€€€*
dtype0њ
#embedding/embedding_lookup/IdentityIdentity#embedding/embedding_lookup:output:0*
T0*3
_class)
'%loc:@embedding/embedding_lookup/22830*+
_output_shapes
:€€€€€€€€€Х
%embedding/embedding_lookup/Identity_1Identity,embedding/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:€€€€€€€€€c
embedding_1/CastCastinputs_0*

DstT0*

SrcT0*'
_output_shapes
:€€€€€€€€€й
embedding_1/embedding_lookupResourceGather"embedding_1_embedding_lookup_22836embedding_1/Cast:y:0*
Tindices0*5
_class+
)'loc:@embedding_1/embedding_lookup/22836*+
_output_shapes
:€€€€€€€€€*
dtype0≈
%embedding_1/embedding_lookup/IdentityIdentity%embedding_1/embedding_lookup:output:0*
T0*5
_class+
)'loc:@embedding_1/embedding_lookup/22836*+
_output_shapes
:€€€€€€€€€Щ
'embedding_1/embedding_lookup/Identity_1Identity.embedding_1/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:€€€€€€€€€Y
tokenize/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :Г
tokenize/ExpandDims
ExpandDimsinputs_1 tokenize/ExpandDims/dim:output:0*
T0*+
_output_shapes
:€€€€€€€€€А
tokenize/mul/ReadVariableOpReadVariableOp$tokenize_mul_readvariableop_resource*
_output_shapes

:*
dtype0М
tokenize/mulMultokenize/ExpandDims:output:0#tokenize/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€W
tf.concat/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :п
tf.concat/concatConcatV2.embedding/embedding_lookup/Identity_1:output:00embedding_1/embedding_lookup/Identity_1:output:0tokenize/mul:z:0tf.concat/concat/axis:output:0*
N*
T0*+
_output_shapes
:€€€€€€€€€	Љ
7multi_head_attention/query/einsum/Einsum/ReadVariableOpReadVariableOp@multi_head_attention_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0о
(multi_head_attention/query/einsum/EinsumEinsumtf.concat/concat:output:0?multi_head_attention/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:€€€€€€€€€	*
equationabc,cde->abde§
-multi_head_attention/query/add/ReadVariableOpReadVariableOp6multi_head_attention_query_add_readvariableop_resource*
_output_shapes

:*
dtype0Ћ
multi_head_attention/query/addAddV21multi_head_attention/query/einsum/Einsum:output:05multi_head_attention/query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€	Є
5multi_head_attention/key/einsum/Einsum/ReadVariableOpReadVariableOp>multi_head_attention_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0к
&multi_head_attention/key/einsum/EinsumEinsumtf.concat/concat:output:0=multi_head_attention/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:€€€€€€€€€	*
equationabc,cde->abde†
+multi_head_attention/key/add/ReadVariableOpReadVariableOp4multi_head_attention_key_add_readvariableop_resource*
_output_shapes

:*
dtype0≈
multi_head_attention/key/addAddV2/multi_head_attention/key/einsum/Einsum:output:03multi_head_attention/key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€	Љ
7multi_head_attention/value/einsum/Einsum/ReadVariableOpReadVariableOp@multi_head_attention_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0о
(multi_head_attention/value/einsum/EinsumEinsumtf.concat/concat:output:0?multi_head_attention/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:€€€€€€€€€	*
equationabc,cde->abde§
-multi_head_attention/value/add/ReadVariableOpReadVariableOp6multi_head_attention_value_add_readvariableop_resource*
_output_shapes

:*
dtype0Ћ
multi_head_attention/value/addAddV21multi_head_attention/value/einsum/Einsum:output:05multi_head_attention/value/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€	_
multi_head_attention/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>Ґ
multi_head_attention/MulMul"multi_head_attention/query/add:z:0#multi_head_attention/Mul/y:output:0*
T0*/
_output_shapes
:€€€€€€€€€	ќ
"multi_head_attention/einsum/EinsumEinsum multi_head_attention/key/add:z:0multi_head_attention/Mul:z:0*
N*
T0*/
_output_shapes
:€€€€€€€€€		*
equationaecd,abcd->acbeЦ
$multi_head_attention/softmax/SoftmaxSoftmax+multi_head_attention/einsum/Einsum:output:0*
T0*/
_output_shapes
:€€€€€€€€€		Ы
%multi_head_attention/dropout/IdentityIdentity.multi_head_attention/softmax/Softmax:softmax:0*
T0*/
_output_shapes
:€€€€€€€€€		д
$multi_head_attention/einsum_1/EinsumEinsum.multi_head_attention/dropout/Identity:output:0"multi_head_attention/value/add:z:0*
N*
T0*/
_output_shapes
:€€€€€€€€€	*
equationacbe,aecd->abcd“
Bmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpKmulti_head_attention_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0Ф
3multi_head_attention/attention_output/einsum/EinsumEinsum-multi_head_attention/einsum_1/Einsum:output:0Jmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:€€€€€€€€€	*
equationabcd,cde->abeґ
8multi_head_attention/attention_output/add/ReadVariableOpReadVariableOpAmulti_head_attention_attention_output_add_readvariableop_resource*
_output_shapes
:*
dtype0и
)multi_head_attention/attention_output/addAddV2<multi_head_attention/attention_output/einsum/Einsum:output:0@multi_head_attention/attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€	Р
add/addAddV2tf.concat/concat:output:0-multi_head_attention/attention_output/add:z:0*
T0*+
_output_shapes
:€€€€€€€€€	|
2layer_normalization/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:є
 layer_normalization/moments/meanMeanadd/add:z:0;layer_normalization/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:€€€€€€€€€	*
	keep_dims(Щ
(layer_normalization/moments/StopGradientStopGradient)layer_normalization/moments/mean:output:0*
T0*+
_output_shapes
:€€€€€€€€€	Є
-layer_normalization/moments/SquaredDifferenceSquaredDifferenceadd/add:z:01layer_normalization/moments/StopGradient:output:0*
T0*+
_output_shapes
:€€€€€€€€€	А
6layer_normalization/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:з
$layer_normalization/moments/varianceMean1layer_normalization/moments/SquaredDifference:z:0?layer_normalization/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:€€€€€€€€€	*
	keep_dims(h
#layer_normalization/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *љ7Ж5љ
!layer_normalization/batchnorm/addAddV2-layer_normalization/moments/variance:output:0,layer_normalization/batchnorm/add/y:output:0*
T0*+
_output_shapes
:€€€€€€€€€	Й
#layer_normalization/batchnorm/RsqrtRsqrt%layer_normalization/batchnorm/add:z:0*
T0*+
_output_shapes
:€€€€€€€€€	¶
0layer_normalization/batchnorm/mul/ReadVariableOpReadVariableOp9layer_normalization_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0Ѕ
!layer_normalization/batchnorm/mulMul'layer_normalization/batchnorm/Rsqrt:y:08layer_normalization/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€	Ф
#layer_normalization/batchnorm/mul_1Muladd/add:z:0%layer_normalization/batchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€	≤
#layer_normalization/batchnorm/mul_2Mul)layer_normalization/moments/mean:output:0%layer_normalization/batchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€	Ю
,layer_normalization/batchnorm/ReadVariableOpReadVariableOp5layer_normalization_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0љ
!layer_normalization/batchnorm/subSub4layer_normalization/batchnorm/ReadVariableOp:value:0'layer_normalization/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:€€€€€€€€€	≤
#layer_normalization/batchnorm/add_1AddV2'layer_normalization/batchnorm/mul_1:z:0%layer_normalization/batchnorm/sub:z:0*
T0*+
_output_shapes
:€€€€€€€€€	Ж
dense/Tensordot/ReadVariableOpReadVariableOp'dense_tensordot_readvariableop_resource*
_output_shapes

:*
dtype0^
dense/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:e
dense/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       l
dense/Tensordot/ShapeShape'layer_normalization/batchnorm/add_1:z:0*
T0*
_output_shapes
:_
dense/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ”
dense/Tensordot/GatherV2GatherV2dense/Tensordot/Shape:output:0dense/Tensordot/free:output:0&dense/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : „
dense/Tensordot/GatherV2_1GatherV2dense/Tensordot/Shape:output:0dense/Tensordot/axes:output:0(dense/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:_
dense/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: А
dense/Tensordot/ProdProd!dense/Tensordot/GatherV2:output:0dense/Tensordot/Const:output:0*
T0*
_output_shapes
: a
dense/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: Ж
dense/Tensordot/Prod_1Prod#dense/Tensordot/GatherV2_1:output:0 dense/Tensordot/Const_1:output:0*
T0*
_output_shapes
: ]
dense/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : і
dense/Tensordot/concatConcatV2dense/Tensordot/free:output:0dense/Tensordot/axes:output:0$dense/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:Л
dense/Tensordot/stackPackdense/Tensordot/Prod:output:0dense/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:¶
dense/Tensordot/transpose	Transpose'layer_normalization/batchnorm/add_1:z:0dense/Tensordot/concat:output:0*
T0*+
_output_shapes
:€€€€€€€€€	Ь
dense/Tensordot/ReshapeReshapedense/Tensordot/transpose:y:0dense/Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€Ь
dense/Tensordot/MatMulMatMul dense/Tensordot/Reshape:output:0&dense/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€a
dense/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:_
dense/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : њ
dense/Tensordot/concat_1ConcatV2!dense/Tensordot/GatherV2:output:0 dense/Tensordot/Const_2:output:0&dense/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Х
dense/TensordotReshape dense/Tensordot/MatMul:product:0!dense/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:€€€€€€€€€	Z
tf.nn.gelu/Gelu/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?К
tf.nn.gelu/Gelu/mulMultf.nn.gelu/Gelu/mul/x:output:0dense/Tensordot:output:0*
T0*+
_output_shapes
:€€€€€€€€€	[
tf.nn.gelu/Gelu/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *уµ?У
tf.nn.gelu/Gelu/truedivRealDivdense/Tensordot:output:0tf.nn.gelu/Gelu/Cast/x:output:0*
T0*+
_output_shapes
:€€€€€€€€€	m
tf.nn.gelu/Gelu/ErfErftf.nn.gelu/Gelu/truediv:z:0*
T0*+
_output_shapes
:€€€€€€€€€	Z
tf.nn.gelu/Gelu/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Л
tf.nn.gelu/Gelu/addAddV2tf.nn.gelu/Gelu/add/x:output:0tf.nn.gelu/Gelu/Erf:y:0*
T0*+
_output_shapes
:€€€€€€€€€	Д
tf.nn.gelu/Gelu/mul_1Multf.nn.gelu/Gelu/mul:z:0tf.nn.gelu/Gelu/add:z:0*
T0*+
_output_shapes
:€€€€€€€€€	К
 dense_1/Tensordot/ReadVariableOpReadVariableOp)dense_1_tensordot_readvariableop_resource*
_output_shapes

:*
dtype0`
dense_1/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:g
dense_1/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       `
dense_1/Tensordot/ShapeShapetf.nn.gelu/Gelu/mul_1:z:0*
T0*
_output_shapes
:a
dense_1/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : џ
dense_1/Tensordot/GatherV2GatherV2 dense_1/Tensordot/Shape:output:0dense_1/Tensordot/free:output:0(dense_1/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:c
!dense_1/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : я
dense_1/Tensordot/GatherV2_1GatherV2 dense_1/Tensordot/Shape:output:0dense_1/Tensordot/axes:output:0*dense_1/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense_1/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: Ж
dense_1/Tensordot/ProdProd#dense_1/Tensordot/GatherV2:output:0 dense_1/Tensordot/Const:output:0*
T0*
_output_shapes
: c
dense_1/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: М
dense_1/Tensordot/Prod_1Prod%dense_1/Tensordot/GatherV2_1:output:0"dense_1/Tensordot/Const_1:output:0*
T0*
_output_shapes
: _
dense_1/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Љ
dense_1/Tensordot/concatConcatV2dense_1/Tensordot/free:output:0dense_1/Tensordot/axes:output:0&dense_1/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:С
dense_1/Tensordot/stackPackdense_1/Tensordot/Prod:output:0!dense_1/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:Ь
dense_1/Tensordot/transpose	Transposetf.nn.gelu/Gelu/mul_1:z:0!dense_1/Tensordot/concat:output:0*
T0*+
_output_shapes
:€€€€€€€€€	Ґ
dense_1/Tensordot/ReshapeReshapedense_1/Tensordot/transpose:y:0 dense_1/Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€Ґ
dense_1/Tensordot/MatMulMatMul"dense_1/Tensordot/Reshape:output:0(dense_1/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€c
dense_1/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:a
dense_1/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : «
dense_1/Tensordot/concat_1ConcatV2#dense_1/Tensordot/GatherV2:output:0"dense_1/Tensordot/Const_2:output:0(dense_1/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Ы
dense_1/TensordotReshape"dense_1/Tensordot/MatMul:product:0#dense_1/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:€€€€€€€€€	n
dropout/IdentityIdentitydense_1/Tensordot:output:0*
T0*+
_output_shapes
:€€€€€€€€€	М
	add_1/addAddV2'layer_normalization/batchnorm/add_1:z:0dropout/Identity:output:0*
T0*+
_output_shapes
:€€€€€€€€€	~
4layer_normalization_1/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:њ
"layer_normalization_1/moments/meanMeanadd_1/add:z:0=layer_normalization_1/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:€€€€€€€€€	*
	keep_dims(Э
*layer_normalization_1/moments/StopGradientStopGradient+layer_normalization_1/moments/mean:output:0*
T0*+
_output_shapes
:€€€€€€€€€	Њ
/layer_normalization_1/moments/SquaredDifferenceSquaredDifferenceadd_1/add:z:03layer_normalization_1/moments/StopGradient:output:0*
T0*+
_output_shapes
:€€€€€€€€€	В
8layer_normalization_1/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:н
&layer_normalization_1/moments/varianceMean3layer_normalization_1/moments/SquaredDifference:z:0Alayer_normalization_1/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:€€€€€€€€€	*
	keep_dims(j
%layer_normalization_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *љ7Ж5√
#layer_normalization_1/batchnorm/addAddV2/layer_normalization_1/moments/variance:output:0.layer_normalization_1/batchnorm/add/y:output:0*
T0*+
_output_shapes
:€€€€€€€€€	Н
%layer_normalization_1/batchnorm/RsqrtRsqrt'layer_normalization_1/batchnorm/add:z:0*
T0*+
_output_shapes
:€€€€€€€€€	™
2layer_normalization_1/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_1_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0«
#layer_normalization_1/batchnorm/mulMul)layer_normalization_1/batchnorm/Rsqrt:y:0:layer_normalization_1/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€	Ъ
%layer_normalization_1/batchnorm/mul_1Muladd_1/add:z:0'layer_normalization_1/batchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€	Є
%layer_normalization_1/batchnorm/mul_2Mul+layer_normalization_1/moments/mean:output:0'layer_normalization_1/batchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€	Ґ
.layer_normalization_1/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_1_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0√
#layer_normalization_1/batchnorm/subSub6layer_normalization_1/batchnorm/ReadVariableOp:value:0)layer_normalization_1/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:€€€€€€€€€	Є
%layer_normalization_1/batchnorm/add_1AddV2)layer_normalization_1/batchnorm/mul_1:z:0'layer_normalization_1/batchnorm/sub:z:0*
T0*+
_output_shapes
:€€€€€€€€€	ј
9multi_head_attention_1/query/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_1_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0В
*multi_head_attention_1/query/einsum/EinsumEinsum)layer_normalization_1/batchnorm/add_1:z:0Amulti_head_attention_1/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:€€€€€€€€€	*
equationabc,cde->abde®
/multi_head_attention_1/query/add/ReadVariableOpReadVariableOp8multi_head_attention_1_query_add_readvariableop_resource*
_output_shapes

:*
dtype0—
 multi_head_attention_1/query/addAddV23multi_head_attention_1/query/einsum/Einsum:output:07multi_head_attention_1/query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€	Љ
7multi_head_attention_1/key/einsum/Einsum/ReadVariableOpReadVariableOp@multi_head_attention_1_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0ю
(multi_head_attention_1/key/einsum/EinsumEinsum)layer_normalization_1/batchnorm/add_1:z:0?multi_head_attention_1/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:€€€€€€€€€	*
equationabc,cde->abde§
-multi_head_attention_1/key/add/ReadVariableOpReadVariableOp6multi_head_attention_1_key_add_readvariableop_resource*
_output_shapes

:*
dtype0Ћ
multi_head_attention_1/key/addAddV21multi_head_attention_1/key/einsum/Einsum:output:05multi_head_attention_1/key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€	ј
9multi_head_attention_1/value/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_1_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0В
*multi_head_attention_1/value/einsum/EinsumEinsum)layer_normalization_1/batchnorm/add_1:z:0Amulti_head_attention_1/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:€€€€€€€€€	*
equationabc,cde->abde®
/multi_head_attention_1/value/add/ReadVariableOpReadVariableOp8multi_head_attention_1_value_add_readvariableop_resource*
_output_shapes

:*
dtype0—
 multi_head_attention_1/value/addAddV23multi_head_attention_1/value/einsum/Einsum:output:07multi_head_attention_1/value/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€	a
multi_head_attention_1/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>®
multi_head_attention_1/MulMul$multi_head_attention_1/query/add:z:0%multi_head_attention_1/Mul/y:output:0*
T0*/
_output_shapes
:€€€€€€€€€	‘
$multi_head_attention_1/einsum/EinsumEinsum"multi_head_attention_1/key/add:z:0multi_head_attention_1/Mul:z:0*
N*
T0*/
_output_shapes
:€€€€€€€€€		*
equationaecd,abcd->acbeЪ
&multi_head_attention_1/softmax/SoftmaxSoftmax-multi_head_attention_1/einsum/Einsum:output:0*
T0*/
_output_shapes
:€€€€€€€€€		Я
'multi_head_attention_1/dropout/IdentityIdentity0multi_head_attention_1/softmax/Softmax:softmax:0*
T0*/
_output_shapes
:€€€€€€€€€		к
&multi_head_attention_1/einsum_1/EinsumEinsum0multi_head_attention_1/dropout/Identity:output:0$multi_head_attention_1/value/add:z:0*
N*
T0*/
_output_shapes
:€€€€€€€€€	*
equationacbe,aecd->abcd÷
Dmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpMmulti_head_attention_1_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0Ъ
5multi_head_attention_1/attention_output/einsum/EinsumEinsum/multi_head_attention_1/einsum_1/Einsum:output:0Lmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:€€€€€€€€€	*
equationabcd,cde->abeЇ
:multi_head_attention_1/attention_output/add/ReadVariableOpReadVariableOpCmulti_head_attention_1_attention_output_add_readvariableop_resource*
_output_shapes
:*
dtype0о
+multi_head_attention_1/attention_output/addAddV2>multi_head_attention_1/attention_output/einsum/Einsum:output:0Bmulti_head_attention_1/attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€	§
	add_2/addAddV2)layer_normalization_1/batchnorm/add_1:z:0/multi_head_attention_1/attention_output/add:z:0*
T0*+
_output_shapes
:€€€€€€€€€	~
4layer_normalization_2/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:њ
"layer_normalization_2/moments/meanMeanadd_2/add:z:0=layer_normalization_2/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:€€€€€€€€€	*
	keep_dims(Э
*layer_normalization_2/moments/StopGradientStopGradient+layer_normalization_2/moments/mean:output:0*
T0*+
_output_shapes
:€€€€€€€€€	Њ
/layer_normalization_2/moments/SquaredDifferenceSquaredDifferenceadd_2/add:z:03layer_normalization_2/moments/StopGradient:output:0*
T0*+
_output_shapes
:€€€€€€€€€	В
8layer_normalization_2/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:н
&layer_normalization_2/moments/varianceMean3layer_normalization_2/moments/SquaredDifference:z:0Alayer_normalization_2/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:€€€€€€€€€	*
	keep_dims(j
%layer_normalization_2/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *љ7Ж5√
#layer_normalization_2/batchnorm/addAddV2/layer_normalization_2/moments/variance:output:0.layer_normalization_2/batchnorm/add/y:output:0*
T0*+
_output_shapes
:€€€€€€€€€	Н
%layer_normalization_2/batchnorm/RsqrtRsqrt'layer_normalization_2/batchnorm/add:z:0*
T0*+
_output_shapes
:€€€€€€€€€	™
2layer_normalization_2/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_2_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0«
#layer_normalization_2/batchnorm/mulMul)layer_normalization_2/batchnorm/Rsqrt:y:0:layer_normalization_2/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€	Ъ
%layer_normalization_2/batchnorm/mul_1Muladd_2/add:z:0'layer_normalization_2/batchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€	Є
%layer_normalization_2/batchnorm/mul_2Mul+layer_normalization_2/moments/mean:output:0'layer_normalization_2/batchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€	Ґ
.layer_normalization_2/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_2_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0√
#layer_normalization_2/batchnorm/subSub6layer_normalization_2/batchnorm/ReadVariableOp:value:0)layer_normalization_2/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:€€€€€€€€€	Є
%layer_normalization_2/batchnorm/add_1AddV2)layer_normalization_2/batchnorm/mul_1:z:0'layer_normalization_2/batchnorm/sub:z:0*
T0*+
_output_shapes
:€€€€€€€€€	К
 dense_2/Tensordot/ReadVariableOpReadVariableOp)dense_2_tensordot_readvariableop_resource*
_output_shapes

:*
dtype0`
dense_2/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:g
dense_2/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       p
dense_2/Tensordot/ShapeShape)layer_normalization_2/batchnorm/add_1:z:0*
T0*
_output_shapes
:a
dense_2/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : џ
dense_2/Tensordot/GatherV2GatherV2 dense_2/Tensordot/Shape:output:0dense_2/Tensordot/free:output:0(dense_2/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:c
!dense_2/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : я
dense_2/Tensordot/GatherV2_1GatherV2 dense_2/Tensordot/Shape:output:0dense_2/Tensordot/axes:output:0*dense_2/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense_2/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: Ж
dense_2/Tensordot/ProdProd#dense_2/Tensordot/GatherV2:output:0 dense_2/Tensordot/Const:output:0*
T0*
_output_shapes
: c
dense_2/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: М
dense_2/Tensordot/Prod_1Prod%dense_2/Tensordot/GatherV2_1:output:0"dense_2/Tensordot/Const_1:output:0*
T0*
_output_shapes
: _
dense_2/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Љ
dense_2/Tensordot/concatConcatV2dense_2/Tensordot/free:output:0dense_2/Tensordot/axes:output:0&dense_2/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:С
dense_2/Tensordot/stackPackdense_2/Tensordot/Prod:output:0!dense_2/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:ђ
dense_2/Tensordot/transpose	Transpose)layer_normalization_2/batchnorm/add_1:z:0!dense_2/Tensordot/concat:output:0*
T0*+
_output_shapes
:€€€€€€€€€	Ґ
dense_2/Tensordot/ReshapeReshapedense_2/Tensordot/transpose:y:0 dense_2/Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€Ґ
dense_2/Tensordot/MatMulMatMul"dense_2/Tensordot/Reshape:output:0(dense_2/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€c
dense_2/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:a
dense_2/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : «
dense_2/Tensordot/concat_1ConcatV2#dense_2/Tensordot/GatherV2:output:0"dense_2/Tensordot/Const_2:output:0(dense_2/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Ы
dense_2/TensordotReshape"dense_2/Tensordot/MatMul:product:0#dense_2/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:€€€€€€€€€	\
tf.nn.gelu_1/Gelu/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?Р
tf.nn.gelu_1/Gelu/mulMul tf.nn.gelu_1/Gelu/mul/x:output:0dense_2/Tensordot:output:0*
T0*+
_output_shapes
:€€€€€€€€€	]
tf.nn.gelu_1/Gelu/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *уµ?Щ
tf.nn.gelu_1/Gelu/truedivRealDivdense_2/Tensordot:output:0!tf.nn.gelu_1/Gelu/Cast/x:output:0*
T0*+
_output_shapes
:€€€€€€€€€	q
tf.nn.gelu_1/Gelu/ErfErftf.nn.gelu_1/Gelu/truediv:z:0*
T0*+
_output_shapes
:€€€€€€€€€	\
tf.nn.gelu_1/Gelu/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?С
tf.nn.gelu_1/Gelu/addAddV2 tf.nn.gelu_1/Gelu/add/x:output:0tf.nn.gelu_1/Gelu/Erf:y:0*
T0*+
_output_shapes
:€€€€€€€€€	К
tf.nn.gelu_1/Gelu/mul_1Multf.nn.gelu_1/Gelu/mul:z:0tf.nn.gelu_1/Gelu/add:z:0*
T0*+
_output_shapes
:€€€€€€€€€	К
 dense_3/Tensordot/ReadVariableOpReadVariableOp)dense_3_tensordot_readvariableop_resource*
_output_shapes

:*
dtype0`
dense_3/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:g
dense_3/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       b
dense_3/Tensordot/ShapeShapetf.nn.gelu_1/Gelu/mul_1:z:0*
T0*
_output_shapes
:a
dense_3/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : џ
dense_3/Tensordot/GatherV2GatherV2 dense_3/Tensordot/Shape:output:0dense_3/Tensordot/free:output:0(dense_3/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:c
!dense_3/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : я
dense_3/Tensordot/GatherV2_1GatherV2 dense_3/Tensordot/Shape:output:0dense_3/Tensordot/axes:output:0*dense_3/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense_3/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: Ж
dense_3/Tensordot/ProdProd#dense_3/Tensordot/GatherV2:output:0 dense_3/Tensordot/Const:output:0*
T0*
_output_shapes
: c
dense_3/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: М
dense_3/Tensordot/Prod_1Prod%dense_3/Tensordot/GatherV2_1:output:0"dense_3/Tensordot/Const_1:output:0*
T0*
_output_shapes
: _
dense_3/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Љ
dense_3/Tensordot/concatConcatV2dense_3/Tensordot/free:output:0dense_3/Tensordot/axes:output:0&dense_3/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:С
dense_3/Tensordot/stackPackdense_3/Tensordot/Prod:output:0!dense_3/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:Ю
dense_3/Tensordot/transpose	Transposetf.nn.gelu_1/Gelu/mul_1:z:0!dense_3/Tensordot/concat:output:0*
T0*+
_output_shapes
:€€€€€€€€€	Ґ
dense_3/Tensordot/ReshapeReshapedense_3/Tensordot/transpose:y:0 dense_3/Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€Ґ
dense_3/Tensordot/MatMulMatMul"dense_3/Tensordot/Reshape:output:0(dense_3/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€c
dense_3/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:a
dense_3/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : «
dense_3/Tensordot/concat_1ConcatV2#dense_3/Tensordot/GatherV2:output:0"dense_3/Tensordot/Const_2:output:0(dense_3/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Ы
dense_3/TensordotReshape"dense_3/Tensordot/MatMul:product:0#dense_3/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:€€€€€€€€€	p
dropout_1/IdentityIdentitydense_3/Tensordot:output:0*
T0*+
_output_shapes
:€€€€€€€€€	Р
	add_3/addAddV2)layer_normalization_2/batchnorm/add_1:z:0dropout_1/Identity:output:0*
T0*+
_output_shapes
:€€€€€€€€€	~
4layer_normalization_3/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:њ
"layer_normalization_3/moments/meanMeanadd_3/add:z:0=layer_normalization_3/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:€€€€€€€€€	*
	keep_dims(Э
*layer_normalization_3/moments/StopGradientStopGradient+layer_normalization_3/moments/mean:output:0*
T0*+
_output_shapes
:€€€€€€€€€	Њ
/layer_normalization_3/moments/SquaredDifferenceSquaredDifferenceadd_3/add:z:03layer_normalization_3/moments/StopGradient:output:0*
T0*+
_output_shapes
:€€€€€€€€€	В
8layer_normalization_3/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:н
&layer_normalization_3/moments/varianceMean3layer_normalization_3/moments/SquaredDifference:z:0Alayer_normalization_3/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:€€€€€€€€€	*
	keep_dims(j
%layer_normalization_3/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *љ7Ж5√
#layer_normalization_3/batchnorm/addAddV2/layer_normalization_3/moments/variance:output:0.layer_normalization_3/batchnorm/add/y:output:0*
T0*+
_output_shapes
:€€€€€€€€€	Н
%layer_normalization_3/batchnorm/RsqrtRsqrt'layer_normalization_3/batchnorm/add:z:0*
T0*+
_output_shapes
:€€€€€€€€€	™
2layer_normalization_3/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_3_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0«
#layer_normalization_3/batchnorm/mulMul)layer_normalization_3/batchnorm/Rsqrt:y:0:layer_normalization_3/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€	Ъ
%layer_normalization_3/batchnorm/mul_1Muladd_3/add:z:0'layer_normalization_3/batchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€	Є
%layer_normalization_3/batchnorm/mul_2Mul+layer_normalization_3/moments/mean:output:0'layer_normalization_3/batchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€	Ґ
.layer_normalization_3/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_3_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0√
#layer_normalization_3/batchnorm/subSub6layer_normalization_3/batchnorm/ReadVariableOp:value:0)layer_normalization_3/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:€€€€€€€€€	Є
%layer_normalization_3/batchnorm/add_1AddV2)layer_normalization_3/batchnorm/mul_1:z:0'layer_normalization_3/batchnorm/sub:z:0*
T0*+
_output_shapes
:€€€€€€€€€	ј
9multi_head_attention_2/query/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_2_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0В
*multi_head_attention_2/query/einsum/EinsumEinsum)layer_normalization_3/batchnorm/add_1:z:0Amulti_head_attention_2/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:€€€€€€€€€	*
equationabc,cde->abde®
/multi_head_attention_2/query/add/ReadVariableOpReadVariableOp8multi_head_attention_2_query_add_readvariableop_resource*
_output_shapes

:*
dtype0—
 multi_head_attention_2/query/addAddV23multi_head_attention_2/query/einsum/Einsum:output:07multi_head_attention_2/query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€	Љ
7multi_head_attention_2/key/einsum/Einsum/ReadVariableOpReadVariableOp@multi_head_attention_2_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0ю
(multi_head_attention_2/key/einsum/EinsumEinsum)layer_normalization_3/batchnorm/add_1:z:0?multi_head_attention_2/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:€€€€€€€€€	*
equationabc,cde->abde§
-multi_head_attention_2/key/add/ReadVariableOpReadVariableOp6multi_head_attention_2_key_add_readvariableop_resource*
_output_shapes

:*
dtype0Ћ
multi_head_attention_2/key/addAddV21multi_head_attention_2/key/einsum/Einsum:output:05multi_head_attention_2/key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€	ј
9multi_head_attention_2/value/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_2_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0В
*multi_head_attention_2/value/einsum/EinsumEinsum)layer_normalization_3/batchnorm/add_1:z:0Amulti_head_attention_2/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:€€€€€€€€€	*
equationabc,cde->abde®
/multi_head_attention_2/value/add/ReadVariableOpReadVariableOp8multi_head_attention_2_value_add_readvariableop_resource*
_output_shapes

:*
dtype0—
 multi_head_attention_2/value/addAddV23multi_head_attention_2/value/einsum/Einsum:output:07multi_head_attention_2/value/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€	a
multi_head_attention_2/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>®
multi_head_attention_2/MulMul$multi_head_attention_2/query/add:z:0%multi_head_attention_2/Mul/y:output:0*
T0*/
_output_shapes
:€€€€€€€€€	‘
$multi_head_attention_2/einsum/EinsumEinsum"multi_head_attention_2/key/add:z:0multi_head_attention_2/Mul:z:0*
N*
T0*/
_output_shapes
:€€€€€€€€€		*
equationaecd,abcd->acbeЪ
&multi_head_attention_2/softmax/SoftmaxSoftmax-multi_head_attention_2/einsum/Einsum:output:0*
T0*/
_output_shapes
:€€€€€€€€€		Я
'multi_head_attention_2/dropout/IdentityIdentity0multi_head_attention_2/softmax/Softmax:softmax:0*
T0*/
_output_shapes
:€€€€€€€€€		к
&multi_head_attention_2/einsum_1/EinsumEinsum0multi_head_attention_2/dropout/Identity:output:0$multi_head_attention_2/value/add:z:0*
N*
T0*/
_output_shapes
:€€€€€€€€€	*
equationacbe,aecd->abcd÷
Dmulti_head_attention_2/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpMmulti_head_attention_2_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0Ъ
5multi_head_attention_2/attention_output/einsum/EinsumEinsum/multi_head_attention_2/einsum_1/Einsum:output:0Lmulti_head_attention_2/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:€€€€€€€€€	*
equationabcd,cde->abeЇ
:multi_head_attention_2/attention_output/add/ReadVariableOpReadVariableOpCmulti_head_attention_2_attention_output_add_readvariableop_resource*
_output_shapes
:*
dtype0о
+multi_head_attention_2/attention_output/addAddV2>multi_head_attention_2/attention_output/einsum/Einsum:output:0Bmulti_head_attention_2/attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€	§
	add_4/addAddV2)layer_normalization_3/batchnorm/add_1:z:0/multi_head_attention_2/attention_output/add:z:0*
T0*+
_output_shapes
:€€€€€€€€€	~
4layer_normalization_4/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:њ
"layer_normalization_4/moments/meanMeanadd_4/add:z:0=layer_normalization_4/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:€€€€€€€€€	*
	keep_dims(Э
*layer_normalization_4/moments/StopGradientStopGradient+layer_normalization_4/moments/mean:output:0*
T0*+
_output_shapes
:€€€€€€€€€	Њ
/layer_normalization_4/moments/SquaredDifferenceSquaredDifferenceadd_4/add:z:03layer_normalization_4/moments/StopGradient:output:0*
T0*+
_output_shapes
:€€€€€€€€€	В
8layer_normalization_4/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:н
&layer_normalization_4/moments/varianceMean3layer_normalization_4/moments/SquaredDifference:z:0Alayer_normalization_4/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:€€€€€€€€€	*
	keep_dims(j
%layer_normalization_4/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *љ7Ж5√
#layer_normalization_4/batchnorm/addAddV2/layer_normalization_4/moments/variance:output:0.layer_normalization_4/batchnorm/add/y:output:0*
T0*+
_output_shapes
:€€€€€€€€€	Н
%layer_normalization_4/batchnorm/RsqrtRsqrt'layer_normalization_4/batchnorm/add:z:0*
T0*+
_output_shapes
:€€€€€€€€€	™
2layer_normalization_4/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_4_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0«
#layer_normalization_4/batchnorm/mulMul)layer_normalization_4/batchnorm/Rsqrt:y:0:layer_normalization_4/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€	Ъ
%layer_normalization_4/batchnorm/mul_1Muladd_4/add:z:0'layer_normalization_4/batchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€	Є
%layer_normalization_4/batchnorm/mul_2Mul+layer_normalization_4/moments/mean:output:0'layer_normalization_4/batchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€	Ґ
.layer_normalization_4/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_4_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0√
#layer_normalization_4/batchnorm/subSub6layer_normalization_4/batchnorm/ReadVariableOp:value:0)layer_normalization_4/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:€€€€€€€€€	Є
%layer_normalization_4/batchnorm/add_1AddV2)layer_normalization_4/batchnorm/mul_1:z:0'layer_normalization_4/batchnorm/sub:z:0*
T0*+
_output_shapes
:€€€€€€€€€	К
 dense_4/Tensordot/ReadVariableOpReadVariableOp)dense_4_tensordot_readvariableop_resource*
_output_shapes

:*
dtype0`
dense_4/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:g
dense_4/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       p
dense_4/Tensordot/ShapeShape)layer_normalization_4/batchnorm/add_1:z:0*
T0*
_output_shapes
:a
dense_4/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : џ
dense_4/Tensordot/GatherV2GatherV2 dense_4/Tensordot/Shape:output:0dense_4/Tensordot/free:output:0(dense_4/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:c
!dense_4/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : я
dense_4/Tensordot/GatherV2_1GatherV2 dense_4/Tensordot/Shape:output:0dense_4/Tensordot/axes:output:0*dense_4/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense_4/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: Ж
dense_4/Tensordot/ProdProd#dense_4/Tensordot/GatherV2:output:0 dense_4/Tensordot/Const:output:0*
T0*
_output_shapes
: c
dense_4/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: М
dense_4/Tensordot/Prod_1Prod%dense_4/Tensordot/GatherV2_1:output:0"dense_4/Tensordot/Const_1:output:0*
T0*
_output_shapes
: _
dense_4/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Љ
dense_4/Tensordot/concatConcatV2dense_4/Tensordot/free:output:0dense_4/Tensordot/axes:output:0&dense_4/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:С
dense_4/Tensordot/stackPackdense_4/Tensordot/Prod:output:0!dense_4/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:ђ
dense_4/Tensordot/transpose	Transpose)layer_normalization_4/batchnorm/add_1:z:0!dense_4/Tensordot/concat:output:0*
T0*+
_output_shapes
:€€€€€€€€€	Ґ
dense_4/Tensordot/ReshapeReshapedense_4/Tensordot/transpose:y:0 dense_4/Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€Ґ
dense_4/Tensordot/MatMulMatMul"dense_4/Tensordot/Reshape:output:0(dense_4/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€c
dense_4/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:a
dense_4/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : «
dense_4/Tensordot/concat_1ConcatV2#dense_4/Tensordot/GatherV2:output:0"dense_4/Tensordot/Const_2:output:0(dense_4/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Ы
dense_4/TensordotReshape"dense_4/Tensordot/MatMul:product:0#dense_4/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:€€€€€€€€€	\
tf.nn.gelu_2/Gelu/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?Р
tf.nn.gelu_2/Gelu/mulMul tf.nn.gelu_2/Gelu/mul/x:output:0dense_4/Tensordot:output:0*
T0*+
_output_shapes
:€€€€€€€€€	]
tf.nn.gelu_2/Gelu/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *уµ?Щ
tf.nn.gelu_2/Gelu/truedivRealDivdense_4/Tensordot:output:0!tf.nn.gelu_2/Gelu/Cast/x:output:0*
T0*+
_output_shapes
:€€€€€€€€€	q
tf.nn.gelu_2/Gelu/ErfErftf.nn.gelu_2/Gelu/truediv:z:0*
T0*+
_output_shapes
:€€€€€€€€€	\
tf.nn.gelu_2/Gelu/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?С
tf.nn.gelu_2/Gelu/addAddV2 tf.nn.gelu_2/Gelu/add/x:output:0tf.nn.gelu_2/Gelu/Erf:y:0*
T0*+
_output_shapes
:€€€€€€€€€	К
tf.nn.gelu_2/Gelu/mul_1Multf.nn.gelu_2/Gelu/mul:z:0tf.nn.gelu_2/Gelu/add:z:0*
T0*+
_output_shapes
:€€€€€€€€€	К
 dense_5/Tensordot/ReadVariableOpReadVariableOp)dense_5_tensordot_readvariableop_resource*
_output_shapes

:*
dtype0`
dense_5/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:g
dense_5/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       b
dense_5/Tensordot/ShapeShapetf.nn.gelu_2/Gelu/mul_1:z:0*
T0*
_output_shapes
:a
dense_5/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : џ
dense_5/Tensordot/GatherV2GatherV2 dense_5/Tensordot/Shape:output:0dense_5/Tensordot/free:output:0(dense_5/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:c
!dense_5/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : я
dense_5/Tensordot/GatherV2_1GatherV2 dense_5/Tensordot/Shape:output:0dense_5/Tensordot/axes:output:0*dense_5/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense_5/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: Ж
dense_5/Tensordot/ProdProd#dense_5/Tensordot/GatherV2:output:0 dense_5/Tensordot/Const:output:0*
T0*
_output_shapes
: c
dense_5/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: М
dense_5/Tensordot/Prod_1Prod%dense_5/Tensordot/GatherV2_1:output:0"dense_5/Tensordot/Const_1:output:0*
T0*
_output_shapes
: _
dense_5/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Љ
dense_5/Tensordot/concatConcatV2dense_5/Tensordot/free:output:0dense_5/Tensordot/axes:output:0&dense_5/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:С
dense_5/Tensordot/stackPackdense_5/Tensordot/Prod:output:0!dense_5/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:Ю
dense_5/Tensordot/transpose	Transposetf.nn.gelu_2/Gelu/mul_1:z:0!dense_5/Tensordot/concat:output:0*
T0*+
_output_shapes
:€€€€€€€€€	Ґ
dense_5/Tensordot/ReshapeReshapedense_5/Tensordot/transpose:y:0 dense_5/Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€Ґ
dense_5/Tensordot/MatMulMatMul"dense_5/Tensordot/Reshape:output:0(dense_5/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€c
dense_5/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:a
dense_5/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : «
dense_5/Tensordot/concat_1ConcatV2#dense_5/Tensordot/GatherV2:output:0"dense_5/Tensordot/Const_2:output:0(dense_5/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Ы
dense_5/TensordotReshape"dense_5/Tensordot/MatMul:product:0#dense_5/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:€€€€€€€€€	p
dropout_2/IdentityIdentitydense_5/Tensordot:output:0*
T0*+
_output_shapes
:€€€€€€€€€	Р
	add_5/addAddV2)layer_normalization_4/batchnorm/add_1:z:0dropout_2/Identity:output:0*
T0*+
_output_shapes
:€€€€€€€€€	~
4layer_normalization_5/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:њ
"layer_normalization_5/moments/meanMeanadd_5/add:z:0=layer_normalization_5/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:€€€€€€€€€	*
	keep_dims(Э
*layer_normalization_5/moments/StopGradientStopGradient+layer_normalization_5/moments/mean:output:0*
T0*+
_output_shapes
:€€€€€€€€€	Њ
/layer_normalization_5/moments/SquaredDifferenceSquaredDifferenceadd_5/add:z:03layer_normalization_5/moments/StopGradient:output:0*
T0*+
_output_shapes
:€€€€€€€€€	В
8layer_normalization_5/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:н
&layer_normalization_5/moments/varianceMean3layer_normalization_5/moments/SquaredDifference:z:0Alayer_normalization_5/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:€€€€€€€€€	*
	keep_dims(j
%layer_normalization_5/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *љ7Ж5√
#layer_normalization_5/batchnorm/addAddV2/layer_normalization_5/moments/variance:output:0.layer_normalization_5/batchnorm/add/y:output:0*
T0*+
_output_shapes
:€€€€€€€€€	Н
%layer_normalization_5/batchnorm/RsqrtRsqrt'layer_normalization_5/batchnorm/add:z:0*
T0*+
_output_shapes
:€€€€€€€€€	™
2layer_normalization_5/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_5_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0«
#layer_normalization_5/batchnorm/mulMul)layer_normalization_5/batchnorm/Rsqrt:y:0:layer_normalization_5/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€	Ъ
%layer_normalization_5/batchnorm/mul_1Muladd_5/add:z:0'layer_normalization_5/batchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€	Є
%layer_normalization_5/batchnorm/mul_2Mul+layer_normalization_5/moments/mean:output:0'layer_normalization_5/batchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€	Ґ
.layer_normalization_5/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_5_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0√
#layer_normalization_5/batchnorm/subSub6layer_normalization_5/batchnorm/ReadVariableOp:value:0)layer_normalization_5/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:€€€€€€€€€	Є
%layer_normalization_5/batchnorm/add_1AddV2)layer_normalization_5/batchnorm/mul_1:z:0'layer_normalization_5/batchnorm/sub:z:0*
T0*+
_output_shapes
:€€€€€€€€€	
.tf.__operators__.getitem_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        Б
0tf.__operators__.getitem_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       Б
0tf.__operators__.getitem_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Л
(tf.__operators__.getitem_1/strided_sliceStridedSlice)layer_normalization_5/batchnorm/add_1:z:07tf.__operators__.getitem_1/strided_slice/stack:output:09tf.__operators__.getitem_1/strided_slice/stack_1:output:09tf.__operators__.getitem_1/strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
shrink_axis_maskД
dense_6/MatMul/ReadVariableOpReadVariableOp&dense_6_matmul_readvariableop_resource*
_output_shapes

:*
dtype0§
dense_6/MatMulMatMul1tf.__operators__.getitem_1/strided_slice:output:0%dense_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€n
tf.math.sigmoid/SigmoidSigmoiddense_6/MatMul:product:0*
T0*'
_output_shapes
:€€€€€€€€€j
IdentityIdentitytf.math.sigmoid/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€Њ
NoOpNoOp^dense/Tensordot/ReadVariableOp!^dense_1/Tensordot/ReadVariableOp!^dense_2/Tensordot/ReadVariableOp!^dense_3/Tensordot/ReadVariableOp!^dense_4/Tensordot/ReadVariableOp!^dense_5/Tensordot/ReadVariableOp^dense_6/MatMul/ReadVariableOp^embedding/embedding_lookup^embedding_1/embedding_lookup-^layer_normalization/batchnorm/ReadVariableOp1^layer_normalization/batchnorm/mul/ReadVariableOp/^layer_normalization_1/batchnorm/ReadVariableOp3^layer_normalization_1/batchnorm/mul/ReadVariableOp/^layer_normalization_2/batchnorm/ReadVariableOp3^layer_normalization_2/batchnorm/mul/ReadVariableOp/^layer_normalization_3/batchnorm/ReadVariableOp3^layer_normalization_3/batchnorm/mul/ReadVariableOp/^layer_normalization_4/batchnorm/ReadVariableOp3^layer_normalization_4/batchnorm/mul/ReadVariableOp/^layer_normalization_5/batchnorm/ReadVariableOp3^layer_normalization_5/batchnorm/mul/ReadVariableOp9^multi_head_attention/attention_output/add/ReadVariableOpC^multi_head_attention/attention_output/einsum/Einsum/ReadVariableOp,^multi_head_attention/key/add/ReadVariableOp6^multi_head_attention/key/einsum/Einsum/ReadVariableOp.^multi_head_attention/query/add/ReadVariableOp8^multi_head_attention/query/einsum/Einsum/ReadVariableOp.^multi_head_attention/value/add/ReadVariableOp8^multi_head_attention/value/einsum/Einsum/ReadVariableOp;^multi_head_attention_1/attention_output/add/ReadVariableOpE^multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp.^multi_head_attention_1/key/add/ReadVariableOp8^multi_head_attention_1/key/einsum/Einsum/ReadVariableOp0^multi_head_attention_1/query/add/ReadVariableOp:^multi_head_attention_1/query/einsum/Einsum/ReadVariableOp0^multi_head_attention_1/value/add/ReadVariableOp:^multi_head_attention_1/value/einsum/Einsum/ReadVariableOp;^multi_head_attention_2/attention_output/add/ReadVariableOpE^multi_head_attention_2/attention_output/einsum/Einsum/ReadVariableOp.^multi_head_attention_2/key/add/ReadVariableOp8^multi_head_attention_2/key/einsum/Einsum/ReadVariableOp0^multi_head_attention_2/query/add/ReadVariableOp:^multi_head_attention_2/query/einsum/Einsum/ReadVariableOp0^multi_head_attention_2/value/add/ReadVariableOp:^multi_head_attention_2/value/einsum/Einsum/ReadVariableOp^tokenize/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Щ
_input_shapesЗ
Д:€€€€€€€€€:€€€€€€€€€: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2@
dense/Tensordot/ReadVariableOpdense/Tensordot/ReadVariableOp2D
 dense_1/Tensordot/ReadVariableOp dense_1/Tensordot/ReadVariableOp2D
 dense_2/Tensordot/ReadVariableOp dense_2/Tensordot/ReadVariableOp2D
 dense_3/Tensordot/ReadVariableOp dense_3/Tensordot/ReadVariableOp2D
 dense_4/Tensordot/ReadVariableOp dense_4/Tensordot/ReadVariableOp2D
 dense_5/Tensordot/ReadVariableOp dense_5/Tensordot/ReadVariableOp2>
dense_6/MatMul/ReadVariableOpdense_6/MatMul/ReadVariableOp28
embedding/embedding_lookupembedding/embedding_lookup2<
embedding_1/embedding_lookupembedding_1/embedding_lookup2\
,layer_normalization/batchnorm/ReadVariableOp,layer_normalization/batchnorm/ReadVariableOp2d
0layer_normalization/batchnorm/mul/ReadVariableOp0layer_normalization/batchnorm/mul/ReadVariableOp2`
.layer_normalization_1/batchnorm/ReadVariableOp.layer_normalization_1/batchnorm/ReadVariableOp2h
2layer_normalization_1/batchnorm/mul/ReadVariableOp2layer_normalization_1/batchnorm/mul/ReadVariableOp2`
.layer_normalization_2/batchnorm/ReadVariableOp.layer_normalization_2/batchnorm/ReadVariableOp2h
2layer_normalization_2/batchnorm/mul/ReadVariableOp2layer_normalization_2/batchnorm/mul/ReadVariableOp2`
.layer_normalization_3/batchnorm/ReadVariableOp.layer_normalization_3/batchnorm/ReadVariableOp2h
2layer_normalization_3/batchnorm/mul/ReadVariableOp2layer_normalization_3/batchnorm/mul/ReadVariableOp2`
.layer_normalization_4/batchnorm/ReadVariableOp.layer_normalization_4/batchnorm/ReadVariableOp2h
2layer_normalization_4/batchnorm/mul/ReadVariableOp2layer_normalization_4/batchnorm/mul/ReadVariableOp2`
.layer_normalization_5/batchnorm/ReadVariableOp.layer_normalization_5/batchnorm/ReadVariableOp2h
2layer_normalization_5/batchnorm/mul/ReadVariableOp2layer_normalization_5/batchnorm/mul/ReadVariableOp2t
8multi_head_attention/attention_output/add/ReadVariableOp8multi_head_attention/attention_output/add/ReadVariableOp2И
Bmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOpBmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOp2Z
+multi_head_attention/key/add/ReadVariableOp+multi_head_attention/key/add/ReadVariableOp2n
5multi_head_attention/key/einsum/Einsum/ReadVariableOp5multi_head_attention/key/einsum/Einsum/ReadVariableOp2^
-multi_head_attention/query/add/ReadVariableOp-multi_head_attention/query/add/ReadVariableOp2r
7multi_head_attention/query/einsum/Einsum/ReadVariableOp7multi_head_attention/query/einsum/Einsum/ReadVariableOp2^
-multi_head_attention/value/add/ReadVariableOp-multi_head_attention/value/add/ReadVariableOp2r
7multi_head_attention/value/einsum/Einsum/ReadVariableOp7multi_head_attention/value/einsum/Einsum/ReadVariableOp2x
:multi_head_attention_1/attention_output/add/ReadVariableOp:multi_head_attention_1/attention_output/add/ReadVariableOp2М
Dmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpDmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp2^
-multi_head_attention_1/key/add/ReadVariableOp-multi_head_attention_1/key/add/ReadVariableOp2r
7multi_head_attention_1/key/einsum/Einsum/ReadVariableOp7multi_head_attention_1/key/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_1/query/add/ReadVariableOp/multi_head_attention_1/query/add/ReadVariableOp2v
9multi_head_attention_1/query/einsum/Einsum/ReadVariableOp9multi_head_attention_1/query/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_1/value/add/ReadVariableOp/multi_head_attention_1/value/add/ReadVariableOp2v
9multi_head_attention_1/value/einsum/Einsum/ReadVariableOp9multi_head_attention_1/value/einsum/Einsum/ReadVariableOp2x
:multi_head_attention_2/attention_output/add/ReadVariableOp:multi_head_attention_2/attention_output/add/ReadVariableOp2М
Dmulti_head_attention_2/attention_output/einsum/Einsum/ReadVariableOpDmulti_head_attention_2/attention_output/einsum/Einsum/ReadVariableOp2^
-multi_head_attention_2/key/add/ReadVariableOp-multi_head_attention_2/key/add/ReadVariableOp2r
7multi_head_attention_2/key/einsum/Einsum/ReadVariableOp7multi_head_attention_2/key/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_2/query/add/ReadVariableOp/multi_head_attention_2/query/add/ReadVariableOp2v
9multi_head_attention_2/query/einsum/Einsum/ReadVariableOp9multi_head_attention_2/query/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_2/value/add/ReadVariableOp/multi_head_attention_2/value/add/ReadVariableOp2v
9multi_head_attention_2/value/einsum/Einsum/ReadVariableOp9multi_head_attention_2/value/einsum/Einsum/ReadVariableOp2:
tokenize/mul/ReadVariableOptokenize/mul/ReadVariableOp:Q M
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
inputs/1:

_output_shapes
: 
ƒ
Ђ
B__inference_dense_6_layer_call_and_return_conditional_losses_24649

inputs0
matmul_readvariableop_resource:
identityИҐMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€_
IdentityIdentityMatMul:product:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€^
NoOpNoOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:€€€€€€€€€: 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
з
b
D__inference_dropout_1_layer_call_and_return_conditional_losses_20841

inputs

identity_1R
IdentityIdentityinputs*
T0*+
_output_shapes
:€€€€€€€€€	_

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:€€€€€€€€€	"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€	:S O
+
_output_shapes
:€€€€€€€€€	
 
_user_specified_nameinputs
€

л
6__inference_multi_head_attention_2_layer_call_fn_24355	
query	
value
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
identityИҐStatefulPartitionedCallњ
StatefulPartitionedCallStatefulPartitionedCallqueryvalueunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2
*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€	**
_read_only_resource_inputs

	*-
config_proto

CPU

GPU 2J 8В *Z
fURS
Q__inference_multi_head_attention_2_layer_call_and_return_conditional_losses_20914s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€	`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:€€€€€€€€€	:€€€€€€€€€	: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:R N
+
_output_shapes
:€€€€€€€€€	

_user_specified_namequery:RN
+
_output_shapes
:€€€€€€€€€	

_user_specified_namevalue
ы
`
'__inference_dropout_layer_call_fn_23971

inputs
identityИҐStatefulPartitionedCallЅ
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€	* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_21560s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€	`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€	22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€	
 
_user_specified_nameinputs
ы

й
4__inference_multi_head_attention_layer_call_fn_23751	
query	
value
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
identityИҐStatefulPartitionedCallљ
StatefulPartitionedCallStatefulPartitionedCallqueryvalueunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2
*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€	**
_read_only_resource_inputs

	*-
config_proto

CPU

GPU 2J 8В *X
fSRQ
O__inference_multi_head_attention_layer_call_and_return_conditional_losses_20510s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€	`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:€€€€€€€€€	:€€€€€€€€€	: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:R N
+
_output_shapes
:€€€€€€€€€	

_user_specified_namequery:RN
+
_output_shapes
:€€€€€€€€€	

_user_specified_namevalue
Ќ
j
@__inference_add_2_layer_call_and_return_conditional_losses_20736

inputs
inputs_1
identityT
addAddV2inputsinputs_1*
T0*+
_output_shapes
:€€€€€€€€€	S
IdentityIdentityadd:z:0*
T0*+
_output_shapes
:€€€€€€€€€	"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:€€€€€€€€€	:€€€€€€€€€	:S O
+
_output_shapes
:€€€€€€€€€	
 
_user_specified_nameinputs:SO
+
_output_shapes
:€€€€€€€€€	
 
_user_specified_nameinputs
ж
Ю
5__inference_layer_normalization_4_layer_call_fn_24475

inputs
unknown:
	unknown_0:
identityИҐStatefulPartitionedCallй
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Y
fTRR
P__inference_layer_normalization_4_layer_call_and_return_conditional_losses_20962s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€	`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€	: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€	
 
_user_specified_nameinputs
•
{
'__inference_dense_5_layer_call_fn_24538

inputs
unknown:
identityИҐStatefulPartitionedCallќ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€	*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense_5_layer_call_and_return_conditional_losses_21034s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€	`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:€€€€€€€€€	: 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€	
 
_user_specified_nameinputs
ж
Ю
5__inference_layer_normalization_5_layer_call_fn_24613

inputs
unknown:
	unknown_0:
identityИҐStatefulPartitionedCallй
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Y
fTRR
P__inference_layer_normalization_5_layer_call_and_return_conditional_losses_21075s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€	`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€	: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€	
 
_user_specified_nameinputs
з
b
D__inference_dropout_1_layer_call_and_return_conditional_losses_24278

inputs

identity_1R
IdentityIdentityinputs*
T0*+
_output_shapes
:€€€€€€€€€	_

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:€€€€€€€€€	"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€	:S O
+
_output_shapes
:€€€€€€€€€	
 
_user_specified_nameinputs
Я
|
(__inference_tokenize_layer_call_fn_23720

inputs
unknown:
identityИҐStatefulPartitionedCallѕ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_tokenize_layer_call_and_return_conditional_losses_20469s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:€€€€€€€€€: 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
≤
Q
%__inference_add_5_layer_call_fn_24598
inputs_0
inputs_1
identityЉ
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€	* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *I
fDRB
@__inference_add_5_layer_call_and_return_conditional_losses_21051d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:€€€€€€€€€	"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:€€€€€€€€€	:€€€€€€€€€	:U Q
+
_output_shapes
:€€€€€€€€€	
"
_user_specified_name
inputs/0:UQ
+
_output_shapes
:€€€€€€€€€	
"
_user_specified_name
inputs/1
ƒ
±
B__inference_dense_2_layer_call_and_return_conditional_losses_24229

inputs3
!tensordot_readvariableop_resource:
identityИҐTensordot/ReadVariableOpz
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ї
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : њ
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ь
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:y
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:€€€€€€€€€	К
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€К
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : І
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Г
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:€€€€€€€€€	e
IdentityIdentityTensordot:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€	a
NoOpNoOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:€€€€€€€€€	: 24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:€€€€€€€€€	
 
_user_specified_nameinputs
Ћ
h
>__inference_add_layer_call_and_return_conditional_losses_20534

inputs
inputs_1
identityT
addAddV2inputsinputs_1*
T0*+
_output_shapes
:€€€€€€€€€	S
IdentityIdentityadd:z:0*
T0*+
_output_shapes
:€€€€€€€€€	"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:€€€€€€€€€	:€€€€€€€€€	:S O
+
_output_shapes
:€€€€€€€€€	
 
_user_specified_nameinputs:SO
+
_output_shapes
:€€€€€€€€€	
 
_user_specified_nameinputs
Ю	
Ґ
F__inference_embedding_1_layer_call_and_return_conditional_losses_20456

inputs(
embedding_lookup_20450:
identityИҐembedding_lookupU
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:€€€€€€€€€є
embedding_lookupResourceGatherembedding_lookup_20450Cast:y:0*
Tindices0*)
_class
loc:@embedding_lookup/20450*+
_output_shapes
:€€€€€€€€€*
dtype0°
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*)
_class
loc:@embedding_lookup/20450*+
_output_shapes
:€€€€€€€€€Б
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:€€€€€€€€€w
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€Y
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:€€€€€€€€€: 2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
€
b
)__inference_dropout_1_layer_call_fn_24273

inputs
identityИҐStatefulPartitionedCall√
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€	* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_1_layer_call_and_return_conditional_losses_21400s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€	`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€	22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€	
 
_user_specified_nameinputs
≤
Q
%__inference_add_1_layer_call_fn_23994
inputs_0
inputs_1
identityЉ
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€	* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *I
fDRB
@__inference_add_1_layer_call_and_return_conditional_losses_20647d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:€€€€€€€€€	"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:€€€€€€€€€	:€€€€€€€€€	:U Q
+
_output_shapes
:€€€€€€€€€	
"
_user_specified_name
inputs/0:UQ
+
_output_shapes
:€€€€€€€€€	
"
_user_specified_name
inputs/1
¬
ѓ
@__inference_dense_layer_call_and_return_conditional_losses_23927

inputs3
!tensordot_readvariableop_resource:
identityИҐTensordot/ReadVariableOpz
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ї
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : њ
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ь
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:y
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:€€€€€€€€€	К
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€К
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : І
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Г
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:€€€€€€€€€	e
IdentityIdentityTensordot:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€	a
NoOpNoOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:€€€€€€€€€	: 24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:€€€€€€€€€	
 
_user_specified_nameinputs
ƒ
±
B__inference_dense_4_layer_call_and_return_conditional_losses_24531

inputs3
!tensordot_readvariableop_resource:
identityИҐTensordot/ReadVariableOpz
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ї
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : њ
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ь
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:y
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:€€€€€€€€€	К
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€К
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : І
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Г
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:€€€€€€€€€	e
IdentityIdentityTensordot:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€	a
NoOpNoOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:€€€€€€€€€	: 24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:€€€€€€€€€	
 
_user_specified_nameinputs
’
l
@__inference_add_3_layer_call_and_return_conditional_losses_24302
inputs_0
inputs_1
identityV
addAddV2inputs_0inputs_1*
T0*+
_output_shapes
:€€€€€€€€€	S
IdentityIdentityadd:z:0*
T0*+
_output_shapes
:€€€€€€€€€	"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:€€€€€€€€€	:€€€€€€€€€	:U Q
+
_output_shapes
:€€€€€€€€€	
"
_user_specified_name
inputs/0:UQ
+
_output_shapes
:€€€€€€€€€	
"
_user_specified_name
inputs/1
н
Н
N__inference_layer_normalization_layer_call_and_return_conditional_losses_23893

inputs3
%batchnorm_mul_readvariableop_resource:/
!batchnorm_readvariableop_resource:
identityИҐbatchnorm/ReadVariableOpҐbatchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:М
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:€€€€€€€€€	*
	keep_dims(q
moments/StopGradientStopGradientmoments/mean:output:0*
T0*+
_output_shapes
:€€€€€€€€€	Л
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*+
_output_shapes
:€€€€€€€€€	l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:Ђ
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:€€€€€€€€€	*
	keep_dims(T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *љ7Ж5Б
batchnorm/addAddV2moments/variance:output:0batchnorm/add/y:output:0*
T0*+
_output_shapes
:€€€€€€€€€	a
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*+
_output_shapes
:€€€€€€€€€	~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0Е
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€	g
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€	v
batchnorm/mul_2Mulmoments/mean:output:0batchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€	v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0Б
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*+
_output_shapes
:€€€€€€€€€	v
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*+
_output_shapes
:€€€€€€€€€	f
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€	А
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€	: : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:S O
+
_output_shapes
:€€€€€€€€€	
 
_user_specified_nameinputs
ЬЏ
Ж.
@__inference_model_layer_call_and_return_conditional_losses_23679
inputs_0
inputs_1
unknown2
 embedding_embedding_lookup_23241:4
"embedding_1_embedding_lookup_23247:6
$tokenize_mul_readvariableop_resource:V
@multi_head_attention_query_einsum_einsum_readvariableop_resource:H
6multi_head_attention_query_add_readvariableop_resource:T
>multi_head_attention_key_einsum_einsum_readvariableop_resource:F
4multi_head_attention_key_add_readvariableop_resource:V
@multi_head_attention_value_einsum_einsum_readvariableop_resource:H
6multi_head_attention_value_add_readvariableop_resource:a
Kmulti_head_attention_attention_output_einsum_einsum_readvariableop_resource:O
Amulti_head_attention_attention_output_add_readvariableop_resource:G
9layer_normalization_batchnorm_mul_readvariableop_resource:C
5layer_normalization_batchnorm_readvariableop_resource:9
'dense_tensordot_readvariableop_resource:;
)dense_1_tensordot_readvariableop_resource:I
;layer_normalization_1_batchnorm_mul_readvariableop_resource:E
7layer_normalization_1_batchnorm_readvariableop_resource:X
Bmulti_head_attention_1_query_einsum_einsum_readvariableop_resource:J
8multi_head_attention_1_query_add_readvariableop_resource:V
@multi_head_attention_1_key_einsum_einsum_readvariableop_resource:H
6multi_head_attention_1_key_add_readvariableop_resource:X
Bmulti_head_attention_1_value_einsum_einsum_readvariableop_resource:J
8multi_head_attention_1_value_add_readvariableop_resource:c
Mmulti_head_attention_1_attention_output_einsum_einsum_readvariableop_resource:Q
Cmulti_head_attention_1_attention_output_add_readvariableop_resource:I
;layer_normalization_2_batchnorm_mul_readvariableop_resource:E
7layer_normalization_2_batchnorm_readvariableop_resource:;
)dense_2_tensordot_readvariableop_resource:;
)dense_3_tensordot_readvariableop_resource:I
;layer_normalization_3_batchnorm_mul_readvariableop_resource:E
7layer_normalization_3_batchnorm_readvariableop_resource:X
Bmulti_head_attention_2_query_einsum_einsum_readvariableop_resource:J
8multi_head_attention_2_query_add_readvariableop_resource:V
@multi_head_attention_2_key_einsum_einsum_readvariableop_resource:H
6multi_head_attention_2_key_add_readvariableop_resource:X
Bmulti_head_attention_2_value_einsum_einsum_readvariableop_resource:J
8multi_head_attention_2_value_add_readvariableop_resource:c
Mmulti_head_attention_2_attention_output_einsum_einsum_readvariableop_resource:Q
Cmulti_head_attention_2_attention_output_add_readvariableop_resource:I
;layer_normalization_4_batchnorm_mul_readvariableop_resource:E
7layer_normalization_4_batchnorm_readvariableop_resource:;
)dense_4_tensordot_readvariableop_resource:;
)dense_5_tensordot_readvariableop_resource:I
;layer_normalization_5_batchnorm_mul_readvariableop_resource:E
7layer_normalization_5_batchnorm_readvariableop_resource:8
&dense_6_matmul_readvariableop_resource:
identityИҐdense/Tensordot/ReadVariableOpҐ dense_1/Tensordot/ReadVariableOpҐ dense_2/Tensordot/ReadVariableOpҐ dense_3/Tensordot/ReadVariableOpҐ dense_4/Tensordot/ReadVariableOpҐ dense_5/Tensordot/ReadVariableOpҐdense_6/MatMul/ReadVariableOpҐembedding/embedding_lookupҐembedding_1/embedding_lookupҐ,layer_normalization/batchnorm/ReadVariableOpҐ0layer_normalization/batchnorm/mul/ReadVariableOpҐ.layer_normalization_1/batchnorm/ReadVariableOpҐ2layer_normalization_1/batchnorm/mul/ReadVariableOpҐ.layer_normalization_2/batchnorm/ReadVariableOpҐ2layer_normalization_2/batchnorm/mul/ReadVariableOpҐ.layer_normalization_3/batchnorm/ReadVariableOpҐ2layer_normalization_3/batchnorm/mul/ReadVariableOpҐ.layer_normalization_4/batchnorm/ReadVariableOpҐ2layer_normalization_4/batchnorm/mul/ReadVariableOpҐ.layer_normalization_5/batchnorm/ReadVariableOpҐ2layer_normalization_5/batchnorm/mul/ReadVariableOpҐ8multi_head_attention/attention_output/add/ReadVariableOpҐBmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOpҐ+multi_head_attention/key/add/ReadVariableOpҐ5multi_head_attention/key/einsum/Einsum/ReadVariableOpҐ-multi_head_attention/query/add/ReadVariableOpҐ7multi_head_attention/query/einsum/Einsum/ReadVariableOpҐ-multi_head_attention/value/add/ReadVariableOpҐ7multi_head_attention/value/einsum/Einsum/ReadVariableOpҐ:multi_head_attention_1/attention_output/add/ReadVariableOpҐDmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpҐ-multi_head_attention_1/key/add/ReadVariableOpҐ7multi_head_attention_1/key/einsum/Einsum/ReadVariableOpҐ/multi_head_attention_1/query/add/ReadVariableOpҐ9multi_head_attention_1/query/einsum/Einsum/ReadVariableOpҐ/multi_head_attention_1/value/add/ReadVariableOpҐ9multi_head_attention_1/value/einsum/Einsum/ReadVariableOpҐ:multi_head_attention_2/attention_output/add/ReadVariableOpҐDmulti_head_attention_2/attention_output/einsum/Einsum/ReadVariableOpҐ-multi_head_attention_2/key/add/ReadVariableOpҐ7multi_head_attention_2/key/einsum/Einsum/ReadVariableOpҐ/multi_head_attention_2/query/add/ReadVariableOpҐ9multi_head_attention_2/query/einsum/Einsum/ReadVariableOpҐ/multi_head_attention_2/value/add/ReadVariableOpҐ9multi_head_attention_2/value/einsum/Einsum/ReadVariableOpҐtokenize/mul/ReadVariableOpP
tf.compat.v1.shape/ShapeShapeinputs_0*
T0*
_output_shapes
:v
,tf.__operators__.getitem/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.tf.__operators__.getitem/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.tf.__operators__.getitem/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:»
&tf.__operators__.getitem/strided_sliceStridedSlice!tf.compat.v1.shape/Shape:output:05tf.__operators__.getitem/strided_slice/stack:output:07tf.__operators__.getitem/strided_slice/stack_1:output:07tf.__operators__.getitem/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskЕ
tf.zeros/zeros/packedPack/tf.__operators__.getitem/strided_slice:output:0unknown*
N*
T0*
_output_shapes
:Y
tf.zeros/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    З
tf.zeros/zerosFilltf.zeros/zeros/packed:output:0tf.zeros/zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€p
embedding/CastCasttf.zeros/zeros:output:0*

DstT0*

SrcT0*'
_output_shapes
:€€€€€€€€€б
embedding/embedding_lookupResourceGather embedding_embedding_lookup_23241embedding/Cast:y:0*
Tindices0*3
_class)
'%loc:@embedding/embedding_lookup/23241*+
_output_shapes
:€€€€€€€€€*
dtype0њ
#embedding/embedding_lookup/IdentityIdentity#embedding/embedding_lookup:output:0*
T0*3
_class)
'%loc:@embedding/embedding_lookup/23241*+
_output_shapes
:€€€€€€€€€Х
%embedding/embedding_lookup/Identity_1Identity,embedding/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:€€€€€€€€€c
embedding_1/CastCastinputs_0*

DstT0*

SrcT0*'
_output_shapes
:€€€€€€€€€й
embedding_1/embedding_lookupResourceGather"embedding_1_embedding_lookup_23247embedding_1/Cast:y:0*
Tindices0*5
_class+
)'loc:@embedding_1/embedding_lookup/23247*+
_output_shapes
:€€€€€€€€€*
dtype0≈
%embedding_1/embedding_lookup/IdentityIdentity%embedding_1/embedding_lookup:output:0*
T0*5
_class+
)'loc:@embedding_1/embedding_lookup/23247*+
_output_shapes
:€€€€€€€€€Щ
'embedding_1/embedding_lookup/Identity_1Identity.embedding_1/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:€€€€€€€€€Y
tokenize/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :Г
tokenize/ExpandDims
ExpandDimsinputs_1 tokenize/ExpandDims/dim:output:0*
T0*+
_output_shapes
:€€€€€€€€€А
tokenize/mul/ReadVariableOpReadVariableOp$tokenize_mul_readvariableop_resource*
_output_shapes

:*
dtype0М
tokenize/mulMultokenize/ExpandDims:output:0#tokenize/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€W
tf.concat/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :п
tf.concat/concatConcatV2.embedding/embedding_lookup/Identity_1:output:00embedding_1/embedding_lookup/Identity_1:output:0tokenize/mul:z:0tf.concat/concat/axis:output:0*
N*
T0*+
_output_shapes
:€€€€€€€€€	Љ
7multi_head_attention/query/einsum/Einsum/ReadVariableOpReadVariableOp@multi_head_attention_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0о
(multi_head_attention/query/einsum/EinsumEinsumtf.concat/concat:output:0?multi_head_attention/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:€€€€€€€€€	*
equationabc,cde->abde§
-multi_head_attention/query/add/ReadVariableOpReadVariableOp6multi_head_attention_query_add_readvariableop_resource*
_output_shapes

:*
dtype0Ћ
multi_head_attention/query/addAddV21multi_head_attention/query/einsum/Einsum:output:05multi_head_attention/query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€	Є
5multi_head_attention/key/einsum/Einsum/ReadVariableOpReadVariableOp>multi_head_attention_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0к
&multi_head_attention/key/einsum/EinsumEinsumtf.concat/concat:output:0=multi_head_attention/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:€€€€€€€€€	*
equationabc,cde->abde†
+multi_head_attention/key/add/ReadVariableOpReadVariableOp4multi_head_attention_key_add_readvariableop_resource*
_output_shapes

:*
dtype0≈
multi_head_attention/key/addAddV2/multi_head_attention/key/einsum/Einsum:output:03multi_head_attention/key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€	Љ
7multi_head_attention/value/einsum/Einsum/ReadVariableOpReadVariableOp@multi_head_attention_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0о
(multi_head_attention/value/einsum/EinsumEinsumtf.concat/concat:output:0?multi_head_attention/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:€€€€€€€€€	*
equationabc,cde->abde§
-multi_head_attention/value/add/ReadVariableOpReadVariableOp6multi_head_attention_value_add_readvariableop_resource*
_output_shapes

:*
dtype0Ћ
multi_head_attention/value/addAddV21multi_head_attention/value/einsum/Einsum:output:05multi_head_attention/value/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€	_
multi_head_attention/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>Ґ
multi_head_attention/MulMul"multi_head_attention/query/add:z:0#multi_head_attention/Mul/y:output:0*
T0*/
_output_shapes
:€€€€€€€€€	ќ
"multi_head_attention/einsum/EinsumEinsum multi_head_attention/key/add:z:0multi_head_attention/Mul:z:0*
N*
T0*/
_output_shapes
:€€€€€€€€€		*
equationaecd,abcd->acbeЦ
$multi_head_attention/softmax/SoftmaxSoftmax+multi_head_attention/einsum/Einsum:output:0*
T0*/
_output_shapes
:€€€€€€€€€		o
*multi_head_attention/dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  †?ќ
(multi_head_attention/dropout/dropout/MulMul.multi_head_attention/softmax/Softmax:softmax:03multi_head_attention/dropout/dropout/Const:output:0*
T0*/
_output_shapes
:€€€€€€€€€		И
*multi_head_attention/dropout/dropout/ShapeShape.multi_head_attention/softmax/Softmax:softmax:0*
T0*
_output_shapes
:ќ
Amulti_head_attention/dropout/dropout/random_uniform/RandomUniformRandomUniform3multi_head_attention/dropout/dropout/Shape:output:0*
T0*/
_output_shapes
:€€€€€€€€€		*
dtype0x
3multi_head_attention/dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћL>Е
1multi_head_attention/dropout/dropout/GreaterEqualGreaterEqualJmulti_head_attention/dropout/dropout/random_uniform/RandomUniform:output:0<multi_head_attention/dropout/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:€€€€€€€€€		±
)multi_head_attention/dropout/dropout/CastCast5multi_head_attention/dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:€€€€€€€€€		»
*multi_head_attention/dropout/dropout/Mul_1Mul,multi_head_attention/dropout/dropout/Mul:z:0-multi_head_attention/dropout/dropout/Cast:y:0*
T0*/
_output_shapes
:€€€€€€€€€		д
$multi_head_attention/einsum_1/EinsumEinsum.multi_head_attention/dropout/dropout/Mul_1:z:0"multi_head_attention/value/add:z:0*
N*
T0*/
_output_shapes
:€€€€€€€€€	*
equationacbe,aecd->abcd“
Bmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpKmulti_head_attention_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0Ф
3multi_head_attention/attention_output/einsum/EinsumEinsum-multi_head_attention/einsum_1/Einsum:output:0Jmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:€€€€€€€€€	*
equationabcd,cde->abeґ
8multi_head_attention/attention_output/add/ReadVariableOpReadVariableOpAmulti_head_attention_attention_output_add_readvariableop_resource*
_output_shapes
:*
dtype0и
)multi_head_attention/attention_output/addAddV2<multi_head_attention/attention_output/einsum/Einsum:output:0@multi_head_attention/attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€	Р
add/addAddV2tf.concat/concat:output:0-multi_head_attention/attention_output/add:z:0*
T0*+
_output_shapes
:€€€€€€€€€	|
2layer_normalization/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:є
 layer_normalization/moments/meanMeanadd/add:z:0;layer_normalization/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:€€€€€€€€€	*
	keep_dims(Щ
(layer_normalization/moments/StopGradientStopGradient)layer_normalization/moments/mean:output:0*
T0*+
_output_shapes
:€€€€€€€€€	Є
-layer_normalization/moments/SquaredDifferenceSquaredDifferenceadd/add:z:01layer_normalization/moments/StopGradient:output:0*
T0*+
_output_shapes
:€€€€€€€€€	А
6layer_normalization/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:з
$layer_normalization/moments/varianceMean1layer_normalization/moments/SquaredDifference:z:0?layer_normalization/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:€€€€€€€€€	*
	keep_dims(h
#layer_normalization/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *љ7Ж5љ
!layer_normalization/batchnorm/addAddV2-layer_normalization/moments/variance:output:0,layer_normalization/batchnorm/add/y:output:0*
T0*+
_output_shapes
:€€€€€€€€€	Й
#layer_normalization/batchnorm/RsqrtRsqrt%layer_normalization/batchnorm/add:z:0*
T0*+
_output_shapes
:€€€€€€€€€	¶
0layer_normalization/batchnorm/mul/ReadVariableOpReadVariableOp9layer_normalization_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0Ѕ
!layer_normalization/batchnorm/mulMul'layer_normalization/batchnorm/Rsqrt:y:08layer_normalization/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€	Ф
#layer_normalization/batchnorm/mul_1Muladd/add:z:0%layer_normalization/batchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€	≤
#layer_normalization/batchnorm/mul_2Mul)layer_normalization/moments/mean:output:0%layer_normalization/batchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€	Ю
,layer_normalization/batchnorm/ReadVariableOpReadVariableOp5layer_normalization_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0љ
!layer_normalization/batchnorm/subSub4layer_normalization/batchnorm/ReadVariableOp:value:0'layer_normalization/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:€€€€€€€€€	≤
#layer_normalization/batchnorm/add_1AddV2'layer_normalization/batchnorm/mul_1:z:0%layer_normalization/batchnorm/sub:z:0*
T0*+
_output_shapes
:€€€€€€€€€	Ж
dense/Tensordot/ReadVariableOpReadVariableOp'dense_tensordot_readvariableop_resource*
_output_shapes

:*
dtype0^
dense/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:e
dense/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       l
dense/Tensordot/ShapeShape'layer_normalization/batchnorm/add_1:z:0*
T0*
_output_shapes
:_
dense/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ”
dense/Tensordot/GatherV2GatherV2dense/Tensordot/Shape:output:0dense/Tensordot/free:output:0&dense/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : „
dense/Tensordot/GatherV2_1GatherV2dense/Tensordot/Shape:output:0dense/Tensordot/axes:output:0(dense/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:_
dense/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: А
dense/Tensordot/ProdProd!dense/Tensordot/GatherV2:output:0dense/Tensordot/Const:output:0*
T0*
_output_shapes
: a
dense/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: Ж
dense/Tensordot/Prod_1Prod#dense/Tensordot/GatherV2_1:output:0 dense/Tensordot/Const_1:output:0*
T0*
_output_shapes
: ]
dense/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : і
dense/Tensordot/concatConcatV2dense/Tensordot/free:output:0dense/Tensordot/axes:output:0$dense/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:Л
dense/Tensordot/stackPackdense/Tensordot/Prod:output:0dense/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:¶
dense/Tensordot/transpose	Transpose'layer_normalization/batchnorm/add_1:z:0dense/Tensordot/concat:output:0*
T0*+
_output_shapes
:€€€€€€€€€	Ь
dense/Tensordot/ReshapeReshapedense/Tensordot/transpose:y:0dense/Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€Ь
dense/Tensordot/MatMulMatMul dense/Tensordot/Reshape:output:0&dense/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€a
dense/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:_
dense/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : њ
dense/Tensordot/concat_1ConcatV2!dense/Tensordot/GatherV2:output:0 dense/Tensordot/Const_2:output:0&dense/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Х
dense/TensordotReshape dense/Tensordot/MatMul:product:0!dense/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:€€€€€€€€€	Z
tf.nn.gelu/Gelu/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?К
tf.nn.gelu/Gelu/mulMultf.nn.gelu/Gelu/mul/x:output:0dense/Tensordot:output:0*
T0*+
_output_shapes
:€€€€€€€€€	[
tf.nn.gelu/Gelu/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *уµ?У
tf.nn.gelu/Gelu/truedivRealDivdense/Tensordot:output:0tf.nn.gelu/Gelu/Cast/x:output:0*
T0*+
_output_shapes
:€€€€€€€€€	m
tf.nn.gelu/Gelu/ErfErftf.nn.gelu/Gelu/truediv:z:0*
T0*+
_output_shapes
:€€€€€€€€€	Z
tf.nn.gelu/Gelu/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Л
tf.nn.gelu/Gelu/addAddV2tf.nn.gelu/Gelu/add/x:output:0tf.nn.gelu/Gelu/Erf:y:0*
T0*+
_output_shapes
:€€€€€€€€€	Д
tf.nn.gelu/Gelu/mul_1Multf.nn.gelu/Gelu/mul:z:0tf.nn.gelu/Gelu/add:z:0*
T0*+
_output_shapes
:€€€€€€€€€	К
 dense_1/Tensordot/ReadVariableOpReadVariableOp)dense_1_tensordot_readvariableop_resource*
_output_shapes

:*
dtype0`
dense_1/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:g
dense_1/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       `
dense_1/Tensordot/ShapeShapetf.nn.gelu/Gelu/mul_1:z:0*
T0*
_output_shapes
:a
dense_1/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : џ
dense_1/Tensordot/GatherV2GatherV2 dense_1/Tensordot/Shape:output:0dense_1/Tensordot/free:output:0(dense_1/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:c
!dense_1/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : я
dense_1/Tensordot/GatherV2_1GatherV2 dense_1/Tensordot/Shape:output:0dense_1/Tensordot/axes:output:0*dense_1/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense_1/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: Ж
dense_1/Tensordot/ProdProd#dense_1/Tensordot/GatherV2:output:0 dense_1/Tensordot/Const:output:0*
T0*
_output_shapes
: c
dense_1/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: М
dense_1/Tensordot/Prod_1Prod%dense_1/Tensordot/GatherV2_1:output:0"dense_1/Tensordot/Const_1:output:0*
T0*
_output_shapes
: _
dense_1/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Љ
dense_1/Tensordot/concatConcatV2dense_1/Tensordot/free:output:0dense_1/Tensordot/axes:output:0&dense_1/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:С
dense_1/Tensordot/stackPackdense_1/Tensordot/Prod:output:0!dense_1/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:Ь
dense_1/Tensordot/transpose	Transposetf.nn.gelu/Gelu/mul_1:z:0!dense_1/Tensordot/concat:output:0*
T0*+
_output_shapes
:€€€€€€€€€	Ґ
dense_1/Tensordot/ReshapeReshapedense_1/Tensordot/transpose:y:0 dense_1/Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€Ґ
dense_1/Tensordot/MatMulMatMul"dense_1/Tensordot/Reshape:output:0(dense_1/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€c
dense_1/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:a
dense_1/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : «
dense_1/Tensordot/concat_1ConcatV2#dense_1/Tensordot/GatherV2:output:0"dense_1/Tensordot/Const_2:output:0(dense_1/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Ы
dense_1/TensordotReshape"dense_1/Tensordot/MatMul:product:0#dense_1/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:€€€€€€€€€	Z
dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *д8О?М
dropout/dropout/MulMuldense_1/Tensordot:output:0dropout/dropout/Const:output:0*
T0*+
_output_shapes
:€€€€€€€€€	_
dropout/dropout/ShapeShapedense_1/Tensordot:output:0*
T0*
_output_shapes
:†
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape:output:0*
T0*+
_output_shapes
:€€€€€€€€€	*
dtype0c
dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ=¬
dropout/dropout/GreaterEqualGreaterEqual5dropout/dropout/random_uniform/RandomUniform:output:0'dropout/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:€€€€€€€€€	Г
dropout/dropout/CastCast dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:€€€€€€€€€	Е
dropout/dropout/Mul_1Muldropout/dropout/Mul:z:0dropout/dropout/Cast:y:0*
T0*+
_output_shapes
:€€€€€€€€€	М
	add_1/addAddV2'layer_normalization/batchnorm/add_1:z:0dropout/dropout/Mul_1:z:0*
T0*+
_output_shapes
:€€€€€€€€€	~
4layer_normalization_1/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:њ
"layer_normalization_1/moments/meanMeanadd_1/add:z:0=layer_normalization_1/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:€€€€€€€€€	*
	keep_dims(Э
*layer_normalization_1/moments/StopGradientStopGradient+layer_normalization_1/moments/mean:output:0*
T0*+
_output_shapes
:€€€€€€€€€	Њ
/layer_normalization_1/moments/SquaredDifferenceSquaredDifferenceadd_1/add:z:03layer_normalization_1/moments/StopGradient:output:0*
T0*+
_output_shapes
:€€€€€€€€€	В
8layer_normalization_1/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:н
&layer_normalization_1/moments/varianceMean3layer_normalization_1/moments/SquaredDifference:z:0Alayer_normalization_1/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:€€€€€€€€€	*
	keep_dims(j
%layer_normalization_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *љ7Ж5√
#layer_normalization_1/batchnorm/addAddV2/layer_normalization_1/moments/variance:output:0.layer_normalization_1/batchnorm/add/y:output:0*
T0*+
_output_shapes
:€€€€€€€€€	Н
%layer_normalization_1/batchnorm/RsqrtRsqrt'layer_normalization_1/batchnorm/add:z:0*
T0*+
_output_shapes
:€€€€€€€€€	™
2layer_normalization_1/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_1_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0«
#layer_normalization_1/batchnorm/mulMul)layer_normalization_1/batchnorm/Rsqrt:y:0:layer_normalization_1/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€	Ъ
%layer_normalization_1/batchnorm/mul_1Muladd_1/add:z:0'layer_normalization_1/batchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€	Є
%layer_normalization_1/batchnorm/mul_2Mul+layer_normalization_1/moments/mean:output:0'layer_normalization_1/batchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€	Ґ
.layer_normalization_1/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_1_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0√
#layer_normalization_1/batchnorm/subSub6layer_normalization_1/batchnorm/ReadVariableOp:value:0)layer_normalization_1/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:€€€€€€€€€	Є
%layer_normalization_1/batchnorm/add_1AddV2)layer_normalization_1/batchnorm/mul_1:z:0'layer_normalization_1/batchnorm/sub:z:0*
T0*+
_output_shapes
:€€€€€€€€€	ј
9multi_head_attention_1/query/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_1_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0В
*multi_head_attention_1/query/einsum/EinsumEinsum)layer_normalization_1/batchnorm/add_1:z:0Amulti_head_attention_1/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:€€€€€€€€€	*
equationabc,cde->abde®
/multi_head_attention_1/query/add/ReadVariableOpReadVariableOp8multi_head_attention_1_query_add_readvariableop_resource*
_output_shapes

:*
dtype0—
 multi_head_attention_1/query/addAddV23multi_head_attention_1/query/einsum/Einsum:output:07multi_head_attention_1/query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€	Љ
7multi_head_attention_1/key/einsum/Einsum/ReadVariableOpReadVariableOp@multi_head_attention_1_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0ю
(multi_head_attention_1/key/einsum/EinsumEinsum)layer_normalization_1/batchnorm/add_1:z:0?multi_head_attention_1/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:€€€€€€€€€	*
equationabc,cde->abde§
-multi_head_attention_1/key/add/ReadVariableOpReadVariableOp6multi_head_attention_1_key_add_readvariableop_resource*
_output_shapes

:*
dtype0Ћ
multi_head_attention_1/key/addAddV21multi_head_attention_1/key/einsum/Einsum:output:05multi_head_attention_1/key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€	ј
9multi_head_attention_1/value/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_1_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0В
*multi_head_attention_1/value/einsum/EinsumEinsum)layer_normalization_1/batchnorm/add_1:z:0Amulti_head_attention_1/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:€€€€€€€€€	*
equationabc,cde->abde®
/multi_head_attention_1/value/add/ReadVariableOpReadVariableOp8multi_head_attention_1_value_add_readvariableop_resource*
_output_shapes

:*
dtype0—
 multi_head_attention_1/value/addAddV23multi_head_attention_1/value/einsum/Einsum:output:07multi_head_attention_1/value/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€	a
multi_head_attention_1/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>®
multi_head_attention_1/MulMul$multi_head_attention_1/query/add:z:0%multi_head_attention_1/Mul/y:output:0*
T0*/
_output_shapes
:€€€€€€€€€	‘
$multi_head_attention_1/einsum/EinsumEinsum"multi_head_attention_1/key/add:z:0multi_head_attention_1/Mul:z:0*
N*
T0*/
_output_shapes
:€€€€€€€€€		*
equationaecd,abcd->acbeЪ
&multi_head_attention_1/softmax/SoftmaxSoftmax-multi_head_attention_1/einsum/Einsum:output:0*
T0*/
_output_shapes
:€€€€€€€€€		q
,multi_head_attention_1/dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  †?‘
*multi_head_attention_1/dropout/dropout/MulMul0multi_head_attention_1/softmax/Softmax:softmax:05multi_head_attention_1/dropout/dropout/Const:output:0*
T0*/
_output_shapes
:€€€€€€€€€		М
,multi_head_attention_1/dropout/dropout/ShapeShape0multi_head_attention_1/softmax/Softmax:softmax:0*
T0*
_output_shapes
:“
Cmulti_head_attention_1/dropout/dropout/random_uniform/RandomUniformRandomUniform5multi_head_attention_1/dropout/dropout/Shape:output:0*
T0*/
_output_shapes
:€€€€€€€€€		*
dtype0z
5multi_head_attention_1/dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћL>Л
3multi_head_attention_1/dropout/dropout/GreaterEqualGreaterEqualLmulti_head_attention_1/dropout/dropout/random_uniform/RandomUniform:output:0>multi_head_attention_1/dropout/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:€€€€€€€€€		µ
+multi_head_attention_1/dropout/dropout/CastCast7multi_head_attention_1/dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:€€€€€€€€€		ќ
,multi_head_attention_1/dropout/dropout/Mul_1Mul.multi_head_attention_1/dropout/dropout/Mul:z:0/multi_head_attention_1/dropout/dropout/Cast:y:0*
T0*/
_output_shapes
:€€€€€€€€€		к
&multi_head_attention_1/einsum_1/EinsumEinsum0multi_head_attention_1/dropout/dropout/Mul_1:z:0$multi_head_attention_1/value/add:z:0*
N*
T0*/
_output_shapes
:€€€€€€€€€	*
equationacbe,aecd->abcd÷
Dmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpMmulti_head_attention_1_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0Ъ
5multi_head_attention_1/attention_output/einsum/EinsumEinsum/multi_head_attention_1/einsum_1/Einsum:output:0Lmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:€€€€€€€€€	*
equationabcd,cde->abeЇ
:multi_head_attention_1/attention_output/add/ReadVariableOpReadVariableOpCmulti_head_attention_1_attention_output_add_readvariableop_resource*
_output_shapes
:*
dtype0о
+multi_head_attention_1/attention_output/addAddV2>multi_head_attention_1/attention_output/einsum/Einsum:output:0Bmulti_head_attention_1/attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€	§
	add_2/addAddV2)layer_normalization_1/batchnorm/add_1:z:0/multi_head_attention_1/attention_output/add:z:0*
T0*+
_output_shapes
:€€€€€€€€€	~
4layer_normalization_2/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:њ
"layer_normalization_2/moments/meanMeanadd_2/add:z:0=layer_normalization_2/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:€€€€€€€€€	*
	keep_dims(Э
*layer_normalization_2/moments/StopGradientStopGradient+layer_normalization_2/moments/mean:output:0*
T0*+
_output_shapes
:€€€€€€€€€	Њ
/layer_normalization_2/moments/SquaredDifferenceSquaredDifferenceadd_2/add:z:03layer_normalization_2/moments/StopGradient:output:0*
T0*+
_output_shapes
:€€€€€€€€€	В
8layer_normalization_2/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:н
&layer_normalization_2/moments/varianceMean3layer_normalization_2/moments/SquaredDifference:z:0Alayer_normalization_2/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:€€€€€€€€€	*
	keep_dims(j
%layer_normalization_2/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *љ7Ж5√
#layer_normalization_2/batchnorm/addAddV2/layer_normalization_2/moments/variance:output:0.layer_normalization_2/batchnorm/add/y:output:0*
T0*+
_output_shapes
:€€€€€€€€€	Н
%layer_normalization_2/batchnorm/RsqrtRsqrt'layer_normalization_2/batchnorm/add:z:0*
T0*+
_output_shapes
:€€€€€€€€€	™
2layer_normalization_2/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_2_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0«
#layer_normalization_2/batchnorm/mulMul)layer_normalization_2/batchnorm/Rsqrt:y:0:layer_normalization_2/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€	Ъ
%layer_normalization_2/batchnorm/mul_1Muladd_2/add:z:0'layer_normalization_2/batchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€	Є
%layer_normalization_2/batchnorm/mul_2Mul+layer_normalization_2/moments/mean:output:0'layer_normalization_2/batchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€	Ґ
.layer_normalization_2/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_2_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0√
#layer_normalization_2/batchnorm/subSub6layer_normalization_2/batchnorm/ReadVariableOp:value:0)layer_normalization_2/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:€€€€€€€€€	Є
%layer_normalization_2/batchnorm/add_1AddV2)layer_normalization_2/batchnorm/mul_1:z:0'layer_normalization_2/batchnorm/sub:z:0*
T0*+
_output_shapes
:€€€€€€€€€	К
 dense_2/Tensordot/ReadVariableOpReadVariableOp)dense_2_tensordot_readvariableop_resource*
_output_shapes

:*
dtype0`
dense_2/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:g
dense_2/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       p
dense_2/Tensordot/ShapeShape)layer_normalization_2/batchnorm/add_1:z:0*
T0*
_output_shapes
:a
dense_2/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : џ
dense_2/Tensordot/GatherV2GatherV2 dense_2/Tensordot/Shape:output:0dense_2/Tensordot/free:output:0(dense_2/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:c
!dense_2/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : я
dense_2/Tensordot/GatherV2_1GatherV2 dense_2/Tensordot/Shape:output:0dense_2/Tensordot/axes:output:0*dense_2/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense_2/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: Ж
dense_2/Tensordot/ProdProd#dense_2/Tensordot/GatherV2:output:0 dense_2/Tensordot/Const:output:0*
T0*
_output_shapes
: c
dense_2/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: М
dense_2/Tensordot/Prod_1Prod%dense_2/Tensordot/GatherV2_1:output:0"dense_2/Tensordot/Const_1:output:0*
T0*
_output_shapes
: _
dense_2/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Љ
dense_2/Tensordot/concatConcatV2dense_2/Tensordot/free:output:0dense_2/Tensordot/axes:output:0&dense_2/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:С
dense_2/Tensordot/stackPackdense_2/Tensordot/Prod:output:0!dense_2/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:ђ
dense_2/Tensordot/transpose	Transpose)layer_normalization_2/batchnorm/add_1:z:0!dense_2/Tensordot/concat:output:0*
T0*+
_output_shapes
:€€€€€€€€€	Ґ
dense_2/Tensordot/ReshapeReshapedense_2/Tensordot/transpose:y:0 dense_2/Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€Ґ
dense_2/Tensordot/MatMulMatMul"dense_2/Tensordot/Reshape:output:0(dense_2/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€c
dense_2/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:a
dense_2/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : «
dense_2/Tensordot/concat_1ConcatV2#dense_2/Tensordot/GatherV2:output:0"dense_2/Tensordot/Const_2:output:0(dense_2/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Ы
dense_2/TensordotReshape"dense_2/Tensordot/MatMul:product:0#dense_2/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:€€€€€€€€€	\
tf.nn.gelu_1/Gelu/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?Р
tf.nn.gelu_1/Gelu/mulMul tf.nn.gelu_1/Gelu/mul/x:output:0dense_2/Tensordot:output:0*
T0*+
_output_shapes
:€€€€€€€€€	]
tf.nn.gelu_1/Gelu/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *уµ?Щ
tf.nn.gelu_1/Gelu/truedivRealDivdense_2/Tensordot:output:0!tf.nn.gelu_1/Gelu/Cast/x:output:0*
T0*+
_output_shapes
:€€€€€€€€€	q
tf.nn.gelu_1/Gelu/ErfErftf.nn.gelu_1/Gelu/truediv:z:0*
T0*+
_output_shapes
:€€€€€€€€€	\
tf.nn.gelu_1/Gelu/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?С
tf.nn.gelu_1/Gelu/addAddV2 tf.nn.gelu_1/Gelu/add/x:output:0tf.nn.gelu_1/Gelu/Erf:y:0*
T0*+
_output_shapes
:€€€€€€€€€	К
tf.nn.gelu_1/Gelu/mul_1Multf.nn.gelu_1/Gelu/mul:z:0tf.nn.gelu_1/Gelu/add:z:0*
T0*+
_output_shapes
:€€€€€€€€€	К
 dense_3/Tensordot/ReadVariableOpReadVariableOp)dense_3_tensordot_readvariableop_resource*
_output_shapes

:*
dtype0`
dense_3/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:g
dense_3/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       b
dense_3/Tensordot/ShapeShapetf.nn.gelu_1/Gelu/mul_1:z:0*
T0*
_output_shapes
:a
dense_3/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : џ
dense_3/Tensordot/GatherV2GatherV2 dense_3/Tensordot/Shape:output:0dense_3/Tensordot/free:output:0(dense_3/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:c
!dense_3/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : я
dense_3/Tensordot/GatherV2_1GatherV2 dense_3/Tensordot/Shape:output:0dense_3/Tensordot/axes:output:0*dense_3/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense_3/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: Ж
dense_3/Tensordot/ProdProd#dense_3/Tensordot/GatherV2:output:0 dense_3/Tensordot/Const:output:0*
T0*
_output_shapes
: c
dense_3/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: М
dense_3/Tensordot/Prod_1Prod%dense_3/Tensordot/GatherV2_1:output:0"dense_3/Tensordot/Const_1:output:0*
T0*
_output_shapes
: _
dense_3/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Љ
dense_3/Tensordot/concatConcatV2dense_3/Tensordot/free:output:0dense_3/Tensordot/axes:output:0&dense_3/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:С
dense_3/Tensordot/stackPackdense_3/Tensordot/Prod:output:0!dense_3/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:Ю
dense_3/Tensordot/transpose	Transposetf.nn.gelu_1/Gelu/mul_1:z:0!dense_3/Tensordot/concat:output:0*
T0*+
_output_shapes
:€€€€€€€€€	Ґ
dense_3/Tensordot/ReshapeReshapedense_3/Tensordot/transpose:y:0 dense_3/Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€Ґ
dense_3/Tensordot/MatMulMatMul"dense_3/Tensordot/Reshape:output:0(dense_3/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€c
dense_3/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:a
dense_3/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : «
dense_3/Tensordot/concat_1ConcatV2#dense_3/Tensordot/GatherV2:output:0"dense_3/Tensordot/Const_2:output:0(dense_3/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Ы
dense_3/TensordotReshape"dense_3/Tensordot/MatMul:product:0#dense_3/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:€€€€€€€€€	\
dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *д8О?Р
dropout_1/dropout/MulMuldense_3/Tensordot:output:0 dropout_1/dropout/Const:output:0*
T0*+
_output_shapes
:€€€€€€€€€	a
dropout_1/dropout/ShapeShapedense_3/Tensordot:output:0*
T0*
_output_shapes
:§
.dropout_1/dropout/random_uniform/RandomUniformRandomUniform dropout_1/dropout/Shape:output:0*
T0*+
_output_shapes
:€€€€€€€€€	*
dtype0e
 dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ=»
dropout_1/dropout/GreaterEqualGreaterEqual7dropout_1/dropout/random_uniform/RandomUniform:output:0)dropout_1/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:€€€€€€€€€	З
dropout_1/dropout/CastCast"dropout_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:€€€€€€€€€	Л
dropout_1/dropout/Mul_1Muldropout_1/dropout/Mul:z:0dropout_1/dropout/Cast:y:0*
T0*+
_output_shapes
:€€€€€€€€€	Р
	add_3/addAddV2)layer_normalization_2/batchnorm/add_1:z:0dropout_1/dropout/Mul_1:z:0*
T0*+
_output_shapes
:€€€€€€€€€	~
4layer_normalization_3/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:њ
"layer_normalization_3/moments/meanMeanadd_3/add:z:0=layer_normalization_3/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:€€€€€€€€€	*
	keep_dims(Э
*layer_normalization_3/moments/StopGradientStopGradient+layer_normalization_3/moments/mean:output:0*
T0*+
_output_shapes
:€€€€€€€€€	Њ
/layer_normalization_3/moments/SquaredDifferenceSquaredDifferenceadd_3/add:z:03layer_normalization_3/moments/StopGradient:output:0*
T0*+
_output_shapes
:€€€€€€€€€	В
8layer_normalization_3/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:н
&layer_normalization_3/moments/varianceMean3layer_normalization_3/moments/SquaredDifference:z:0Alayer_normalization_3/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:€€€€€€€€€	*
	keep_dims(j
%layer_normalization_3/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *љ7Ж5√
#layer_normalization_3/batchnorm/addAddV2/layer_normalization_3/moments/variance:output:0.layer_normalization_3/batchnorm/add/y:output:0*
T0*+
_output_shapes
:€€€€€€€€€	Н
%layer_normalization_3/batchnorm/RsqrtRsqrt'layer_normalization_3/batchnorm/add:z:0*
T0*+
_output_shapes
:€€€€€€€€€	™
2layer_normalization_3/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_3_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0«
#layer_normalization_3/batchnorm/mulMul)layer_normalization_3/batchnorm/Rsqrt:y:0:layer_normalization_3/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€	Ъ
%layer_normalization_3/batchnorm/mul_1Muladd_3/add:z:0'layer_normalization_3/batchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€	Є
%layer_normalization_3/batchnorm/mul_2Mul+layer_normalization_3/moments/mean:output:0'layer_normalization_3/batchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€	Ґ
.layer_normalization_3/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_3_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0√
#layer_normalization_3/batchnorm/subSub6layer_normalization_3/batchnorm/ReadVariableOp:value:0)layer_normalization_3/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:€€€€€€€€€	Є
%layer_normalization_3/batchnorm/add_1AddV2)layer_normalization_3/batchnorm/mul_1:z:0'layer_normalization_3/batchnorm/sub:z:0*
T0*+
_output_shapes
:€€€€€€€€€	ј
9multi_head_attention_2/query/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_2_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0В
*multi_head_attention_2/query/einsum/EinsumEinsum)layer_normalization_3/batchnorm/add_1:z:0Amulti_head_attention_2/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:€€€€€€€€€	*
equationabc,cde->abde®
/multi_head_attention_2/query/add/ReadVariableOpReadVariableOp8multi_head_attention_2_query_add_readvariableop_resource*
_output_shapes

:*
dtype0—
 multi_head_attention_2/query/addAddV23multi_head_attention_2/query/einsum/Einsum:output:07multi_head_attention_2/query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€	Љ
7multi_head_attention_2/key/einsum/Einsum/ReadVariableOpReadVariableOp@multi_head_attention_2_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0ю
(multi_head_attention_2/key/einsum/EinsumEinsum)layer_normalization_3/batchnorm/add_1:z:0?multi_head_attention_2/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:€€€€€€€€€	*
equationabc,cde->abde§
-multi_head_attention_2/key/add/ReadVariableOpReadVariableOp6multi_head_attention_2_key_add_readvariableop_resource*
_output_shapes

:*
dtype0Ћ
multi_head_attention_2/key/addAddV21multi_head_attention_2/key/einsum/Einsum:output:05multi_head_attention_2/key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€	ј
9multi_head_attention_2/value/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_2_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0В
*multi_head_attention_2/value/einsum/EinsumEinsum)layer_normalization_3/batchnorm/add_1:z:0Amulti_head_attention_2/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:€€€€€€€€€	*
equationabc,cde->abde®
/multi_head_attention_2/value/add/ReadVariableOpReadVariableOp8multi_head_attention_2_value_add_readvariableop_resource*
_output_shapes

:*
dtype0—
 multi_head_attention_2/value/addAddV23multi_head_attention_2/value/einsum/Einsum:output:07multi_head_attention_2/value/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€	a
multi_head_attention_2/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>®
multi_head_attention_2/MulMul$multi_head_attention_2/query/add:z:0%multi_head_attention_2/Mul/y:output:0*
T0*/
_output_shapes
:€€€€€€€€€	‘
$multi_head_attention_2/einsum/EinsumEinsum"multi_head_attention_2/key/add:z:0multi_head_attention_2/Mul:z:0*
N*
T0*/
_output_shapes
:€€€€€€€€€		*
equationaecd,abcd->acbeЪ
&multi_head_attention_2/softmax/SoftmaxSoftmax-multi_head_attention_2/einsum/Einsum:output:0*
T0*/
_output_shapes
:€€€€€€€€€		q
,multi_head_attention_2/dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  †?‘
*multi_head_attention_2/dropout/dropout/MulMul0multi_head_attention_2/softmax/Softmax:softmax:05multi_head_attention_2/dropout/dropout/Const:output:0*
T0*/
_output_shapes
:€€€€€€€€€		М
,multi_head_attention_2/dropout/dropout/ShapeShape0multi_head_attention_2/softmax/Softmax:softmax:0*
T0*
_output_shapes
:“
Cmulti_head_attention_2/dropout/dropout/random_uniform/RandomUniformRandomUniform5multi_head_attention_2/dropout/dropout/Shape:output:0*
T0*/
_output_shapes
:€€€€€€€€€		*
dtype0z
5multi_head_attention_2/dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћL>Л
3multi_head_attention_2/dropout/dropout/GreaterEqualGreaterEqualLmulti_head_attention_2/dropout/dropout/random_uniform/RandomUniform:output:0>multi_head_attention_2/dropout/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:€€€€€€€€€		µ
+multi_head_attention_2/dropout/dropout/CastCast7multi_head_attention_2/dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:€€€€€€€€€		ќ
,multi_head_attention_2/dropout/dropout/Mul_1Mul.multi_head_attention_2/dropout/dropout/Mul:z:0/multi_head_attention_2/dropout/dropout/Cast:y:0*
T0*/
_output_shapes
:€€€€€€€€€		к
&multi_head_attention_2/einsum_1/EinsumEinsum0multi_head_attention_2/dropout/dropout/Mul_1:z:0$multi_head_attention_2/value/add:z:0*
N*
T0*/
_output_shapes
:€€€€€€€€€	*
equationacbe,aecd->abcd÷
Dmulti_head_attention_2/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpMmulti_head_attention_2_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0Ъ
5multi_head_attention_2/attention_output/einsum/EinsumEinsum/multi_head_attention_2/einsum_1/Einsum:output:0Lmulti_head_attention_2/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:€€€€€€€€€	*
equationabcd,cde->abeЇ
:multi_head_attention_2/attention_output/add/ReadVariableOpReadVariableOpCmulti_head_attention_2_attention_output_add_readvariableop_resource*
_output_shapes
:*
dtype0о
+multi_head_attention_2/attention_output/addAddV2>multi_head_attention_2/attention_output/einsum/Einsum:output:0Bmulti_head_attention_2/attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€	§
	add_4/addAddV2)layer_normalization_3/batchnorm/add_1:z:0/multi_head_attention_2/attention_output/add:z:0*
T0*+
_output_shapes
:€€€€€€€€€	~
4layer_normalization_4/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:њ
"layer_normalization_4/moments/meanMeanadd_4/add:z:0=layer_normalization_4/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:€€€€€€€€€	*
	keep_dims(Э
*layer_normalization_4/moments/StopGradientStopGradient+layer_normalization_4/moments/mean:output:0*
T0*+
_output_shapes
:€€€€€€€€€	Њ
/layer_normalization_4/moments/SquaredDifferenceSquaredDifferenceadd_4/add:z:03layer_normalization_4/moments/StopGradient:output:0*
T0*+
_output_shapes
:€€€€€€€€€	В
8layer_normalization_4/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:н
&layer_normalization_4/moments/varianceMean3layer_normalization_4/moments/SquaredDifference:z:0Alayer_normalization_4/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:€€€€€€€€€	*
	keep_dims(j
%layer_normalization_4/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *љ7Ж5√
#layer_normalization_4/batchnorm/addAddV2/layer_normalization_4/moments/variance:output:0.layer_normalization_4/batchnorm/add/y:output:0*
T0*+
_output_shapes
:€€€€€€€€€	Н
%layer_normalization_4/batchnorm/RsqrtRsqrt'layer_normalization_4/batchnorm/add:z:0*
T0*+
_output_shapes
:€€€€€€€€€	™
2layer_normalization_4/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_4_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0«
#layer_normalization_4/batchnorm/mulMul)layer_normalization_4/batchnorm/Rsqrt:y:0:layer_normalization_4/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€	Ъ
%layer_normalization_4/batchnorm/mul_1Muladd_4/add:z:0'layer_normalization_4/batchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€	Є
%layer_normalization_4/batchnorm/mul_2Mul+layer_normalization_4/moments/mean:output:0'layer_normalization_4/batchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€	Ґ
.layer_normalization_4/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_4_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0√
#layer_normalization_4/batchnorm/subSub6layer_normalization_4/batchnorm/ReadVariableOp:value:0)layer_normalization_4/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:€€€€€€€€€	Є
%layer_normalization_4/batchnorm/add_1AddV2)layer_normalization_4/batchnorm/mul_1:z:0'layer_normalization_4/batchnorm/sub:z:0*
T0*+
_output_shapes
:€€€€€€€€€	К
 dense_4/Tensordot/ReadVariableOpReadVariableOp)dense_4_tensordot_readvariableop_resource*
_output_shapes

:*
dtype0`
dense_4/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:g
dense_4/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       p
dense_4/Tensordot/ShapeShape)layer_normalization_4/batchnorm/add_1:z:0*
T0*
_output_shapes
:a
dense_4/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : џ
dense_4/Tensordot/GatherV2GatherV2 dense_4/Tensordot/Shape:output:0dense_4/Tensordot/free:output:0(dense_4/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:c
!dense_4/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : я
dense_4/Tensordot/GatherV2_1GatherV2 dense_4/Tensordot/Shape:output:0dense_4/Tensordot/axes:output:0*dense_4/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense_4/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: Ж
dense_4/Tensordot/ProdProd#dense_4/Tensordot/GatherV2:output:0 dense_4/Tensordot/Const:output:0*
T0*
_output_shapes
: c
dense_4/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: М
dense_4/Tensordot/Prod_1Prod%dense_4/Tensordot/GatherV2_1:output:0"dense_4/Tensordot/Const_1:output:0*
T0*
_output_shapes
: _
dense_4/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Љ
dense_4/Tensordot/concatConcatV2dense_4/Tensordot/free:output:0dense_4/Tensordot/axes:output:0&dense_4/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:С
dense_4/Tensordot/stackPackdense_4/Tensordot/Prod:output:0!dense_4/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:ђ
dense_4/Tensordot/transpose	Transpose)layer_normalization_4/batchnorm/add_1:z:0!dense_4/Tensordot/concat:output:0*
T0*+
_output_shapes
:€€€€€€€€€	Ґ
dense_4/Tensordot/ReshapeReshapedense_4/Tensordot/transpose:y:0 dense_4/Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€Ґ
dense_4/Tensordot/MatMulMatMul"dense_4/Tensordot/Reshape:output:0(dense_4/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€c
dense_4/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:a
dense_4/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : «
dense_4/Tensordot/concat_1ConcatV2#dense_4/Tensordot/GatherV2:output:0"dense_4/Tensordot/Const_2:output:0(dense_4/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Ы
dense_4/TensordotReshape"dense_4/Tensordot/MatMul:product:0#dense_4/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:€€€€€€€€€	\
tf.nn.gelu_2/Gelu/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?Р
tf.nn.gelu_2/Gelu/mulMul tf.nn.gelu_2/Gelu/mul/x:output:0dense_4/Tensordot:output:0*
T0*+
_output_shapes
:€€€€€€€€€	]
tf.nn.gelu_2/Gelu/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *уµ?Щ
tf.nn.gelu_2/Gelu/truedivRealDivdense_4/Tensordot:output:0!tf.nn.gelu_2/Gelu/Cast/x:output:0*
T0*+
_output_shapes
:€€€€€€€€€	q
tf.nn.gelu_2/Gelu/ErfErftf.nn.gelu_2/Gelu/truediv:z:0*
T0*+
_output_shapes
:€€€€€€€€€	\
tf.nn.gelu_2/Gelu/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?С
tf.nn.gelu_2/Gelu/addAddV2 tf.nn.gelu_2/Gelu/add/x:output:0tf.nn.gelu_2/Gelu/Erf:y:0*
T0*+
_output_shapes
:€€€€€€€€€	К
tf.nn.gelu_2/Gelu/mul_1Multf.nn.gelu_2/Gelu/mul:z:0tf.nn.gelu_2/Gelu/add:z:0*
T0*+
_output_shapes
:€€€€€€€€€	К
 dense_5/Tensordot/ReadVariableOpReadVariableOp)dense_5_tensordot_readvariableop_resource*
_output_shapes

:*
dtype0`
dense_5/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:g
dense_5/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       b
dense_5/Tensordot/ShapeShapetf.nn.gelu_2/Gelu/mul_1:z:0*
T0*
_output_shapes
:a
dense_5/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : џ
dense_5/Tensordot/GatherV2GatherV2 dense_5/Tensordot/Shape:output:0dense_5/Tensordot/free:output:0(dense_5/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:c
!dense_5/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : я
dense_5/Tensordot/GatherV2_1GatherV2 dense_5/Tensordot/Shape:output:0dense_5/Tensordot/axes:output:0*dense_5/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense_5/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: Ж
dense_5/Tensordot/ProdProd#dense_5/Tensordot/GatherV2:output:0 dense_5/Tensordot/Const:output:0*
T0*
_output_shapes
: c
dense_5/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: М
dense_5/Tensordot/Prod_1Prod%dense_5/Tensordot/GatherV2_1:output:0"dense_5/Tensordot/Const_1:output:0*
T0*
_output_shapes
: _
dense_5/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Љ
dense_5/Tensordot/concatConcatV2dense_5/Tensordot/free:output:0dense_5/Tensordot/axes:output:0&dense_5/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:С
dense_5/Tensordot/stackPackdense_5/Tensordot/Prod:output:0!dense_5/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:Ю
dense_5/Tensordot/transpose	Transposetf.nn.gelu_2/Gelu/mul_1:z:0!dense_5/Tensordot/concat:output:0*
T0*+
_output_shapes
:€€€€€€€€€	Ґ
dense_5/Tensordot/ReshapeReshapedense_5/Tensordot/transpose:y:0 dense_5/Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€Ґ
dense_5/Tensordot/MatMulMatMul"dense_5/Tensordot/Reshape:output:0(dense_5/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€c
dense_5/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:a
dense_5/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : «
dense_5/Tensordot/concat_1ConcatV2#dense_5/Tensordot/GatherV2:output:0"dense_5/Tensordot/Const_2:output:0(dense_5/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Ы
dense_5/TensordotReshape"dense_5/Tensordot/MatMul:product:0#dense_5/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:€€€€€€€€€	\
dropout_2/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *д8О?Р
dropout_2/dropout/MulMuldense_5/Tensordot:output:0 dropout_2/dropout/Const:output:0*
T0*+
_output_shapes
:€€€€€€€€€	a
dropout_2/dropout/ShapeShapedense_5/Tensordot:output:0*
T0*
_output_shapes
:§
.dropout_2/dropout/random_uniform/RandomUniformRandomUniform dropout_2/dropout/Shape:output:0*
T0*+
_output_shapes
:€€€€€€€€€	*
dtype0e
 dropout_2/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ=»
dropout_2/dropout/GreaterEqualGreaterEqual7dropout_2/dropout/random_uniform/RandomUniform:output:0)dropout_2/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:€€€€€€€€€	З
dropout_2/dropout/CastCast"dropout_2/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:€€€€€€€€€	Л
dropout_2/dropout/Mul_1Muldropout_2/dropout/Mul:z:0dropout_2/dropout/Cast:y:0*
T0*+
_output_shapes
:€€€€€€€€€	Р
	add_5/addAddV2)layer_normalization_4/batchnorm/add_1:z:0dropout_2/dropout/Mul_1:z:0*
T0*+
_output_shapes
:€€€€€€€€€	~
4layer_normalization_5/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:њ
"layer_normalization_5/moments/meanMeanadd_5/add:z:0=layer_normalization_5/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:€€€€€€€€€	*
	keep_dims(Э
*layer_normalization_5/moments/StopGradientStopGradient+layer_normalization_5/moments/mean:output:0*
T0*+
_output_shapes
:€€€€€€€€€	Њ
/layer_normalization_5/moments/SquaredDifferenceSquaredDifferenceadd_5/add:z:03layer_normalization_5/moments/StopGradient:output:0*
T0*+
_output_shapes
:€€€€€€€€€	В
8layer_normalization_5/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:н
&layer_normalization_5/moments/varianceMean3layer_normalization_5/moments/SquaredDifference:z:0Alayer_normalization_5/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:€€€€€€€€€	*
	keep_dims(j
%layer_normalization_5/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *љ7Ж5√
#layer_normalization_5/batchnorm/addAddV2/layer_normalization_5/moments/variance:output:0.layer_normalization_5/batchnorm/add/y:output:0*
T0*+
_output_shapes
:€€€€€€€€€	Н
%layer_normalization_5/batchnorm/RsqrtRsqrt'layer_normalization_5/batchnorm/add:z:0*
T0*+
_output_shapes
:€€€€€€€€€	™
2layer_normalization_5/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_5_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0«
#layer_normalization_5/batchnorm/mulMul)layer_normalization_5/batchnorm/Rsqrt:y:0:layer_normalization_5/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€	Ъ
%layer_normalization_5/batchnorm/mul_1Muladd_5/add:z:0'layer_normalization_5/batchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€	Є
%layer_normalization_5/batchnorm/mul_2Mul+layer_normalization_5/moments/mean:output:0'layer_normalization_5/batchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€	Ґ
.layer_normalization_5/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_5_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0√
#layer_normalization_5/batchnorm/subSub6layer_normalization_5/batchnorm/ReadVariableOp:value:0)layer_normalization_5/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:€€€€€€€€€	Є
%layer_normalization_5/batchnorm/add_1AddV2)layer_normalization_5/batchnorm/mul_1:z:0'layer_normalization_5/batchnorm/sub:z:0*
T0*+
_output_shapes
:€€€€€€€€€	
.tf.__operators__.getitem_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        Б
0tf.__operators__.getitem_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       Б
0tf.__operators__.getitem_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Л
(tf.__operators__.getitem_1/strided_sliceStridedSlice)layer_normalization_5/batchnorm/add_1:z:07tf.__operators__.getitem_1/strided_slice/stack:output:09tf.__operators__.getitem_1/strided_slice/stack_1:output:09tf.__operators__.getitem_1/strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
shrink_axis_maskД
dense_6/MatMul/ReadVariableOpReadVariableOp&dense_6_matmul_readvariableop_resource*
_output_shapes

:*
dtype0§
dense_6/MatMulMatMul1tf.__operators__.getitem_1/strided_slice:output:0%dense_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€n
tf.math.sigmoid/SigmoidSigmoiddense_6/MatMul:product:0*
T0*'
_output_shapes
:€€€€€€€€€j
IdentityIdentitytf.math.sigmoid/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€Њ
NoOpNoOp^dense/Tensordot/ReadVariableOp!^dense_1/Tensordot/ReadVariableOp!^dense_2/Tensordot/ReadVariableOp!^dense_3/Tensordot/ReadVariableOp!^dense_4/Tensordot/ReadVariableOp!^dense_5/Tensordot/ReadVariableOp^dense_6/MatMul/ReadVariableOp^embedding/embedding_lookup^embedding_1/embedding_lookup-^layer_normalization/batchnorm/ReadVariableOp1^layer_normalization/batchnorm/mul/ReadVariableOp/^layer_normalization_1/batchnorm/ReadVariableOp3^layer_normalization_1/batchnorm/mul/ReadVariableOp/^layer_normalization_2/batchnorm/ReadVariableOp3^layer_normalization_2/batchnorm/mul/ReadVariableOp/^layer_normalization_3/batchnorm/ReadVariableOp3^layer_normalization_3/batchnorm/mul/ReadVariableOp/^layer_normalization_4/batchnorm/ReadVariableOp3^layer_normalization_4/batchnorm/mul/ReadVariableOp/^layer_normalization_5/batchnorm/ReadVariableOp3^layer_normalization_5/batchnorm/mul/ReadVariableOp9^multi_head_attention/attention_output/add/ReadVariableOpC^multi_head_attention/attention_output/einsum/Einsum/ReadVariableOp,^multi_head_attention/key/add/ReadVariableOp6^multi_head_attention/key/einsum/Einsum/ReadVariableOp.^multi_head_attention/query/add/ReadVariableOp8^multi_head_attention/query/einsum/Einsum/ReadVariableOp.^multi_head_attention/value/add/ReadVariableOp8^multi_head_attention/value/einsum/Einsum/ReadVariableOp;^multi_head_attention_1/attention_output/add/ReadVariableOpE^multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp.^multi_head_attention_1/key/add/ReadVariableOp8^multi_head_attention_1/key/einsum/Einsum/ReadVariableOp0^multi_head_attention_1/query/add/ReadVariableOp:^multi_head_attention_1/query/einsum/Einsum/ReadVariableOp0^multi_head_attention_1/value/add/ReadVariableOp:^multi_head_attention_1/value/einsum/Einsum/ReadVariableOp;^multi_head_attention_2/attention_output/add/ReadVariableOpE^multi_head_attention_2/attention_output/einsum/Einsum/ReadVariableOp.^multi_head_attention_2/key/add/ReadVariableOp8^multi_head_attention_2/key/einsum/Einsum/ReadVariableOp0^multi_head_attention_2/query/add/ReadVariableOp:^multi_head_attention_2/query/einsum/Einsum/ReadVariableOp0^multi_head_attention_2/value/add/ReadVariableOp:^multi_head_attention_2/value/einsum/Einsum/ReadVariableOp^tokenize/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Щ
_input_shapesЗ
Д:€€€€€€€€€:€€€€€€€€€: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2@
dense/Tensordot/ReadVariableOpdense/Tensordot/ReadVariableOp2D
 dense_1/Tensordot/ReadVariableOp dense_1/Tensordot/ReadVariableOp2D
 dense_2/Tensordot/ReadVariableOp dense_2/Tensordot/ReadVariableOp2D
 dense_3/Tensordot/ReadVariableOp dense_3/Tensordot/ReadVariableOp2D
 dense_4/Tensordot/ReadVariableOp dense_4/Tensordot/ReadVariableOp2D
 dense_5/Tensordot/ReadVariableOp dense_5/Tensordot/ReadVariableOp2>
dense_6/MatMul/ReadVariableOpdense_6/MatMul/ReadVariableOp28
embedding/embedding_lookupembedding/embedding_lookup2<
embedding_1/embedding_lookupembedding_1/embedding_lookup2\
,layer_normalization/batchnorm/ReadVariableOp,layer_normalization/batchnorm/ReadVariableOp2d
0layer_normalization/batchnorm/mul/ReadVariableOp0layer_normalization/batchnorm/mul/ReadVariableOp2`
.layer_normalization_1/batchnorm/ReadVariableOp.layer_normalization_1/batchnorm/ReadVariableOp2h
2layer_normalization_1/batchnorm/mul/ReadVariableOp2layer_normalization_1/batchnorm/mul/ReadVariableOp2`
.layer_normalization_2/batchnorm/ReadVariableOp.layer_normalization_2/batchnorm/ReadVariableOp2h
2layer_normalization_2/batchnorm/mul/ReadVariableOp2layer_normalization_2/batchnorm/mul/ReadVariableOp2`
.layer_normalization_3/batchnorm/ReadVariableOp.layer_normalization_3/batchnorm/ReadVariableOp2h
2layer_normalization_3/batchnorm/mul/ReadVariableOp2layer_normalization_3/batchnorm/mul/ReadVariableOp2`
.layer_normalization_4/batchnorm/ReadVariableOp.layer_normalization_4/batchnorm/ReadVariableOp2h
2layer_normalization_4/batchnorm/mul/ReadVariableOp2layer_normalization_4/batchnorm/mul/ReadVariableOp2`
.layer_normalization_5/batchnorm/ReadVariableOp.layer_normalization_5/batchnorm/ReadVariableOp2h
2layer_normalization_5/batchnorm/mul/ReadVariableOp2layer_normalization_5/batchnorm/mul/ReadVariableOp2t
8multi_head_attention/attention_output/add/ReadVariableOp8multi_head_attention/attention_output/add/ReadVariableOp2И
Bmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOpBmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOp2Z
+multi_head_attention/key/add/ReadVariableOp+multi_head_attention/key/add/ReadVariableOp2n
5multi_head_attention/key/einsum/Einsum/ReadVariableOp5multi_head_attention/key/einsum/Einsum/ReadVariableOp2^
-multi_head_attention/query/add/ReadVariableOp-multi_head_attention/query/add/ReadVariableOp2r
7multi_head_attention/query/einsum/Einsum/ReadVariableOp7multi_head_attention/query/einsum/Einsum/ReadVariableOp2^
-multi_head_attention/value/add/ReadVariableOp-multi_head_attention/value/add/ReadVariableOp2r
7multi_head_attention/value/einsum/Einsum/ReadVariableOp7multi_head_attention/value/einsum/Einsum/ReadVariableOp2x
:multi_head_attention_1/attention_output/add/ReadVariableOp:multi_head_attention_1/attention_output/add/ReadVariableOp2М
Dmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpDmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp2^
-multi_head_attention_1/key/add/ReadVariableOp-multi_head_attention_1/key/add/ReadVariableOp2r
7multi_head_attention_1/key/einsum/Einsum/ReadVariableOp7multi_head_attention_1/key/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_1/query/add/ReadVariableOp/multi_head_attention_1/query/add/ReadVariableOp2v
9multi_head_attention_1/query/einsum/Einsum/ReadVariableOp9multi_head_attention_1/query/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_1/value/add/ReadVariableOp/multi_head_attention_1/value/add/ReadVariableOp2v
9multi_head_attention_1/value/einsum/Einsum/ReadVariableOp9multi_head_attention_1/value/einsum/Einsum/ReadVariableOp2x
:multi_head_attention_2/attention_output/add/ReadVariableOp:multi_head_attention_2/attention_output/add/ReadVariableOp2М
Dmulti_head_attention_2/attention_output/einsum/Einsum/ReadVariableOpDmulti_head_attention_2/attention_output/einsum/Einsum/ReadVariableOp2^
-multi_head_attention_2/key/add/ReadVariableOp-multi_head_attention_2/key/add/ReadVariableOp2r
7multi_head_attention_2/key/einsum/Einsum/ReadVariableOp7multi_head_attention_2/key/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_2/query/add/ReadVariableOp/multi_head_attention_2/query/add/ReadVariableOp2v
9multi_head_attention_2/query/einsum/Einsum/ReadVariableOp9multi_head_attention_2/query/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_2/value/add/ReadVariableOp/multi_head_attention_2/value/add/ReadVariableOp2v
9multi_head_attention_2/value/einsum/Einsum/ReadVariableOp9multi_head_attention_2/value/einsum/Einsum/ReadVariableOp2:
tokenize/mul/ReadVariableOptokenize/mul/ReadVariableOp:Q M
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
inputs/1:

_output_shapes
: 
Р

a
B__inference_dropout_layer_call_and_return_conditional_losses_23988

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *д8О?h
dropout/MulMulinputsdropout/Const:output:0*
T0*+
_output_shapes
:€€€€€€€€€	C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:Р
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*+
_output_shapes
:€€€€€€€€€	*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ=™
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:€€€€€€€€€	s
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:€€€€€€€€€	m
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*+
_output_shapes
:€€€€€€€€€	]
IdentityIdentitydropout/Mul_1:z:0*
T0*+
_output_shapes
:€€€€€€€€€	"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€	:S O
+
_output_shapes
:€€€€€€€€€	
 
_user_specified_nameinputs
’
l
@__inference_add_2_layer_call_and_return_conditional_losses_24164
inputs_0
inputs_1
identityV
addAddV2inputs_0inputs_1*
T0*+
_output_shapes
:€€€€€€€€€	S
IdentityIdentityadd:z:0*
T0*+
_output_shapes
:€€€€€€€€€	"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:€€€€€€€€€	:€€€€€€€€€	:U Q
+
_output_shapes
:€€€€€€€€€	
"
_user_specified_name
inputs/0:UQ
+
_output_shapes
:€€€€€€€€€	
"
_user_specified_name
inputs/1
…Ї
ѕ
@__inference_model_layer_call_and_return_conditional_losses_21976

inputs
inputs_1
unknown!
embedding_21824:#
embedding_1_21827: 
tokenize_21830:0
multi_head_attention_21835:,
multi_head_attention_21837:0
multi_head_attention_21839:,
multi_head_attention_21841:0
multi_head_attention_21843:,
multi_head_attention_21845:0
multi_head_attention_21847:(
multi_head_attention_21849:'
layer_normalization_21853:'
layer_normalization_21855:
dense_21858:
dense_1_21869:)
layer_normalization_1_21874:)
layer_normalization_1_21876:2
multi_head_attention_1_21879:.
multi_head_attention_1_21881:2
multi_head_attention_1_21883:.
multi_head_attention_1_21885:2
multi_head_attention_1_21887:.
multi_head_attention_1_21889:2
multi_head_attention_1_21891:*
multi_head_attention_1_21893:)
layer_normalization_2_21897:)
layer_normalization_2_21899:
dense_2_21902:
dense_3_21913:)
layer_normalization_3_21918:)
layer_normalization_3_21920:2
multi_head_attention_2_21923:.
multi_head_attention_2_21925:2
multi_head_attention_2_21927:.
multi_head_attention_2_21929:2
multi_head_attention_2_21931:.
multi_head_attention_2_21933:2
multi_head_attention_2_21935:*
multi_head_attention_2_21937:)
layer_normalization_4_21941:)
layer_normalization_4_21943:
dense_4_21946:
dense_5_21957:)
layer_normalization_5_21962:)
layer_normalization_5_21964:
dense_6_21971:
identityИҐdense/StatefulPartitionedCallҐdense_1/StatefulPartitionedCallҐdense_2/StatefulPartitionedCallҐdense_3/StatefulPartitionedCallҐdense_4/StatefulPartitionedCallҐdense_5/StatefulPartitionedCallҐdense_6/StatefulPartitionedCallҐdropout/StatefulPartitionedCallҐ!dropout_1/StatefulPartitionedCallҐ!dropout_2/StatefulPartitionedCallҐ!embedding/StatefulPartitionedCallҐ#embedding_1/StatefulPartitionedCallҐ+layer_normalization/StatefulPartitionedCallҐ-layer_normalization_1/StatefulPartitionedCallҐ-layer_normalization_2/StatefulPartitionedCallҐ-layer_normalization_3/StatefulPartitionedCallҐ-layer_normalization_4/StatefulPartitionedCallҐ-layer_normalization_5/StatefulPartitionedCallҐ,multi_head_attention/StatefulPartitionedCallҐ.multi_head_attention_1/StatefulPartitionedCallҐ.multi_head_attention_2/StatefulPartitionedCallҐ tokenize/StatefulPartitionedCallN
tf.compat.v1.shape/ShapeShapeinputs*
T0*
_output_shapes
:v
,tf.__operators__.getitem/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.tf.__operators__.getitem/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.tf.__operators__.getitem/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:»
&tf.__operators__.getitem/strided_sliceStridedSlice!tf.compat.v1.shape/Shape:output:05tf.__operators__.getitem/strided_slice/stack:output:07tf.__operators__.getitem/strided_slice/stack_1:output:07tf.__operators__.getitem/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskЕ
tf.zeros/zeros/packedPack/tf.__operators__.getitem/strided_slice:output:0unknown*
N*
T0*
_output_shapes
:Y
tf.zeros/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    З
tf.zeros/zerosFilltf.zeros/zeros/packed:output:0tf.zeros/zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€у
!embedding/StatefulPartitionedCallStatefulPartitionedCalltf.zeros/zeros:output:0embedding_21824*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_embedding_layer_call_and_return_conditional_losses_20442и
#embedding_1/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_1_21827*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_embedding_1_layer_call_and_return_conditional_losses_20456б
 tokenize/StatefulPartitionedCallStatefulPartitionedCallinputs_1tokenize_21830*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_tokenize_layer_call_and_return_conditional_losses_20469W
tf.concat/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :А
tf.concat/concatConcatV2*embedding/StatefulPartitionedCall:output:0,embedding_1/StatefulPartitionedCall:output:0)tokenize/StatefulPartitionedCall:output:0tf.concat/concat/axis:output:0*
N*
T0*+
_output_shapes
:€€€€€€€€€	Д
,multi_head_attention/StatefulPartitionedCallStatefulPartitionedCalltf.concat/concat:output:0tf.concat/concat:output:0multi_head_attention_21835multi_head_attention_21837multi_head_attention_21839multi_head_attention_21841multi_head_attention_21843multi_head_attention_21845multi_head_attention_21847multi_head_attention_21849*
Tin
2
*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€	**
_read_only_resource_inputs

	*-
config_proto

CPU

GPU 2J 8В *X
fSRQ
O__inference_multi_head_attention_layer_call_and_return_conditional_losses_21664ь
add/PartitionedCallPartitionedCalltf.concat/concat:output:05multi_head_attention/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€	* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *G
fBR@
>__inference_add_layer_call_and_return_conditional_losses_20534≥
+layer_normalization/StatefulPartitionedCallStatefulPartitionedCalladd/PartitionedCall:output:0layer_normalization_21853layer_normalization_21855*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *W
fRRP
N__inference_layer_normalization_layer_call_and_return_conditional_losses_20558Д
dense/StatefulPartitionedCallStatefulPartitionedCall4layer_normalization/StatefulPartitionedCall:output:0dense_21858*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€	*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_20591Z
tf.nn.gelu/Gelu/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?Ш
tf.nn.gelu/Gelu/mulMultf.nn.gelu/Gelu/mul/x:output:0&dense/StatefulPartitionedCall:output:0*
T0*+
_output_shapes
:€€€€€€€€€	[
tf.nn.gelu/Gelu/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *уµ?°
tf.nn.gelu/Gelu/truedivRealDiv&dense/StatefulPartitionedCall:output:0tf.nn.gelu/Gelu/Cast/x:output:0*
T0*+
_output_shapes
:€€€€€€€€€	m
tf.nn.gelu/Gelu/ErfErftf.nn.gelu/Gelu/truediv:z:0*
T0*+
_output_shapes
:€€€€€€€€€	Z
tf.nn.gelu/Gelu/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Л
tf.nn.gelu/Gelu/addAddV2tf.nn.gelu/Gelu/add/x:output:0tf.nn.gelu/Gelu/Erf:y:0*
T0*+
_output_shapes
:€€€€€€€€€	Д
tf.nn.gelu/Gelu/mul_1Multf.nn.gelu/Gelu/mul:z:0tf.nn.gelu/Gelu/add:z:0*
T0*+
_output_shapes
:€€€€€€€€€	п
dense_1/StatefulPartitionedCallStatefulPartitionedCalltf.nn.gelu/Gelu/mul_1:z:0dense_1_21869*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€	*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_20630л
dropout/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€	* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_21560О
add_1/PartitionedCallPartitionedCall4layer_normalization/StatefulPartitionedCall:output:0(dropout/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€	* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *I
fDRB
@__inference_add_1_layer_call_and_return_conditional_losses_20647љ
-layer_normalization_1/StatefulPartitionedCallStatefulPartitionedCalladd_1/PartitionedCall:output:0layer_normalization_1_21874layer_normalization_1_21876*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Y
fTRR
P__inference_layer_normalization_1_layer_call_and_return_conditional_losses_20671“
.multi_head_attention_1/StatefulPartitionedCallStatefulPartitionedCall6layer_normalization_1/StatefulPartitionedCall:output:06layer_normalization_1/StatefulPartitionedCall:output:0multi_head_attention_1_21879multi_head_attention_1_21881multi_head_attention_1_21883multi_head_attention_1_21885multi_head_attention_1_21887multi_head_attention_1_21889multi_head_attention_1_21891multi_head_attention_1_21893*
Tin
2
*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€	**
_read_only_resource_inputs

	*-
config_proto

CPU

GPU 2J 8В *Z
fURS
Q__inference_multi_head_attention_1_layer_call_and_return_conditional_losses_21504Я
add_2/PartitionedCallPartitionedCall6layer_normalization_1/StatefulPartitionedCall:output:07multi_head_attention_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€	* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *I
fDRB
@__inference_add_2_layer_call_and_return_conditional_losses_20736љ
-layer_normalization_2/StatefulPartitionedCallStatefulPartitionedCalladd_2/PartitionedCall:output:0layer_normalization_2_21897layer_normalization_2_21899*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Y
fTRR
P__inference_layer_normalization_2_layer_call_and_return_conditional_losses_20760М
dense_2/StatefulPartitionedCallStatefulPartitionedCall6layer_normalization_2/StatefulPartitionedCall:output:0dense_2_21902*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€	*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_20793\
tf.nn.gelu_1/Gelu/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?Ю
tf.nn.gelu_1/Gelu/mulMul tf.nn.gelu_1/Gelu/mul/x:output:0(dense_2/StatefulPartitionedCall:output:0*
T0*+
_output_shapes
:€€€€€€€€€	]
tf.nn.gelu_1/Gelu/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *уµ?І
tf.nn.gelu_1/Gelu/truedivRealDiv(dense_2/StatefulPartitionedCall:output:0!tf.nn.gelu_1/Gelu/Cast/x:output:0*
T0*+
_output_shapes
:€€€€€€€€€	q
tf.nn.gelu_1/Gelu/ErfErftf.nn.gelu_1/Gelu/truediv:z:0*
T0*+
_output_shapes
:€€€€€€€€€	\
tf.nn.gelu_1/Gelu/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?С
tf.nn.gelu_1/Gelu/addAddV2 tf.nn.gelu_1/Gelu/add/x:output:0tf.nn.gelu_1/Gelu/Erf:y:0*
T0*+
_output_shapes
:€€€€€€€€€	К
tf.nn.gelu_1/Gelu/mul_1Multf.nn.gelu_1/Gelu/mul:z:0tf.nn.gelu_1/Gelu/add:z:0*
T0*+
_output_shapes
:€€€€€€€€€	с
dense_3/StatefulPartitionedCallStatefulPartitionedCalltf.nn.gelu_1/Gelu/mul_1:z:0dense_3_21913*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€	*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_20832С
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall(dense_3/StatefulPartitionedCall:output:0 ^dropout/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€	* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_1_layer_call_and_return_conditional_losses_21400Т
add_3/PartitionedCallPartitionedCall6layer_normalization_2/StatefulPartitionedCall:output:0*dropout_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€	* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *I
fDRB
@__inference_add_3_layer_call_and_return_conditional_losses_20849љ
-layer_normalization_3/StatefulPartitionedCallStatefulPartitionedCalladd_3/PartitionedCall:output:0layer_normalization_3_21918layer_normalization_3_21920*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Y
fTRR
P__inference_layer_normalization_3_layer_call_and_return_conditional_losses_20873“
.multi_head_attention_2/StatefulPartitionedCallStatefulPartitionedCall6layer_normalization_3/StatefulPartitionedCall:output:06layer_normalization_3/StatefulPartitionedCall:output:0multi_head_attention_2_21923multi_head_attention_2_21925multi_head_attention_2_21927multi_head_attention_2_21929multi_head_attention_2_21931multi_head_attention_2_21933multi_head_attention_2_21935multi_head_attention_2_21937*
Tin
2
*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€	**
_read_only_resource_inputs

	*-
config_proto

CPU

GPU 2J 8В *Z
fURS
Q__inference_multi_head_attention_2_layer_call_and_return_conditional_losses_21344Я
add_4/PartitionedCallPartitionedCall6layer_normalization_3/StatefulPartitionedCall:output:07multi_head_attention_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€	* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *I
fDRB
@__inference_add_4_layer_call_and_return_conditional_losses_20938љ
-layer_normalization_4/StatefulPartitionedCallStatefulPartitionedCalladd_4/PartitionedCall:output:0layer_normalization_4_21941layer_normalization_4_21943*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Y
fTRR
P__inference_layer_normalization_4_layer_call_and_return_conditional_losses_20962М
dense_4/StatefulPartitionedCallStatefulPartitionedCall6layer_normalization_4/StatefulPartitionedCall:output:0dense_4_21946*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€	*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense_4_layer_call_and_return_conditional_losses_20995\
tf.nn.gelu_2/Gelu/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?Ю
tf.nn.gelu_2/Gelu/mulMul tf.nn.gelu_2/Gelu/mul/x:output:0(dense_4/StatefulPartitionedCall:output:0*
T0*+
_output_shapes
:€€€€€€€€€	]
tf.nn.gelu_2/Gelu/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *уµ?І
tf.nn.gelu_2/Gelu/truedivRealDiv(dense_4/StatefulPartitionedCall:output:0!tf.nn.gelu_2/Gelu/Cast/x:output:0*
T0*+
_output_shapes
:€€€€€€€€€	q
tf.nn.gelu_2/Gelu/ErfErftf.nn.gelu_2/Gelu/truediv:z:0*
T0*+
_output_shapes
:€€€€€€€€€	\
tf.nn.gelu_2/Gelu/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?С
tf.nn.gelu_2/Gelu/addAddV2 tf.nn.gelu_2/Gelu/add/x:output:0tf.nn.gelu_2/Gelu/Erf:y:0*
T0*+
_output_shapes
:€€€€€€€€€	К
tf.nn.gelu_2/Gelu/mul_1Multf.nn.gelu_2/Gelu/mul:z:0tf.nn.gelu_2/Gelu/add:z:0*
T0*+
_output_shapes
:€€€€€€€€€	с
dense_5/StatefulPartitionedCallStatefulPartitionedCalltf.nn.gelu_2/Gelu/mul_1:z:0dense_5_21957*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€	*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense_5_layer_call_and_return_conditional_losses_21034У
!dropout_2/StatefulPartitionedCallStatefulPartitionedCall(dense_5/StatefulPartitionedCall:output:0"^dropout_1/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€	* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_2_layer_call_and_return_conditional_losses_21240Т
add_5/PartitionedCallPartitionedCall6layer_normalization_4/StatefulPartitionedCall:output:0*dropout_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€	* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *I
fDRB
@__inference_add_5_layer_call_and_return_conditional_losses_21051љ
-layer_normalization_5/StatefulPartitionedCallStatefulPartitionedCalladd_5/PartitionedCall:output:0layer_normalization_5_21962layer_normalization_5_21964*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Y
fTRR
P__inference_layer_normalization_5_layer_call_and_return_conditional_losses_21075
.tf.__operators__.getitem_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        Б
0tf.__operators__.getitem_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       Б
0tf.__operators__.getitem_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ш
(tf.__operators__.getitem_1/strided_sliceStridedSlice6layer_normalization_5/StatefulPartitionedCall:output:07tf.__operators__.getitem_1/strided_slice/stack:output:09tf.__operators__.getitem_1/strided_slice/stack_1:output:09tf.__operators__.getitem_1/strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
shrink_axis_maskГ
dense_6/StatefulPartitionedCallStatefulPartitionedCall1tf.__operators__.getitem_1/strided_slice:output:0dense_6_21971*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense_6_layer_call_and_return_conditional_losses_21092~
tf.math.sigmoid/SigmoidSigmoid(dense_6/StatefulPartitionedCall:output:0*
T0*'
_output_shapes
:€€€€€€€€€j
IdentityIdentitytf.math.sigmoid/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€Є
NoOpNoOp^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall ^dropout/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall"^dropout_2/StatefulPartitionedCall"^embedding/StatefulPartitionedCall$^embedding_1/StatefulPartitionedCall,^layer_normalization/StatefulPartitionedCall.^layer_normalization_1/StatefulPartitionedCall.^layer_normalization_2/StatefulPartitionedCall.^layer_normalization_3/StatefulPartitionedCall.^layer_normalization_4/StatefulPartitionedCall.^layer_normalization_5/StatefulPartitionedCall-^multi_head_attention/StatefulPartitionedCall/^multi_head_attention_1/StatefulPartitionedCall/^multi_head_attention_2/StatefulPartitionedCall!^tokenize/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Щ
_input_shapesЗ
Д:€€€€€€€€€:€€€€€€€€€: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall2F
!dropout_2/StatefulPartitionedCall!dropout_2/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2J
#embedding_1/StatefulPartitionedCall#embedding_1/StatefulPartitionedCall2Z
+layer_normalization/StatefulPartitionedCall+layer_normalization/StatefulPartitionedCall2^
-layer_normalization_1/StatefulPartitionedCall-layer_normalization_1/StatefulPartitionedCall2^
-layer_normalization_2/StatefulPartitionedCall-layer_normalization_2/StatefulPartitionedCall2^
-layer_normalization_3/StatefulPartitionedCall-layer_normalization_3/StatefulPartitionedCall2^
-layer_normalization_4/StatefulPartitionedCall-layer_normalization_4/StatefulPartitionedCall2^
-layer_normalization_5/StatefulPartitionedCall-layer_normalization_5/StatefulPartitionedCall2\
,multi_head_attention/StatefulPartitionedCall,multi_head_attention/StatefulPartitionedCall2`
.multi_head_attention_1/StatefulPartitionedCall.multi_head_attention_1/StatefulPartitionedCall2`
.multi_head_attention_2/StatefulPartitionedCall.multi_head_attention_2/StatefulPartitionedCall2D
 tokenize/StatefulPartitionedCall tokenize/StatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:OK
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:

_output_shapes
: 
€

л
6__inference_multi_head_attention_1_layer_call_fn_24075	
query	
value
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
identityИҐStatefulPartitionedCallњ
StatefulPartitionedCallStatefulPartitionedCallqueryvalueunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2
*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€	**
_read_only_resource_inputs

	*-
config_proto

CPU

GPU 2J 8В *Z
fURS
Q__inference_multi_head_attention_1_layer_call_and_return_conditional_losses_21504s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€	`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:€€€€€€€€€	:€€€€€€€€€	: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:R N
+
_output_shapes
:€€€€€€€€€	

_user_specified_namequery:RN
+
_output_shapes
:€€€€€€€€€	

_user_specified_namevalue
Цґ
е
@__inference_model_layer_call_and_return_conditional_losses_22339
input_1
input_2
unknown!
embedding_22187:#
embedding_1_22190: 
tokenize_22193:0
multi_head_attention_22198:,
multi_head_attention_22200:0
multi_head_attention_22202:,
multi_head_attention_22204:0
multi_head_attention_22206:,
multi_head_attention_22208:0
multi_head_attention_22210:(
multi_head_attention_22212:'
layer_normalization_22216:'
layer_normalization_22218:
dense_22221:
dense_1_22232:)
layer_normalization_1_22237:)
layer_normalization_1_22239:2
multi_head_attention_1_22242:.
multi_head_attention_1_22244:2
multi_head_attention_1_22246:.
multi_head_attention_1_22248:2
multi_head_attention_1_22250:.
multi_head_attention_1_22252:2
multi_head_attention_1_22254:*
multi_head_attention_1_22256:)
layer_normalization_2_22260:)
layer_normalization_2_22262:
dense_2_22265:
dense_3_22276:)
layer_normalization_3_22281:)
layer_normalization_3_22283:2
multi_head_attention_2_22286:.
multi_head_attention_2_22288:2
multi_head_attention_2_22290:.
multi_head_attention_2_22292:2
multi_head_attention_2_22294:.
multi_head_attention_2_22296:2
multi_head_attention_2_22298:*
multi_head_attention_2_22300:)
layer_normalization_4_22304:)
layer_normalization_4_22306:
dense_4_22309:
dense_5_22320:)
layer_normalization_5_22325:)
layer_normalization_5_22327:
dense_6_22334:
identityИҐdense/StatefulPartitionedCallҐdense_1/StatefulPartitionedCallҐdense_2/StatefulPartitionedCallҐdense_3/StatefulPartitionedCallҐdense_4/StatefulPartitionedCallҐdense_5/StatefulPartitionedCallҐdense_6/StatefulPartitionedCallҐ!embedding/StatefulPartitionedCallҐ#embedding_1/StatefulPartitionedCallҐ+layer_normalization/StatefulPartitionedCallҐ-layer_normalization_1/StatefulPartitionedCallҐ-layer_normalization_2/StatefulPartitionedCallҐ-layer_normalization_3/StatefulPartitionedCallҐ-layer_normalization_4/StatefulPartitionedCallҐ-layer_normalization_5/StatefulPartitionedCallҐ,multi_head_attention/StatefulPartitionedCallҐ.multi_head_attention_1/StatefulPartitionedCallҐ.multi_head_attention_2/StatefulPartitionedCallҐ tokenize/StatefulPartitionedCallO
tf.compat.v1.shape/ShapeShapeinput_1*
T0*
_output_shapes
:v
,tf.__operators__.getitem/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.tf.__operators__.getitem/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.tf.__operators__.getitem/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:»
&tf.__operators__.getitem/strided_sliceStridedSlice!tf.compat.v1.shape/Shape:output:05tf.__operators__.getitem/strided_slice/stack:output:07tf.__operators__.getitem/strided_slice/stack_1:output:07tf.__operators__.getitem/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskЕ
tf.zeros/zeros/packedPack/tf.__operators__.getitem/strided_slice:output:0unknown*
N*
T0*
_output_shapes
:Y
tf.zeros/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    З
tf.zeros/zerosFilltf.zeros/zeros/packed:output:0tf.zeros/zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€у
!embedding/StatefulPartitionedCallStatefulPartitionedCalltf.zeros/zeros:output:0embedding_22187*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_embedding_layer_call_and_return_conditional_losses_20442й
#embedding_1/StatefulPartitionedCallStatefulPartitionedCallinput_1embedding_1_22190*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_embedding_1_layer_call_and_return_conditional_losses_20456а
 tokenize/StatefulPartitionedCallStatefulPartitionedCallinput_2tokenize_22193*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_tokenize_layer_call_and_return_conditional_losses_20469W
tf.concat/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :А
tf.concat/concatConcatV2*embedding/StatefulPartitionedCall:output:0,embedding_1/StatefulPartitionedCall:output:0)tokenize/StatefulPartitionedCall:output:0tf.concat/concat/axis:output:0*
N*
T0*+
_output_shapes
:€€€€€€€€€	Д
,multi_head_attention/StatefulPartitionedCallStatefulPartitionedCalltf.concat/concat:output:0tf.concat/concat:output:0multi_head_attention_22198multi_head_attention_22200multi_head_attention_22202multi_head_attention_22204multi_head_attention_22206multi_head_attention_22208multi_head_attention_22210multi_head_attention_22212*
Tin
2
*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€	**
_read_only_resource_inputs

	*-
config_proto

CPU

GPU 2J 8В *X
fSRQ
O__inference_multi_head_attention_layer_call_and_return_conditional_losses_20510ь
add/PartitionedCallPartitionedCalltf.concat/concat:output:05multi_head_attention/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€	* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *G
fBR@
>__inference_add_layer_call_and_return_conditional_losses_20534≥
+layer_normalization/StatefulPartitionedCallStatefulPartitionedCalladd/PartitionedCall:output:0layer_normalization_22216layer_normalization_22218*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *W
fRRP
N__inference_layer_normalization_layer_call_and_return_conditional_losses_20558Д
dense/StatefulPartitionedCallStatefulPartitionedCall4layer_normalization/StatefulPartitionedCall:output:0dense_22221*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€	*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_20591Z
tf.nn.gelu/Gelu/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?Ш
tf.nn.gelu/Gelu/mulMultf.nn.gelu/Gelu/mul/x:output:0&dense/StatefulPartitionedCall:output:0*
T0*+
_output_shapes
:€€€€€€€€€	[
tf.nn.gelu/Gelu/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *уµ?°
tf.nn.gelu/Gelu/truedivRealDiv&dense/StatefulPartitionedCall:output:0tf.nn.gelu/Gelu/Cast/x:output:0*
T0*+
_output_shapes
:€€€€€€€€€	m
tf.nn.gelu/Gelu/ErfErftf.nn.gelu/Gelu/truediv:z:0*
T0*+
_output_shapes
:€€€€€€€€€	Z
tf.nn.gelu/Gelu/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Л
tf.nn.gelu/Gelu/addAddV2tf.nn.gelu/Gelu/add/x:output:0tf.nn.gelu/Gelu/Erf:y:0*
T0*+
_output_shapes
:€€€€€€€€€	Д
tf.nn.gelu/Gelu/mul_1Multf.nn.gelu/Gelu/mul:z:0tf.nn.gelu/Gelu/add:z:0*
T0*+
_output_shapes
:€€€€€€€€€	п
dense_1/StatefulPartitionedCallStatefulPartitionedCalltf.nn.gelu/Gelu/mul_1:z:0dense_1_22232*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€	*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_20630џ
dropout/PartitionedCallPartitionedCall(dense_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€	* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_20639Ж
add_1/PartitionedCallPartitionedCall4layer_normalization/StatefulPartitionedCall:output:0 dropout/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€	* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *I
fDRB
@__inference_add_1_layer_call_and_return_conditional_losses_20647љ
-layer_normalization_1/StatefulPartitionedCallStatefulPartitionedCalladd_1/PartitionedCall:output:0layer_normalization_1_22237layer_normalization_1_22239*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Y
fTRR
P__inference_layer_normalization_1_layer_call_and_return_conditional_losses_20671“
.multi_head_attention_1/StatefulPartitionedCallStatefulPartitionedCall6layer_normalization_1/StatefulPartitionedCall:output:06layer_normalization_1/StatefulPartitionedCall:output:0multi_head_attention_1_22242multi_head_attention_1_22244multi_head_attention_1_22246multi_head_attention_1_22248multi_head_attention_1_22250multi_head_attention_1_22252multi_head_attention_1_22254multi_head_attention_1_22256*
Tin
2
*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€	**
_read_only_resource_inputs

	*-
config_proto

CPU

GPU 2J 8В *Z
fURS
Q__inference_multi_head_attention_1_layer_call_and_return_conditional_losses_20712Я
add_2/PartitionedCallPartitionedCall6layer_normalization_1/StatefulPartitionedCall:output:07multi_head_attention_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€	* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *I
fDRB
@__inference_add_2_layer_call_and_return_conditional_losses_20736љ
-layer_normalization_2/StatefulPartitionedCallStatefulPartitionedCalladd_2/PartitionedCall:output:0layer_normalization_2_22260layer_normalization_2_22262*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Y
fTRR
P__inference_layer_normalization_2_layer_call_and_return_conditional_losses_20760М
dense_2/StatefulPartitionedCallStatefulPartitionedCall6layer_normalization_2/StatefulPartitionedCall:output:0dense_2_22265*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€	*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_20793\
tf.nn.gelu_1/Gelu/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?Ю
tf.nn.gelu_1/Gelu/mulMul tf.nn.gelu_1/Gelu/mul/x:output:0(dense_2/StatefulPartitionedCall:output:0*
T0*+
_output_shapes
:€€€€€€€€€	]
tf.nn.gelu_1/Gelu/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *уµ?І
tf.nn.gelu_1/Gelu/truedivRealDiv(dense_2/StatefulPartitionedCall:output:0!tf.nn.gelu_1/Gelu/Cast/x:output:0*
T0*+
_output_shapes
:€€€€€€€€€	q
tf.nn.gelu_1/Gelu/ErfErftf.nn.gelu_1/Gelu/truediv:z:0*
T0*+
_output_shapes
:€€€€€€€€€	\
tf.nn.gelu_1/Gelu/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?С
tf.nn.gelu_1/Gelu/addAddV2 tf.nn.gelu_1/Gelu/add/x:output:0tf.nn.gelu_1/Gelu/Erf:y:0*
T0*+
_output_shapes
:€€€€€€€€€	К
tf.nn.gelu_1/Gelu/mul_1Multf.nn.gelu_1/Gelu/mul:z:0tf.nn.gelu_1/Gelu/add:z:0*
T0*+
_output_shapes
:€€€€€€€€€	с
dense_3/StatefulPartitionedCallStatefulPartitionedCalltf.nn.gelu_1/Gelu/mul_1:z:0dense_3_22276*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€	*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_20832я
dropout_1/PartitionedCallPartitionedCall(dense_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€	* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_1_layer_call_and_return_conditional_losses_20841К
add_3/PartitionedCallPartitionedCall6layer_normalization_2/StatefulPartitionedCall:output:0"dropout_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€	* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *I
fDRB
@__inference_add_3_layer_call_and_return_conditional_losses_20849љ
-layer_normalization_3/StatefulPartitionedCallStatefulPartitionedCalladd_3/PartitionedCall:output:0layer_normalization_3_22281layer_normalization_3_22283*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Y
fTRR
P__inference_layer_normalization_3_layer_call_and_return_conditional_losses_20873“
.multi_head_attention_2/StatefulPartitionedCallStatefulPartitionedCall6layer_normalization_3/StatefulPartitionedCall:output:06layer_normalization_3/StatefulPartitionedCall:output:0multi_head_attention_2_22286multi_head_attention_2_22288multi_head_attention_2_22290multi_head_attention_2_22292multi_head_attention_2_22294multi_head_attention_2_22296multi_head_attention_2_22298multi_head_attention_2_22300*
Tin
2
*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€	**
_read_only_resource_inputs

	*-
config_proto

CPU

GPU 2J 8В *Z
fURS
Q__inference_multi_head_attention_2_layer_call_and_return_conditional_losses_20914Я
add_4/PartitionedCallPartitionedCall6layer_normalization_3/StatefulPartitionedCall:output:07multi_head_attention_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€	* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *I
fDRB
@__inference_add_4_layer_call_and_return_conditional_losses_20938љ
-layer_normalization_4/StatefulPartitionedCallStatefulPartitionedCalladd_4/PartitionedCall:output:0layer_normalization_4_22304layer_normalization_4_22306*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Y
fTRR
P__inference_layer_normalization_4_layer_call_and_return_conditional_losses_20962М
dense_4/StatefulPartitionedCallStatefulPartitionedCall6layer_normalization_4/StatefulPartitionedCall:output:0dense_4_22309*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€	*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense_4_layer_call_and_return_conditional_losses_20995\
tf.nn.gelu_2/Gelu/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?Ю
tf.nn.gelu_2/Gelu/mulMul tf.nn.gelu_2/Gelu/mul/x:output:0(dense_4/StatefulPartitionedCall:output:0*
T0*+
_output_shapes
:€€€€€€€€€	]
tf.nn.gelu_2/Gelu/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *уµ?І
tf.nn.gelu_2/Gelu/truedivRealDiv(dense_4/StatefulPartitionedCall:output:0!tf.nn.gelu_2/Gelu/Cast/x:output:0*
T0*+
_output_shapes
:€€€€€€€€€	q
tf.nn.gelu_2/Gelu/ErfErftf.nn.gelu_2/Gelu/truediv:z:0*
T0*+
_output_shapes
:€€€€€€€€€	\
tf.nn.gelu_2/Gelu/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?С
tf.nn.gelu_2/Gelu/addAddV2 tf.nn.gelu_2/Gelu/add/x:output:0tf.nn.gelu_2/Gelu/Erf:y:0*
T0*+
_output_shapes
:€€€€€€€€€	К
tf.nn.gelu_2/Gelu/mul_1Multf.nn.gelu_2/Gelu/mul:z:0tf.nn.gelu_2/Gelu/add:z:0*
T0*+
_output_shapes
:€€€€€€€€€	с
dense_5/StatefulPartitionedCallStatefulPartitionedCalltf.nn.gelu_2/Gelu/mul_1:z:0dense_5_22320*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€	*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense_5_layer_call_and_return_conditional_losses_21034я
dropout_2/PartitionedCallPartitionedCall(dense_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€	* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_2_layer_call_and_return_conditional_losses_21043К
add_5/PartitionedCallPartitionedCall6layer_normalization_4/StatefulPartitionedCall:output:0"dropout_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€	* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *I
fDRB
@__inference_add_5_layer_call_and_return_conditional_losses_21051љ
-layer_normalization_5/StatefulPartitionedCallStatefulPartitionedCalladd_5/PartitionedCall:output:0layer_normalization_5_22325layer_normalization_5_22327*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Y
fTRR
P__inference_layer_normalization_5_layer_call_and_return_conditional_losses_21075
.tf.__operators__.getitem_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        Б
0tf.__operators__.getitem_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       Б
0tf.__operators__.getitem_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ш
(tf.__operators__.getitem_1/strided_sliceStridedSlice6layer_normalization_5/StatefulPartitionedCall:output:07tf.__operators__.getitem_1/strided_slice/stack:output:09tf.__operators__.getitem_1/strided_slice/stack_1:output:09tf.__operators__.getitem_1/strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
shrink_axis_maskГ
dense_6/StatefulPartitionedCallStatefulPartitionedCall1tf.__operators__.getitem_1/strided_slice:output:0dense_6_22334*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense_6_layer_call_and_return_conditional_losses_21092~
tf.math.sigmoid/SigmoidSigmoid(dense_6/StatefulPartitionedCall:output:0*
T0*'
_output_shapes
:€€€€€€€€€j
IdentityIdentitytf.math.sigmoid/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ќ
NoOpNoOp^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall"^embedding/StatefulPartitionedCall$^embedding_1/StatefulPartitionedCall,^layer_normalization/StatefulPartitionedCall.^layer_normalization_1/StatefulPartitionedCall.^layer_normalization_2/StatefulPartitionedCall.^layer_normalization_3/StatefulPartitionedCall.^layer_normalization_4/StatefulPartitionedCall.^layer_normalization_5/StatefulPartitionedCall-^multi_head_attention/StatefulPartitionedCall/^multi_head_attention_1/StatefulPartitionedCall/^multi_head_attention_2/StatefulPartitionedCall!^tokenize/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Щ
_input_shapesЗ
Д:€€€€€€€€€:€€€€€€€€€: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2J
#embedding_1/StatefulPartitionedCall#embedding_1/StatefulPartitionedCall2Z
+layer_normalization/StatefulPartitionedCall+layer_normalization/StatefulPartitionedCall2^
-layer_normalization_1/StatefulPartitionedCall-layer_normalization_1/StatefulPartitionedCall2^
-layer_normalization_2/StatefulPartitionedCall-layer_normalization_2/StatefulPartitionedCall2^
-layer_normalization_3/StatefulPartitionedCall-layer_normalization_3/StatefulPartitionedCall2^
-layer_normalization_4/StatefulPartitionedCall-layer_normalization_4/StatefulPartitionedCall2^
-layer_normalization_5/StatefulPartitionedCall-layer_normalization_5/StatefulPartitionedCall2\
,multi_head_attention/StatefulPartitionedCall,multi_head_attention/StatefulPartitionedCall2`
.multi_head_attention_1/StatefulPartitionedCall.multi_head_attention_1/StatefulPartitionedCall2`
.multi_head_attention_2/StatefulPartitionedCall.multi_head_attention_2/StatefulPartitionedCall2D
 tokenize/StatefulPartitionedCall tokenize/StatefulPartitionedCall:P L
'
_output_shapes
:€€€€€€€€€
!
_user_specified_name	input_1:PL
'
_output_shapes
:€€€€€€€€€
!
_user_specified_name	input_2:

_output_shapes
: 
’
l
@__inference_add_5_layer_call_and_return_conditional_losses_24604
inputs_0
inputs_1
identityV
addAddV2inputs_0inputs_1*
T0*+
_output_shapes
:€€€€€€€€€	S
IdentityIdentityadd:z:0*
T0*+
_output_shapes
:€€€€€€€€€	"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:€€€€€€€€€	:€€€€€€€€€	:U Q
+
_output_shapes
:€€€€€€€€€	
"
_user_specified_name
inputs/0:UQ
+
_output_shapes
:€€€€€€€€€	
"
_user_specified_name
inputs/1
€

л
6__inference_multi_head_attention_2_layer_call_fn_24377	
query	
value
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
identityИҐStatefulPartitionedCallњ
StatefulPartitionedCallStatefulPartitionedCallqueryvalueunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2
*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€	**
_read_only_resource_inputs

	*-
config_proto

CPU

GPU 2J 8В *Z
fURS
Q__inference_multi_head_attention_2_layer_call_and_return_conditional_losses_21344s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€	`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:€€€€€€€€€	:€€€€€€€€€	: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:R N
+
_output_shapes
:€€€€€€€€€	

_user_specified_namequery:RN
+
_output_shapes
:€€€€€€€€€	

_user_specified_namevalue
«
«
%__inference_model_layer_call_fn_22173
input_1
input_2
unknown
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:

unknown_11:

unknown_12:

unknown_13:

unknown_14:

unknown_15:

unknown_16: 

unknown_17:

unknown_18: 

unknown_19:

unknown_20: 

unknown_21:

unknown_22: 

unknown_23:

unknown_24:

unknown_25:

unknown_26:

unknown_27:

unknown_28:

unknown_29:

unknown_30: 

unknown_31:

unknown_32: 

unknown_33:

unknown_34: 

unknown_35:

unknown_36: 

unknown_37:

unknown_38:

unknown_39:

unknown_40:

unknown_41:

unknown_42:

unknown_43:

unknown_44:

unknown_45:
identityИҐStatefulPartitionedCallћ
StatefulPartitionedCallStatefulPartitionedCallinput_1input_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44
unknown_45*<
Tin5
321*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*P
_read_only_resource_inputs2
0.	
 !"#$%&'()*+,-./0*-
config_proto

CPU

GPU 2J 8В *I
fDRB
@__inference_model_layer_call_and_return_conditional_losses_21976o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Щ
_input_shapesЗ
Д:€€€€€€€€€:€€€€€€€€€: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:€€€€€€€€€
!
_user_specified_name	input_1:PL
'
_output_shapes
:€€€€€€€€€
!
_user_specified_name	input_2:

_output_shapes
: 
¬
ѓ
@__inference_dense_layer_call_and_return_conditional_losses_20591

inputs3
!tensordot_readvariableop_resource:
identityИҐTensordot/ReadVariableOpz
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ї
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : њ
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ь
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:y
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:€€€€€€€€€	К
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€К
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : І
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Г
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:€€€€€€€€€	e
IdentityIdentityTensordot:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€	a
NoOpNoOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:€€€€€€€€€	: 24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:€€€€€€€€€	
 
_user_specified_nameinputs
п
П
P__inference_layer_normalization_3_layer_call_and_return_conditional_losses_20873

inputs3
%batchnorm_mul_readvariableop_resource:/
!batchnorm_readvariableop_resource:
identityИҐbatchnorm/ReadVariableOpҐbatchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:М
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:€€€€€€€€€	*
	keep_dims(q
moments/StopGradientStopGradientmoments/mean:output:0*
T0*+
_output_shapes
:€€€€€€€€€	Л
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*+
_output_shapes
:€€€€€€€€€	l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:Ђ
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:€€€€€€€€€	*
	keep_dims(T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *љ7Ж5Б
batchnorm/addAddV2moments/variance:output:0batchnorm/add/y:output:0*
T0*+
_output_shapes
:€€€€€€€€€	a
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*+
_output_shapes
:€€€€€€€€€	~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0Е
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€	g
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€	v
batchnorm/mul_2Mulmoments/mean:output:0batchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€	v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0Б
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*+
_output_shapes
:€€€€€€€€€	v
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*+
_output_shapes
:€€€€€€€€€	f
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€	А
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€	: : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:S O
+
_output_shapes
:€€€€€€€€€	
 
_user_specified_nameinputs
«
«
%__inference_model_layer_call_fn_21195
input_1
input_2
unknown
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:

unknown_11:

unknown_12:

unknown_13:

unknown_14:

unknown_15:

unknown_16: 

unknown_17:

unknown_18: 

unknown_19:

unknown_20: 

unknown_21:

unknown_22: 

unknown_23:

unknown_24:

unknown_25:

unknown_26:

unknown_27:

unknown_28:

unknown_29:

unknown_30: 

unknown_31:

unknown_32: 

unknown_33:

unknown_34: 

unknown_35:

unknown_36: 

unknown_37:

unknown_38:

unknown_39:

unknown_40:

unknown_41:

unknown_42:

unknown_43:

unknown_44:

unknown_45:
identityИҐStatefulPartitionedCallћ
StatefulPartitionedCallStatefulPartitionedCallinput_1input_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44
unknown_45*<
Tin5
321*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*P
_read_only_resource_inputs2
0.	
 !"#$%&'()*+,-./0*-
config_proto

CPU

GPU 2J 8В *I
fDRB
@__inference_model_layer_call_and_return_conditional_losses_21098o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Щ
_input_shapesЗ
Д:€€€€€€€€€:€€€€€€€€€: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:€€€€€€€€€
!
_user_specified_name	input_1:PL
'
_output_shapes
:€€€€€€€€€
!
_user_specified_name	input_2:

_output_shapes
: 
Ю*
ъ
Q__inference_multi_head_attention_2_layer_call_and_return_conditional_losses_24412	
query	
valueA
+query_einsum_einsum_readvariableop_resource:3
!query_add_readvariableop_resource:?
)key_einsum_einsum_readvariableop_resource:1
key_add_readvariableop_resource:A
+value_einsum_einsum_readvariableop_resource:3
!value_add_readvariableop_resource:L
6attention_output_einsum_einsum_readvariableop_resource::
,attention_output_add_readvariableop_resource:
identityИҐ#attention_output/add/ReadVariableOpҐ-attention_output/einsum/Einsum/ReadVariableOpҐkey/add/ReadVariableOpҐ key/einsum/Einsum/ReadVariableOpҐquery/add/ReadVariableOpҐ"query/einsum/Einsum/ReadVariableOpҐvalue/add/ReadVariableOpҐ"value/einsum/Einsum/ReadVariableOpТ
"query/einsum/Einsum/ReadVariableOpReadVariableOp+query_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0∞
query/einsum/EinsumEinsumquery*query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:€€€€€€€€€	*
equationabc,cde->abdez
query/add/ReadVariableOpReadVariableOp!query_add_readvariableop_resource*
_output_shapes

:*
dtype0М
	query/addAddV2query/einsum/Einsum:output:0 query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€	О
 key/einsum/Einsum/ReadVariableOpReadVariableOp)key_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0ђ
key/einsum/EinsumEinsumvalue(key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:€€€€€€€€€	*
equationabc,cde->abdev
key/add/ReadVariableOpReadVariableOpkey_add_readvariableop_resource*
_output_shapes

:*
dtype0Ж
key/addAddV2key/einsum/Einsum:output:0key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€	Т
"value/einsum/Einsum/ReadVariableOpReadVariableOp+value_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0∞
value/einsum/EinsumEinsumvalue*value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:€€€€€€€€€	*
equationabc,cde->abdez
value/add/ReadVariableOpReadVariableOp!value_add_readvariableop_resource*
_output_shapes

:*
dtype0М
	value/addAddV2value/einsum/Einsum:output:0 value/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€	J
Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>c
MulMulquery/add:z:0Mul/y:output:0*
T0*/
_output_shapes
:€€€€€€€€€	П
einsum/EinsumEinsumkey/add:z:0Mul:z:0*
N*
T0*/
_output_shapes
:€€€€€€€€€		*
equationaecd,abcd->acbel
softmax/SoftmaxSoftmaxeinsum/Einsum:output:0*
T0*/
_output_shapes
:€€€€€€€€€		q
dropout/IdentityIdentitysoftmax/Softmax:softmax:0*
T0*/
_output_shapes
:€€€€€€€€€		•
einsum_1/EinsumEinsumdropout/Identity:output:0value/add:z:0*
N*
T0*/
_output_shapes
:€€€€€€€€€	*
equationacbe,aecd->abcd®
-attention_output/einsum/Einsum/ReadVariableOpReadVariableOp6attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0’
attention_output/einsum/EinsumEinsumeinsum_1/Einsum:output:05attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:€€€€€€€€€	*
equationabcd,cde->abeМ
#attention_output/add/ReadVariableOpReadVariableOp,attention_output_add_readvariableop_resource*
_output_shapes
:*
dtype0©
attention_output/addAddV2'attention_output/einsum/Einsum:output:0+attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€	k
IdentityIdentityattention_output/add:z:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€	Ў
NoOpNoOp$^attention_output/add/ReadVariableOp.^attention_output/einsum/Einsum/ReadVariableOp^key/add/ReadVariableOp!^key/einsum/Einsum/ReadVariableOp^query/add/ReadVariableOp#^query/einsum/Einsum/ReadVariableOp^value/add/ReadVariableOp#^value/einsum/Einsum/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:€€€€€€€€€	:€€€€€€€€€	: : : : : : : : 2J
#attention_output/add/ReadVariableOp#attention_output/add/ReadVariableOp2^
-attention_output/einsum/Einsum/ReadVariableOp-attention_output/einsum/Einsum/ReadVariableOp20
key/add/ReadVariableOpkey/add/ReadVariableOp2D
 key/einsum/Einsum/ReadVariableOp key/einsum/Einsum/ReadVariableOp24
query/add/ReadVariableOpquery/add/ReadVariableOp2H
"query/einsum/Einsum/ReadVariableOp"query/einsum/Einsum/ReadVariableOp24
value/add/ReadVariableOpvalue/add/ReadVariableOp2H
"value/einsum/Einsum/ReadVariableOp"value/einsum/Einsum/ReadVariableOp:R N
+
_output_shapes
:€€€€€€€€€	

_user_specified_namequery:RN
+
_output_shapes
:€€€€€€€€€	

_user_specified_namevalue
≠
E
)__inference_dropout_2_layer_call_fn_24570

inputs
identity≥
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€	* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_2_layer_call_and_return_conditional_losses_21043d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:€€€€€€€€€	"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€	:S O
+
_output_shapes
:€€€€€€€€€	
 
_user_specified_nameinputs
ƒ
±
B__inference_dense_3_layer_call_and_return_conditional_losses_24263

inputs3
!tensordot_readvariableop_resource:
identityИҐTensordot/ReadVariableOpz
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ї
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : њ
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ь
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:y
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:€€€€€€€€€	К
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€К
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : І
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Г
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:€€€€€€€€€	e
IdentityIdentityTensordot:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€	a
NoOpNoOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:€€€€€€€€€	: 24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:€€€€€€€€€	
 
_user_specified_nameinputs
к≈
Юk
!__inference__traced_restore_25548
file_prefix7
%assignvariableop_embedding_embeddings:;
)assignvariableop_1_embedding_1_embeddings:4
"assignvariableop_2_tokenize_kernel::
,assignvariableop_3_layer_normalization_gamma:9
+assignvariableop_4_layer_normalization_beta:1
assignvariableop_5_dense_kernel:3
!assignvariableop_6_dense_1_kernel:<
.assignvariableop_7_layer_normalization_1_gamma:;
-assignvariableop_8_layer_normalization_1_beta:<
.assignvariableop_9_layer_normalization_2_gamma:<
.assignvariableop_10_layer_normalization_2_beta:4
"assignvariableop_11_dense_2_kernel:4
"assignvariableop_12_dense_3_kernel:=
/assignvariableop_13_layer_normalization_3_gamma:<
.assignvariableop_14_layer_normalization_3_beta:=
/assignvariableop_15_layer_normalization_4_gamma:<
.assignvariableop_16_layer_normalization_4_beta:4
"assignvariableop_17_dense_4_kernel:4
"assignvariableop_18_dense_5_kernel:=
/assignvariableop_19_layer_normalization_5_gamma:<
.assignvariableop_20_layer_normalization_5_beta:4
"assignvariableop_21_dense_6_kernel:K
5assignvariableop_22_multi_head_attention_query_kernel:E
3assignvariableop_23_multi_head_attention_query_bias:I
3assignvariableop_24_multi_head_attention_key_kernel:C
1assignvariableop_25_multi_head_attention_key_bias:K
5assignvariableop_26_multi_head_attention_value_kernel:E
3assignvariableop_27_multi_head_attention_value_bias:V
@assignvariableop_28_multi_head_attention_attention_output_kernel:L
>assignvariableop_29_multi_head_attention_attention_output_bias:M
7assignvariableop_30_multi_head_attention_1_query_kernel:G
5assignvariableop_31_multi_head_attention_1_query_bias:K
5assignvariableop_32_multi_head_attention_1_key_kernel:E
3assignvariableop_33_multi_head_attention_1_key_bias:M
7assignvariableop_34_multi_head_attention_1_value_kernel:G
5assignvariableop_35_multi_head_attention_1_value_bias:X
Bassignvariableop_36_multi_head_attention_1_attention_output_kernel:N
@assignvariableop_37_multi_head_attention_1_attention_output_bias:M
7assignvariableop_38_multi_head_attention_2_query_kernel:G
5assignvariableop_39_multi_head_attention_2_query_bias:K
5assignvariableop_40_multi_head_attention_2_key_kernel:E
3assignvariableop_41_multi_head_attention_2_key_bias:M
7assignvariableop_42_multi_head_attention_2_value_kernel:G
5assignvariableop_43_multi_head_attention_2_value_bias:X
Bassignvariableop_44_multi_head_attention_2_attention_output_kernel:N
@assignvariableop_45_multi_head_attention_2_attention_output_bias:'
assignvariableop_46_iteration:	 +
!assignvariableop_47_learning_rate: B
0assignvariableop_48_adamw_m_embedding_embeddings:B
0assignvariableop_49_adamw_v_embedding_embeddings:D
2assignvariableop_50_adamw_m_embedding_1_embeddings:D
2assignvariableop_51_adamw_v_embedding_1_embeddings:=
+assignvariableop_52_adamw_m_tokenize_kernel:=
+assignvariableop_53_adamw_v_tokenize_kernel:S
=assignvariableop_54_adamw_m_multi_head_attention_query_kernel:S
=assignvariableop_55_adamw_v_multi_head_attention_query_kernel:M
;assignvariableop_56_adamw_m_multi_head_attention_query_bias:M
;assignvariableop_57_adamw_v_multi_head_attention_query_bias:Q
;assignvariableop_58_adamw_m_multi_head_attention_key_kernel:Q
;assignvariableop_59_adamw_v_multi_head_attention_key_kernel:K
9assignvariableop_60_adamw_m_multi_head_attention_key_bias:K
9assignvariableop_61_adamw_v_multi_head_attention_key_bias:S
=assignvariableop_62_adamw_m_multi_head_attention_value_kernel:S
=assignvariableop_63_adamw_v_multi_head_attention_value_kernel:M
;assignvariableop_64_adamw_m_multi_head_attention_value_bias:M
;assignvariableop_65_adamw_v_multi_head_attention_value_bias:^
Hassignvariableop_66_adamw_m_multi_head_attention_attention_output_kernel:^
Hassignvariableop_67_adamw_v_multi_head_attention_attention_output_kernel:T
Fassignvariableop_68_adamw_m_multi_head_attention_attention_output_bias:T
Fassignvariableop_69_adamw_v_multi_head_attention_attention_output_bias:C
5assignvariableop_70_adamw_m_layer_normalization_gamma:C
5assignvariableop_71_adamw_v_layer_normalization_gamma:B
4assignvariableop_72_adamw_m_layer_normalization_beta:B
4assignvariableop_73_adamw_v_layer_normalization_beta::
(assignvariableop_74_adamw_m_dense_kernel::
(assignvariableop_75_adamw_v_dense_kernel:<
*assignvariableop_76_adamw_m_dense_1_kernel:<
*assignvariableop_77_adamw_v_dense_1_kernel:E
7assignvariableop_78_adamw_m_layer_normalization_1_gamma:E
7assignvariableop_79_adamw_v_layer_normalization_1_gamma:D
6assignvariableop_80_adamw_m_layer_normalization_1_beta:D
6assignvariableop_81_adamw_v_layer_normalization_1_beta:U
?assignvariableop_82_adamw_m_multi_head_attention_1_query_kernel:U
?assignvariableop_83_adamw_v_multi_head_attention_1_query_kernel:O
=assignvariableop_84_adamw_m_multi_head_attention_1_query_bias:O
=assignvariableop_85_adamw_v_multi_head_attention_1_query_bias:S
=assignvariableop_86_adamw_m_multi_head_attention_1_key_kernel:S
=assignvariableop_87_adamw_v_multi_head_attention_1_key_kernel:M
;assignvariableop_88_adamw_m_multi_head_attention_1_key_bias:M
;assignvariableop_89_adamw_v_multi_head_attention_1_key_bias:U
?assignvariableop_90_adamw_m_multi_head_attention_1_value_kernel:U
?assignvariableop_91_adamw_v_multi_head_attention_1_value_kernel:O
=assignvariableop_92_adamw_m_multi_head_attention_1_value_bias:O
=assignvariableop_93_adamw_v_multi_head_attention_1_value_bias:`
Jassignvariableop_94_adamw_m_multi_head_attention_1_attention_output_kernel:`
Jassignvariableop_95_adamw_v_multi_head_attention_1_attention_output_kernel:V
Hassignvariableop_96_adamw_m_multi_head_attention_1_attention_output_bias:V
Hassignvariableop_97_adamw_v_multi_head_attention_1_attention_output_bias:E
7assignvariableop_98_adamw_m_layer_normalization_2_gamma:E
7assignvariableop_99_adamw_v_layer_normalization_2_gamma:E
7assignvariableop_100_adamw_m_layer_normalization_2_beta:E
7assignvariableop_101_adamw_v_layer_normalization_2_beta:=
+assignvariableop_102_adamw_m_dense_2_kernel:=
+assignvariableop_103_adamw_v_dense_2_kernel:=
+assignvariableop_104_adamw_m_dense_3_kernel:=
+assignvariableop_105_adamw_v_dense_3_kernel:F
8assignvariableop_106_adamw_m_layer_normalization_3_gamma:F
8assignvariableop_107_adamw_v_layer_normalization_3_gamma:E
7assignvariableop_108_adamw_m_layer_normalization_3_beta:E
7assignvariableop_109_adamw_v_layer_normalization_3_beta:V
@assignvariableop_110_adamw_m_multi_head_attention_2_query_kernel:V
@assignvariableop_111_adamw_v_multi_head_attention_2_query_kernel:P
>assignvariableop_112_adamw_m_multi_head_attention_2_query_bias:P
>assignvariableop_113_adamw_v_multi_head_attention_2_query_bias:T
>assignvariableop_114_adamw_m_multi_head_attention_2_key_kernel:T
>assignvariableop_115_adamw_v_multi_head_attention_2_key_kernel:N
<assignvariableop_116_adamw_m_multi_head_attention_2_key_bias:N
<assignvariableop_117_adamw_v_multi_head_attention_2_key_bias:V
@assignvariableop_118_adamw_m_multi_head_attention_2_value_kernel:V
@assignvariableop_119_adamw_v_multi_head_attention_2_value_kernel:P
>assignvariableop_120_adamw_m_multi_head_attention_2_value_bias:P
>assignvariableop_121_adamw_v_multi_head_attention_2_value_bias:a
Kassignvariableop_122_adamw_m_multi_head_attention_2_attention_output_kernel:a
Kassignvariableop_123_adamw_v_multi_head_attention_2_attention_output_kernel:W
Iassignvariableop_124_adamw_m_multi_head_attention_2_attention_output_bias:W
Iassignvariableop_125_adamw_v_multi_head_attention_2_attention_output_bias:F
8assignvariableop_126_adamw_m_layer_normalization_4_gamma:F
8assignvariableop_127_adamw_v_layer_normalization_4_gamma:E
7assignvariableop_128_adamw_m_layer_normalization_4_beta:E
7assignvariableop_129_adamw_v_layer_normalization_4_beta:=
+assignvariableop_130_adamw_m_dense_4_kernel:=
+assignvariableop_131_adamw_v_dense_4_kernel:=
+assignvariableop_132_adamw_m_dense_5_kernel:=
+assignvariableop_133_adamw_v_dense_5_kernel:F
8assignvariableop_134_adamw_m_layer_normalization_5_gamma:F
8assignvariableop_135_adamw_v_layer_normalization_5_gamma:E
7assignvariableop_136_adamw_m_layer_normalization_5_beta:E
7assignvariableop_137_adamw_v_layer_normalization_5_beta:=
+assignvariableop_138_adamw_m_dense_6_kernel:=
+assignvariableop_139_adamw_v_dense_6_kernel:&
assignvariableop_140_total_1: &
assignvariableop_141_count_1: $
assignvariableop_142_total: $
assignvariableop_143_count: 
identity_145ИҐAssignVariableOpҐAssignVariableOp_1ҐAssignVariableOp_10ҐAssignVariableOp_100ҐAssignVariableOp_101ҐAssignVariableOp_102ҐAssignVariableOp_103ҐAssignVariableOp_104ҐAssignVariableOp_105ҐAssignVariableOp_106ҐAssignVariableOp_107ҐAssignVariableOp_108ҐAssignVariableOp_109ҐAssignVariableOp_11ҐAssignVariableOp_110ҐAssignVariableOp_111ҐAssignVariableOp_112ҐAssignVariableOp_113ҐAssignVariableOp_114ҐAssignVariableOp_115ҐAssignVariableOp_116ҐAssignVariableOp_117ҐAssignVariableOp_118ҐAssignVariableOp_119ҐAssignVariableOp_12ҐAssignVariableOp_120ҐAssignVariableOp_121ҐAssignVariableOp_122ҐAssignVariableOp_123ҐAssignVariableOp_124ҐAssignVariableOp_125ҐAssignVariableOp_126ҐAssignVariableOp_127ҐAssignVariableOp_128ҐAssignVariableOp_129ҐAssignVariableOp_13ҐAssignVariableOp_130ҐAssignVariableOp_131ҐAssignVariableOp_132ҐAssignVariableOp_133ҐAssignVariableOp_134ҐAssignVariableOp_135ҐAssignVariableOp_136ҐAssignVariableOp_137ҐAssignVariableOp_138ҐAssignVariableOp_139ҐAssignVariableOp_14ҐAssignVariableOp_140ҐAssignVariableOp_141ҐAssignVariableOp_142ҐAssignVariableOp_143ҐAssignVariableOp_15ҐAssignVariableOp_16ҐAssignVariableOp_17ҐAssignVariableOp_18ҐAssignVariableOp_19ҐAssignVariableOp_2ҐAssignVariableOp_20ҐAssignVariableOp_21ҐAssignVariableOp_22ҐAssignVariableOp_23ҐAssignVariableOp_24ҐAssignVariableOp_25ҐAssignVariableOp_26ҐAssignVariableOp_27ҐAssignVariableOp_28ҐAssignVariableOp_29ҐAssignVariableOp_3ҐAssignVariableOp_30ҐAssignVariableOp_31ҐAssignVariableOp_32ҐAssignVariableOp_33ҐAssignVariableOp_34ҐAssignVariableOp_35ҐAssignVariableOp_36ҐAssignVariableOp_37ҐAssignVariableOp_38ҐAssignVariableOp_39ҐAssignVariableOp_4ҐAssignVariableOp_40ҐAssignVariableOp_41ҐAssignVariableOp_42ҐAssignVariableOp_43ҐAssignVariableOp_44ҐAssignVariableOp_45ҐAssignVariableOp_46ҐAssignVariableOp_47ҐAssignVariableOp_48ҐAssignVariableOp_49ҐAssignVariableOp_5ҐAssignVariableOp_50ҐAssignVariableOp_51ҐAssignVariableOp_52ҐAssignVariableOp_53ҐAssignVariableOp_54ҐAssignVariableOp_55ҐAssignVariableOp_56ҐAssignVariableOp_57ҐAssignVariableOp_58ҐAssignVariableOp_59ҐAssignVariableOp_6ҐAssignVariableOp_60ҐAssignVariableOp_61ҐAssignVariableOp_62ҐAssignVariableOp_63ҐAssignVariableOp_64ҐAssignVariableOp_65ҐAssignVariableOp_66ҐAssignVariableOp_67ҐAssignVariableOp_68ҐAssignVariableOp_69ҐAssignVariableOp_7ҐAssignVariableOp_70ҐAssignVariableOp_71ҐAssignVariableOp_72ҐAssignVariableOp_73ҐAssignVariableOp_74ҐAssignVariableOp_75ҐAssignVariableOp_76ҐAssignVariableOp_77ҐAssignVariableOp_78ҐAssignVariableOp_79ҐAssignVariableOp_8ҐAssignVariableOp_80ҐAssignVariableOp_81ҐAssignVariableOp_82ҐAssignVariableOp_83ҐAssignVariableOp_84ҐAssignVariableOp_85ҐAssignVariableOp_86ҐAssignVariableOp_87ҐAssignVariableOp_88ҐAssignVariableOp_89ҐAssignVariableOp_9ҐAssignVariableOp_90ҐAssignVariableOp_91ҐAssignVariableOp_92ҐAssignVariableOp_93ҐAssignVariableOp_94ҐAssignVariableOp_95ҐAssignVariableOp_96ҐAssignVariableOp_97ҐAssignVariableOp_98ҐAssignVariableOp_99Ц:
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes	
:С*
dtype0*ї9
value±9BЃ9СB:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-1/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-4/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-9/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/beta/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-11/kernel/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-12/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-12/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-14/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-14/beta/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-15/kernel/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-16/kernel/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-17/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-17/beta/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-18/kernel/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/20/.ATTRIBUTES/VARIABLE_VALUEB'variables/21/.ATTRIBUTES/VARIABLE_VALUEB'variables/22/.ATTRIBUTES/VARIABLE_VALUEB'variables/23/.ATTRIBUTES/VARIABLE_VALUEB'variables/24/.ATTRIBUTES/VARIABLE_VALUEB'variables/31/.ATTRIBUTES/VARIABLE_VALUEB'variables/32/.ATTRIBUTES/VARIABLE_VALUEB'variables/33/.ATTRIBUTES/VARIABLE_VALUEB'variables/34/.ATTRIBUTES/VARIABLE_VALUEB'variables/35/.ATTRIBUTES/VARIABLE_VALUEB'variables/36/.ATTRIBUTES/VARIABLE_VALUEB'variables/37/.ATTRIBUTES/VARIABLE_VALUEB'variables/38/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/0/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/26/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/27/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/28/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/29/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/30/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/31/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/32/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/33/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/34/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/35/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/36/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/37/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/38/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/39/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/40/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/41/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/42/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/43/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/44/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/45/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/46/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/47/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/48/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/49/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/50/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/51/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/52/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/53/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/54/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/55/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/56/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/57/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/58/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/59/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/60/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/61/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/62/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/63/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/64/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/65/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/66/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/67/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/68/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/69/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/70/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/71/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/72/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/73/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/74/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/75/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/76/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/77/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/78/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/79/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/80/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/81/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/82/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/83/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/84/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/85/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/86/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/87/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/88/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/89/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/90/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/91/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHЧ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes	
:С*
dtype0*Є
valueЃBЂСB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ъ
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*Џ
_output_shapes«
ƒ:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*Ґ
dtypesЧ
Ф2С	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOpAssignVariableOp%assignvariableop_embedding_embeddingsIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:Ш
AssignVariableOp_1AssignVariableOp)assignvariableop_1_embedding_1_embeddingsIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:С
AssignVariableOp_2AssignVariableOp"assignvariableop_2_tokenize_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_3AssignVariableOp,assignvariableop_3_layer_normalization_gammaIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_4AssignVariableOp+assignvariableop_4_layer_normalization_betaIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:О
AssignVariableOp_5AssignVariableOpassignvariableop_5_dense_kernelIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_6AssignVariableOp!assignvariableop_6_dense_1_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:Э
AssignVariableOp_7AssignVariableOp.assignvariableop_7_layer_normalization_1_gammaIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_8AssignVariableOp-assignvariableop_8_layer_normalization_1_betaIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:Э
AssignVariableOp_9AssignVariableOp.assignvariableop_9_layer_normalization_2_gammaIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:Я
AssignVariableOp_10AssignVariableOp.assignvariableop_10_layer_normalization_2_betaIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:У
AssignVariableOp_11AssignVariableOp"assignvariableop_11_dense_2_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:У
AssignVariableOp_12AssignVariableOp"assignvariableop_12_dense_3_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:†
AssignVariableOp_13AssignVariableOp/assignvariableop_13_layer_normalization_3_gammaIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:Я
AssignVariableOp_14AssignVariableOp.assignvariableop_14_layer_normalization_3_betaIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:†
AssignVariableOp_15AssignVariableOp/assignvariableop_15_layer_normalization_4_gammaIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:Я
AssignVariableOp_16AssignVariableOp.assignvariableop_16_layer_normalization_4_betaIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:У
AssignVariableOp_17AssignVariableOp"assignvariableop_17_dense_4_kernelIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:У
AssignVariableOp_18AssignVariableOp"assignvariableop_18_dense_5_kernelIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:†
AssignVariableOp_19AssignVariableOp/assignvariableop_19_layer_normalization_5_gammaIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:Я
AssignVariableOp_20AssignVariableOp.assignvariableop_20_layer_normalization_5_betaIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:У
AssignVariableOp_21AssignVariableOp"assignvariableop_21_dense_6_kernelIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:¶
AssignVariableOp_22AssignVariableOp5assignvariableop_22_multi_head_attention_query_kernelIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_23AssignVariableOp3assignvariableop_23_multi_head_attention_query_biasIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_24AssignVariableOp3assignvariableop_24_multi_head_attention_key_kernelIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:Ґ
AssignVariableOp_25AssignVariableOp1assignvariableop_25_multi_head_attention_key_biasIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:¶
AssignVariableOp_26AssignVariableOp5assignvariableop_26_multi_head_attention_value_kernelIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_27AssignVariableOp3assignvariableop_27_multi_head_attention_value_biasIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:±
AssignVariableOp_28AssignVariableOp@assignvariableop_28_multi_head_attention_attention_output_kernelIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:ѓ
AssignVariableOp_29AssignVariableOp>assignvariableop_29_multi_head_attention_attention_output_biasIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:®
AssignVariableOp_30AssignVariableOp7assignvariableop_30_multi_head_attention_1_query_kernelIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:¶
AssignVariableOp_31AssignVariableOp5assignvariableop_31_multi_head_attention_1_query_biasIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:¶
AssignVariableOp_32AssignVariableOp5assignvariableop_32_multi_head_attention_1_key_kernelIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_33AssignVariableOp3assignvariableop_33_multi_head_attention_1_key_biasIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:®
AssignVariableOp_34AssignVariableOp7assignvariableop_34_multi_head_attention_1_value_kernelIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:¶
AssignVariableOp_35AssignVariableOp5assignvariableop_35_multi_head_attention_1_value_biasIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:≥
AssignVariableOp_36AssignVariableOpBassignvariableop_36_multi_head_attention_1_attention_output_kernelIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:±
AssignVariableOp_37AssignVariableOp@assignvariableop_37_multi_head_attention_1_attention_output_biasIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:®
AssignVariableOp_38AssignVariableOp7assignvariableop_38_multi_head_attention_2_query_kernelIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:¶
AssignVariableOp_39AssignVariableOp5assignvariableop_39_multi_head_attention_2_query_biasIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:¶
AssignVariableOp_40AssignVariableOp5assignvariableop_40_multi_head_attention_2_key_kernelIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_41AssignVariableOp3assignvariableop_41_multi_head_attention_2_key_biasIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:®
AssignVariableOp_42AssignVariableOp7assignvariableop_42_multi_head_attention_2_value_kernelIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:¶
AssignVariableOp_43AssignVariableOp5assignvariableop_43_multi_head_attention_2_value_biasIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:≥
AssignVariableOp_44AssignVariableOpBassignvariableop_44_multi_head_attention_2_attention_output_kernelIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:±
AssignVariableOp_45AssignVariableOp@assignvariableop_45_multi_head_attention_2_attention_output_biasIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0	*
_output_shapes
:О
AssignVariableOp_46AssignVariableOpassignvariableop_46_iterationIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:Т
AssignVariableOp_47AssignVariableOp!assignvariableop_47_learning_rateIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:°
AssignVariableOp_48AssignVariableOp0assignvariableop_48_adamw_m_embedding_embeddingsIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:°
AssignVariableOp_49AssignVariableOp0assignvariableop_49_adamw_v_embedding_embeddingsIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:£
AssignVariableOp_50AssignVariableOp2assignvariableop_50_adamw_m_embedding_1_embeddingsIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:£
AssignVariableOp_51AssignVariableOp2assignvariableop_51_adamw_v_embedding_1_embeddingsIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_52AssignVariableOp+assignvariableop_52_adamw_m_tokenize_kernelIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_53AssignVariableOp+assignvariableop_53_adamw_v_tokenize_kernelIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:Ѓ
AssignVariableOp_54AssignVariableOp=assignvariableop_54_adamw_m_multi_head_attention_query_kernelIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:Ѓ
AssignVariableOp_55AssignVariableOp=assignvariableop_55_adamw_v_multi_head_attention_query_kernelIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:ђ
AssignVariableOp_56AssignVariableOp;assignvariableop_56_adamw_m_multi_head_attention_query_biasIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:ђ
AssignVariableOp_57AssignVariableOp;assignvariableop_57_adamw_v_multi_head_attention_query_biasIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:ђ
AssignVariableOp_58AssignVariableOp;assignvariableop_58_adamw_m_multi_head_attention_key_kernelIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:ђ
AssignVariableOp_59AssignVariableOp;assignvariableop_59_adamw_v_multi_head_attention_key_kernelIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:™
AssignVariableOp_60AssignVariableOp9assignvariableop_60_adamw_m_multi_head_attention_key_biasIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:™
AssignVariableOp_61AssignVariableOp9assignvariableop_61_adamw_v_multi_head_attention_key_biasIdentity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:Ѓ
AssignVariableOp_62AssignVariableOp=assignvariableop_62_adamw_m_multi_head_attention_value_kernelIdentity_62:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:Ѓ
AssignVariableOp_63AssignVariableOp=assignvariableop_63_adamw_v_multi_head_attention_value_kernelIdentity_63:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:ђ
AssignVariableOp_64AssignVariableOp;assignvariableop_64_adamw_m_multi_head_attention_value_biasIdentity_64:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:ђ
AssignVariableOp_65AssignVariableOp;assignvariableop_65_adamw_v_multi_head_attention_value_biasIdentity_65:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:є
AssignVariableOp_66AssignVariableOpHassignvariableop_66_adamw_m_multi_head_attention_attention_output_kernelIdentity_66:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:є
AssignVariableOp_67AssignVariableOpHassignvariableop_67_adamw_v_multi_head_attention_attention_output_kernelIdentity_67:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:Ј
AssignVariableOp_68AssignVariableOpFassignvariableop_68_adamw_m_multi_head_attention_attention_output_biasIdentity_68:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:Ј
AssignVariableOp_69AssignVariableOpFassignvariableop_69_adamw_v_multi_head_attention_attention_output_biasIdentity_69:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_70IdentityRestoreV2:tensors:70"/device:CPU:0*
T0*
_output_shapes
:¶
AssignVariableOp_70AssignVariableOp5assignvariableop_70_adamw_m_layer_normalization_gammaIdentity_70:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_71IdentityRestoreV2:tensors:71"/device:CPU:0*
T0*
_output_shapes
:¶
AssignVariableOp_71AssignVariableOp5assignvariableop_71_adamw_v_layer_normalization_gammaIdentity_71:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_72IdentityRestoreV2:tensors:72"/device:CPU:0*
T0*
_output_shapes
:•
AssignVariableOp_72AssignVariableOp4assignvariableop_72_adamw_m_layer_normalization_betaIdentity_72:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_73IdentityRestoreV2:tensors:73"/device:CPU:0*
T0*
_output_shapes
:•
AssignVariableOp_73AssignVariableOp4assignvariableop_73_adamw_v_layer_normalization_betaIdentity_73:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_74IdentityRestoreV2:tensors:74"/device:CPU:0*
T0*
_output_shapes
:Щ
AssignVariableOp_74AssignVariableOp(assignvariableop_74_adamw_m_dense_kernelIdentity_74:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_75IdentityRestoreV2:tensors:75"/device:CPU:0*
T0*
_output_shapes
:Щ
AssignVariableOp_75AssignVariableOp(assignvariableop_75_adamw_v_dense_kernelIdentity_75:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_76IdentityRestoreV2:tensors:76"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_76AssignVariableOp*assignvariableop_76_adamw_m_dense_1_kernelIdentity_76:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_77IdentityRestoreV2:tensors:77"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_77AssignVariableOp*assignvariableop_77_adamw_v_dense_1_kernelIdentity_77:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_78IdentityRestoreV2:tensors:78"/device:CPU:0*
T0*
_output_shapes
:®
AssignVariableOp_78AssignVariableOp7assignvariableop_78_adamw_m_layer_normalization_1_gammaIdentity_78:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_79IdentityRestoreV2:tensors:79"/device:CPU:0*
T0*
_output_shapes
:®
AssignVariableOp_79AssignVariableOp7assignvariableop_79_adamw_v_layer_normalization_1_gammaIdentity_79:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_80IdentityRestoreV2:tensors:80"/device:CPU:0*
T0*
_output_shapes
:І
AssignVariableOp_80AssignVariableOp6assignvariableop_80_adamw_m_layer_normalization_1_betaIdentity_80:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_81IdentityRestoreV2:tensors:81"/device:CPU:0*
T0*
_output_shapes
:І
AssignVariableOp_81AssignVariableOp6assignvariableop_81_adamw_v_layer_normalization_1_betaIdentity_81:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_82IdentityRestoreV2:tensors:82"/device:CPU:0*
T0*
_output_shapes
:∞
AssignVariableOp_82AssignVariableOp?assignvariableop_82_adamw_m_multi_head_attention_1_query_kernelIdentity_82:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_83IdentityRestoreV2:tensors:83"/device:CPU:0*
T0*
_output_shapes
:∞
AssignVariableOp_83AssignVariableOp?assignvariableop_83_adamw_v_multi_head_attention_1_query_kernelIdentity_83:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_84IdentityRestoreV2:tensors:84"/device:CPU:0*
T0*
_output_shapes
:Ѓ
AssignVariableOp_84AssignVariableOp=assignvariableop_84_adamw_m_multi_head_attention_1_query_biasIdentity_84:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_85IdentityRestoreV2:tensors:85"/device:CPU:0*
T0*
_output_shapes
:Ѓ
AssignVariableOp_85AssignVariableOp=assignvariableop_85_adamw_v_multi_head_attention_1_query_biasIdentity_85:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_86IdentityRestoreV2:tensors:86"/device:CPU:0*
T0*
_output_shapes
:Ѓ
AssignVariableOp_86AssignVariableOp=assignvariableop_86_adamw_m_multi_head_attention_1_key_kernelIdentity_86:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_87IdentityRestoreV2:tensors:87"/device:CPU:0*
T0*
_output_shapes
:Ѓ
AssignVariableOp_87AssignVariableOp=assignvariableop_87_adamw_v_multi_head_attention_1_key_kernelIdentity_87:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_88IdentityRestoreV2:tensors:88"/device:CPU:0*
T0*
_output_shapes
:ђ
AssignVariableOp_88AssignVariableOp;assignvariableop_88_adamw_m_multi_head_attention_1_key_biasIdentity_88:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_89IdentityRestoreV2:tensors:89"/device:CPU:0*
T0*
_output_shapes
:ђ
AssignVariableOp_89AssignVariableOp;assignvariableop_89_adamw_v_multi_head_attention_1_key_biasIdentity_89:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_90IdentityRestoreV2:tensors:90"/device:CPU:0*
T0*
_output_shapes
:∞
AssignVariableOp_90AssignVariableOp?assignvariableop_90_adamw_m_multi_head_attention_1_value_kernelIdentity_90:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_91IdentityRestoreV2:tensors:91"/device:CPU:0*
T0*
_output_shapes
:∞
AssignVariableOp_91AssignVariableOp?assignvariableop_91_adamw_v_multi_head_attention_1_value_kernelIdentity_91:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_92IdentityRestoreV2:tensors:92"/device:CPU:0*
T0*
_output_shapes
:Ѓ
AssignVariableOp_92AssignVariableOp=assignvariableop_92_adamw_m_multi_head_attention_1_value_biasIdentity_92:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_93IdentityRestoreV2:tensors:93"/device:CPU:0*
T0*
_output_shapes
:Ѓ
AssignVariableOp_93AssignVariableOp=assignvariableop_93_adamw_v_multi_head_attention_1_value_biasIdentity_93:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_94IdentityRestoreV2:tensors:94"/device:CPU:0*
T0*
_output_shapes
:ї
AssignVariableOp_94AssignVariableOpJassignvariableop_94_adamw_m_multi_head_attention_1_attention_output_kernelIdentity_94:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_95IdentityRestoreV2:tensors:95"/device:CPU:0*
T0*
_output_shapes
:ї
AssignVariableOp_95AssignVariableOpJassignvariableop_95_adamw_v_multi_head_attention_1_attention_output_kernelIdentity_95:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_96IdentityRestoreV2:tensors:96"/device:CPU:0*
T0*
_output_shapes
:є
AssignVariableOp_96AssignVariableOpHassignvariableop_96_adamw_m_multi_head_attention_1_attention_output_biasIdentity_96:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_97IdentityRestoreV2:tensors:97"/device:CPU:0*
T0*
_output_shapes
:є
AssignVariableOp_97AssignVariableOpHassignvariableop_97_adamw_v_multi_head_attention_1_attention_output_biasIdentity_97:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_98IdentityRestoreV2:tensors:98"/device:CPU:0*
T0*
_output_shapes
:®
AssignVariableOp_98AssignVariableOp7assignvariableop_98_adamw_m_layer_normalization_2_gammaIdentity_98:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_99IdentityRestoreV2:tensors:99"/device:CPU:0*
T0*
_output_shapes
:®
AssignVariableOp_99AssignVariableOp7assignvariableop_99_adamw_v_layer_normalization_2_gammaIdentity_99:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_100IdentityRestoreV2:tensors:100"/device:CPU:0*
T0*
_output_shapes
:™
AssignVariableOp_100AssignVariableOp7assignvariableop_100_adamw_m_layer_normalization_2_betaIdentity_100:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_101IdentityRestoreV2:tensors:101"/device:CPU:0*
T0*
_output_shapes
:™
AssignVariableOp_101AssignVariableOp7assignvariableop_101_adamw_v_layer_normalization_2_betaIdentity_101:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_102IdentityRestoreV2:tensors:102"/device:CPU:0*
T0*
_output_shapes
:Ю
AssignVariableOp_102AssignVariableOp+assignvariableop_102_adamw_m_dense_2_kernelIdentity_102:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_103IdentityRestoreV2:tensors:103"/device:CPU:0*
T0*
_output_shapes
:Ю
AssignVariableOp_103AssignVariableOp+assignvariableop_103_adamw_v_dense_2_kernelIdentity_103:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_104IdentityRestoreV2:tensors:104"/device:CPU:0*
T0*
_output_shapes
:Ю
AssignVariableOp_104AssignVariableOp+assignvariableop_104_adamw_m_dense_3_kernelIdentity_104:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_105IdentityRestoreV2:tensors:105"/device:CPU:0*
T0*
_output_shapes
:Ю
AssignVariableOp_105AssignVariableOp+assignvariableop_105_adamw_v_dense_3_kernelIdentity_105:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_106IdentityRestoreV2:tensors:106"/device:CPU:0*
T0*
_output_shapes
:Ђ
AssignVariableOp_106AssignVariableOp8assignvariableop_106_adamw_m_layer_normalization_3_gammaIdentity_106:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_107IdentityRestoreV2:tensors:107"/device:CPU:0*
T0*
_output_shapes
:Ђ
AssignVariableOp_107AssignVariableOp8assignvariableop_107_adamw_v_layer_normalization_3_gammaIdentity_107:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_108IdentityRestoreV2:tensors:108"/device:CPU:0*
T0*
_output_shapes
:™
AssignVariableOp_108AssignVariableOp7assignvariableop_108_adamw_m_layer_normalization_3_betaIdentity_108:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_109IdentityRestoreV2:tensors:109"/device:CPU:0*
T0*
_output_shapes
:™
AssignVariableOp_109AssignVariableOp7assignvariableop_109_adamw_v_layer_normalization_3_betaIdentity_109:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_110IdentityRestoreV2:tensors:110"/device:CPU:0*
T0*
_output_shapes
:≥
AssignVariableOp_110AssignVariableOp@assignvariableop_110_adamw_m_multi_head_attention_2_query_kernelIdentity_110:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_111IdentityRestoreV2:tensors:111"/device:CPU:0*
T0*
_output_shapes
:≥
AssignVariableOp_111AssignVariableOp@assignvariableop_111_adamw_v_multi_head_attention_2_query_kernelIdentity_111:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_112IdentityRestoreV2:tensors:112"/device:CPU:0*
T0*
_output_shapes
:±
AssignVariableOp_112AssignVariableOp>assignvariableop_112_adamw_m_multi_head_attention_2_query_biasIdentity_112:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_113IdentityRestoreV2:tensors:113"/device:CPU:0*
T0*
_output_shapes
:±
AssignVariableOp_113AssignVariableOp>assignvariableop_113_adamw_v_multi_head_attention_2_query_biasIdentity_113:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_114IdentityRestoreV2:tensors:114"/device:CPU:0*
T0*
_output_shapes
:±
AssignVariableOp_114AssignVariableOp>assignvariableop_114_adamw_m_multi_head_attention_2_key_kernelIdentity_114:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_115IdentityRestoreV2:tensors:115"/device:CPU:0*
T0*
_output_shapes
:±
AssignVariableOp_115AssignVariableOp>assignvariableop_115_adamw_v_multi_head_attention_2_key_kernelIdentity_115:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_116IdentityRestoreV2:tensors:116"/device:CPU:0*
T0*
_output_shapes
:ѓ
AssignVariableOp_116AssignVariableOp<assignvariableop_116_adamw_m_multi_head_attention_2_key_biasIdentity_116:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_117IdentityRestoreV2:tensors:117"/device:CPU:0*
T0*
_output_shapes
:ѓ
AssignVariableOp_117AssignVariableOp<assignvariableop_117_adamw_v_multi_head_attention_2_key_biasIdentity_117:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_118IdentityRestoreV2:tensors:118"/device:CPU:0*
T0*
_output_shapes
:≥
AssignVariableOp_118AssignVariableOp@assignvariableop_118_adamw_m_multi_head_attention_2_value_kernelIdentity_118:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_119IdentityRestoreV2:tensors:119"/device:CPU:0*
T0*
_output_shapes
:≥
AssignVariableOp_119AssignVariableOp@assignvariableop_119_adamw_v_multi_head_attention_2_value_kernelIdentity_119:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_120IdentityRestoreV2:tensors:120"/device:CPU:0*
T0*
_output_shapes
:±
AssignVariableOp_120AssignVariableOp>assignvariableop_120_adamw_m_multi_head_attention_2_value_biasIdentity_120:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_121IdentityRestoreV2:tensors:121"/device:CPU:0*
T0*
_output_shapes
:±
AssignVariableOp_121AssignVariableOp>assignvariableop_121_adamw_v_multi_head_attention_2_value_biasIdentity_121:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_122IdentityRestoreV2:tensors:122"/device:CPU:0*
T0*
_output_shapes
:Њ
AssignVariableOp_122AssignVariableOpKassignvariableop_122_adamw_m_multi_head_attention_2_attention_output_kernelIdentity_122:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_123IdentityRestoreV2:tensors:123"/device:CPU:0*
T0*
_output_shapes
:Њ
AssignVariableOp_123AssignVariableOpKassignvariableop_123_adamw_v_multi_head_attention_2_attention_output_kernelIdentity_123:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_124IdentityRestoreV2:tensors:124"/device:CPU:0*
T0*
_output_shapes
:Љ
AssignVariableOp_124AssignVariableOpIassignvariableop_124_adamw_m_multi_head_attention_2_attention_output_biasIdentity_124:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_125IdentityRestoreV2:tensors:125"/device:CPU:0*
T0*
_output_shapes
:Љ
AssignVariableOp_125AssignVariableOpIassignvariableop_125_adamw_v_multi_head_attention_2_attention_output_biasIdentity_125:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_126IdentityRestoreV2:tensors:126"/device:CPU:0*
T0*
_output_shapes
:Ђ
AssignVariableOp_126AssignVariableOp8assignvariableop_126_adamw_m_layer_normalization_4_gammaIdentity_126:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_127IdentityRestoreV2:tensors:127"/device:CPU:0*
T0*
_output_shapes
:Ђ
AssignVariableOp_127AssignVariableOp8assignvariableop_127_adamw_v_layer_normalization_4_gammaIdentity_127:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_128IdentityRestoreV2:tensors:128"/device:CPU:0*
T0*
_output_shapes
:™
AssignVariableOp_128AssignVariableOp7assignvariableop_128_adamw_m_layer_normalization_4_betaIdentity_128:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_129IdentityRestoreV2:tensors:129"/device:CPU:0*
T0*
_output_shapes
:™
AssignVariableOp_129AssignVariableOp7assignvariableop_129_adamw_v_layer_normalization_4_betaIdentity_129:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_130IdentityRestoreV2:tensors:130"/device:CPU:0*
T0*
_output_shapes
:Ю
AssignVariableOp_130AssignVariableOp+assignvariableop_130_adamw_m_dense_4_kernelIdentity_130:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_131IdentityRestoreV2:tensors:131"/device:CPU:0*
T0*
_output_shapes
:Ю
AssignVariableOp_131AssignVariableOp+assignvariableop_131_adamw_v_dense_4_kernelIdentity_131:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_132IdentityRestoreV2:tensors:132"/device:CPU:0*
T0*
_output_shapes
:Ю
AssignVariableOp_132AssignVariableOp+assignvariableop_132_adamw_m_dense_5_kernelIdentity_132:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_133IdentityRestoreV2:tensors:133"/device:CPU:0*
T0*
_output_shapes
:Ю
AssignVariableOp_133AssignVariableOp+assignvariableop_133_adamw_v_dense_5_kernelIdentity_133:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_134IdentityRestoreV2:tensors:134"/device:CPU:0*
T0*
_output_shapes
:Ђ
AssignVariableOp_134AssignVariableOp8assignvariableop_134_adamw_m_layer_normalization_5_gammaIdentity_134:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_135IdentityRestoreV2:tensors:135"/device:CPU:0*
T0*
_output_shapes
:Ђ
AssignVariableOp_135AssignVariableOp8assignvariableop_135_adamw_v_layer_normalization_5_gammaIdentity_135:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_136IdentityRestoreV2:tensors:136"/device:CPU:0*
T0*
_output_shapes
:™
AssignVariableOp_136AssignVariableOp7assignvariableop_136_adamw_m_layer_normalization_5_betaIdentity_136:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_137IdentityRestoreV2:tensors:137"/device:CPU:0*
T0*
_output_shapes
:™
AssignVariableOp_137AssignVariableOp7assignvariableop_137_adamw_v_layer_normalization_5_betaIdentity_137:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_138IdentityRestoreV2:tensors:138"/device:CPU:0*
T0*
_output_shapes
:Ю
AssignVariableOp_138AssignVariableOp+assignvariableop_138_adamw_m_dense_6_kernelIdentity_138:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_139IdentityRestoreV2:tensors:139"/device:CPU:0*
T0*
_output_shapes
:Ю
AssignVariableOp_139AssignVariableOp+assignvariableop_139_adamw_v_dense_6_kernelIdentity_139:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_140IdentityRestoreV2:tensors:140"/device:CPU:0*
T0*
_output_shapes
:П
AssignVariableOp_140AssignVariableOpassignvariableop_140_total_1Identity_140:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_141IdentityRestoreV2:tensors:141"/device:CPU:0*
T0*
_output_shapes
:П
AssignVariableOp_141AssignVariableOpassignvariableop_141_count_1Identity_141:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_142IdentityRestoreV2:tensors:142"/device:CPU:0*
T0*
_output_shapes
:Н
AssignVariableOp_142AssignVariableOpassignvariableop_142_totalIdentity_142:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_143IdentityRestoreV2:tensors:143"/device:CPU:0*
T0*
_output_shapes
:Н
AssignVariableOp_143AssignVariableOpassignvariableop_143_countIdentity_143:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 №
Identity_144Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_100^AssignVariableOp_101^AssignVariableOp_102^AssignVariableOp_103^AssignVariableOp_104^AssignVariableOp_105^AssignVariableOp_106^AssignVariableOp_107^AssignVariableOp_108^AssignVariableOp_109^AssignVariableOp_11^AssignVariableOp_110^AssignVariableOp_111^AssignVariableOp_112^AssignVariableOp_113^AssignVariableOp_114^AssignVariableOp_115^AssignVariableOp_116^AssignVariableOp_117^AssignVariableOp_118^AssignVariableOp_119^AssignVariableOp_12^AssignVariableOp_120^AssignVariableOp_121^AssignVariableOp_122^AssignVariableOp_123^AssignVariableOp_124^AssignVariableOp_125^AssignVariableOp_126^AssignVariableOp_127^AssignVariableOp_128^AssignVariableOp_129^AssignVariableOp_13^AssignVariableOp_130^AssignVariableOp_131^AssignVariableOp_132^AssignVariableOp_133^AssignVariableOp_134^AssignVariableOp_135^AssignVariableOp_136^AssignVariableOp_137^AssignVariableOp_138^AssignVariableOp_139^AssignVariableOp_14^AssignVariableOp_140^AssignVariableOp_141^AssignVariableOp_142^AssignVariableOp_143^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_85^AssignVariableOp_86^AssignVariableOp_87^AssignVariableOp_88^AssignVariableOp_89^AssignVariableOp_9^AssignVariableOp_90^AssignVariableOp_91^AssignVariableOp_92^AssignVariableOp_93^AssignVariableOp_94^AssignVariableOp_95^AssignVariableOp_96^AssignVariableOp_97^AssignVariableOp_98^AssignVariableOp_99^NoOp"/device:CPU:0*
T0*
_output_shapes
: Y
Identity_145IdentityIdentity_144:output:0^NoOp_1*
T0*
_output_shapes
: »
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_100^AssignVariableOp_101^AssignVariableOp_102^AssignVariableOp_103^AssignVariableOp_104^AssignVariableOp_105^AssignVariableOp_106^AssignVariableOp_107^AssignVariableOp_108^AssignVariableOp_109^AssignVariableOp_11^AssignVariableOp_110^AssignVariableOp_111^AssignVariableOp_112^AssignVariableOp_113^AssignVariableOp_114^AssignVariableOp_115^AssignVariableOp_116^AssignVariableOp_117^AssignVariableOp_118^AssignVariableOp_119^AssignVariableOp_12^AssignVariableOp_120^AssignVariableOp_121^AssignVariableOp_122^AssignVariableOp_123^AssignVariableOp_124^AssignVariableOp_125^AssignVariableOp_126^AssignVariableOp_127^AssignVariableOp_128^AssignVariableOp_129^AssignVariableOp_13^AssignVariableOp_130^AssignVariableOp_131^AssignVariableOp_132^AssignVariableOp_133^AssignVariableOp_134^AssignVariableOp_135^AssignVariableOp_136^AssignVariableOp_137^AssignVariableOp_138^AssignVariableOp_139^AssignVariableOp_14^AssignVariableOp_140^AssignVariableOp_141^AssignVariableOp_142^AssignVariableOp_143^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_85^AssignVariableOp_86^AssignVariableOp_87^AssignVariableOp_88^AssignVariableOp_89^AssignVariableOp_9^AssignVariableOp_90^AssignVariableOp_91^AssignVariableOp_92^AssignVariableOp_93^AssignVariableOp_94^AssignVariableOp_95^AssignVariableOp_96^AssignVariableOp_97^AssignVariableOp_98^AssignVariableOp_99*"
_acd_function_control_output(*
_output_shapes
 "%
identity_145Identity_145:output:0*Ј
_input_shapes•
Ґ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102,
AssignVariableOp_100AssignVariableOp_1002,
AssignVariableOp_101AssignVariableOp_1012,
AssignVariableOp_102AssignVariableOp_1022,
AssignVariableOp_103AssignVariableOp_1032,
AssignVariableOp_104AssignVariableOp_1042,
AssignVariableOp_105AssignVariableOp_1052,
AssignVariableOp_106AssignVariableOp_1062,
AssignVariableOp_107AssignVariableOp_1072,
AssignVariableOp_108AssignVariableOp_1082,
AssignVariableOp_109AssignVariableOp_1092*
AssignVariableOp_11AssignVariableOp_112,
AssignVariableOp_110AssignVariableOp_1102,
AssignVariableOp_111AssignVariableOp_1112,
AssignVariableOp_112AssignVariableOp_1122,
AssignVariableOp_113AssignVariableOp_1132,
AssignVariableOp_114AssignVariableOp_1142,
AssignVariableOp_115AssignVariableOp_1152,
AssignVariableOp_116AssignVariableOp_1162,
AssignVariableOp_117AssignVariableOp_1172,
AssignVariableOp_118AssignVariableOp_1182,
AssignVariableOp_119AssignVariableOp_1192*
AssignVariableOp_12AssignVariableOp_122,
AssignVariableOp_120AssignVariableOp_1202,
AssignVariableOp_121AssignVariableOp_1212,
AssignVariableOp_122AssignVariableOp_1222,
AssignVariableOp_123AssignVariableOp_1232,
AssignVariableOp_124AssignVariableOp_1242,
AssignVariableOp_125AssignVariableOp_1252,
AssignVariableOp_126AssignVariableOp_1262,
AssignVariableOp_127AssignVariableOp_1272,
AssignVariableOp_128AssignVariableOp_1282,
AssignVariableOp_129AssignVariableOp_1292*
AssignVariableOp_13AssignVariableOp_132,
AssignVariableOp_130AssignVariableOp_1302,
AssignVariableOp_131AssignVariableOp_1312,
AssignVariableOp_132AssignVariableOp_1322,
AssignVariableOp_133AssignVariableOp_1332,
AssignVariableOp_134AssignVariableOp_1342,
AssignVariableOp_135AssignVariableOp_1352,
AssignVariableOp_136AssignVariableOp_1362,
AssignVariableOp_137AssignVariableOp_1372,
AssignVariableOp_138AssignVariableOp_1382,
AssignVariableOp_139AssignVariableOp_1392*
AssignVariableOp_14AssignVariableOp_142,
AssignVariableOp_140AssignVariableOp_1402,
AssignVariableOp_141AssignVariableOp_1412,
AssignVariableOp_142AssignVariableOp_1422,
AssignVariableOp_143AssignVariableOp_1432*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582*
AssignVariableOp_59AssignVariableOp_592(
AssignVariableOp_6AssignVariableOp_62*
AssignVariableOp_60AssignVariableOp_602*
AssignVariableOp_61AssignVariableOp_612*
AssignVariableOp_62AssignVariableOp_622*
AssignVariableOp_63AssignVariableOp_632*
AssignVariableOp_64AssignVariableOp_642*
AssignVariableOp_65AssignVariableOp_652*
AssignVariableOp_66AssignVariableOp_662*
AssignVariableOp_67AssignVariableOp_672*
AssignVariableOp_68AssignVariableOp_682*
AssignVariableOp_69AssignVariableOp_692(
AssignVariableOp_7AssignVariableOp_72*
AssignVariableOp_70AssignVariableOp_702*
AssignVariableOp_71AssignVariableOp_712*
AssignVariableOp_72AssignVariableOp_722*
AssignVariableOp_73AssignVariableOp_732*
AssignVariableOp_74AssignVariableOp_742*
AssignVariableOp_75AssignVariableOp_752*
AssignVariableOp_76AssignVariableOp_762*
AssignVariableOp_77AssignVariableOp_772*
AssignVariableOp_78AssignVariableOp_782*
AssignVariableOp_79AssignVariableOp_792(
AssignVariableOp_8AssignVariableOp_82*
AssignVariableOp_80AssignVariableOp_802*
AssignVariableOp_81AssignVariableOp_812*
AssignVariableOp_82AssignVariableOp_822*
AssignVariableOp_83AssignVariableOp_832*
AssignVariableOp_84AssignVariableOp_842*
AssignVariableOp_85AssignVariableOp_852*
AssignVariableOp_86AssignVariableOp_862*
AssignVariableOp_87AssignVariableOp_872*
AssignVariableOp_88AssignVariableOp_882*
AssignVariableOp_89AssignVariableOp_892(
AssignVariableOp_9AssignVariableOp_92*
AssignVariableOp_90AssignVariableOp_902*
AssignVariableOp_91AssignVariableOp_912*
AssignVariableOp_92AssignVariableOp_922*
AssignVariableOp_93AssignVariableOp_932*
AssignVariableOp_94AssignVariableOp_942*
AssignVariableOp_95AssignVariableOp_952*
AssignVariableOp_96AssignVariableOp_962*
AssignVariableOp_97AssignVariableOp_972*
AssignVariableOp_98AssignVariableOp_982*
AssignVariableOp_99AssignVariableOp_99:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
н
Н
N__inference_layer_normalization_layer_call_and_return_conditional_losses_20558

inputs3
%batchnorm_mul_readvariableop_resource:/
!batchnorm_readvariableop_resource:
identityИҐbatchnorm/ReadVariableOpҐbatchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:М
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:€€€€€€€€€	*
	keep_dims(q
moments/StopGradientStopGradientmoments/mean:output:0*
T0*+
_output_shapes
:€€€€€€€€€	Л
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*+
_output_shapes
:€€€€€€€€€	l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:Ђ
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:€€€€€€€€€	*
	keep_dims(T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *љ7Ж5Б
batchnorm/addAddV2moments/variance:output:0batchnorm/add/y:output:0*
T0*+
_output_shapes
:€€€€€€€€€	a
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*+
_output_shapes
:€€€€€€€€€	~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0Е
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€	g
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€	v
batchnorm/mul_2Mulmoments/mean:output:0batchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€	v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0Б
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*+
_output_shapes
:€€€€€€€€€	v
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*+
_output_shapes
:€€€€€€€€€	f
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€	А
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€	: : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:S O
+
_output_shapes
:€€€€€€€€€	
 
_user_specified_nameinputs
Ю*
ъ
Q__inference_multi_head_attention_1_layer_call_and_return_conditional_losses_20712	
query	
valueA
+query_einsum_einsum_readvariableop_resource:3
!query_add_readvariableop_resource:?
)key_einsum_einsum_readvariableop_resource:1
key_add_readvariableop_resource:A
+value_einsum_einsum_readvariableop_resource:3
!value_add_readvariableop_resource:L
6attention_output_einsum_einsum_readvariableop_resource::
,attention_output_add_readvariableop_resource:
identityИҐ#attention_output/add/ReadVariableOpҐ-attention_output/einsum/Einsum/ReadVariableOpҐkey/add/ReadVariableOpҐ key/einsum/Einsum/ReadVariableOpҐquery/add/ReadVariableOpҐ"query/einsum/Einsum/ReadVariableOpҐvalue/add/ReadVariableOpҐ"value/einsum/Einsum/ReadVariableOpТ
"query/einsum/Einsum/ReadVariableOpReadVariableOp+query_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0∞
query/einsum/EinsumEinsumquery*query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:€€€€€€€€€	*
equationabc,cde->abdez
query/add/ReadVariableOpReadVariableOp!query_add_readvariableop_resource*
_output_shapes

:*
dtype0М
	query/addAddV2query/einsum/Einsum:output:0 query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€	О
 key/einsum/Einsum/ReadVariableOpReadVariableOp)key_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0ђ
key/einsum/EinsumEinsumvalue(key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:€€€€€€€€€	*
equationabc,cde->abdev
key/add/ReadVariableOpReadVariableOpkey_add_readvariableop_resource*
_output_shapes

:*
dtype0Ж
key/addAddV2key/einsum/Einsum:output:0key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€	Т
"value/einsum/Einsum/ReadVariableOpReadVariableOp+value_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0∞
value/einsum/EinsumEinsumvalue*value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:€€€€€€€€€	*
equationabc,cde->abdez
value/add/ReadVariableOpReadVariableOp!value_add_readvariableop_resource*
_output_shapes

:*
dtype0М
	value/addAddV2value/einsum/Einsum:output:0 value/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€	J
Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>c
MulMulquery/add:z:0Mul/y:output:0*
T0*/
_output_shapes
:€€€€€€€€€	П
einsum/EinsumEinsumkey/add:z:0Mul:z:0*
N*
T0*/
_output_shapes
:€€€€€€€€€		*
equationaecd,abcd->acbel
softmax/SoftmaxSoftmaxeinsum/Einsum:output:0*
T0*/
_output_shapes
:€€€€€€€€€		q
dropout/IdentityIdentitysoftmax/Softmax:softmax:0*
T0*/
_output_shapes
:€€€€€€€€€		•
einsum_1/EinsumEinsumdropout/Identity:output:0value/add:z:0*
N*
T0*/
_output_shapes
:€€€€€€€€€	*
equationacbe,aecd->abcd®
-attention_output/einsum/Einsum/ReadVariableOpReadVariableOp6attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0’
attention_output/einsum/EinsumEinsumeinsum_1/Einsum:output:05attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:€€€€€€€€€	*
equationabcd,cde->abeМ
#attention_output/add/ReadVariableOpReadVariableOp,attention_output_add_readvariableop_resource*
_output_shapes
:*
dtype0©
attention_output/addAddV2'attention_output/einsum/Einsum:output:0+attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€	k
IdentityIdentityattention_output/add:z:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€	Ў
NoOpNoOp$^attention_output/add/ReadVariableOp.^attention_output/einsum/Einsum/ReadVariableOp^key/add/ReadVariableOp!^key/einsum/Einsum/ReadVariableOp^query/add/ReadVariableOp#^query/einsum/Einsum/ReadVariableOp^value/add/ReadVariableOp#^value/einsum/Einsum/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:€€€€€€€€€	:€€€€€€€€€	: : : : : : : : 2J
#attention_output/add/ReadVariableOp#attention_output/add/ReadVariableOp2^
-attention_output/einsum/Einsum/ReadVariableOp-attention_output/einsum/Einsum/ReadVariableOp20
key/add/ReadVariableOpkey/add/ReadVariableOp2D
 key/einsum/Einsum/ReadVariableOp key/einsum/Einsum/ReadVariableOp24
query/add/ReadVariableOpquery/add/ReadVariableOp2H
"query/einsum/Einsum/ReadVariableOp"query/einsum/Einsum/ReadVariableOp24
value/add/ReadVariableOpvalue/add/ReadVariableOp2H
"value/einsum/Einsum/ReadVariableOp"value/einsum/Einsum/ReadVariableOp:R N
+
_output_shapes
:€€€€€€€€€	

_user_specified_namequery:RN
+
_output_shapes
:€€€€€€€€€	

_user_specified_namevalue
€
b
)__inference_dropout_2_layer_call_fn_24575

inputs
identityИҐStatefulPartitionedCall√
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€	* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_2_layer_call_and_return_conditional_losses_21240s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€	`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€	22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€	
 
_user_specified_nameinputs
°
y
%__inference_dense_layer_call_fn_23900

inputs
unknown:
identityИҐStatefulPartitionedCallћ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€	*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_20591s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€	`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:€€€€€€€€€	: 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€	
 
_user_specified_nameinputs
Ќ
j
@__inference_add_3_layer_call_and_return_conditional_losses_20849

inputs
inputs_1
identityT
addAddV2inputsinputs_1*
T0*+
_output_shapes
:€€€€€€€€€	S
IdentityIdentityadd:z:0*
T0*+
_output_shapes
:€€€€€€€€€	"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:€€€€€€€€€	:€€€€€€€€€	:S O
+
_output_shapes
:€€€€€€€€€	
 
_user_specified_nameinputs:SO
+
_output_shapes
:€€€€€€€€€	
 
_user_specified_nameinputs
ы

й
4__inference_multi_head_attention_layer_call_fn_23773	
query	
value
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
identityИҐStatefulPartitionedCallљ
StatefulPartitionedCallStatefulPartitionedCallqueryvalueunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2
*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€	**
_read_only_resource_inputs

	*-
config_proto

CPU

GPU 2J 8В *X
fSRQ
O__inference_multi_head_attention_layer_call_and_return_conditional_losses_21664s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€	`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:€€€€€€€€€	:€€€€€€€€€	: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:R N
+
_output_shapes
:€€€€€€€€€	

_user_specified_namequery:RN
+
_output_shapes
:€€€€€€€€€	

_user_specified_namevalue
ж
Ю
5__inference_layer_normalization_3_layer_call_fn_24311

inputs
unknown:
	unknown_0:
identityИҐStatefulPartitionedCallй
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Y
fTRR
P__inference_layer_normalization_3_layer_call_and_return_conditional_losses_20873s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€	`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€	: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€	
 
_user_specified_nameinputs
ц
¶
C__inference_tokenize_layer_call_and_return_conditional_losses_20469

inputs-
mul_readvariableop_resource:
identityИҐmul/ReadVariableOpP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :o

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*+
_output_shapes
:€€€€€€€€€n
mul/ReadVariableOpReadVariableOpmul_readvariableop_resource*
_output_shapes

:*
dtype0q
mulMulExpandDims:output:0mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€Z
IdentityIdentitymul:z:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€[
NoOpNoOp^mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:€€€€€€€€€: 2(
mul/ReadVariableOpmul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
Х
{
'__inference_dense_6_layer_call_fn_24642

inputs
unknown:
identityИҐStatefulPartitionedCall 
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense_6_layer_call_and_return_conditional_losses_21092o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:€€€€€€€€€: 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
з
b
D__inference_dropout_2_layer_call_and_return_conditional_losses_24580

inputs

identity_1R
IdentityIdentityinputs*
T0*+
_output_shapes
:€€€€€€€€€	_

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:€€€€€€€€€	"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€	:S O
+
_output_shapes
:€€€€€€€€€	
 
_user_specified_nameinputs
Т

c
D__inference_dropout_1_layer_call_and_return_conditional_losses_21400

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *д8О?h
dropout/MulMulinputsdropout/Const:output:0*
T0*+
_output_shapes
:€€€€€€€€€	C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:Р
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*+
_output_shapes
:€€€€€€€€€	*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ=™
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:€€€€€€€€€	s
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:€€€€€€€€€	m
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*+
_output_shapes
:€€€€€€€€€	]
IdentityIdentitydropout/Mul_1:z:0*
T0*+
_output_shapes
:€€€€€€€€€	"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€	:S O
+
_output_shapes
:€€€€€€€€€	
 
_user_specified_nameinputs
≤
Q
%__inference_add_2_layer_call_fn_24158
inputs_0
inputs_1
identityЉ
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€	* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *I
fDRB
@__inference_add_2_layer_call_and_return_conditional_losses_20736d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:€€€€€€€€€	"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:€€€€€€€€€	:€€€€€€€€€	:U Q
+
_output_shapes
:€€€€€€€€€	
"
_user_specified_name
inputs/0:UQ
+
_output_shapes
:€€€€€€€€€	
"
_user_specified_name
inputs/1
’
l
@__inference_add_1_layer_call_and_return_conditional_losses_24000
inputs_0
inputs_1
identityV
addAddV2inputs_0inputs_1*
T0*+
_output_shapes
:€€€€€€€€€	S
IdentityIdentityadd:z:0*
T0*+
_output_shapes
:€€€€€€€€€	"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:€€€€€€€€€	:€€€€€€€€€	:U Q
+
_output_shapes
:€€€€€€€€€	
"
_user_specified_name
inputs/0:UQ
+
_output_shapes
:€€€€€€€€€	
"
_user_specified_name
inputs/1
п
П
P__inference_layer_normalization_2_layer_call_and_return_conditional_losses_20760

inputs3
%batchnorm_mul_readvariableop_resource:/
!batchnorm_readvariableop_resource:
identityИҐbatchnorm/ReadVariableOpҐbatchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:М
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:€€€€€€€€€	*
	keep_dims(q
moments/StopGradientStopGradientmoments/mean:output:0*
T0*+
_output_shapes
:€€€€€€€€€	Л
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*+
_output_shapes
:€€€€€€€€€	l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:Ђ
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:€€€€€€€€€	*
	keep_dims(T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *љ7Ж5Б
batchnorm/addAddV2moments/variance:output:0batchnorm/add/y:output:0*
T0*+
_output_shapes
:€€€€€€€€€	a
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*+
_output_shapes
:€€€€€€€€€	~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0Е
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€	g
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€	v
batchnorm/mul_2Mulmoments/mean:output:0batchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€	v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0Б
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*+
_output_shapes
:€€€€€€€€€	v
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*+
_output_shapes
:€€€€€€€€€	f
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€	А
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€	: : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:S O
+
_output_shapes
:€€€€€€€€€	
 
_user_specified_nameinputs
€

л
6__inference_multi_head_attention_1_layer_call_fn_24053	
query	
value
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
identityИҐStatefulPartitionedCallњ
StatefulPartitionedCallStatefulPartitionedCallqueryvalueunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2
*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€	**
_read_only_resource_inputs

	*-
config_proto

CPU

GPU 2J 8В *Z
fURS
Q__inference_multi_head_attention_1_layer_call_and_return_conditional_losses_20712s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€	`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:€€€€€€€€€	:€€€€€€€€€	: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:R N
+
_output_shapes
:€€€€€€€€€	

_user_specified_namequery:RN
+
_output_shapes
:€€€€€€€€€	

_user_specified_namevalue
ƒ
±
B__inference_dense_1_layer_call_and_return_conditional_losses_23961

inputs3
!tensordot_readvariableop_resource:
identityИҐTensordot/ReadVariableOpz
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ї
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : њ
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ь
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:y
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:€€€€€€€€€	К
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€К
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : І
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Г
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:€€€€€€€€€	e
IdentityIdentityTensordot:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€	a
NoOpNoOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:€€€€€€€€€	: 24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:€€€€€€€€€	
 
_user_specified_nameinputs
Т

c
D__inference_dropout_1_layer_call_and_return_conditional_losses_24290

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *д8О?h
dropout/MulMulinputsdropout/Const:output:0*
T0*+
_output_shapes
:€€€€€€€€€	C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:Р
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*+
_output_shapes
:€€€€€€€€€	*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ=™
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:€€€€€€€€€	s
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:€€€€€€€€€	m
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*+
_output_shapes
:€€€€€€€€€	]
IdentityIdentitydropout/Mul_1:z:0*
T0*+
_output_shapes
:€€€€€€€€€	"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€	:S O
+
_output_shapes
:€€€€€€€€€	
 
_user_specified_nameinputs
Ю*
ъ
Q__inference_multi_head_attention_1_layer_call_and_return_conditional_losses_24110	
query	
valueA
+query_einsum_einsum_readvariableop_resource:3
!query_add_readvariableop_resource:?
)key_einsum_einsum_readvariableop_resource:1
key_add_readvariableop_resource:A
+value_einsum_einsum_readvariableop_resource:3
!value_add_readvariableop_resource:L
6attention_output_einsum_einsum_readvariableop_resource::
,attention_output_add_readvariableop_resource:
identityИҐ#attention_output/add/ReadVariableOpҐ-attention_output/einsum/Einsum/ReadVariableOpҐkey/add/ReadVariableOpҐ key/einsum/Einsum/ReadVariableOpҐquery/add/ReadVariableOpҐ"query/einsum/Einsum/ReadVariableOpҐvalue/add/ReadVariableOpҐ"value/einsum/Einsum/ReadVariableOpТ
"query/einsum/Einsum/ReadVariableOpReadVariableOp+query_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0∞
query/einsum/EinsumEinsumquery*query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:€€€€€€€€€	*
equationabc,cde->abdez
query/add/ReadVariableOpReadVariableOp!query_add_readvariableop_resource*
_output_shapes

:*
dtype0М
	query/addAddV2query/einsum/Einsum:output:0 query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€	О
 key/einsum/Einsum/ReadVariableOpReadVariableOp)key_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0ђ
key/einsum/EinsumEinsumvalue(key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:€€€€€€€€€	*
equationabc,cde->abdev
key/add/ReadVariableOpReadVariableOpkey_add_readvariableop_resource*
_output_shapes

:*
dtype0Ж
key/addAddV2key/einsum/Einsum:output:0key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€	Т
"value/einsum/Einsum/ReadVariableOpReadVariableOp+value_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0∞
value/einsum/EinsumEinsumvalue*value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:€€€€€€€€€	*
equationabc,cde->abdez
value/add/ReadVariableOpReadVariableOp!value_add_readvariableop_resource*
_output_shapes

:*
dtype0М
	value/addAddV2value/einsum/Einsum:output:0 value/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€	J
Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>c
MulMulquery/add:z:0Mul/y:output:0*
T0*/
_output_shapes
:€€€€€€€€€	П
einsum/EinsumEinsumkey/add:z:0Mul:z:0*
N*
T0*/
_output_shapes
:€€€€€€€€€		*
equationaecd,abcd->acbel
softmax/SoftmaxSoftmaxeinsum/Einsum:output:0*
T0*/
_output_shapes
:€€€€€€€€€		q
dropout/IdentityIdentitysoftmax/Softmax:softmax:0*
T0*/
_output_shapes
:€€€€€€€€€		•
einsum_1/EinsumEinsumdropout/Identity:output:0value/add:z:0*
N*
T0*/
_output_shapes
:€€€€€€€€€	*
equationacbe,aecd->abcd®
-attention_output/einsum/Einsum/ReadVariableOpReadVariableOp6attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0’
attention_output/einsum/EinsumEinsumeinsum_1/Einsum:output:05attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:€€€€€€€€€	*
equationabcd,cde->abeМ
#attention_output/add/ReadVariableOpReadVariableOp,attention_output_add_readvariableop_resource*
_output_shapes
:*
dtype0©
attention_output/addAddV2'attention_output/einsum/Einsum:output:0+attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€	k
IdentityIdentityattention_output/add:z:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€	Ў
NoOpNoOp$^attention_output/add/ReadVariableOp.^attention_output/einsum/Einsum/ReadVariableOp^key/add/ReadVariableOp!^key/einsum/Einsum/ReadVariableOp^query/add/ReadVariableOp#^query/einsum/Einsum/ReadVariableOp^value/add/ReadVariableOp#^value/einsum/Einsum/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:€€€€€€€€€	:€€€€€€€€€	: : : : : : : : 2J
#attention_output/add/ReadVariableOp#attention_output/add/ReadVariableOp2^
-attention_output/einsum/Einsum/ReadVariableOp-attention_output/einsum/Einsum/ReadVariableOp20
key/add/ReadVariableOpkey/add/ReadVariableOp2D
 key/einsum/Einsum/ReadVariableOp key/einsum/Einsum/ReadVariableOp24
query/add/ReadVariableOpquery/add/ReadVariableOp2H
"query/einsum/Einsum/ReadVariableOp"query/einsum/Einsum/ReadVariableOp24
value/add/ReadVariableOpvalue/add/ReadVariableOp2H
"value/einsum/Einsum/ReadVariableOp"value/einsum/Einsum/ReadVariableOp:R N
+
_output_shapes
:€€€€€€€€€	

_user_specified_namequery:RN
+
_output_shapes
:€€€€€€€€€	

_user_specified_namevalue
п
П
P__inference_layer_normalization_5_layer_call_and_return_conditional_losses_24635

inputs3
%batchnorm_mul_readvariableop_resource:/
!batchnorm_readvariableop_resource:
identityИҐbatchnorm/ReadVariableOpҐbatchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:М
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:€€€€€€€€€	*
	keep_dims(q
moments/StopGradientStopGradientmoments/mean:output:0*
T0*+
_output_shapes
:€€€€€€€€€	Л
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*+
_output_shapes
:€€€€€€€€€	l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:Ђ
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:€€€€€€€€€	*
	keep_dims(T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *љ7Ж5Б
batchnorm/addAddV2moments/variance:output:0batchnorm/add/y:output:0*
T0*+
_output_shapes
:€€€€€€€€€	a
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*+
_output_shapes
:€€€€€€€€€	~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0Е
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€	g
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€	v
batchnorm/mul_2Mulmoments/mean:output:0batchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€	v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0Б
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*+
_output_shapes
:€€€€€€€€€	v
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*+
_output_shapes
:€€€€€€€€€	f
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€	А
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€	: : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:S O
+
_output_shapes
:€€€€€€€€€	
 
_user_specified_nameinputs
•
{
'__inference_dense_1_layer_call_fn_23934

inputs
unknown:
identityИҐStatefulPartitionedCallќ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€	*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_20630s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€	`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:€€€€€€€€€	: 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€	
 
_user_specified_nameinputs
Ь	
†
D__inference_embedding_layer_call_and_return_conditional_losses_20442

inputs(
embedding_lookup_20436:
identityИҐembedding_lookupU
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:€€€€€€€€€є
embedding_lookupResourceGatherembedding_lookup_20436Cast:y:0*
Tindices0*)
_class
loc:@embedding_lookup/20436*+
_output_shapes
:€€€€€€€€€*
dtype0°
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*)
_class
loc:@embedding_lookup/20436*+
_output_shapes
:€€€€€€€€€Б
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:€€€€€€€€€w
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€Y
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:€€€€€€€€€: 2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
ƒ
±
B__inference_dense_2_layer_call_and_return_conditional_losses_20793

inputs3
!tensordot_readvariableop_resource:
identityИҐTensordot/ReadVariableOpz
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ї
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : њ
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ь
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:y
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:€€€€€€€€€	К
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€К
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : І
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Г
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:€€€€€€€€€	e
IdentityIdentityTensordot:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€	a
NoOpNoOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:€€€€€€€€€	: 24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:€€€€€€€€€	
 
_user_specified_nameinputs
Ќ
…
%__inference_model_layer_call_fn_22815
inputs_0
inputs_1
unknown
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:

unknown_11:

unknown_12:

unknown_13:

unknown_14:

unknown_15:

unknown_16: 

unknown_17:

unknown_18: 

unknown_19:

unknown_20: 

unknown_21:

unknown_22: 

unknown_23:

unknown_24:

unknown_25:

unknown_26:

unknown_27:

unknown_28:

unknown_29:

unknown_30: 

unknown_31:

unknown_32: 

unknown_33:

unknown_34: 

unknown_35:

unknown_36: 

unknown_37:

unknown_38:

unknown_39:

unknown_40:

unknown_41:

unknown_42:

unknown_43:

unknown_44:

unknown_45:
identityИҐStatefulPartitionedCallќ
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44
unknown_45*<
Tin5
321*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*P
_read_only_resource_inputs2
0.	
 !"#$%&'()*+,-./0*-
config_proto

CPU

GPU 2J 8В *I
fDRB
@__inference_model_layer_call_and_return_conditional_losses_21976o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Щ
_input_shapesЗ
Д:€€€€€€€€€:€€€€€€€€€: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
inputs/1:

_output_shapes
: 
д1
ъ
Q__inference_multi_head_attention_2_layer_call_and_return_conditional_losses_24454	
query	
valueA
+query_einsum_einsum_readvariableop_resource:3
!query_add_readvariableop_resource:?
)key_einsum_einsum_readvariableop_resource:1
key_add_readvariableop_resource:A
+value_einsum_einsum_readvariableop_resource:3
!value_add_readvariableop_resource:L
6attention_output_einsum_einsum_readvariableop_resource::
,attention_output_add_readvariableop_resource:
identityИҐ#attention_output/add/ReadVariableOpҐ-attention_output/einsum/Einsum/ReadVariableOpҐkey/add/ReadVariableOpҐ key/einsum/Einsum/ReadVariableOpҐquery/add/ReadVariableOpҐ"query/einsum/Einsum/ReadVariableOpҐvalue/add/ReadVariableOpҐ"value/einsum/Einsum/ReadVariableOpТ
"query/einsum/Einsum/ReadVariableOpReadVariableOp+query_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0∞
query/einsum/EinsumEinsumquery*query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:€€€€€€€€€	*
equationabc,cde->abdez
query/add/ReadVariableOpReadVariableOp!query_add_readvariableop_resource*
_output_shapes

:*
dtype0М
	query/addAddV2query/einsum/Einsum:output:0 query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€	О
 key/einsum/Einsum/ReadVariableOpReadVariableOp)key_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0ђ
key/einsum/EinsumEinsumvalue(key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:€€€€€€€€€	*
equationabc,cde->abdev
key/add/ReadVariableOpReadVariableOpkey_add_readvariableop_resource*
_output_shapes

:*
dtype0Ж
key/addAddV2key/einsum/Einsum:output:0key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€	Т
"value/einsum/Einsum/ReadVariableOpReadVariableOp+value_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0∞
value/einsum/EinsumEinsumvalue*value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:€€€€€€€€€	*
equationabc,cde->abdez
value/add/ReadVariableOpReadVariableOp!value_add_readvariableop_resource*
_output_shapes

:*
dtype0М
	value/addAddV2value/einsum/Einsum:output:0 value/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€	J
Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>c
MulMulquery/add:z:0Mul/y:output:0*
T0*/
_output_shapes
:€€€€€€€€€	П
einsum/EinsumEinsumkey/add:z:0Mul:z:0*
N*
T0*/
_output_shapes
:€€€€€€€€€		*
equationaecd,abcd->acbel
softmax/SoftmaxSoftmaxeinsum/Einsum:output:0*
T0*/
_output_shapes
:€€€€€€€€€		Z
dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  †?П
dropout/dropout/MulMulsoftmax/Softmax:softmax:0dropout/dropout/Const:output:0*
T0*/
_output_shapes
:€€€€€€€€€		^
dropout/dropout/ShapeShapesoftmax/Softmax:softmax:0*
T0*
_output_shapes
:§
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape:output:0*
T0*/
_output_shapes
:€€€€€€€€€		*
dtype0c
dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћL>∆
dropout/dropout/GreaterEqualGreaterEqual5dropout/dropout/random_uniform/RandomUniform:output:0'dropout/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:€€€€€€€€€		З
dropout/dropout/CastCast dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:€€€€€€€€€		Й
dropout/dropout/Mul_1Muldropout/dropout/Mul:z:0dropout/dropout/Cast:y:0*
T0*/
_output_shapes
:€€€€€€€€€		•
einsum_1/EinsumEinsumdropout/dropout/Mul_1:z:0value/add:z:0*
N*
T0*/
_output_shapes
:€€€€€€€€€	*
equationacbe,aecd->abcd®
-attention_output/einsum/Einsum/ReadVariableOpReadVariableOp6attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0’
attention_output/einsum/EinsumEinsumeinsum_1/Einsum:output:05attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:€€€€€€€€€	*
equationabcd,cde->abeМ
#attention_output/add/ReadVariableOpReadVariableOp,attention_output_add_readvariableop_resource*
_output_shapes
:*
dtype0©
attention_output/addAddV2'attention_output/einsum/Einsum:output:0+attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€	k
IdentityIdentityattention_output/add:z:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€	Ў
NoOpNoOp$^attention_output/add/ReadVariableOp.^attention_output/einsum/Einsum/ReadVariableOp^key/add/ReadVariableOp!^key/einsum/Einsum/ReadVariableOp^query/add/ReadVariableOp#^query/einsum/Einsum/ReadVariableOp^value/add/ReadVariableOp#^value/einsum/Einsum/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:€€€€€€€€€	:€€€€€€€€€	: : : : : : : : 2J
#attention_output/add/ReadVariableOp#attention_output/add/ReadVariableOp2^
-attention_output/einsum/Einsum/ReadVariableOp-attention_output/einsum/Einsum/ReadVariableOp20
key/add/ReadVariableOpkey/add/ReadVariableOp2D
 key/einsum/Einsum/ReadVariableOp key/einsum/Einsum/ReadVariableOp24
query/add/ReadVariableOpquery/add/ReadVariableOp2H
"query/einsum/Einsum/ReadVariableOp"query/einsum/Einsum/ReadVariableOp24
value/add/ReadVariableOpvalue/add/ReadVariableOp2H
"value/einsum/Einsum/ReadVariableOp"value/einsum/Einsum/ReadVariableOp:R N
+
_output_shapes
:€€€€€€€€€	

_user_specified_namequery:RN
+
_output_shapes
:€€€€€€€€€	

_user_specified_namevalue
е
`
B__inference_dropout_layer_call_and_return_conditional_losses_20639

inputs

identity_1R
IdentityIdentityinputs*
T0*+
_output_shapes
:€€€€€€€€€	_

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:€€€€€€€€€	"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€	:S O
+
_output_shapes
:€€€€€€€€€	
 
_user_specified_nameinputs
в
Ь
3__inference_layer_normalization_layer_call_fn_23871

inputs
unknown:
	unknown_0:
identityИҐStatefulPartitionedCallз
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *W
fRRP
N__inference_layer_normalization_layer_call_and_return_conditional_losses_20558s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€	`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€	: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€	
 
_user_specified_nameinputs"µ	L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*п
serving_defaultџ
;
input_10
serving_default_input_1:0€€€€€€€€€
;
input_20
serving_default_input_2:0€€€€€€€€€C
tf.math.sigmoid0
StatefulPartitionedCall:0€€€€€€€€€tensorflow/serving/predict:Бо
т	
layer-0
layer-1
layer-2
layer-3
layer-4
layer_with_weights-0
layer-5
layer_with_weights-1
layer-6
layer_with_weights-2
layer-7
	layer-8

layer_with_weights-3

layer-9
layer-10
layer_with_weights-4
layer-11
layer_with_weights-5
layer-12
layer-13
layer_with_weights-6
layer-14
layer-15
layer-16
layer_with_weights-7
layer-17
layer_with_weights-8
layer-18
layer-19
layer_with_weights-9
layer-20
layer_with_weights-10
layer-21
layer-22
layer_with_weights-11
layer-23
layer-24
layer-25
layer_with_weights-12
layer-26
layer_with_weights-13
layer-27
layer-28
layer_with_weights-14
layer-29
layer_with_weights-15
layer-30
 layer-31
!layer_with_weights-16
!layer-32
"layer-33
#layer-34
$layer_with_weights-17
$layer-35
%layer-36
&layer_with_weights-18
&layer-37
'layer-38
(	variables
)trainable_variables
*regularization_losses
+	keras_api
,__call__
*-&call_and_return_all_conditional_losses
._default_save_signature
/	optimizer
0
signatures"
_tf_keras_network
"
_tf_keras_input_layer
(
1	keras_api"
_tf_keras_layer
(
2	keras_api"
_tf_keras_layer
(
3	keras_api"
_tf_keras_layer
"
_tf_keras_input_layer
µ
4	variables
5trainable_variables
6regularization_losses
7	keras_api
8__call__
*9&call_and_return_all_conditional_losses
:
embeddings"
_tf_keras_layer
µ
;	variables
<trainable_variables
=regularization_losses
>	keras_api
?__call__
*@&call_and_return_all_conditional_losses
A
embeddings"
_tf_keras_layer
±
B	variables
Ctrainable_variables
Dregularization_losses
E	keras_api
F__call__
*G&call_and_return_all_conditional_losses

Hkernel"
_tf_keras_layer
(
I	keras_api"
_tf_keras_layer
О
J	variables
Ktrainable_variables
Lregularization_losses
M	keras_api
N__call__
*O&call_and_return_all_conditional_losses
P_query_dense
Q
_key_dense
R_value_dense
S_softmax
T_dropout_layer
U_output_dense"
_tf_keras_layer
•
V	variables
Wtrainable_variables
Xregularization_losses
Y	keras_api
Z__call__
*[&call_and_return_all_conditional_losses"
_tf_keras_layer
ƒ
\	variables
]trainable_variables
^regularization_losses
_	keras_api
`__call__
*a&call_and_return_all_conditional_losses
baxis
	cgamma
dbeta"
_tf_keras_layer
±
e	variables
ftrainable_variables
gregularization_losses
h	keras_api
i__call__
*j&call_and_return_all_conditional_losses

kkernel"
_tf_keras_layer
(
l	keras_api"
_tf_keras_layer
±
m	variables
ntrainable_variables
oregularization_losses
p	keras_api
q__call__
*r&call_and_return_all_conditional_losses

skernel"
_tf_keras_layer
Љ
t	variables
utrainable_variables
vregularization_losses
w	keras_api
x__call__
*y&call_and_return_all_conditional_losses
z_random_generator"
_tf_keras_layer
¶
{	variables
|trainable_variables
}regularization_losses
~	keras_api
__call__
+А&call_and_return_all_conditional_losses"
_tf_keras_layer
Ќ
Б	variables
Вtrainable_variables
Гregularization_losses
Д	keras_api
Е__call__
+Ж&call_and_return_all_conditional_losses
	Зaxis

Иgamma
	Йbeta"
_tf_keras_layer
Ъ
К	variables
Лtrainable_variables
Мregularization_losses
Н	keras_api
О__call__
+П&call_and_return_all_conditional_losses
Р_query_dense
С
_key_dense
Т_value_dense
У_softmax
Ф_dropout_layer
Х_output_dense"
_tf_keras_layer
Ђ
Ц	variables
Чtrainable_variables
Шregularization_losses
Щ	keras_api
Ъ__call__
+Ы&call_and_return_all_conditional_losses"
_tf_keras_layer
Ќ
Ь	variables
Эtrainable_variables
Юregularization_losses
Я	keras_api
†__call__
+°&call_and_return_all_conditional_losses
	Ґaxis

£gamma
	§beta"
_tf_keras_layer
Є
•	variables
¶trainable_variables
Іregularization_losses
®	keras_api
©__call__
+™&call_and_return_all_conditional_losses
Ђkernel"
_tf_keras_layer
)
ђ	keras_api"
_tf_keras_layer
Є
≠	variables
Ѓtrainable_variables
ѓregularization_losses
∞	keras_api
±__call__
+≤&call_and_return_all_conditional_losses
≥kernel"
_tf_keras_layer
√
і	variables
µtrainable_variables
ґregularization_losses
Ј	keras_api
Є__call__
+є&call_and_return_all_conditional_losses
Ї_random_generator"
_tf_keras_layer
Ђ
ї	variables
Љtrainable_variables
љregularization_losses
Њ	keras_api
њ__call__
+ј&call_and_return_all_conditional_losses"
_tf_keras_layer
Ќ
Ѕ	variables
¬trainable_variables
√regularization_losses
ƒ	keras_api
≈__call__
+∆&call_and_return_all_conditional_losses
	«axis

»gamma
	…beta"
_tf_keras_layer
Ъ
 	variables
Ћtrainable_variables
ћregularization_losses
Ќ	keras_api
ќ__call__
+ѕ&call_and_return_all_conditional_losses
–_query_dense
—
_key_dense
“_value_dense
”_softmax
‘_dropout_layer
’_output_dense"
_tf_keras_layer
Ђ
÷	variables
„trainable_variables
Ўregularization_losses
ў	keras_api
Џ__call__
+џ&call_and_return_all_conditional_losses"
_tf_keras_layer
Ќ
№	variables
Ёtrainable_variables
ёregularization_losses
я	keras_api
а__call__
+б&call_and_return_all_conditional_losses
	вaxis

гgamma
	дbeta"
_tf_keras_layer
Є
е	variables
жtrainable_variables
зregularization_losses
и	keras_api
й__call__
+к&call_and_return_all_conditional_losses
лkernel"
_tf_keras_layer
)
м	keras_api"
_tf_keras_layer
Є
н	variables
оtrainable_variables
пregularization_losses
р	keras_api
с__call__
+т&call_and_return_all_conditional_losses
уkernel"
_tf_keras_layer
√
ф	variables
хtrainable_variables
цregularization_losses
ч	keras_api
ш__call__
+щ&call_and_return_all_conditional_losses
ъ_random_generator"
_tf_keras_layer
Ђ
ы	variables
ьtrainable_variables
эregularization_losses
ю	keras_api
€__call__
+А&call_and_return_all_conditional_losses"
_tf_keras_layer
Ќ
Б	variables
Вtrainable_variables
Гregularization_losses
Д	keras_api
Е__call__
+Ж&call_and_return_all_conditional_losses
	Зaxis

Иgamma
	Йbeta"
_tf_keras_layer
)
К	keras_api"
_tf_keras_layer
Є
Л	variables
Мtrainable_variables
Нregularization_losses
О	keras_api
П__call__
+Р&call_and_return_all_conditional_losses
Сkernel"
_tf_keras_layer
)
Т	keras_api"
_tf_keras_layer
≠
:0
A1
H2
У3
Ф4
Х5
Ц6
Ч7
Ш8
Щ9
Ъ10
c11
d12
k13
s14
И15
Й16
Ы17
Ь18
Э19
Ю20
Я21
†22
°23
Ґ24
£25
§26
Ђ27
≥28
»29
…30
£31
§32
•33
¶34
І35
®36
©37
™38
г39
д40
л41
у42
И43
Й44
С45"
trackable_list_wrapper
≠
:0
A1
H2
У3
Ф4
Х5
Ц6
Ч7
Ш8
Щ9
Ъ10
c11
d12
k13
s14
И15
Й16
Ы17
Ь18
Э19
Ю20
Я21
†22
°23
Ґ24
£25
§26
Ђ27
≥28
»29
…30
£31
§32
•33
¶34
І35
®36
©37
™38
г39
д40
л41
у42
И43
Й44
С45"
trackable_list_wrapper
 "
trackable_list_wrapper
ѕ
Ђnon_trainable_variables
ђlayers
≠metrics
 Ѓlayer_regularization_losses
ѓlayer_metrics
(	variables
)trainable_variables
*regularization_losses
,__call__
._default_save_signature
*-&call_and_return_all_conditional_losses
&-"call_and_return_conditional_losses"
_generic_user_object
—
∞trace_0
±trace_1
≤trace_2
≥trace_32ё
%__inference_model_layer_call_fn_21195
%__inference_model_layer_call_fn_22715
%__inference_model_layer_call_fn_22815
%__inference_model_layer_call_fn_22173њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z∞trace_0z±trace_1z≤trace_2z≥trace_3
љ
іtrace_0
µtrace_1
ґtrace_2
Јtrace_32 
@__inference_model_layer_call_and_return_conditional_losses_23226
@__inference_model_layer_call_and_return_conditional_losses_23679
@__inference_model_layer_call_and_return_conditional_losses_22339
@__inference_model_layer_call_and_return_conditional_losses_22505њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zіtrace_0zµtrace_1zґtrace_2zЈtrace_3
ф
Є	capture_0B—
 __inference__wrapped_model_20413input_1input_2"Ш
С≤Н
FullArgSpec
argsЪ 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЄ	capture_0
£
є_iterations
Ї
_variables
ї_learning_rate
Љ_index_dict
љ
_momentums
Њ_velocities
њ_update_step_xla"
experimentalOptimizer
-
јserving_default"
signature_map
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
'
:0"
trackable_list_wrapper
'
:0"
trackable_list_wrapper
 "
trackable_list_wrapper
≤
Ѕnon_trainable_variables
¬layers
√metrics
 ƒlayer_regularization_losses
≈layer_metrics
4	variables
5trainable_variables
6regularization_losses
8__call__
*9&call_and_return_all_conditional_losses
&9"call_and_return_conditional_losses"
_generic_user_object
п
∆trace_02–
)__inference_embedding_layer_call_fn_23686Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z∆trace_0
К
«trace_02л
D__inference_embedding_layer_call_and_return_conditional_losses_23696Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z«trace_0
&:$2embedding/embeddings
'
A0"
trackable_list_wrapper
'
A0"
trackable_list_wrapper
 "
trackable_list_wrapper
≤
»non_trainable_variables
…layers
 metrics
 Ћlayer_regularization_losses
ћlayer_metrics
;	variables
<trainable_variables
=regularization_losses
?__call__
*@&call_and_return_all_conditional_losses
&@"call_and_return_conditional_losses"
_generic_user_object
с
Ќtrace_02“
+__inference_embedding_1_layer_call_fn_23703Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЌtrace_0
М
ќtrace_02н
F__inference_embedding_1_layer_call_and_return_conditional_losses_23713Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zќtrace_0
(:&2embedding_1/embeddings
'
H0"
trackable_list_wrapper
'
H0"
trackable_list_wrapper
 "
trackable_list_wrapper
≤
ѕnon_trainable_variables
–layers
—metrics
 “layer_regularization_losses
”layer_metrics
B	variables
Ctrainable_variables
Dregularization_losses
F__call__
*G&call_and_return_all_conditional_losses
&G"call_and_return_conditional_losses"
_generic_user_object
о
‘trace_02ѕ
(__inference_tokenize_layer_call_fn_23720Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z‘trace_0
Й
’trace_02к
C__inference_tokenize_layer_call_and_return_conditional_losses_23729Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z’trace_0
!:2tokenize/kernel
"
_generic_user_object
`
У0
Ф1
Х2
Ц3
Ч4
Ш5
Щ6
Ъ7"
trackable_list_wrapper
`
У0
Ф1
Х2
Ц3
Ч4
Ш5
Щ6
Ъ7"
trackable_list_wrapper
 "
trackable_list_wrapper
≤
÷non_trainable_variables
„layers
Ўmetrics
 ўlayer_regularization_losses
Џlayer_metrics
J	variables
Ktrainable_variables
Lregularization_losses
N__call__
*O&call_and_return_all_conditional_losses
&O"call_and_return_conditional_losses"
_generic_user_object
Љ
џtrace_0
№trace_12Б
4__inference_multi_head_attention_layer_call_fn_23751
4__inference_multi_head_attention_layer_call_fn_23773Т
Й≤Е
FullArgSpecx
argspЪm
jself
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
juse_causal_mask
varargs
 
varkw
 #
defaultsЪ

 

 
p 
p 
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zџtrace_0z№trace_1
т
Ёtrace_0
ёtrace_12Ј
O__inference_multi_head_attention_layer_call_and_return_conditional_losses_23808
O__inference_multi_head_attention_layer_call_and_return_conditional_losses_23850Т
Й≤Е
FullArgSpecx
argspЪm
jself
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
juse_causal_mask
varargs
 
varkw
 #
defaultsЪ

 

 
p 
p 
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЁtrace_0zёtrace_1
ц
я	variables
аtrainable_variables
бregularization_losses
в	keras_api
г__call__
+д&call_and_return_all_conditional_losses
еpartial_output_shape
жfull_output_shape
Уkernel
	Фbias"
_tf_keras_layer
ц
з	variables
иtrainable_variables
йregularization_losses
к	keras_api
л__call__
+м&call_and_return_all_conditional_losses
нpartial_output_shape
оfull_output_shape
Хkernel
	Цbias"
_tf_keras_layer
ц
п	variables
рtrainable_variables
сregularization_losses
т	keras_api
у__call__
+ф&call_and_return_all_conditional_losses
хpartial_output_shape
цfull_output_shape
Чkernel
	Шbias"
_tf_keras_layer
Ђ
ч	variables
шtrainable_variables
щregularization_losses
ъ	keras_api
ы__call__
+ь&call_and_return_all_conditional_losses"
_tf_keras_layer
√
э	variables
юtrainable_variables
€regularization_losses
А	keras_api
Б__call__
+В&call_and_return_all_conditional_losses
Г_random_generator"
_tf_keras_layer
ц
Д	variables
Еtrainable_variables
Жregularization_losses
З	keras_api
И__call__
+Й&call_and_return_all_conditional_losses
Кpartial_output_shape
Лfull_output_shape
Щkernel
	Ъbias"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≤
Мnon_trainable_variables
Нlayers
Оmetrics
 Пlayer_regularization_losses
Рlayer_metrics
V	variables
Wtrainable_variables
Xregularization_losses
Z__call__
*[&call_and_return_all_conditional_losses
&["call_and_return_conditional_losses"
_generic_user_object
й
Сtrace_02 
#__inference_add_layer_call_fn_23856Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zСtrace_0
Д
Тtrace_02е
>__inference_add_layer_call_and_return_conditional_losses_23862Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zТtrace_0
.
c0
d1"
trackable_list_wrapper
.
c0
d1"
trackable_list_wrapper
 "
trackable_list_wrapper
≤
Уnon_trainable_variables
Фlayers
Хmetrics
 Цlayer_regularization_losses
Чlayer_metrics
\	variables
]trainable_variables
^regularization_losses
`__call__
*a&call_and_return_all_conditional_losses
&a"call_and_return_conditional_losses"
_generic_user_object
щ
Шtrace_02Џ
3__inference_layer_normalization_layer_call_fn_23871Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zШtrace_0
Ф
Щtrace_02х
N__inference_layer_normalization_layer_call_and_return_conditional_losses_23893Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЩtrace_0
 "
trackable_list_wrapper
':%2layer_normalization/gamma
&:$2layer_normalization/beta
'
k0"
trackable_list_wrapper
'
k0"
trackable_list_wrapper
 "
trackable_list_wrapper
≤
Ъnon_trainable_variables
Ыlayers
Ьmetrics
 Эlayer_regularization_losses
Юlayer_metrics
e	variables
ftrainable_variables
gregularization_losses
i__call__
*j&call_and_return_all_conditional_losses
&j"call_and_return_conditional_losses"
_generic_user_object
л
Яtrace_02ћ
%__inference_dense_layer_call_fn_23900Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЯtrace_0
Ж
†trace_02з
@__inference_dense_layer_call_and_return_conditional_losses_23927Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z†trace_0
:2dense/kernel
"
_generic_user_object
'
s0"
trackable_list_wrapper
'
s0"
trackable_list_wrapper
 "
trackable_list_wrapper
≤
°non_trainable_variables
Ґlayers
£metrics
 §layer_regularization_losses
•layer_metrics
m	variables
ntrainable_variables
oregularization_losses
q__call__
*r&call_and_return_all_conditional_losses
&r"call_and_return_conditional_losses"
_generic_user_object
н
¶trace_02ќ
'__inference_dense_1_layer_call_fn_23934Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z¶trace_0
И
Іtrace_02й
B__inference_dense_1_layer_call_and_return_conditional_losses_23961Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zІtrace_0
 :2dense_1/kernel
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≤
®non_trainable_variables
©layers
™metrics
 Ђlayer_regularization_losses
ђlayer_metrics
t	variables
utrainable_variables
vregularization_losses
x__call__
*y&call_and_return_all_conditional_losses
&y"call_and_return_conditional_losses"
_generic_user_object
√
≠trace_0
Ѓtrace_12И
'__inference_dropout_layer_call_fn_23966
'__inference_dropout_layer_call_fn_23971≥
™≤¶
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z≠trace_0zЃtrace_1
щ
ѓtrace_0
∞trace_12Њ
B__inference_dropout_layer_call_and_return_conditional_losses_23976
B__inference_dropout_layer_call_and_return_conditional_losses_23988≥
™≤¶
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zѓtrace_0z∞trace_1
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
і
±non_trainable_variables
≤layers
≥metrics
 іlayer_regularization_losses
µlayer_metrics
{	variables
|trainable_variables
}regularization_losses
__call__
+А&call_and_return_all_conditional_losses
'А"call_and_return_conditional_losses"
_generic_user_object
л
ґtrace_02ћ
%__inference_add_1_layer_call_fn_23994Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zґtrace_0
Ж
Јtrace_02з
@__inference_add_1_layer_call_and_return_conditional_losses_24000Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЈtrace_0
0
И0
Й1"
trackable_list_wrapper
0
И0
Й1"
trackable_list_wrapper
 "
trackable_list_wrapper
Є
Єnon_trainable_variables
єlayers
Їmetrics
 їlayer_regularization_losses
Љlayer_metrics
Б	variables
Вtrainable_variables
Гregularization_losses
Е__call__
+Ж&call_and_return_all_conditional_losses
'Ж"call_and_return_conditional_losses"
_generic_user_object
ы
љtrace_02№
5__inference_layer_normalization_1_layer_call_fn_24009Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zљtrace_0
Ц
Њtrace_02ч
P__inference_layer_normalization_1_layer_call_and_return_conditional_losses_24031Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЊtrace_0
 "
trackable_list_wrapper
):'2layer_normalization_1/gamma
(:&2layer_normalization_1/beta
`
Ы0
Ь1
Э2
Ю3
Я4
†5
°6
Ґ7"
trackable_list_wrapper
`
Ы0
Ь1
Э2
Ю3
Я4
†5
°6
Ґ7"
trackable_list_wrapper
 "
trackable_list_wrapper
Є
њnon_trainable_variables
јlayers
Ѕmetrics
 ¬layer_regularization_losses
√layer_metrics
К	variables
Лtrainable_variables
Мregularization_losses
О__call__
+П&call_and_return_all_conditional_losses
'П"call_and_return_conditional_losses"
_generic_user_object
ј
ƒtrace_0
≈trace_12Е
6__inference_multi_head_attention_1_layer_call_fn_24053
6__inference_multi_head_attention_1_layer_call_fn_24075Т
Й≤Е
FullArgSpecx
argspЪm
jself
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
juse_causal_mask
varargs
 
varkw
 #
defaultsЪ

 

 
p 
p 
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zƒtrace_0z≈trace_1
ц
∆trace_0
«trace_12ї
Q__inference_multi_head_attention_1_layer_call_and_return_conditional_losses_24110
Q__inference_multi_head_attention_1_layer_call_and_return_conditional_losses_24152Т
Й≤Е
FullArgSpecx
argspЪm
jself
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
juse_causal_mask
varargs
 
varkw
 #
defaultsЪ

 

 
p 
p 
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z∆trace_0z«trace_1
ц
»	variables
…trainable_variables
 regularization_losses
Ћ	keras_api
ћ__call__
+Ќ&call_and_return_all_conditional_losses
ќpartial_output_shape
ѕfull_output_shape
Ыkernel
	Ьbias"
_tf_keras_layer
ц
–	variables
—trainable_variables
“regularization_losses
”	keras_api
‘__call__
+’&call_and_return_all_conditional_losses
÷partial_output_shape
„full_output_shape
Эkernel
	Юbias"
_tf_keras_layer
ц
Ў	variables
ўtrainable_variables
Џregularization_losses
џ	keras_api
№__call__
+Ё&call_and_return_all_conditional_losses
ёpartial_output_shape
яfull_output_shape
Яkernel
	†bias"
_tf_keras_layer
Ђ
а	variables
бtrainable_variables
вregularization_losses
г	keras_api
д__call__
+е&call_and_return_all_conditional_losses"
_tf_keras_layer
√
ж	variables
зtrainable_variables
иregularization_losses
й	keras_api
к__call__
+л&call_and_return_all_conditional_losses
м_random_generator"
_tf_keras_layer
ц
н	variables
оtrainable_variables
пregularization_losses
р	keras_api
с__call__
+т&call_and_return_all_conditional_losses
уpartial_output_shape
фfull_output_shape
°kernel
	Ґbias"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Є
хnon_trainable_variables
цlayers
чmetrics
 шlayer_regularization_losses
щlayer_metrics
Ц	variables
Чtrainable_variables
Шregularization_losses
Ъ__call__
+Ы&call_and_return_all_conditional_losses
'Ы"call_and_return_conditional_losses"
_generic_user_object
л
ъtrace_02ћ
%__inference_add_2_layer_call_fn_24158Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zъtrace_0
Ж
ыtrace_02з
@__inference_add_2_layer_call_and_return_conditional_losses_24164Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zыtrace_0
0
£0
§1"
trackable_list_wrapper
0
£0
§1"
trackable_list_wrapper
 "
trackable_list_wrapper
Є
ьnon_trainable_variables
эlayers
юmetrics
 €layer_regularization_losses
Аlayer_metrics
Ь	variables
Эtrainable_variables
Юregularization_losses
†__call__
+°&call_and_return_all_conditional_losses
'°"call_and_return_conditional_losses"
_generic_user_object
ы
Бtrace_02№
5__inference_layer_normalization_2_layer_call_fn_24173Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zБtrace_0
Ц
Вtrace_02ч
P__inference_layer_normalization_2_layer_call_and_return_conditional_losses_24195Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zВtrace_0
 "
trackable_list_wrapper
):'2layer_normalization_2/gamma
(:&2layer_normalization_2/beta
(
Ђ0"
trackable_list_wrapper
(
Ђ0"
trackable_list_wrapper
 "
trackable_list_wrapper
Є
Гnon_trainable_variables
Дlayers
Еmetrics
 Жlayer_regularization_losses
Зlayer_metrics
•	variables
¶trainable_variables
Іregularization_losses
©__call__
+™&call_and_return_all_conditional_losses
'™"call_and_return_conditional_losses"
_generic_user_object
н
Иtrace_02ќ
'__inference_dense_2_layer_call_fn_24202Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zИtrace_0
И
Йtrace_02й
B__inference_dense_2_layer_call_and_return_conditional_losses_24229Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЙtrace_0
 :2dense_2/kernel
"
_generic_user_object
(
≥0"
trackable_list_wrapper
(
≥0"
trackable_list_wrapper
 "
trackable_list_wrapper
Є
Кnon_trainable_variables
Лlayers
Мmetrics
 Нlayer_regularization_losses
Оlayer_metrics
≠	variables
Ѓtrainable_variables
ѓregularization_losses
±__call__
+≤&call_and_return_all_conditional_losses
'≤"call_and_return_conditional_losses"
_generic_user_object
н
Пtrace_02ќ
'__inference_dense_3_layer_call_fn_24236Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zПtrace_0
И
Рtrace_02й
B__inference_dense_3_layer_call_and_return_conditional_losses_24263Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zРtrace_0
 :2dense_3/kernel
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Є
Сnon_trainable_variables
Тlayers
Уmetrics
 Фlayer_regularization_losses
Хlayer_metrics
і	variables
µtrainable_variables
ґregularization_losses
Є__call__
+є&call_and_return_all_conditional_losses
'є"call_and_return_conditional_losses"
_generic_user_object
«
Цtrace_0
Чtrace_12М
)__inference_dropout_1_layer_call_fn_24268
)__inference_dropout_1_layer_call_fn_24273≥
™≤¶
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЦtrace_0zЧtrace_1
э
Шtrace_0
Щtrace_12¬
D__inference_dropout_1_layer_call_and_return_conditional_losses_24278
D__inference_dropout_1_layer_call_and_return_conditional_losses_24290≥
™≤¶
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zШtrace_0zЩtrace_1
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Є
Ъnon_trainable_variables
Ыlayers
Ьmetrics
 Эlayer_regularization_losses
Юlayer_metrics
ї	variables
Љtrainable_variables
љregularization_losses
њ__call__
+ј&call_and_return_all_conditional_losses
'ј"call_and_return_conditional_losses"
_generic_user_object
л
Яtrace_02ћ
%__inference_add_3_layer_call_fn_24296Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЯtrace_0
Ж
†trace_02з
@__inference_add_3_layer_call_and_return_conditional_losses_24302Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z†trace_0
0
»0
…1"
trackable_list_wrapper
0
»0
…1"
trackable_list_wrapper
 "
trackable_list_wrapper
Є
°non_trainable_variables
Ґlayers
£metrics
 §layer_regularization_losses
•layer_metrics
Ѕ	variables
¬trainable_variables
√regularization_losses
≈__call__
+∆&call_and_return_all_conditional_losses
'∆"call_and_return_conditional_losses"
_generic_user_object
ы
¶trace_02№
5__inference_layer_normalization_3_layer_call_fn_24311Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z¶trace_0
Ц
Іtrace_02ч
P__inference_layer_normalization_3_layer_call_and_return_conditional_losses_24333Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zІtrace_0
 "
trackable_list_wrapper
):'2layer_normalization_3/gamma
(:&2layer_normalization_3/beta
`
£0
§1
•2
¶3
І4
®5
©6
™7"
trackable_list_wrapper
`
£0
§1
•2
¶3
І4
®5
©6
™7"
trackable_list_wrapper
 "
trackable_list_wrapper
Є
®non_trainable_variables
©layers
™metrics
 Ђlayer_regularization_losses
ђlayer_metrics
 	variables
Ћtrainable_variables
ћregularization_losses
ќ__call__
+ѕ&call_and_return_all_conditional_losses
'ѕ"call_and_return_conditional_losses"
_generic_user_object
ј
≠trace_0
Ѓtrace_12Е
6__inference_multi_head_attention_2_layer_call_fn_24355
6__inference_multi_head_attention_2_layer_call_fn_24377Т
Й≤Е
FullArgSpecx
argspЪm
jself
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
juse_causal_mask
varargs
 
varkw
 #
defaultsЪ

 

 
p 
p 
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z≠trace_0zЃtrace_1
ц
ѓtrace_0
∞trace_12ї
Q__inference_multi_head_attention_2_layer_call_and_return_conditional_losses_24412
Q__inference_multi_head_attention_2_layer_call_and_return_conditional_losses_24454Т
Й≤Е
FullArgSpecx
argspЪm
jself
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
juse_causal_mask
varargs
 
varkw
 #
defaultsЪ

 

 
p 
p 
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zѓtrace_0z∞trace_1
ц
±	variables
≤trainable_variables
≥regularization_losses
і	keras_api
µ__call__
+ґ&call_and_return_all_conditional_losses
Јpartial_output_shape
Єfull_output_shape
£kernel
	§bias"
_tf_keras_layer
ц
є	variables
Їtrainable_variables
їregularization_losses
Љ	keras_api
љ__call__
+Њ&call_and_return_all_conditional_losses
њpartial_output_shape
јfull_output_shape
•kernel
	¶bias"
_tf_keras_layer
ц
Ѕ	variables
¬trainable_variables
√regularization_losses
ƒ	keras_api
≈__call__
+∆&call_and_return_all_conditional_losses
«partial_output_shape
»full_output_shape
Іkernel
	®bias"
_tf_keras_layer
Ђ
…	variables
 trainable_variables
Ћregularization_losses
ћ	keras_api
Ќ__call__
+ќ&call_and_return_all_conditional_losses"
_tf_keras_layer
√
ѕ	variables
–trainable_variables
—regularization_losses
“	keras_api
”__call__
+‘&call_and_return_all_conditional_losses
’_random_generator"
_tf_keras_layer
ц
÷	variables
„trainable_variables
Ўregularization_losses
ў	keras_api
Џ__call__
+џ&call_and_return_all_conditional_losses
№partial_output_shape
Ёfull_output_shape
©kernel
	™bias"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Є
ёnon_trainable_variables
яlayers
аmetrics
 бlayer_regularization_losses
вlayer_metrics
÷	variables
„trainable_variables
Ўregularization_losses
Џ__call__
+џ&call_and_return_all_conditional_losses
'џ"call_and_return_conditional_losses"
_generic_user_object
л
гtrace_02ћ
%__inference_add_4_layer_call_fn_24460Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zгtrace_0
Ж
дtrace_02з
@__inference_add_4_layer_call_and_return_conditional_losses_24466Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zдtrace_0
0
г0
д1"
trackable_list_wrapper
0
г0
д1"
trackable_list_wrapper
 "
trackable_list_wrapper
Є
еnon_trainable_variables
жlayers
зmetrics
 иlayer_regularization_losses
йlayer_metrics
№	variables
Ёtrainable_variables
ёregularization_losses
а__call__
+б&call_and_return_all_conditional_losses
'б"call_and_return_conditional_losses"
_generic_user_object
ы
кtrace_02№
5__inference_layer_normalization_4_layer_call_fn_24475Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zкtrace_0
Ц
лtrace_02ч
P__inference_layer_normalization_4_layer_call_and_return_conditional_losses_24497Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zлtrace_0
 "
trackable_list_wrapper
):'2layer_normalization_4/gamma
(:&2layer_normalization_4/beta
(
л0"
trackable_list_wrapper
(
л0"
trackable_list_wrapper
 "
trackable_list_wrapper
Є
мnon_trainable_variables
нlayers
оmetrics
 пlayer_regularization_losses
рlayer_metrics
е	variables
жtrainable_variables
зregularization_losses
й__call__
+к&call_and_return_all_conditional_losses
'к"call_and_return_conditional_losses"
_generic_user_object
н
сtrace_02ќ
'__inference_dense_4_layer_call_fn_24504Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zсtrace_0
И
тtrace_02й
B__inference_dense_4_layer_call_and_return_conditional_losses_24531Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zтtrace_0
 :2dense_4/kernel
"
_generic_user_object
(
у0"
trackable_list_wrapper
(
у0"
trackable_list_wrapper
 "
trackable_list_wrapper
Є
уnon_trainable_variables
фlayers
хmetrics
 цlayer_regularization_losses
чlayer_metrics
н	variables
оtrainable_variables
пregularization_losses
с__call__
+т&call_and_return_all_conditional_losses
'т"call_and_return_conditional_losses"
_generic_user_object
н
шtrace_02ќ
'__inference_dense_5_layer_call_fn_24538Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zшtrace_0
И
щtrace_02й
B__inference_dense_5_layer_call_and_return_conditional_losses_24565Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zщtrace_0
 :2dense_5/kernel
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Є
ъnon_trainable_variables
ыlayers
ьmetrics
 эlayer_regularization_losses
юlayer_metrics
ф	variables
хtrainable_variables
цregularization_losses
ш__call__
+щ&call_and_return_all_conditional_losses
'щ"call_and_return_conditional_losses"
_generic_user_object
«
€trace_0
Аtrace_12М
)__inference_dropout_2_layer_call_fn_24570
)__inference_dropout_2_layer_call_fn_24575≥
™≤¶
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z€trace_0zАtrace_1
э
Бtrace_0
Вtrace_12¬
D__inference_dropout_2_layer_call_and_return_conditional_losses_24580
D__inference_dropout_2_layer_call_and_return_conditional_losses_24592≥
™≤¶
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zБtrace_0zВtrace_1
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Є
Гnon_trainable_variables
Дlayers
Еmetrics
 Жlayer_regularization_losses
Зlayer_metrics
ы	variables
ьtrainable_variables
эregularization_losses
€__call__
+А&call_and_return_all_conditional_losses
'А"call_and_return_conditional_losses"
_generic_user_object
л
Иtrace_02ћ
%__inference_add_5_layer_call_fn_24598Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zИtrace_0
Ж
Йtrace_02з
@__inference_add_5_layer_call_and_return_conditional_losses_24604Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЙtrace_0
0
И0
Й1"
trackable_list_wrapper
0
И0
Й1"
trackable_list_wrapper
 "
trackable_list_wrapper
Є
Кnon_trainable_variables
Лlayers
Мmetrics
 Нlayer_regularization_losses
Оlayer_metrics
Б	variables
Вtrainable_variables
Гregularization_losses
Е__call__
+Ж&call_and_return_all_conditional_losses
'Ж"call_and_return_conditional_losses"
_generic_user_object
ы
Пtrace_02№
5__inference_layer_normalization_5_layer_call_fn_24613Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zПtrace_0
Ц
Рtrace_02ч
P__inference_layer_normalization_5_layer_call_and_return_conditional_losses_24635Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zРtrace_0
 "
trackable_list_wrapper
):'2layer_normalization_5/gamma
(:&2layer_normalization_5/beta
"
_generic_user_object
(
С0"
trackable_list_wrapper
(
С0"
trackable_list_wrapper
 "
trackable_list_wrapper
Є
Сnon_trainable_variables
Тlayers
Уmetrics
 Фlayer_regularization_losses
Хlayer_metrics
Л	variables
Мtrainable_variables
Нregularization_losses
П__call__
+Р&call_and_return_all_conditional_losses
'Р"call_and_return_conditional_losses"
_generic_user_object
н
Цtrace_02ќ
'__inference_dense_6_layer_call_fn_24642Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЦtrace_0
И
Чtrace_02й
B__inference_dense_6_layer_call_and_return_conditional_losses_24649Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЧtrace_0
 :2dense_6/kernel
"
_generic_user_object
7:52!multi_head_attention/query/kernel
1:/2multi_head_attention/query/bias
5:32multi_head_attention/key/kernel
/:-2multi_head_attention/key/bias
7:52!multi_head_attention/value/kernel
1:/2multi_head_attention/value/bias
B:@2,multi_head_attention/attention_output/kernel
8:62*multi_head_attention/attention_output/bias
9:72#multi_head_attention_1/query/kernel
3:12!multi_head_attention_1/query/bias
7:52!multi_head_attention_1/key/kernel
1:/2multi_head_attention_1/key/bias
9:72#multi_head_attention_1/value/kernel
3:12!multi_head_attention_1/value/bias
D:B2.multi_head_attention_1/attention_output/kernel
::82,multi_head_attention_1/attention_output/bias
9:72#multi_head_attention_2/query/kernel
3:12!multi_head_attention_2/query/bias
7:52!multi_head_attention_2/key/kernel
1:/2multi_head_attention_2/key/bias
9:72#multi_head_attention_2/value/kernel
3:12!multi_head_attention_2/value/bias
D:B2.multi_head_attention_2/attention_output/kernel
::82,multi_head_attention_2/attention_output/bias
 "
trackable_list_wrapper
ќ
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24
25
26
27
28
29
30
 31
!32
"33
#34
$35
%36
&37
'38"
trackable_list_wrapper
0
Ш0
Щ1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
†
Є	capture_0Bэ
%__inference_model_layer_call_fn_21195input_1input_2"њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЄ	capture_0
Ґ
Є	capture_0B€
%__inference_model_layer_call_fn_22715inputs/0inputs/1"њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЄ	capture_0
Ґ
Є	capture_0B€
%__inference_model_layer_call_fn_22815inputs/0inputs/1"њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЄ	capture_0
†
Є	capture_0Bэ
%__inference_model_layer_call_fn_22173input_1input_2"њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЄ	capture_0
љ
Є	capture_0BЪ
@__inference_model_layer_call_and_return_conditional_losses_23226inputs/0inputs/1"њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЄ	capture_0
љ
Є	capture_0BЪ
@__inference_model_layer_call_and_return_conditional_losses_23679inputs/0inputs/1"њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЄ	capture_0
ї
Є	capture_0BШ
@__inference_model_layer_call_and_return_conditional_losses_22339input_1input_2"њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЄ	capture_0
ї
Є	capture_0BШ
@__inference_model_layer_call_and_return_conditional_losses_22505input_1input_2"њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЄ	capture_0
J
Constjtf.TrackableConstant
:	 2	iteration
“
Ъ0
Ы1
Ь2
Э3
Ю4
Я5
†6
°7
Ґ8
£9
§10
•11
¶12
І13
®14
©15
™16
Ђ17
ђ18
≠19
Ѓ20
ѓ21
∞22
±23
≤24
≥25
і26
µ27
ґ28
Ј29
Є30
є31
Ї32
ї33
Љ34
љ35
Њ36
њ37
ј38
Ѕ39
¬40
√41
ƒ42
≈43
∆44
«45
»46
…47
 48
Ћ49
ћ50
Ќ51
ќ52
ѕ53
–54
—55
“56
”57
‘58
’59
÷60
„61
Ў62
ў63
Џ64
џ65
№66
Ё67
ё68
я69
а70
б71
в72
г73
д74
е75
ж76
з77
и78
й79
к80
л81
м82
н83
о84
п85
р86
с87
т88
у89
ф90
х91"
trackable_list_wrapper
: 2learning_rate
 "
trackable_dict_wrapper
і
Ъ0
Ь1
Ю2
†3
Ґ4
§5
¶6
®7
™8
ђ9
Ѓ10
∞11
≤12
і13
ґ14
Є15
Ї16
Љ17
Њ18
ј19
¬20
ƒ21
∆22
»23
 24
ћ25
ќ26
–27
“28
‘29
÷30
Ў31
Џ32
№33
ё34
а35
в36
д37
ж38
и39
к40
м41
о42
р43
т44
ф45"
trackable_list_wrapper
і
Ы0
Э1
Я2
°3
£4
•5
І6
©7
Ђ8
≠9
ѓ10
±11
≥12
µ13
Ј14
є15
ї16
љ17
њ18
Ѕ19
√20
≈21
«22
…23
Ћ24
Ќ25
ѕ26
—27
”28
’29
„30
ў31
џ32
Ё33
я34
б35
г36
е37
з38
й39
л40
н41
п42
с43
у44
х45"
trackable_list_wrapper
њ2Љє
Ѓ≤™
FullArgSpec2
args*Ъ'
jself

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 0
с
Є	capture_0Bќ
#__inference_signature_wrapper_22613input_1input_2"Ф
Н≤Й
FullArgSpec
argsЪ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЄ	capture_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ЁBЏ
)__inference_embedding_layer_call_fn_23686inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
шBх
D__inference_embedding_layer_call_and_return_conditional_losses_23696inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
яB№
+__inference_embedding_1_layer_call_fn_23703inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ъBч
F__inference_embedding_1_layer_call_and_return_conditional_losses_23713inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
№Bў
(__inference_tokenize_layer_call_fn_23720inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
чBф
C__inference_tokenize_layer_call_and_return_conditional_losses_23729inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
J
P0
Q1
R2
S3
T4
U5"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ёBџ
4__inference_multi_head_attention_layer_call_fn_23751queryvalue"Т
Й≤Е
FullArgSpecx
argspЪm
jself
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
juse_causal_mask
varargs
 
varkw
 #
defaultsЪ

 

 
p 
p 
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ёBџ
4__inference_multi_head_attention_layer_call_fn_23773queryvalue"Т
Й≤Е
FullArgSpecx
argspЪm
jself
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
juse_causal_mask
varargs
 
varkw
 #
defaultsЪ

 

 
p 
p 
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
щBц
O__inference_multi_head_attention_layer_call_and_return_conditional_losses_23808queryvalue"Т
Й≤Е
FullArgSpecx
argspЪm
jself
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
juse_causal_mask
varargs
 
varkw
 #
defaultsЪ

 

 
p 
p 
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
щBц
O__inference_multi_head_attention_layer_call_and_return_conditional_losses_23850queryvalue"Т
Й≤Е
FullArgSpecx
argspЪm
jself
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
juse_causal_mask
varargs
 
varkw
 #
defaultsЪ

 

 
p 
p 
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
0
У0
Ф1"
trackable_list_wrapper
0
У0
Ф1"
trackable_list_wrapper
 "
trackable_list_wrapper
Є
цnon_trainable_variables
чlayers
шmetrics
 щlayer_regularization_losses
ъlayer_metrics
я	variables
аtrainable_variables
бregularization_losses
г__call__
+д&call_and_return_all_conditional_losses
'д"call_and_return_conditional_losses"
_generic_user_object
®2•Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
®2•Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
0
Х0
Ц1"
trackable_list_wrapper
0
Х0
Ц1"
trackable_list_wrapper
 "
trackable_list_wrapper
Є
ыnon_trainable_variables
ьlayers
эmetrics
 юlayer_regularization_losses
€layer_metrics
з	variables
иtrainable_variables
йregularization_losses
л__call__
+м&call_and_return_all_conditional_losses
'м"call_and_return_conditional_losses"
_generic_user_object
®2•Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
®2•Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
0
Ч0
Ш1"
trackable_list_wrapper
0
Ч0
Ш1"
trackable_list_wrapper
 "
trackable_list_wrapper
Є
Аnon_trainable_variables
Бlayers
Вmetrics
 Гlayer_regularization_losses
Дlayer_metrics
п	variables
рtrainable_variables
сregularization_losses
у__call__
+ф&call_and_return_all_conditional_losses
'ф"call_and_return_conditional_losses"
_generic_user_object
®2•Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
®2•Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Є
Еnon_trainable_variables
Жlayers
Зmetrics
 Иlayer_regularization_losses
Йlayer_metrics
ч	variables
шtrainable_variables
щregularization_losses
ы__call__
+ь&call_and_return_all_conditional_losses
'ь"call_and_return_conditional_losses"
_generic_user_object
µ2≤ѓ
¶≤Ґ
FullArgSpec%
argsЪ
jself
jinputs
jmask
varargs
 
varkw
 
defaultsҐ

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
µ2≤ѓ
¶≤Ґ
FullArgSpec%
argsЪ
jself
jinputs
jmask
varargs
 
varkw
 
defaultsҐ

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Є
Кnon_trainable_variables
Лlayers
Мmetrics
 Нlayer_regularization_losses
Оlayer_metrics
э	variables
юtrainable_variables
€regularization_losses
Б__call__
+В&call_and_return_all_conditional_losses
'В"call_and_return_conditional_losses"
_generic_user_object
є2ґ≥
™≤¶
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
є2ґ≥
™≤¶
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
"
_generic_user_object
0
Щ0
Ъ1"
trackable_list_wrapper
0
Щ0
Ъ1"
trackable_list_wrapper
 "
trackable_list_wrapper
Є
Пnon_trainable_variables
Рlayers
Сmetrics
 Тlayer_regularization_losses
Уlayer_metrics
Д	variables
Еtrainable_variables
Жregularization_losses
И__call__
+Й&call_and_return_all_conditional_losses
'Й"call_and_return_conditional_losses"
_generic_user_object
®2•Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
®2•Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
гBа
#__inference_add_layer_call_fn_23856inputs/0inputs/1"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
юBы
>__inference_add_layer_call_and_return_conditional_losses_23862inputs/0inputs/1"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
зBд
3__inference_layer_normalization_layer_call_fn_23871inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ВB€
N__inference_layer_normalization_layer_call_and_return_conditional_losses_23893inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ўB÷
%__inference_dense_layer_call_fn_23900inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
фBс
@__inference_dense_layer_call_and_return_conditional_losses_23927inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
џBЎ
'__inference_dense_1_layer_call_fn_23934inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
цBу
B__inference_dense_1_layer_call_and_return_conditional_losses_23961inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
мBй
'__inference_dropout_layer_call_fn_23966inputs"≥
™≤¶
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
мBй
'__inference_dropout_layer_call_fn_23971inputs"≥
™≤¶
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЗBД
B__inference_dropout_layer_call_and_return_conditional_losses_23976inputs"≥
™≤¶
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЗBД
B__inference_dropout_layer_call_and_return_conditional_losses_23988inputs"≥
™≤¶
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
еBв
%__inference_add_1_layer_call_fn_23994inputs/0inputs/1"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
АBэ
@__inference_add_1_layer_call_and_return_conditional_losses_24000inputs/0inputs/1"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
йBж
5__inference_layer_normalization_1_layer_call_fn_24009inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ДBБ
P__inference_layer_normalization_1_layer_call_and_return_conditional_losses_24031inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
P
Р0
С1
Т2
У3
Ф4
Х5"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
аBЁ
6__inference_multi_head_attention_1_layer_call_fn_24053queryvalue"Т
Й≤Е
FullArgSpecx
argspЪm
jself
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
juse_causal_mask
varargs
 
varkw
 #
defaultsЪ

 

 
p 
p 
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
аBЁ
6__inference_multi_head_attention_1_layer_call_fn_24075queryvalue"Т
Й≤Е
FullArgSpecx
argspЪm
jself
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
juse_causal_mask
varargs
 
varkw
 #
defaultsЪ

 

 
p 
p 
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ыBш
Q__inference_multi_head_attention_1_layer_call_and_return_conditional_losses_24110queryvalue"Т
Й≤Е
FullArgSpecx
argspЪm
jself
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
juse_causal_mask
varargs
 
varkw
 #
defaultsЪ

 

 
p 
p 
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ыBш
Q__inference_multi_head_attention_1_layer_call_and_return_conditional_losses_24152queryvalue"Т
Й≤Е
FullArgSpecx
argspЪm
jself
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
juse_causal_mask
varargs
 
varkw
 #
defaultsЪ

 

 
p 
p 
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
0
Ы0
Ь1"
trackable_list_wrapper
0
Ы0
Ь1"
trackable_list_wrapper
 "
trackable_list_wrapper
Є
Фnon_trainable_variables
Хlayers
Цmetrics
 Чlayer_regularization_losses
Шlayer_metrics
»	variables
…trainable_variables
 regularization_losses
ћ__call__
+Ќ&call_and_return_all_conditional_losses
'Ќ"call_and_return_conditional_losses"
_generic_user_object
®2•Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
®2•Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
0
Э0
Ю1"
trackable_list_wrapper
0
Э0
Ю1"
trackable_list_wrapper
 "
trackable_list_wrapper
Є
Щnon_trainable_variables
Ъlayers
Ыmetrics
 Ьlayer_regularization_losses
Эlayer_metrics
–	variables
—trainable_variables
“regularization_losses
‘__call__
+’&call_and_return_all_conditional_losses
'’"call_and_return_conditional_losses"
_generic_user_object
®2•Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
®2•Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
0
Я0
†1"
trackable_list_wrapper
0
Я0
†1"
trackable_list_wrapper
 "
trackable_list_wrapper
Є
Юnon_trainable_variables
Яlayers
†metrics
 °layer_regularization_losses
Ґlayer_metrics
Ў	variables
ўtrainable_variables
Џregularization_losses
№__call__
+Ё&call_and_return_all_conditional_losses
'Ё"call_and_return_conditional_losses"
_generic_user_object
®2•Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
®2•Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Є
£non_trainable_variables
§layers
•metrics
 ¶layer_regularization_losses
Іlayer_metrics
а	variables
бtrainable_variables
вregularization_losses
д__call__
+е&call_and_return_all_conditional_losses
'е"call_and_return_conditional_losses"
_generic_user_object
µ2≤ѓ
¶≤Ґ
FullArgSpec%
argsЪ
jself
jinputs
jmask
varargs
 
varkw
 
defaultsҐ

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
µ2≤ѓ
¶≤Ґ
FullArgSpec%
argsЪ
jself
jinputs
jmask
varargs
 
varkw
 
defaultsҐ

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Є
®non_trainable_variables
©layers
™metrics
 Ђlayer_regularization_losses
ђlayer_metrics
ж	variables
зtrainable_variables
иregularization_losses
к__call__
+л&call_and_return_all_conditional_losses
'л"call_and_return_conditional_losses"
_generic_user_object
є2ґ≥
™≤¶
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
є2ґ≥
™≤¶
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
"
_generic_user_object
0
°0
Ґ1"
trackable_list_wrapper
0
°0
Ґ1"
trackable_list_wrapper
 "
trackable_list_wrapper
Є
≠non_trainable_variables
Ѓlayers
ѓmetrics
 ∞layer_regularization_losses
±layer_metrics
н	variables
оtrainable_variables
пregularization_losses
с__call__
+т&call_and_return_all_conditional_losses
'т"call_and_return_conditional_losses"
_generic_user_object
®2•Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
®2•Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
еBв
%__inference_add_2_layer_call_fn_24158inputs/0inputs/1"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
АBэ
@__inference_add_2_layer_call_and_return_conditional_losses_24164inputs/0inputs/1"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
йBж
5__inference_layer_normalization_2_layer_call_fn_24173inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ДBБ
P__inference_layer_normalization_2_layer_call_and_return_conditional_losses_24195inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
џBЎ
'__inference_dense_2_layer_call_fn_24202inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
цBу
B__inference_dense_2_layer_call_and_return_conditional_losses_24229inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
џBЎ
'__inference_dense_3_layer_call_fn_24236inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
цBу
B__inference_dense_3_layer_call_and_return_conditional_losses_24263inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
оBл
)__inference_dropout_1_layer_call_fn_24268inputs"≥
™≤¶
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
оBл
)__inference_dropout_1_layer_call_fn_24273inputs"≥
™≤¶
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЙBЖ
D__inference_dropout_1_layer_call_and_return_conditional_losses_24278inputs"≥
™≤¶
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЙBЖ
D__inference_dropout_1_layer_call_and_return_conditional_losses_24290inputs"≥
™≤¶
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
еBв
%__inference_add_3_layer_call_fn_24296inputs/0inputs/1"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
АBэ
@__inference_add_3_layer_call_and_return_conditional_losses_24302inputs/0inputs/1"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
йBж
5__inference_layer_normalization_3_layer_call_fn_24311inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ДBБ
P__inference_layer_normalization_3_layer_call_and_return_conditional_losses_24333inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
P
–0
—1
“2
”3
‘4
’5"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
аBЁ
6__inference_multi_head_attention_2_layer_call_fn_24355queryvalue"Т
Й≤Е
FullArgSpecx
argspЪm
jself
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
juse_causal_mask
varargs
 
varkw
 #
defaultsЪ

 

 
p 
p 
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
аBЁ
6__inference_multi_head_attention_2_layer_call_fn_24377queryvalue"Т
Й≤Е
FullArgSpecx
argspЪm
jself
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
juse_causal_mask
varargs
 
varkw
 #
defaultsЪ

 

 
p 
p 
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ыBш
Q__inference_multi_head_attention_2_layer_call_and_return_conditional_losses_24412queryvalue"Т
Й≤Е
FullArgSpecx
argspЪm
jself
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
juse_causal_mask
varargs
 
varkw
 #
defaultsЪ

 

 
p 
p 
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ыBш
Q__inference_multi_head_attention_2_layer_call_and_return_conditional_losses_24454queryvalue"Т
Й≤Е
FullArgSpecx
argspЪm
jself
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
juse_causal_mask
varargs
 
varkw
 #
defaultsЪ

 

 
p 
p 
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
0
£0
§1"
trackable_list_wrapper
0
£0
§1"
trackable_list_wrapper
 "
trackable_list_wrapper
Є
≤non_trainable_variables
≥layers
іmetrics
 µlayer_regularization_losses
ґlayer_metrics
±	variables
≤trainable_variables
≥regularization_losses
µ__call__
+ґ&call_and_return_all_conditional_losses
'ґ"call_and_return_conditional_losses"
_generic_user_object
®2•Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
®2•Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
0
•0
¶1"
trackable_list_wrapper
0
•0
¶1"
trackable_list_wrapper
 "
trackable_list_wrapper
Є
Јnon_trainable_variables
Єlayers
єmetrics
 Їlayer_regularization_losses
їlayer_metrics
є	variables
Їtrainable_variables
їregularization_losses
љ__call__
+Њ&call_and_return_all_conditional_losses
'Њ"call_and_return_conditional_losses"
_generic_user_object
®2•Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
®2•Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
0
І0
®1"
trackable_list_wrapper
0
І0
®1"
trackable_list_wrapper
 "
trackable_list_wrapper
Є
Љnon_trainable_variables
љlayers
Њmetrics
 њlayer_regularization_losses
јlayer_metrics
Ѕ	variables
¬trainable_variables
√regularization_losses
≈__call__
+∆&call_and_return_all_conditional_losses
'∆"call_and_return_conditional_losses"
_generic_user_object
®2•Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
®2•Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Є
Ѕnon_trainable_variables
¬layers
√metrics
 ƒlayer_regularization_losses
≈layer_metrics
…	variables
 trainable_variables
Ћregularization_losses
Ќ__call__
+ќ&call_and_return_all_conditional_losses
'ќ"call_and_return_conditional_losses"
_generic_user_object
µ2≤ѓ
¶≤Ґ
FullArgSpec%
argsЪ
jself
jinputs
jmask
varargs
 
varkw
 
defaultsҐ

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
µ2≤ѓ
¶≤Ґ
FullArgSpec%
argsЪ
jself
jinputs
jmask
varargs
 
varkw
 
defaultsҐ

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Є
∆non_trainable_variables
«layers
»metrics
 …layer_regularization_losses
 layer_metrics
ѕ	variables
–trainable_variables
—regularization_losses
”__call__
+‘&call_and_return_all_conditional_losses
'‘"call_and_return_conditional_losses"
_generic_user_object
є2ґ≥
™≤¶
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
є2ґ≥
™≤¶
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
"
_generic_user_object
0
©0
™1"
trackable_list_wrapper
0
©0
™1"
trackable_list_wrapper
 "
trackable_list_wrapper
Є
Ћnon_trainable_variables
ћlayers
Ќmetrics
 ќlayer_regularization_losses
ѕlayer_metrics
÷	variables
„trainable_variables
Ўregularization_losses
Џ__call__
+џ&call_and_return_all_conditional_losses
'џ"call_and_return_conditional_losses"
_generic_user_object
®2•Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
®2•Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
еBв
%__inference_add_4_layer_call_fn_24460inputs/0inputs/1"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
АBэ
@__inference_add_4_layer_call_and_return_conditional_losses_24466inputs/0inputs/1"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
йBж
5__inference_layer_normalization_4_layer_call_fn_24475inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ДBБ
P__inference_layer_normalization_4_layer_call_and_return_conditional_losses_24497inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
џBЎ
'__inference_dense_4_layer_call_fn_24504inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
цBу
B__inference_dense_4_layer_call_and_return_conditional_losses_24531inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
џBЎ
'__inference_dense_5_layer_call_fn_24538inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
цBу
B__inference_dense_5_layer_call_and_return_conditional_losses_24565inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
оBл
)__inference_dropout_2_layer_call_fn_24570inputs"≥
™≤¶
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
оBл
)__inference_dropout_2_layer_call_fn_24575inputs"≥
™≤¶
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЙBЖ
D__inference_dropout_2_layer_call_and_return_conditional_losses_24580inputs"≥
™≤¶
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЙBЖ
D__inference_dropout_2_layer_call_and_return_conditional_losses_24592inputs"≥
™≤¶
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
еBв
%__inference_add_5_layer_call_fn_24598inputs/0inputs/1"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
АBэ
@__inference_add_5_layer_call_and_return_conditional_losses_24604inputs/0inputs/1"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
йBж
5__inference_layer_normalization_5_layer_call_fn_24613inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ДBБ
P__inference_layer_normalization_5_layer_call_and_return_conditional_losses_24635inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
џBЎ
'__inference_dense_6_layer_call_fn_24642inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
цBу
B__inference_dense_6_layer_call_and_return_conditional_losses_24649inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
R
–	variables
—	keras_api

“total

”count"
_tf_keras_metric
c
‘	variables
’	keras_api

÷total

„count
Ў
_fn_kwargs"
_tf_keras_metric
,:*2AdamW/m/embedding/embeddings
,:*2AdamW/v/embedding/embeddings
.:,2AdamW/m/embedding_1/embeddings
.:,2AdamW/v/embedding_1/embeddings
':%2AdamW/m/tokenize/kernel
':%2AdamW/v/tokenize/kernel
=:;2)AdamW/m/multi_head_attention/query/kernel
=:;2)AdamW/v/multi_head_attention/query/kernel
7:52'AdamW/m/multi_head_attention/query/bias
7:52'AdamW/v/multi_head_attention/query/bias
;:92'AdamW/m/multi_head_attention/key/kernel
;:92'AdamW/v/multi_head_attention/key/kernel
5:32%AdamW/m/multi_head_attention/key/bias
5:32%AdamW/v/multi_head_attention/key/bias
=:;2)AdamW/m/multi_head_attention/value/kernel
=:;2)AdamW/v/multi_head_attention/value/kernel
7:52'AdamW/m/multi_head_attention/value/bias
7:52'AdamW/v/multi_head_attention/value/bias
H:F24AdamW/m/multi_head_attention/attention_output/kernel
H:F24AdamW/v/multi_head_attention/attention_output/kernel
>:<22AdamW/m/multi_head_attention/attention_output/bias
>:<22AdamW/v/multi_head_attention/attention_output/bias
-:+2!AdamW/m/layer_normalization/gamma
-:+2!AdamW/v/layer_normalization/gamma
,:*2 AdamW/m/layer_normalization/beta
,:*2 AdamW/v/layer_normalization/beta
$:"2AdamW/m/dense/kernel
$:"2AdamW/v/dense/kernel
&:$2AdamW/m/dense_1/kernel
&:$2AdamW/v/dense_1/kernel
/:-2#AdamW/m/layer_normalization_1/gamma
/:-2#AdamW/v/layer_normalization_1/gamma
.:,2"AdamW/m/layer_normalization_1/beta
.:,2"AdamW/v/layer_normalization_1/beta
?:=2+AdamW/m/multi_head_attention_1/query/kernel
?:=2+AdamW/v/multi_head_attention_1/query/kernel
9:72)AdamW/m/multi_head_attention_1/query/bias
9:72)AdamW/v/multi_head_attention_1/query/bias
=:;2)AdamW/m/multi_head_attention_1/key/kernel
=:;2)AdamW/v/multi_head_attention_1/key/kernel
7:52'AdamW/m/multi_head_attention_1/key/bias
7:52'AdamW/v/multi_head_attention_1/key/bias
?:=2+AdamW/m/multi_head_attention_1/value/kernel
?:=2+AdamW/v/multi_head_attention_1/value/kernel
9:72)AdamW/m/multi_head_attention_1/value/bias
9:72)AdamW/v/multi_head_attention_1/value/bias
J:H26AdamW/m/multi_head_attention_1/attention_output/kernel
J:H26AdamW/v/multi_head_attention_1/attention_output/kernel
@:>24AdamW/m/multi_head_attention_1/attention_output/bias
@:>24AdamW/v/multi_head_attention_1/attention_output/bias
/:-2#AdamW/m/layer_normalization_2/gamma
/:-2#AdamW/v/layer_normalization_2/gamma
.:,2"AdamW/m/layer_normalization_2/beta
.:,2"AdamW/v/layer_normalization_2/beta
&:$2AdamW/m/dense_2/kernel
&:$2AdamW/v/dense_2/kernel
&:$2AdamW/m/dense_3/kernel
&:$2AdamW/v/dense_3/kernel
/:-2#AdamW/m/layer_normalization_3/gamma
/:-2#AdamW/v/layer_normalization_3/gamma
.:,2"AdamW/m/layer_normalization_3/beta
.:,2"AdamW/v/layer_normalization_3/beta
?:=2+AdamW/m/multi_head_attention_2/query/kernel
?:=2+AdamW/v/multi_head_attention_2/query/kernel
9:72)AdamW/m/multi_head_attention_2/query/bias
9:72)AdamW/v/multi_head_attention_2/query/bias
=:;2)AdamW/m/multi_head_attention_2/key/kernel
=:;2)AdamW/v/multi_head_attention_2/key/kernel
7:52'AdamW/m/multi_head_attention_2/key/bias
7:52'AdamW/v/multi_head_attention_2/key/bias
?:=2+AdamW/m/multi_head_attention_2/value/kernel
?:=2+AdamW/v/multi_head_attention_2/value/kernel
9:72)AdamW/m/multi_head_attention_2/value/bias
9:72)AdamW/v/multi_head_attention_2/value/bias
J:H26AdamW/m/multi_head_attention_2/attention_output/kernel
J:H26AdamW/v/multi_head_attention_2/attention_output/kernel
@:>24AdamW/m/multi_head_attention_2/attention_output/bias
@:>24AdamW/v/multi_head_attention_2/attention_output/bias
/:-2#AdamW/m/layer_normalization_4/gamma
/:-2#AdamW/v/layer_normalization_4/gamma
.:,2"AdamW/m/layer_normalization_4/beta
.:,2"AdamW/v/layer_normalization_4/beta
&:$2AdamW/m/dense_4/kernel
&:$2AdamW/v/dense_4/kernel
&:$2AdamW/m/dense_5/kernel
&:$2AdamW/v/dense_5/kernel
/:-2#AdamW/m/layer_normalization_5/gamma
/:-2#AdamW/v/layer_normalization_5/gamma
.:,2"AdamW/m/layer_normalization_5/beta
.:,2"AdamW/v/layer_normalization_5/beta
&:$2AdamW/m/dense_6/kernel
&:$2AdamW/v/dense_6/kernel
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
0
“0
”1"
trackable_list_wrapper
.
–	variables"
_generic_user_object
:  (2total
:  (2count
0
÷0
„1"
trackable_list_wrapper
.
‘	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapperЫ
 __inference__wrapped_model_20413цWЄ:AHУФХЦЧШЩЪcdksИЙЫЬЭЮЯ†°Ґ£§Ђ≥»…£§•¶І®©™гдлуИЙСXҐU
NҐK
IҐF
!К
input_1€€€€€€€€€
!К
input_2€€€€€€€€€
™ "A™>
<
tf.math.sigmoid)К&
tf.math.sigmoid€€€€€€€€€‘
@__inference_add_1_layer_call_and_return_conditional_losses_24000ПbҐ_
XҐU
SҐP
&К#
inputs/0€€€€€€€€€	
&К#
inputs/1€€€€€€€€€	
™ ")Ґ&
К
0€€€€€€€€€	
Ъ ђ
%__inference_add_1_layer_call_fn_23994ВbҐ_
XҐU
SҐP
&К#
inputs/0€€€€€€€€€	
&К#
inputs/1€€€€€€€€€	
™ "К€€€€€€€€€	‘
@__inference_add_2_layer_call_and_return_conditional_losses_24164ПbҐ_
XҐU
SҐP
&К#
inputs/0€€€€€€€€€	
&К#
inputs/1€€€€€€€€€	
™ ")Ґ&
К
0€€€€€€€€€	
Ъ ђ
%__inference_add_2_layer_call_fn_24158ВbҐ_
XҐU
SҐP
&К#
inputs/0€€€€€€€€€	
&К#
inputs/1€€€€€€€€€	
™ "К€€€€€€€€€	‘
@__inference_add_3_layer_call_and_return_conditional_losses_24302ПbҐ_
XҐU
SҐP
&К#
inputs/0€€€€€€€€€	
&К#
inputs/1€€€€€€€€€	
™ ")Ґ&
К
0€€€€€€€€€	
Ъ ђ
%__inference_add_3_layer_call_fn_24296ВbҐ_
XҐU
SҐP
&К#
inputs/0€€€€€€€€€	
&К#
inputs/1€€€€€€€€€	
™ "К€€€€€€€€€	‘
@__inference_add_4_layer_call_and_return_conditional_losses_24466ПbҐ_
XҐU
SҐP
&К#
inputs/0€€€€€€€€€	
&К#
inputs/1€€€€€€€€€	
™ ")Ґ&
К
0€€€€€€€€€	
Ъ ђ
%__inference_add_4_layer_call_fn_24460ВbҐ_
XҐU
SҐP
&К#
inputs/0€€€€€€€€€	
&К#
inputs/1€€€€€€€€€	
™ "К€€€€€€€€€	‘
@__inference_add_5_layer_call_and_return_conditional_losses_24604ПbҐ_
XҐU
SҐP
&К#
inputs/0€€€€€€€€€	
&К#
inputs/1€€€€€€€€€	
™ ")Ґ&
К
0€€€€€€€€€	
Ъ ђ
%__inference_add_5_layer_call_fn_24598ВbҐ_
XҐU
SҐP
&К#
inputs/0€€€€€€€€€	
&К#
inputs/1€€€€€€€€€	
™ "К€€€€€€€€€	“
>__inference_add_layer_call_and_return_conditional_losses_23862ПbҐ_
XҐU
SҐP
&К#
inputs/0€€€€€€€€€	
&К#
inputs/1€€€€€€€€€	
™ ")Ґ&
К
0€€€€€€€€€	
Ъ ™
#__inference_add_layer_call_fn_23856ВbҐ_
XҐU
SҐP
&К#
inputs/0€€€€€€€€€	
&К#
inputs/1€€€€€€€€€	
™ "К€€€€€€€€€	©
B__inference_dense_1_layer_call_and_return_conditional_losses_23961cs3Ґ0
)Ґ&
$К!
inputs€€€€€€€€€	
™ ")Ґ&
К
0€€€€€€€€€	
Ъ Б
'__inference_dense_1_layer_call_fn_23934Vs3Ґ0
)Ґ&
$К!
inputs€€€€€€€€€	
™ "К€€€€€€€€€	™
B__inference_dense_2_layer_call_and_return_conditional_losses_24229dЂ3Ґ0
)Ґ&
$К!
inputs€€€€€€€€€	
™ ")Ґ&
К
0€€€€€€€€€	
Ъ В
'__inference_dense_2_layer_call_fn_24202WЂ3Ґ0
)Ґ&
$К!
inputs€€€€€€€€€	
™ "К€€€€€€€€€	™
B__inference_dense_3_layer_call_and_return_conditional_losses_24263d≥3Ґ0
)Ґ&
$К!
inputs€€€€€€€€€	
™ ")Ґ&
К
0€€€€€€€€€	
Ъ В
'__inference_dense_3_layer_call_fn_24236W≥3Ґ0
)Ґ&
$К!
inputs€€€€€€€€€	
™ "К€€€€€€€€€	™
B__inference_dense_4_layer_call_and_return_conditional_losses_24531dл3Ґ0
)Ґ&
$К!
inputs€€€€€€€€€	
™ ")Ґ&
К
0€€€€€€€€€	
Ъ В
'__inference_dense_4_layer_call_fn_24504Wл3Ґ0
)Ґ&
$К!
inputs€€€€€€€€€	
™ "К€€€€€€€€€	™
B__inference_dense_5_layer_call_and_return_conditional_losses_24565dу3Ґ0
)Ґ&
$К!
inputs€€€€€€€€€	
™ ")Ґ&
К
0€€€€€€€€€	
Ъ В
'__inference_dense_5_layer_call_fn_24538Wу3Ґ0
)Ґ&
$К!
inputs€€€€€€€€€	
™ "К€€€€€€€€€	Ґ
B__inference_dense_6_layer_call_and_return_conditional_losses_24649\С/Ґ,
%Ґ"
 К
inputs€€€€€€€€€
™ "%Ґ"
К
0€€€€€€€€€
Ъ z
'__inference_dense_6_layer_call_fn_24642OС/Ґ,
%Ґ"
 К
inputs€€€€€€€€€
™ "К€€€€€€€€€І
@__inference_dense_layer_call_and_return_conditional_losses_23927ck3Ґ0
)Ґ&
$К!
inputs€€€€€€€€€	
™ ")Ґ&
К
0€€€€€€€€€	
Ъ 
%__inference_dense_layer_call_fn_23900Vk3Ґ0
)Ґ&
$К!
inputs€€€€€€€€€	
™ "К€€€€€€€€€	ђ
D__inference_dropout_1_layer_call_and_return_conditional_losses_24278d7Ґ4
-Ґ*
$К!
inputs€€€€€€€€€	
p 
™ ")Ґ&
К
0€€€€€€€€€	
Ъ ђ
D__inference_dropout_1_layer_call_and_return_conditional_losses_24290d7Ґ4
-Ґ*
$К!
inputs€€€€€€€€€	
p
™ ")Ґ&
К
0€€€€€€€€€	
Ъ Д
)__inference_dropout_1_layer_call_fn_24268W7Ґ4
-Ґ*
$К!
inputs€€€€€€€€€	
p 
™ "К€€€€€€€€€	Д
)__inference_dropout_1_layer_call_fn_24273W7Ґ4
-Ґ*
$К!
inputs€€€€€€€€€	
p
™ "К€€€€€€€€€	ђ
D__inference_dropout_2_layer_call_and_return_conditional_losses_24580d7Ґ4
-Ґ*
$К!
inputs€€€€€€€€€	
p 
™ ")Ґ&
К
0€€€€€€€€€	
Ъ ђ
D__inference_dropout_2_layer_call_and_return_conditional_losses_24592d7Ґ4
-Ґ*
$К!
inputs€€€€€€€€€	
p
™ ")Ґ&
К
0€€€€€€€€€	
Ъ Д
)__inference_dropout_2_layer_call_fn_24570W7Ґ4
-Ґ*
$К!
inputs€€€€€€€€€	
p 
™ "К€€€€€€€€€	Д
)__inference_dropout_2_layer_call_fn_24575W7Ґ4
-Ґ*
$К!
inputs€€€€€€€€€	
p
™ "К€€€€€€€€€	™
B__inference_dropout_layer_call_and_return_conditional_losses_23976d7Ґ4
-Ґ*
$К!
inputs€€€€€€€€€	
p 
™ ")Ґ&
К
0€€€€€€€€€	
Ъ ™
B__inference_dropout_layer_call_and_return_conditional_losses_23988d7Ґ4
-Ґ*
$К!
inputs€€€€€€€€€	
p
™ ")Ґ&
К
0€€€€€€€€€	
Ъ В
'__inference_dropout_layer_call_fn_23966W7Ґ4
-Ґ*
$К!
inputs€€€€€€€€€	
p 
™ "К€€€€€€€€€	В
'__inference_dropout_layer_call_fn_23971W7Ґ4
-Ґ*
$К!
inputs€€€€€€€€€	
p
™ "К€€€€€€€€€	©
F__inference_embedding_1_layer_call_and_return_conditional_losses_23713_A/Ґ,
%Ґ"
 К
inputs€€€€€€€€€
™ ")Ґ&
К
0€€€€€€€€€
Ъ Б
+__inference_embedding_1_layer_call_fn_23703RA/Ґ,
%Ґ"
 К
inputs€€€€€€€€€
™ "К€€€€€€€€€І
D__inference_embedding_layer_call_and_return_conditional_losses_23696_:/Ґ,
%Ґ"
 К
inputs€€€€€€€€€
™ ")Ґ&
К
0€€€€€€€€€
Ъ 
)__inference_embedding_layer_call_fn_23686R:/Ґ,
%Ґ"
 К
inputs€€€€€€€€€
™ "К€€€€€€€€€Ї
P__inference_layer_normalization_1_layer_call_and_return_conditional_losses_24031fИЙ3Ґ0
)Ґ&
$К!
inputs€€€€€€€€€	
™ ")Ґ&
К
0€€€€€€€€€	
Ъ Т
5__inference_layer_normalization_1_layer_call_fn_24009YИЙ3Ґ0
)Ґ&
$К!
inputs€€€€€€€€€	
™ "К€€€€€€€€€	Ї
P__inference_layer_normalization_2_layer_call_and_return_conditional_losses_24195f£§3Ґ0
)Ґ&
$К!
inputs€€€€€€€€€	
™ ")Ґ&
К
0€€€€€€€€€	
Ъ Т
5__inference_layer_normalization_2_layer_call_fn_24173Y£§3Ґ0
)Ґ&
$К!
inputs€€€€€€€€€	
™ "К€€€€€€€€€	Ї
P__inference_layer_normalization_3_layer_call_and_return_conditional_losses_24333f»…3Ґ0
)Ґ&
$К!
inputs€€€€€€€€€	
™ ")Ґ&
К
0€€€€€€€€€	
Ъ Т
5__inference_layer_normalization_3_layer_call_fn_24311Y»…3Ґ0
)Ґ&
$К!
inputs€€€€€€€€€	
™ "К€€€€€€€€€	Ї
P__inference_layer_normalization_4_layer_call_and_return_conditional_losses_24497fгд3Ґ0
)Ґ&
$К!
inputs€€€€€€€€€	
™ ")Ґ&
К
0€€€€€€€€€	
Ъ Т
5__inference_layer_normalization_4_layer_call_fn_24475Yгд3Ґ0
)Ґ&
$К!
inputs€€€€€€€€€	
™ "К€€€€€€€€€	Ї
P__inference_layer_normalization_5_layer_call_and_return_conditional_losses_24635fИЙ3Ґ0
)Ґ&
$К!
inputs€€€€€€€€€	
™ ")Ґ&
К
0€€€€€€€€€	
Ъ Т
5__inference_layer_normalization_5_layer_call_fn_24613YИЙ3Ґ0
)Ґ&
$К!
inputs€€€€€€€€€	
™ "К€€€€€€€€€	ґ
N__inference_layer_normalization_layer_call_and_return_conditional_losses_23893dcd3Ґ0
)Ґ&
$К!
inputs€€€€€€€€€	
™ ")Ґ&
К
0€€€€€€€€€	
Ъ О
3__inference_layer_normalization_layer_call_fn_23871Wcd3Ґ0
)Ґ&
$К!
inputs€€€€€€€€€	
™ "К€€€€€€€€€	І
@__inference_model_layer_call_and_return_conditional_losses_22339вWЄ:AHУФХЦЧШЩЪcdksИЙЫЬЭЮЯ†°Ґ£§Ђ≥»…£§•¶І®©™гдлуИЙС`Ґ]
VҐS
IҐF
!К
input_1€€€€€€€€€
!К
input_2€€€€€€€€€
p 

 
™ "%Ґ"
К
0€€€€€€€€€
Ъ І
@__inference_model_layer_call_and_return_conditional_losses_22505вWЄ:AHУФХЦЧШЩЪcdksИЙЫЬЭЮЯ†°Ґ£§Ђ≥»…£§•¶І®©™гдлуИЙС`Ґ]
VҐS
IҐF
!К
input_1€€€€€€€€€
!К
input_2€€€€€€€€€
p

 
™ "%Ґ"
К
0€€€€€€€€€
Ъ ©
@__inference_model_layer_call_and_return_conditional_losses_23226дWЄ:AHУФХЦЧШЩЪcdksИЙЫЬЭЮЯ†°Ґ£§Ђ≥»…£§•¶І®©™гдлуИЙСbҐ_
XҐU
KҐH
"К
inputs/0€€€€€€€€€
"К
inputs/1€€€€€€€€€
p 

 
™ "%Ґ"
К
0€€€€€€€€€
Ъ ©
@__inference_model_layer_call_and_return_conditional_losses_23679дWЄ:AHУФХЦЧШЩЪcdksИЙЫЬЭЮЯ†°Ґ£§Ђ≥»…£§•¶І®©™гдлуИЙСbҐ_
XҐU
KҐH
"К
inputs/0€€€€€€€€€
"К
inputs/1€€€€€€€€€
p

 
™ "%Ґ"
К
0€€€€€€€€€
Ъ €
%__inference_model_layer_call_fn_21195’WЄ:AHУФХЦЧШЩЪcdksИЙЫЬЭЮЯ†°Ґ£§Ђ≥»…£§•¶І®©™гдлуИЙС`Ґ]
VҐS
IҐF
!К
input_1€€€€€€€€€
!К
input_2€€€€€€€€€
p 

 
™ "К€€€€€€€€€€
%__inference_model_layer_call_fn_22173’WЄ:AHУФХЦЧШЩЪcdksИЙЫЬЭЮЯ†°Ґ£§Ђ≥»…£§•¶І®©™гдлуИЙС`Ґ]
VҐS
IҐF
!К
input_1€€€€€€€€€
!К
input_2€€€€€€€€€
p

 
™ "К€€€€€€€€€Б
%__inference_model_layer_call_fn_22715„WЄ:AHУФХЦЧШЩЪcdksИЙЫЬЭЮЯ†°Ґ£§Ђ≥»…£§•¶І®©™гдлуИЙСbҐ_
XҐU
KҐH
"К
inputs/0€€€€€€€€€
"К
inputs/1€€€€€€€€€
p 

 
™ "К€€€€€€€€€Б
%__inference_model_layer_call_fn_22815„WЄ:AHУФХЦЧШЩЪcdksИЙЫЬЭЮЯ†°Ґ£§Ђ≥»…£§•¶І®©™гдлуИЙСbҐ_
XҐU
KҐH
"К
inputs/0€€€€€€€€€
"К
inputs/1€€€€€€€€€
p

 
™ "К€€€€€€€€€А
Q__inference_multi_head_attention_1_layer_call_and_return_conditional_losses_24110™ЫЬЭЮЯ†°ҐkҐh
aҐ^
#К 
query€€€€€€€€€	
#К 
value€€€€€€€€€	

 

 
p 
p 
p 
™ ")Ґ&
К
0€€€€€€€€€	
Ъ А
Q__inference_multi_head_attention_1_layer_call_and_return_conditional_losses_24152™ЫЬЭЮЯ†°ҐkҐh
aҐ^
#К 
query€€€€€€€€€	
#К 
value€€€€€€€€€	

 

 
p 
p
p 
™ ")Ґ&
К
0€€€€€€€€€	
Ъ Ў
6__inference_multi_head_attention_1_layer_call_fn_24053ЭЫЬЭЮЯ†°ҐkҐh
aҐ^
#К 
query€€€€€€€€€	
#К 
value€€€€€€€€€	

 

 
p 
p 
p 
™ "К€€€€€€€€€	Ў
6__inference_multi_head_attention_1_layer_call_fn_24075ЭЫЬЭЮЯ†°ҐkҐh
aҐ^
#К 
query€€€€€€€€€	
#К 
value€€€€€€€€€	

 

 
p 
p
p 
™ "К€€€€€€€€€	А
Q__inference_multi_head_attention_2_layer_call_and_return_conditional_losses_24412™£§•¶І®©™kҐh
aҐ^
#К 
query€€€€€€€€€	
#К 
value€€€€€€€€€	

 

 
p 
p 
p 
™ ")Ґ&
К
0€€€€€€€€€	
Ъ А
Q__inference_multi_head_attention_2_layer_call_and_return_conditional_losses_24454™£§•¶І®©™kҐh
aҐ^
#К 
query€€€€€€€€€	
#К 
value€€€€€€€€€	

 

 
p 
p
p 
™ ")Ґ&
К
0€€€€€€€€€	
Ъ Ў
6__inference_multi_head_attention_2_layer_call_fn_24355Э£§•¶І®©™kҐh
aҐ^
#К 
query€€€€€€€€€	
#К 
value€€€€€€€€€	

 

 
p 
p 
p 
™ "К€€€€€€€€€	Ў
6__inference_multi_head_attention_2_layer_call_fn_24377Э£§•¶І®©™kҐh
aҐ^
#К 
query€€€€€€€€€	
#К 
value€€€€€€€€€	

 

 
p 
p
p 
™ "К€€€€€€€€€	ю
O__inference_multi_head_attention_layer_call_and_return_conditional_losses_23808™УФХЦЧШЩЪkҐh
aҐ^
#К 
query€€€€€€€€€	
#К 
value€€€€€€€€€	

 

 
p 
p 
p 
™ ")Ґ&
К
0€€€€€€€€€	
Ъ ю
O__inference_multi_head_attention_layer_call_and_return_conditional_losses_23850™УФХЦЧШЩЪkҐh
aҐ^
#К 
query€€€€€€€€€	
#К 
value€€€€€€€€€	

 

 
p 
p
p 
™ ")Ґ&
К
0€€€€€€€€€	
Ъ ÷
4__inference_multi_head_attention_layer_call_fn_23751ЭУФХЦЧШЩЪkҐh
aҐ^
#К 
query€€€€€€€€€	
#К 
value€€€€€€€€€	

 

 
p 
p 
p 
™ "К€€€€€€€€€	÷
4__inference_multi_head_attention_layer_call_fn_23773ЭУФХЦЧШЩЪkҐh
aҐ^
#К 
query€€€€€€€€€	
#К 
value€€€€€€€€€	

 

 
p 
p
p 
™ "К€€€€€€€€€	ѓ
#__inference_signature_wrapper_22613ЗWЄ:AHУФХЦЧШЩЪcdksИЙЫЬЭЮЯ†°Ґ£§Ђ≥»…£§•¶І®©™гдлуИЙСiҐf
Ґ 
_™\
,
input_1!К
input_1€€€€€€€€€
,
input_2!К
input_2€€€€€€€€€"A™>
<
tf.math.sigmoid)К&
tf.math.sigmoid€€€€€€€€€¶
C__inference_tokenize_layer_call_and_return_conditional_losses_23729_H/Ґ,
%Ґ"
 К
inputs€€€€€€€€€
™ ")Ґ&
К
0€€€€€€€€€
Ъ ~
(__inference_tokenize_layer_call_fn_23720RH/Ґ,
%Ґ"
 К
inputs€€€€€€€€€
™ "К€€€€€€€€€