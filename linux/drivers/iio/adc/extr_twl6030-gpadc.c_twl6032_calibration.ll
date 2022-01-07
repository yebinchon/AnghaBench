; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_twl6030-gpadc.c_twl6032_calibration.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_twl6030-gpadc.c_twl6032_calibration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.twl6030_gpadc_data = type { i32 }

@TWL6030_GPADC_NUM_TRIM_REGS = common dso_local global i32 0, align 4
@TWL6030_MODULE_ID2 = common dso_local global i32 0, align 4
@TWL6030_GPADC_TRIM1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"calibration failed\0A\00", align 1
@TWL6032_GPADC_MAX_CHANNELS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.twl6030_gpadc_data*)* @twl6032_calibration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twl6032_calibration(%struct.twl6030_gpadc_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.twl6030_gpadc_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.twl6030_gpadc_data* %0, %struct.twl6030_gpadc_data** %3, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %12 = load i32, i32* @TWL6030_GPADC_NUM_TRIM_REGS, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %8, align 8
  %15 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %9, align 8
  %16 = load i32, i32* @TWL6030_MODULE_ID2, align 4
  %17 = load i32, i32* @TWL6030_GPADC_TRIM1, align 4
  %18 = load i32, i32* @TWL6030_GPADC_NUM_TRIM_REGS, align 4
  %19 = call i32 @twl_i2c_read(i32 %16, i32* %15, i32 %17, i32 %18)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %1
  %23 = load %struct.twl6030_gpadc_data*, %struct.twl6030_gpadc_data** %3, align 8
  %24 = getelementptr inbounds %struct.twl6030_gpadc_data, %struct.twl6030_gpadc_data* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @dev_err(i32 %25, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* %10, align 4
  store i32 %27, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %103

28:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %29

29:                                               ; preds = %99, %28
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @TWL6032_GPADC_MAX_CHANNELS, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %102

33:                                               ; preds = %29
  %34 = load i32, i32* %4, align 4
  switch i32 %34, label %92 [
    i32 0, label %35
    i32 1, label %35
    i32 2, label %35
    i32 3, label %35
    i32 4, label %35
    i32 5, label %35
    i32 6, label %35
    i32 11, label %35
    i32 14, label %35
    i32 8, label %38
    i32 9, label %47
    i32 10, label %56
    i32 7, label %59
    i32 18, label %59
  ]

35:                                               ; preds = %33, %33, %33, %33, %33, %33, %33, %33, %33
  %36 = call i32 @twl6032_get_trim_value(i32* %15, i32 2, i32 0, i32 31, i32 6, i32 2)
  store i32 %36, i32* %5, align 4
  %37 = call i32 @twl6032_get_trim_value(i32* %15, i32 3, i32 1, i32 63, i32 6, i32 2)
  store i32 %37, i32* %6, align 4
  br label %93

38:                                               ; preds = %33
  %39 = call i32 @twl6032_get_trim_value(i32* %15, i32 2, i32 0, i32 31, i32 6, i32 2)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @twl6032_get_trim_value(i32* %15, i32 7, i32 6, i32 24, i32 30, i32 1)
  %42 = add nsw i32 %40, %41
  store i32 %42, i32* %5, align 4
  %43 = call i32 @twl6032_get_trim_value(i32* %15, i32 3, i32 1, i32 63, i32 6, i32 2)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @twl6032_get_trim_value(i32* %15, i32 9, i32 7, i32 31, i32 6, i32 2)
  %46 = add nsw i32 %44, %45
  store i32 %46, i32* %6, align 4
  br label %93

47:                                               ; preds = %33
  %48 = call i32 @twl6032_get_trim_value(i32* %15, i32 2, i32 0, i32 31, i32 6, i32 2)
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @twl6032_get_trim_value(i32* %15, i32 13, i32 11, i32 24, i32 30, i32 1)
  %51 = add nsw i32 %49, %50
  store i32 %51, i32* %5, align 4
  %52 = call i32 @twl6032_get_trim_value(i32* %15, i32 3, i32 1, i32 63, i32 6, i32 2)
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @twl6032_get_trim_value(i32* %15, i32 15, i32 13, i32 31, i32 6, i32 1)
  %55 = add nsw i32 %53, %54
  store i32 %55, i32* %6, align 4
  br label %93

56:                                               ; preds = %33
  %57 = call i32 @twl6032_get_trim_value(i32* %15, i32 10, i32 8, i32 15, i32 14, i32 3)
  store i32 %57, i32* %5, align 4
  %58 = call i32 @twl6032_get_trim_value(i32* %15, i32 14, i32 12, i32 15, i32 14, i32 3)
  store i32 %58, i32* %6, align 4
  br label %93

59:                                               ; preds = %33, %33
  %60 = call i32 @twl6032_get_trim_value(i32* %15, i32 2, i32 0, i32 31, i32 6, i32 2)
  store i32 %60, i32* %7, align 4
  %61 = getelementptr inbounds i32, i32* %15, i64 4
  %62 = load i32, i32* %61, align 16
  %63 = and i32 %62, 126
  %64 = ashr i32 %63, 1
  store i32 %64, i32* %5, align 4
  %65 = getelementptr inbounds i32, i32* %15, i64 4
  %66 = load i32, i32* %65, align 16
  %67 = and i32 %66, 1
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %59
  %70 = load i32, i32* %5, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %5, align 4
  br label %72

72:                                               ; preds = %69, %59
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* %5, align 4
  %75 = add nsw i32 %74, %73
  store i32 %75, i32* %5, align 4
  %76 = call i32 @twl6032_get_trim_value(i32* %15, i32 3, i32 1, i32 63, i32 6, i32 2)
  store i32 %76, i32* %7, align 4
  %77 = getelementptr inbounds i32, i32* %15, i64 5
  %78 = load i32, i32* %77, align 4
  %79 = and i32 %78, 254
  %80 = ashr i32 %79, 1
  store i32 %80, i32* %6, align 4
  %81 = getelementptr inbounds i32, i32* %15, i64 5
  %82 = load i32, i32* %81, align 4
  %83 = and i32 %82, 1
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %72
  %86 = load i32, i32* %6, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %6, align 4
  br label %88

88:                                               ; preds = %85, %72
  %89 = load i32, i32* %7, align 4
  %90 = load i32, i32* %6, align 4
  %91 = add nsw i32 %90, %89
  store i32 %91, i32* %6, align 4
  br label %93

92:                                               ; preds = %33
  br label %99

93:                                               ; preds = %88, %56, %47, %38, %35
  %94 = load %struct.twl6030_gpadc_data*, %struct.twl6030_gpadc_data** %3, align 8
  %95 = load i32, i32* %4, align 4
  %96 = load i32, i32* %5, align 4
  %97 = load i32, i32* %6, align 4
  %98 = call i32 @twl6030_calibrate_channel(%struct.twl6030_gpadc_data* %94, i32 %95, i32 %96, i32 %97)
  br label %99

99:                                               ; preds = %93, %92
  %100 = load i32, i32* %4, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %4, align 4
  br label %29

102:                                              ; preds = %29
  store i32 0, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %103

103:                                              ; preds = %102, %22
  %104 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %104)
  %105 = load i32, i32* %2, align 4
  ret i32 %105
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @twl_i2c_read(i32, i32*, i32, i32) #2

declare dso_local i32 @dev_err(i32, i8*) #2

declare dso_local i32 @twl6032_get_trim_value(i32*, i32, i32, i32, i32, i32) #2

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
