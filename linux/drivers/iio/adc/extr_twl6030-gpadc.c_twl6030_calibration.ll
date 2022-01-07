; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_twl6030-gpadc.c_twl6030_calibration.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_twl6030-gpadc.c_twl6030_calibration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.twl6030_gpadc_data = type { i32 }

@TWL6030_GPADC_NUM_TRIM_REGS = common dso_local global i32 0, align 4
@TWL6030_MODULE_ID2 = common dso_local global i32 0, align 4
@TWL6030_GPADC_TRIM1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"calibration failed\0A\00", align 1
@TWL6030_GPADC_MAX_CHANNELS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.twl6030_gpadc_data*)* @twl6030_calibration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twl6030_calibration(%struct.twl6030_gpadc_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.twl6030_gpadc_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.twl6030_gpadc_data* %0, %struct.twl6030_gpadc_data** %3, align 8
  %11 = load i32, i32* @TWL6030_GPADC_NUM_TRIM_REGS, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %6, align 8
  %14 = alloca i32, i64 %12, align 16
  store i64 %12, i64* %7, align 8
  %15 = load i32, i32* @TWL6030_MODULE_ID2, align 4
  %16 = load i32, i32* @TWL6030_GPADC_TRIM1, align 4
  %17 = load i32, i32* @TWL6030_GPADC_NUM_TRIM_REGS, align 4
  %18 = call i32 @twl_i2c_read(i32 %15, i32* %14, i32 %16, i32 %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %1
  %22 = load %struct.twl6030_gpadc_data*, %struct.twl6030_gpadc_data** %3, align 8
  %23 = getelementptr inbounds %struct.twl6030_gpadc_data, %struct.twl6030_gpadc_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @dev_err(i32 %24, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* %4, align 4
  store i32 %26, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %89

27:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %28

28:                                               ; preds = %85, %27
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @TWL6030_GPADC_MAX_CHANNELS, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %88

32:                                               ; preds = %28
  %33 = load i32, i32* %5, align 4
  switch i32 %33, label %74 [
    i32 0, label %34
    i32 1, label %39
    i32 3, label %39
    i32 4, label %39
    i32 5, label %39
    i32 6, label %39
    i32 2, label %44
    i32 7, label %49
    i32 8, label %54
    i32 9, label %59
    i32 10, label %64
    i32 14, label %69
  ]

34:                                               ; preds = %32
  %35 = getelementptr inbounds i32, i32* %14, i64 0
  %36 = load i32, i32* %35, align 16
  store i32 %36, i32* %8, align 4
  %37 = getelementptr inbounds i32, i32* %14, i64 1
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %9, align 4
  br label %75

39:                                               ; preds = %32, %32, %32, %32, %32
  %40 = getelementptr inbounds i32, i32* %14, i64 4
  %41 = load i32, i32* %40, align 16
  store i32 %41, i32* %8, align 4
  %42 = getelementptr inbounds i32, i32* %14, i64 5
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %9, align 4
  br label %75

44:                                               ; preds = %32
  %45 = getelementptr inbounds i32, i32* %14, i64 12
  %46 = load i32, i32* %45, align 16
  store i32 %46, i32* %8, align 4
  %47 = getelementptr inbounds i32, i32* %14, i64 13
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %9, align 4
  br label %75

49:                                               ; preds = %32
  %50 = getelementptr inbounds i32, i32* %14, i64 6
  %51 = load i32, i32* %50, align 8
  store i32 %51, i32* %8, align 4
  %52 = getelementptr inbounds i32, i32* %14, i64 7
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %9, align 4
  br label %75

54:                                               ; preds = %32
  %55 = getelementptr inbounds i32, i32* %14, i64 2
  %56 = load i32, i32* %55, align 8
  store i32 %56, i32* %8, align 4
  %57 = getelementptr inbounds i32, i32* %14, i64 3
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %9, align 4
  br label %75

59:                                               ; preds = %32
  %60 = getelementptr inbounds i32, i32* %14, i64 8
  %61 = load i32, i32* %60, align 16
  store i32 %61, i32* %8, align 4
  %62 = getelementptr inbounds i32, i32* %14, i64 9
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %9, align 4
  br label %75

64:                                               ; preds = %32
  %65 = getelementptr inbounds i32, i32* %14, i64 10
  %66 = load i32, i32* %65, align 8
  store i32 %66, i32* %8, align 4
  %67 = getelementptr inbounds i32, i32* %14, i64 11
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %9, align 4
  br label %75

69:                                               ; preds = %32
  %70 = getelementptr inbounds i32, i32* %14, i64 14
  %71 = load i32, i32* %70, align 8
  store i32 %71, i32* %8, align 4
  %72 = getelementptr inbounds i32, i32* %14, i64 15
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %9, align 4
  br label %75

74:                                               ; preds = %32
  br label %85

75:                                               ; preds = %69, %64, %59, %54, %49, %44, %39, %34
  %76 = load i32, i32* %8, align 4
  %77 = call i32 @twl6030_gpadc_get_trim_offset(i32 %76)
  store i32 %77, i32* %8, align 4
  %78 = load i32, i32* %9, align 4
  %79 = call i32 @twl6030_gpadc_get_trim_offset(i32 %78)
  store i32 %79, i32* %9, align 4
  %80 = load %struct.twl6030_gpadc_data*, %struct.twl6030_gpadc_data** %3, align 8
  %81 = load i32, i32* %5, align 4
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* %9, align 4
  %84 = call i32 @twl6030_calibrate_channel(%struct.twl6030_gpadc_data* %80, i32 %81, i32 %82, i32 %83)
  br label %85

85:                                               ; preds = %75, %74
  %86 = load i32, i32* %5, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %5, align 4
  br label %28

88:                                               ; preds = %28
  store i32 0, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %89

89:                                               ; preds = %88, %21
  %90 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %90)
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @twl_i2c_read(i32, i32*, i32, i32) #2

declare dso_local i32 @dev_err(i32, i8*) #2

declare dso_local i32 @twl6030_gpadc_get_trim_offset(i32) #2

declare dso_local i32 @twl6030_calibrate_channel(%struct.twl6030_gpadc_data*, i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
