; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_qcom-spmi-iadc.c_iadc_update_offset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_qcom-spmi-iadc.c_iadc_update_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iadc_chip = type { i64, i64*, i32 }

@IADC_GAIN_17P857MV = common dso_local global i32 0, align 4
@IADC_INT_OFFSET_CSP2_CSN2 = common dso_local global i32 0, align 4
@IADC_INT_RSENSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"error: internal offset == gain %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@IADC_EXT_OFFSET_CSP_CSN = common dso_local global i32 0, align 4
@IADC_EXT_RSENSE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"error: external offset == gain %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iadc_chip*)* @iadc_update_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iadc_update_offset(%struct.iadc_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iadc_chip*, align 8
  %4 = alloca i32, align 4
  store %struct.iadc_chip* %0, %struct.iadc_chip** %3, align 8
  %5 = load %struct.iadc_chip*, %struct.iadc_chip** %3, align 8
  %6 = load i32, i32* @IADC_GAIN_17P857MV, align 4
  %7 = load %struct.iadc_chip*, %struct.iadc_chip** %3, align 8
  %8 = getelementptr inbounds %struct.iadc_chip, %struct.iadc_chip* %7, i32 0, i32 0
  %9 = call i32 @iadc_do_conversion(%struct.iadc_chip* %5, i32 %6, i64* %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %4, align 4
  store i32 %13, i32* %2, align 4
  br label %83

14:                                               ; preds = %1
  %15 = load %struct.iadc_chip*, %struct.iadc_chip** %3, align 8
  %16 = load i32, i32* @IADC_INT_OFFSET_CSP2_CSN2, align 4
  %17 = load %struct.iadc_chip*, %struct.iadc_chip** %3, align 8
  %18 = getelementptr inbounds %struct.iadc_chip, %struct.iadc_chip* %17, i32 0, i32 1
  %19 = load i64*, i64** %18, align 8
  %20 = load i64, i64* @IADC_INT_RSENSE, align 8
  %21 = getelementptr inbounds i64, i64* %19, i64 %20
  %22 = call i32 @iadc_do_conversion(%struct.iadc_chip* %15, i32 %16, i64* %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %14
  %26 = load i32, i32* %4, align 4
  store i32 %26, i32* %2, align 4
  br label %83

27:                                               ; preds = %14
  %28 = load %struct.iadc_chip*, %struct.iadc_chip** %3, align 8
  %29 = getelementptr inbounds %struct.iadc_chip, %struct.iadc_chip* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.iadc_chip*, %struct.iadc_chip** %3, align 8
  %32 = getelementptr inbounds %struct.iadc_chip, %struct.iadc_chip* %31, i32 0, i32 1
  %33 = load i64*, i64** %32, align 8
  %34 = load i64, i64* @IADC_INT_RSENSE, align 8
  %35 = getelementptr inbounds i64, i64* %33, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %30, %36
  br i1 %37, label %38, label %48

38:                                               ; preds = %27
  %39 = load %struct.iadc_chip*, %struct.iadc_chip** %3, align 8
  %40 = getelementptr inbounds %struct.iadc_chip, %struct.iadc_chip* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.iadc_chip*, %struct.iadc_chip** %3, align 8
  %43 = getelementptr inbounds %struct.iadc_chip, %struct.iadc_chip* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @dev_err(i32 %41, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %44)
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %2, align 4
  br label %83

48:                                               ; preds = %27
  %49 = load %struct.iadc_chip*, %struct.iadc_chip** %3, align 8
  %50 = load i32, i32* @IADC_EXT_OFFSET_CSP_CSN, align 4
  %51 = load %struct.iadc_chip*, %struct.iadc_chip** %3, align 8
  %52 = getelementptr inbounds %struct.iadc_chip, %struct.iadc_chip* %51, i32 0, i32 1
  %53 = load i64*, i64** %52, align 8
  %54 = load i64, i64* @IADC_EXT_RSENSE, align 8
  %55 = getelementptr inbounds i64, i64* %53, i64 %54
  %56 = call i32 @iadc_do_conversion(%struct.iadc_chip* %49, i32 %50, i64* %55)
  store i32 %56, i32* %4, align 4
  %57 = load i32, i32* %4, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %48
  %60 = load i32, i32* %4, align 4
  store i32 %60, i32* %2, align 4
  br label %83

61:                                               ; preds = %48
  %62 = load %struct.iadc_chip*, %struct.iadc_chip** %3, align 8
  %63 = getelementptr inbounds %struct.iadc_chip, %struct.iadc_chip* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.iadc_chip*, %struct.iadc_chip** %3, align 8
  %66 = getelementptr inbounds %struct.iadc_chip, %struct.iadc_chip* %65, i32 0, i32 1
  %67 = load i64*, i64** %66, align 8
  %68 = load i64, i64* @IADC_EXT_RSENSE, align 8
  %69 = getelementptr inbounds i64, i64* %67, i64 %68
  %70 = load i64, i64* %69, align 8
  %71 = icmp eq i64 %64, %70
  br i1 %71, label %72, label %82

72:                                               ; preds = %61
  %73 = load %struct.iadc_chip*, %struct.iadc_chip** %3, align 8
  %74 = getelementptr inbounds %struct.iadc_chip, %struct.iadc_chip* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.iadc_chip*, %struct.iadc_chip** %3, align 8
  %77 = getelementptr inbounds %struct.iadc_chip, %struct.iadc_chip* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = call i32 @dev_err(i32 %75, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i64 %78)
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %2, align 4
  br label %83

82:                                               ; preds = %61
  store i32 0, i32* %2, align 4
  br label %83

83:                                               ; preds = %82, %72, %59, %38, %25, %12
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local i32 @iadc_do_conversion(%struct.iadc_chip*, i32, i64*) #1

declare dso_local i32 @dev_err(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
