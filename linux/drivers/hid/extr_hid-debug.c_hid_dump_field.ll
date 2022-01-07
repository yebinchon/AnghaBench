; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-debug.c_hid_dump_field.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-debug.c_hid_dump_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_field = type { i32, i64, i64, i64, i64, i32, i32, i32, i32, i32, i64, %struct.TYPE_2__*, i64, i64, i64 }
%struct.TYPE_2__ = type { i64 }
%struct.seq_file = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"Physical(\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c")\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"Logical(\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"Application(\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"Usage(%d)\0A\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"Logical Minimum(%d)\0A\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"Logical Maximum(%d)\0A\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"Physical Minimum(%d)\0A\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"Physical Maximum(%d)\0A\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"Unit Exponent(%d)\0A\00", align 1
@hid_dump_field.systems = internal global [5 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i32 0)], align 16
@.str.11 = private unnamed_addr constant [5 x i8] c"None\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"SI Linear\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"SI Rotation\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"English Linear\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"English Rotation\00", align 1
@hid_dump_field.units = internal global [5 x [8 x i8*]] [[8 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0)], [8 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0)], [8 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0)], [8 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0)], [8 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0)]], align 16
@.str.16 = private unnamed_addr constant [11 x i8] c"Centimeter\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"Gram\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"Seconds\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"Kelvin\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"Ampere\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"Candela\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"Radians\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"Inch\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"Slug\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"Fahrenheit\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"Degrees\00", align 1
@.str.27 = private unnamed_addr constant [15 x i8] c"Unit(Invalid)\0A\00", align 1
@.str.28 = private unnamed_addr constant [11 x i8] c"Unit(%s : \00", align 1
@.str.29 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c"^%d\00", align 1
@.str.32 = private unnamed_addr constant [17 x i8] c"Report Size(%u)\0A\00", align 1
@.str.33 = private unnamed_addr constant [18 x i8] c"Report Count(%u)\0A\00", align 1
@.str.34 = private unnamed_addr constant [19 x i8] c"Report Offset(%u)\0A\00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"Flags( \00", align 1
@HID_MAIN_ITEM_CONSTANT = common dso_local global i32 0, align 4
@.str.36 = private unnamed_addr constant [10 x i8] c"Constant \00", align 1
@.str.37 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@HID_MAIN_ITEM_VARIABLE = common dso_local global i32 0, align 4
@.str.38 = private unnamed_addr constant [10 x i8] c"Variable \00", align 1
@.str.39 = private unnamed_addr constant [7 x i8] c"Array \00", align 1
@HID_MAIN_ITEM_RELATIVE = common dso_local global i32 0, align 4
@.str.40 = private unnamed_addr constant [10 x i8] c"Relative \00", align 1
@.str.41 = private unnamed_addr constant [10 x i8] c"Absolute \00", align 1
@HID_MAIN_ITEM_WRAP = common dso_local global i32 0, align 4
@.str.42 = private unnamed_addr constant [6 x i8] c"Wrap \00", align 1
@HID_MAIN_ITEM_NONLINEAR = common dso_local global i32 0, align 4
@.str.43 = private unnamed_addr constant [11 x i8] c"NonLinear \00", align 1
@HID_MAIN_ITEM_NO_PREFERRED = common dso_local global i32 0, align 4
@.str.44 = private unnamed_addr constant [18 x i8] c"NoPreferredState \00", align 1
@HID_MAIN_ITEM_NULL_STATE = common dso_local global i32 0, align 4
@.str.45 = private unnamed_addr constant [11 x i8] c"NullState \00", align 1
@HID_MAIN_ITEM_VOLATILE = common dso_local global i32 0, align 4
@.str.46 = private unnamed_addr constant [10 x i8] c"Volatile \00", align 1
@HID_MAIN_ITEM_BUFFERED_BYTE = common dso_local global i32 0, align 4
@.str.47 = private unnamed_addr constant [14 x i8] c"BufferedByte \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hid_dump_field(%struct.hid_field* %0, i32 %1, %struct.seq_file* %2) #0 {
  %4 = alloca %struct.hid_field*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.seq_file*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  store %struct.hid_field* %0, %struct.hid_field** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.seq_file* %2, %struct.seq_file** %6, align 8
  %14 = load %struct.hid_field*, %struct.hid_field** %4, align 8
  %15 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %14, i32 0, i32 14
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %31

18:                                               ; preds = %3
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %21 = call i32 @tab(i32 %19, %struct.seq_file* %20)
  %22 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %23 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %22, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.hid_field*, %struct.hid_field** %4, align 8
  %25 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %24, i32 0, i32 14
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %28 = call i32 @hid_resolv_usage(i64 %26, %struct.seq_file* %27)
  %29 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %30 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %29, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %31

31:                                               ; preds = %18, %3
  %32 = load %struct.hid_field*, %struct.hid_field** %4, align 8
  %33 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %32, i32 0, i32 13
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %49

36:                                               ; preds = %31
  %37 = load i32, i32* %5, align 4
  %38 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %39 = call i32 @tab(i32 %37, %struct.seq_file* %38)
  %40 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %41 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %40, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %42 = load %struct.hid_field*, %struct.hid_field** %4, align 8
  %43 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %42, i32 0, i32 13
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %46 = call i32 @hid_resolv_usage(i64 %44, %struct.seq_file* %45)
  %47 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %48 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %47, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %49

49:                                               ; preds = %36, %31
  %50 = load %struct.hid_field*, %struct.hid_field** %4, align 8
  %51 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %50, i32 0, i32 12
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %67

54:                                               ; preds = %49
  %55 = load i32, i32* %5, align 4
  %56 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %57 = call i32 @tab(i32 %55, %struct.seq_file* %56)
  %58 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %59 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %58, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %60 = load %struct.hid_field*, %struct.hid_field** %4, align 8
  %61 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %60, i32 0, i32 12
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %64 = call i32 @hid_resolv_usage(i64 %62, %struct.seq_file* %63)
  %65 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %66 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %65, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %67

67:                                               ; preds = %54, %49
  %68 = load i32, i32* %5, align 4
  %69 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %70 = call i32 @tab(i32 %68, %struct.seq_file* %69)
  %71 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %72 = load %struct.hid_field*, %struct.hid_field** %4, align 8
  %73 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %71, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 %74)
  store i32 0, i32* %7, align 4
  br label %76

76:                                               ; preds = %99, %67
  %77 = load i32, i32* %7, align 4
  %78 = load %struct.hid_field*, %struct.hid_field** %4, align 8
  %79 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = icmp slt i32 %77, %80
  br i1 %81, label %82, label %102

82:                                               ; preds = %76
  %83 = load i32, i32* %5, align 4
  %84 = add nsw i32 %83, 2
  %85 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %86 = call i32 @tab(i32 %84, %struct.seq_file* %85)
  %87 = load %struct.hid_field*, %struct.hid_field** %4, align 8
  %88 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %87, i32 0, i32 11
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = load i32, i32* %7, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %96 = call i32 @hid_resolv_usage(i64 %94, %struct.seq_file* %95)
  %97 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %98 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %97, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %99

99:                                               ; preds = %82
  %100 = load i32, i32* %7, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %7, align 4
  br label %76

102:                                              ; preds = %76
  %103 = load %struct.hid_field*, %struct.hid_field** %4, align 8
  %104 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.hid_field*, %struct.hid_field** %4, align 8
  %107 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %105, %108
  br i1 %109, label %110, label %127

110:                                              ; preds = %102
  %111 = load i32, i32* %5, align 4
  %112 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %113 = call i32 @tab(i32 %111, %struct.seq_file* %112)
  %114 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %115 = load %struct.hid_field*, %struct.hid_field** %4, align 8
  %116 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %114, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i64 %117)
  %119 = load i32, i32* %5, align 4
  %120 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %121 = call i32 @tab(i32 %119, %struct.seq_file* %120)
  %122 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %123 = load %struct.hid_field*, %struct.hid_field** %4, align 8
  %124 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %123, i32 0, i32 2
  %125 = load i64, i64* %124, align 8
  %126 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %122, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i64 %125)
  br label %127

127:                                              ; preds = %110, %102
  %128 = load %struct.hid_field*, %struct.hid_field** %4, align 8
  %129 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %128, i32 0, i32 3
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.hid_field*, %struct.hid_field** %4, align 8
  %132 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %131, i32 0, i32 4
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %130, %133
  br i1 %134, label %135, label %152

135:                                              ; preds = %127
  %136 = load i32, i32* %5, align 4
  %137 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %138 = call i32 @tab(i32 %136, %struct.seq_file* %137)
  %139 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %140 = load %struct.hid_field*, %struct.hid_field** %4, align 8
  %141 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %140, i32 0, i32 3
  %142 = load i64, i64* %141, align 8
  %143 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %139, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i64 %142)
  %144 = load i32, i32* %5, align 4
  %145 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %146 = call i32 @tab(i32 %144, %struct.seq_file* %145)
  %147 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %148 = load %struct.hid_field*, %struct.hid_field** %4, align 8
  %149 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %148, i32 0, i32 4
  %150 = load i64, i64* %149, align 8
  %151 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %147, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0), i64 %150)
  br label %152

152:                                              ; preds = %135, %127
  %153 = load %struct.hid_field*, %struct.hid_field** %4, align 8
  %154 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %153, i32 0, i32 10
  %155 = load i64, i64* %154, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %166

157:                                              ; preds = %152
  %158 = load i32, i32* %5, align 4
  %159 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %160 = call i32 @tab(i32 %158, %struct.seq_file* %159)
  %161 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %162 = load %struct.hid_field*, %struct.hid_field** %4, align 8
  %163 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %162, i32 0, i32 10
  %164 = load i64, i64* %163, align 8
  %165 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %161, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0), i64 %164)
  br label %166

166:                                              ; preds = %157, %152
  %167 = load %struct.hid_field*, %struct.hid_field** %4, align 8
  %168 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %167, i32 0, i32 5
  %169 = load i32, i32* %168, align 8
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %257

171:                                              ; preds = %166
  %172 = load %struct.hid_field*, %struct.hid_field** %4, align 8
  %173 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %172, i32 0, i32 5
  %174 = load i32, i32* %173, align 8
  store i32 %174, i32* %10, align 4
  %175 = load i32, i32* %10, align 4
  %176 = and i32 %175, 15
  store i32 %176, i32* %9, align 4
  %177 = load i32, i32* %10, align 4
  %178 = ashr i32 %177, 4
  store i32 %178, i32* %10, align 4
  %179 = load i32, i32* %9, align 4
  %180 = icmp sgt i32 %179, 4
  br i1 %180, label %181, label %187

181:                                              ; preds = %171
  %182 = load i32, i32* %5, align 4
  %183 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %184 = call i32 @tab(i32 %182, %struct.seq_file* %183)
  %185 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %186 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %185, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.27, i64 0, i64 0))
  br label %256

187:                                              ; preds = %171
  store i32 0, i32* %11, align 4
  %188 = load i32, i32* %5, align 4
  %189 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %190 = call i32 @tab(i32 %188, %struct.seq_file* %189)
  %191 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %192 = load i32, i32* %9, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds [5 x i8*], [5 x i8*]* @hid_dump_field.systems, i64 0, i64 %193
  %195 = load i8*, i8** %194, align 8
  %196 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %191, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.28, i64 0, i64 0), i8* %195)
  store i32 1, i32* %8, align 4
  br label %197

197:                                              ; preds = %250, %187
  %198 = load i32, i32* %8, align 4
  %199 = sext i32 %198 to i64
  %200 = icmp ult i64 %199, 8
  br i1 %200, label %201, label %253

201:                                              ; preds = %197
  %202 = load i32, i32* %10, align 4
  %203 = and i32 %202, 15
  %204 = trunc i32 %203 to i8
  store i8 %204, i8* %12, align 1
  %205 = load i32, i32* %10, align 4
  %206 = ashr i32 %205, 4
  store i32 %206, i32* %10, align 4
  %207 = load i8, i8* %12, align 1
  %208 = sext i8 %207 to i32
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %249

210:                                              ; preds = %201
  %211 = load i32, i32* %11, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %11, align 4
  %213 = icmp sgt i32 %211, 0
  br i1 %213, label %214, label %217

214:                                              ; preds = %210
  %215 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %216 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %215, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i64 0, i64 0))
  br label %217

217:                                              ; preds = %214, %210
  %218 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %219 = load i32, i32* %9, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds [5 x [8 x i8*]], [5 x [8 x i8*]]* @hid_dump_field.units, i64 0, i64 %220
  %222 = load i32, i32* %8, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds [8 x i8*], [8 x i8*]* %221, i64 0, i64 %223
  %225 = load i8*, i8** %224, align 8
  %226 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %218, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i64 0, i64 0), i8* %225)
  %227 = load i8, i8* %12, align 1
  %228 = sext i8 %227 to i32
  %229 = icmp ne i32 %228, 1
  br i1 %229, label %230, label %248

230:                                              ; preds = %217
  %231 = load i8, i8* %12, align 1
  %232 = sext i8 %231 to i32
  %233 = and i32 %232, 7
  store i32 %233, i32* %13, align 4
  %234 = load i8, i8* %12, align 1
  %235 = sext i8 %234 to i32
  %236 = and i32 %235, 8
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %244

238:                                              ; preds = %230
  %239 = load i32, i32* %13, align 4
  %240 = xor i32 %239, -1
  %241 = and i32 7, %240
  %242 = add nsw i32 %241, 1
  %243 = sub nsw i32 0, %242
  store i32 %243, i32* %13, align 4
  br label %244

244:                                              ; preds = %238, %230
  %245 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %246 = load i32, i32* %13, align 4
  %247 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %245, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.31, i64 0, i64 0), i32 %246)
  br label %248

248:                                              ; preds = %244, %217
  br label %249

249:                                              ; preds = %248, %201
  br label %250

250:                                              ; preds = %249
  %251 = load i32, i32* %8, align 4
  %252 = add nsw i32 %251, 1
  store i32 %252, i32* %8, align 4
  br label %197

253:                                              ; preds = %197
  %254 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %255 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %254, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %256

256:                                              ; preds = %253, %181
  br label %257

257:                                              ; preds = %256, %166
  %258 = load i32, i32* %5, align 4
  %259 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %260 = call i32 @tab(i32 %258, %struct.seq_file* %259)
  %261 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %262 = load %struct.hid_field*, %struct.hid_field** %4, align 8
  %263 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %262, i32 0, i32 9
  %264 = load i32, i32* %263, align 8
  %265 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %261, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.32, i64 0, i64 0), i32 %264)
  %266 = load i32, i32* %5, align 4
  %267 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %268 = call i32 @tab(i32 %266, %struct.seq_file* %267)
  %269 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %270 = load %struct.hid_field*, %struct.hid_field** %4, align 8
  %271 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %270, i32 0, i32 8
  %272 = load i32, i32* %271, align 4
  %273 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %269, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.33, i64 0, i64 0), i32 %272)
  %274 = load i32, i32* %5, align 4
  %275 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %276 = call i32 @tab(i32 %274, %struct.seq_file* %275)
  %277 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %278 = load %struct.hid_field*, %struct.hid_field** %4, align 8
  %279 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %278, i32 0, i32 7
  %280 = load i32, i32* %279, align 8
  %281 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %277, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.34, i64 0, i64 0), i32 %280)
  %282 = load i32, i32* %5, align 4
  %283 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %284 = call i32 @tab(i32 %282, %struct.seq_file* %283)
  %285 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %286 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %285, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.35, i64 0, i64 0))
  %287 = load %struct.hid_field*, %struct.hid_field** %4, align 8
  %288 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %287, i32 0, i32 6
  %289 = load i32, i32* %288, align 4
  store i32 %289, i32* %7, align 4
  %290 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %291 = load i32, i32* @HID_MAIN_ITEM_CONSTANT, align 4
  %292 = load i32, i32* %7, align 4
  %293 = and i32 %291, %292
  %294 = icmp ne i32 %293, 0
  %295 = zext i1 %294 to i64
  %296 = select i1 %294, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.36, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.37, i64 0, i64 0)
  %297 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %290, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i64 0, i64 0), i8* %296)
  %298 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %299 = load i32, i32* @HID_MAIN_ITEM_VARIABLE, align 4
  %300 = load i32, i32* %7, align 4
  %301 = and i32 %299, %300
  %302 = icmp ne i32 %301, 0
  %303 = zext i1 %302 to i64
  %304 = select i1 %302, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.38, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.39, i64 0, i64 0)
  %305 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %298, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i64 0, i64 0), i8* %304)
  %306 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %307 = load i32, i32* @HID_MAIN_ITEM_RELATIVE, align 4
  %308 = load i32, i32* %7, align 4
  %309 = and i32 %307, %308
  %310 = icmp ne i32 %309, 0
  %311 = zext i1 %310 to i64
  %312 = select i1 %310, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.40, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.41, i64 0, i64 0)
  %313 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %306, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i64 0, i64 0), i8* %312)
  %314 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %315 = load i32, i32* @HID_MAIN_ITEM_WRAP, align 4
  %316 = load i32, i32* %7, align 4
  %317 = and i32 %315, %316
  %318 = icmp ne i32 %317, 0
  %319 = zext i1 %318 to i64
  %320 = select i1 %318, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.42, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.37, i64 0, i64 0)
  %321 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %314, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i64 0, i64 0), i8* %320)
  %322 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %323 = load i32, i32* @HID_MAIN_ITEM_NONLINEAR, align 4
  %324 = load i32, i32* %7, align 4
  %325 = and i32 %323, %324
  %326 = icmp ne i32 %325, 0
  %327 = zext i1 %326 to i64
  %328 = select i1 %326, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.43, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.37, i64 0, i64 0)
  %329 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %322, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i64 0, i64 0), i8* %328)
  %330 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %331 = load i32, i32* @HID_MAIN_ITEM_NO_PREFERRED, align 4
  %332 = load i32, i32* %7, align 4
  %333 = and i32 %331, %332
  %334 = icmp ne i32 %333, 0
  %335 = zext i1 %334 to i64
  %336 = select i1 %334, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.44, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.37, i64 0, i64 0)
  %337 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %330, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i64 0, i64 0), i8* %336)
  %338 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %339 = load i32, i32* @HID_MAIN_ITEM_NULL_STATE, align 4
  %340 = load i32, i32* %7, align 4
  %341 = and i32 %339, %340
  %342 = icmp ne i32 %341, 0
  %343 = zext i1 %342 to i64
  %344 = select i1 %342, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.45, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.37, i64 0, i64 0)
  %345 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %338, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i64 0, i64 0), i8* %344)
  %346 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %347 = load i32, i32* @HID_MAIN_ITEM_VOLATILE, align 4
  %348 = load i32, i32* %7, align 4
  %349 = and i32 %347, %348
  %350 = icmp ne i32 %349, 0
  %351 = zext i1 %350 to i64
  %352 = select i1 %350, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.46, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.37, i64 0, i64 0)
  %353 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %346, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i64 0, i64 0), i8* %352)
  %354 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %355 = load i32, i32* @HID_MAIN_ITEM_BUFFERED_BYTE, align 4
  %356 = load i32, i32* %7, align 4
  %357 = and i32 %355, %356
  %358 = icmp ne i32 %357, 0
  %359 = zext i1 %358 to i64
  %360 = select i1 %358, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.47, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.37, i64 0, i64 0)
  %361 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %354, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i64 0, i64 0), i8* %360)
  %362 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %363 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %362, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @tab(i32, %struct.seq_file*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, ...) #1

declare dso_local i32 @hid_resolv_usage(i64, %struct.seq_file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
