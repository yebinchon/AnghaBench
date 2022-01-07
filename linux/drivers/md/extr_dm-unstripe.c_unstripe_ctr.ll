; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-unstripe.c_unstripe_ctr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-unstripe.c_unstripe_ctr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { i8*, i64, %struct.unstripe_c*, i32 }
%struct.unstripe_c = type { i32, i32, i32, i64, i32, i32, i64, i32 }

@.str = private unnamed_addr constant [28 x i8] c"Invalid number of arguments\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"Memory allocation for unstriped context failed\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"Invalid stripe count\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"Invalid chunk_size\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"Invalid stripe number\00", align 1
@.str.5 = private unnamed_addr constant [48 x i8] c"Please provide stripe between [0, # of stripes]\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"Couldn't get striped device\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"%llu%c\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"Invalid striped device offset\00", align 1
@.str.9 = private unnamed_addr constant [42 x i8] c"Target length not divisible by chunk size\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"Failed to set max io len\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_target*, i32, i8**)* @unstripe_ctr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unstripe_ctr(%struct.dm_target* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dm_target*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca %struct.unstripe_c*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8, align 1
  store %struct.dm_target* %0, %struct.dm_target** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 5
  br i1 %13, label %14, label %19

14:                                               ; preds = %3
  %15 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %16 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %15, i32 0, i32 0
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8** %16, align 8
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %188

19:                                               ; preds = %3
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.unstripe_c* @kzalloc(i32 48, i32 %20)
  store %struct.unstripe_c* %21, %struct.unstripe_c** %8, align 8
  %22 = load %struct.unstripe_c*, %struct.unstripe_c** %8, align 8
  %23 = icmp ne %struct.unstripe_c* %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %19
  %25 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %26 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %25, i32 0, i32 0
  store i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i8** %26, align 8
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %188

29:                                               ; preds = %19
  %30 = load i8**, i8*** %7, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 0
  %32 = load i8*, i8** %31, align 8
  %33 = load %struct.unstripe_c*, %struct.unstripe_c** %8, align 8
  %34 = getelementptr inbounds %struct.unstripe_c, %struct.unstripe_c* %33, i32 0, i32 0
  %35 = call i64 @kstrtouint(i8* %32, i32 10, i32* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %29
  %38 = load %struct.unstripe_c*, %struct.unstripe_c** %8, align 8
  %39 = getelementptr inbounds %struct.unstripe_c, %struct.unstripe_c* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %37, %29
  %43 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %44 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %43, i32 0, i32 0
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8** %44, align 8
  br label %182

45:                                               ; preds = %37
  %46 = load i8**, i8*** %7, align 8
  %47 = getelementptr inbounds i8*, i8** %46, i64 1
  %48 = load i8*, i8** %47, align 8
  %49 = load %struct.unstripe_c*, %struct.unstripe_c** %8, align 8
  %50 = getelementptr inbounds %struct.unstripe_c, %struct.unstripe_c* %49, i32 0, i32 1
  %51 = call i64 @kstrtouint(i8* %48, i32 10, i32* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %45
  %54 = load %struct.unstripe_c*, %struct.unstripe_c** %8, align 8
  %55 = getelementptr inbounds %struct.unstripe_c, %struct.unstripe_c* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %53, %45
  %59 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %60 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %59, i32 0, i32 0
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8** %60, align 8
  br label %182

61:                                               ; preds = %53
  %62 = load i8**, i8*** %7, align 8
  %63 = getelementptr inbounds i8*, i8** %62, i64 2
  %64 = load i8*, i8** %63, align 8
  %65 = load %struct.unstripe_c*, %struct.unstripe_c** %8, align 8
  %66 = getelementptr inbounds %struct.unstripe_c, %struct.unstripe_c* %65, i32 0, i32 2
  %67 = call i64 @kstrtouint(i8* %64, i32 10, i32* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %61
  %70 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %71 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %70, i32 0, i32 0
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i8** %71, align 8
  br label %182

72:                                               ; preds = %61
  %73 = load %struct.unstripe_c*, %struct.unstripe_c** %8, align 8
  %74 = getelementptr inbounds %struct.unstripe_c, %struct.unstripe_c* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.unstripe_c*, %struct.unstripe_c** %8, align 8
  %77 = getelementptr inbounds %struct.unstripe_c, %struct.unstripe_c* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp sgt i32 %75, %78
  br i1 %79, label %80, label %88

80:                                               ; preds = %72
  %81 = load %struct.unstripe_c*, %struct.unstripe_c** %8, align 8
  %82 = getelementptr inbounds %struct.unstripe_c, %struct.unstripe_c* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp sgt i32 %83, 1
  br i1 %84, label %85, label %88

85:                                               ; preds = %80
  %86 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %87 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %86, i32 0, i32 0
  store i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0), i8** %87, align 8
  br label %182

88:                                               ; preds = %80, %72
  %89 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %90 = load i8**, i8*** %7, align 8
  %91 = getelementptr inbounds i8*, i8** %90, i64 3
  %92 = load i8*, i8** %91, align 8
  %93 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %94 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @dm_table_get_mode(i32 %95)
  %97 = load %struct.unstripe_c*, %struct.unstripe_c** %8, align 8
  %98 = getelementptr inbounds %struct.unstripe_c, %struct.unstripe_c* %97, i32 0, i32 7
  %99 = call i64 @dm_get_device(%struct.dm_target* %89, i8* %92, i32 %96, i32* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %88
  %102 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %103 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %102, i32 0, i32 0
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i8** %103, align 8
  br label %182

104:                                              ; preds = %88
  %105 = load i8**, i8*** %7, align 8
  %106 = getelementptr inbounds i8*, i8** %105, i64 4
  %107 = load i8*, i8** %106, align 8
  %108 = call i32 @sscanf(i8* %107, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i64* %10, i8* %11)
  %109 = icmp ne i32 %108, 1
  br i1 %109, label %114, label %110

110:                                              ; preds = %104
  %111 = load i64, i64* %10, align 8
  %112 = load i64, i64* %10, align 8
  %113 = icmp ne i64 %111, %112
  br i1 %113, label %114, label %117

114:                                              ; preds = %110, %104
  %115 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %116 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %115, i32 0, i32 0
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0), i8** %116, align 8
  br label %182

117:                                              ; preds = %110
  %118 = load i64, i64* %10, align 8
  %119 = load %struct.unstripe_c*, %struct.unstripe_c** %8, align 8
  %120 = getelementptr inbounds %struct.unstripe_c, %struct.unstripe_c* %119, i32 0, i32 3
  store i64 %118, i64* %120, align 8
  %121 = load %struct.unstripe_c*, %struct.unstripe_c** %8, align 8
  %122 = getelementptr inbounds %struct.unstripe_c, %struct.unstripe_c* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.unstripe_c*, %struct.unstripe_c** %8, align 8
  %125 = getelementptr inbounds %struct.unstripe_c, %struct.unstripe_c* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = mul nsw i32 %123, %126
  %128 = load %struct.unstripe_c*, %struct.unstripe_c** %8, align 8
  %129 = getelementptr inbounds %struct.unstripe_c, %struct.unstripe_c* %128, i32 0, i32 4
  store i32 %127, i32* %129, align 8
  %130 = load %struct.unstripe_c*, %struct.unstripe_c** %8, align 8
  %131 = getelementptr inbounds %struct.unstripe_c, %struct.unstripe_c* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = sub nsw i32 %132, 1
  %134 = load %struct.unstripe_c*, %struct.unstripe_c** %8, align 8
  %135 = getelementptr inbounds %struct.unstripe_c, %struct.unstripe_c* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = mul nsw i32 %133, %136
  %138 = load %struct.unstripe_c*, %struct.unstripe_c** %8, align 8
  %139 = getelementptr inbounds %struct.unstripe_c, %struct.unstripe_c* %138, i32 0, i32 5
  store i32 %137, i32* %139, align 4
  %140 = load %struct.unstripe_c*, %struct.unstripe_c** %8, align 8
  %141 = getelementptr inbounds %struct.unstripe_c, %struct.unstripe_c* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = call i64 @is_power_of_2(i32 %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %151

145:                                              ; preds = %117
  %146 = load %struct.unstripe_c*, %struct.unstripe_c** %8, align 8
  %147 = getelementptr inbounds %struct.unstripe_c, %struct.unstripe_c* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = call i64 @fls(i32 %148)
  %150 = sub nsw i64 %149, 1
  br label %152

151:                                              ; preds = %117
  br label %152

152:                                              ; preds = %151, %145
  %153 = phi i64 [ %150, %145 ], [ 0, %151 ]
  %154 = load %struct.unstripe_c*, %struct.unstripe_c** %8, align 8
  %155 = getelementptr inbounds %struct.unstripe_c, %struct.unstripe_c* %154, i32 0, i32 6
  store i64 %153, i64* %155, align 8
  %156 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %157 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  store i64 %158, i64* %9, align 8
  %159 = load i64, i64* %9, align 8
  %160 = load %struct.unstripe_c*, %struct.unstripe_c** %8, align 8
  %161 = getelementptr inbounds %struct.unstripe_c, %struct.unstripe_c* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = call i64 @sector_div(i64 %159, i32 %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %168

165:                                              ; preds = %152
  %166 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %167 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %166, i32 0, i32 0
  store i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.9, i64 0, i64 0), i8** %167, align 8
  br label %182

168:                                              ; preds = %152
  %169 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %170 = load %struct.unstripe_c*, %struct.unstripe_c** %8, align 8
  %171 = getelementptr inbounds %struct.unstripe_c, %struct.unstripe_c* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = call i64 @dm_set_target_max_io_len(%struct.dm_target* %169, i32 %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %178

175:                                              ; preds = %168
  %176 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %177 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %176, i32 0, i32 0
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0), i8** %177, align 8
  br label %182

178:                                              ; preds = %168
  %179 = load %struct.unstripe_c*, %struct.unstripe_c** %8, align 8
  %180 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %181 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %180, i32 0, i32 2
  store %struct.unstripe_c* %179, %struct.unstripe_c** %181, align 8
  store i32 0, i32* %4, align 4
  br label %188

182:                                              ; preds = %175, %165, %114, %101, %85, %69, %58, %42
  %183 = load %struct.unstripe_c*, %struct.unstripe_c** %8, align 8
  %184 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %185 = call i32 @cleanup_unstripe(%struct.unstripe_c* %183, %struct.dm_target* %184)
  %186 = load i32, i32* @EINVAL, align 4
  %187 = sub nsw i32 0, %186
  store i32 %187, i32* %4, align 4
  br label %188

188:                                              ; preds = %182, %178, %24, %14
  %189 = load i32, i32* %4, align 4
  ret i32 %189
}

declare dso_local %struct.unstripe_c* @kzalloc(i32, i32) #1

declare dso_local i64 @kstrtouint(i8*, i32, i32*) #1

declare dso_local i64 @dm_get_device(%struct.dm_target*, i8*, i32, i32*) #1

declare dso_local i32 @dm_table_get_mode(i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i64*, i8*) #1

declare dso_local i64 @is_power_of_2(i32) #1

declare dso_local i64 @fls(i32) #1

declare dso_local i64 @sector_div(i64, i32) #1

declare dso_local i64 @dm_set_target_max_io_len(%struct.dm_target*, i32) #1

declare dso_local i32 @cleanup_unstripe(%struct.unstripe_c*, %struct.dm_target*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
