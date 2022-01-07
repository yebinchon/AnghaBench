; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_qcom-spmi-iadc.c_iadc_do_conversion.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_qcom-spmi-iadc.c_iadc_do_conversion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iadc_chip = type { i32, i32, i64 }

@IADC_DEF_AVG_SAMPLES = common dso_local global i32 0, align 4
@IADC_CONV_TIME_MIN_US = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"conversion failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iadc_chip*, i32, i32*)* @iadc_do_conversion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iadc_do_conversion(%struct.iadc_chip* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.iadc_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.iadc_chip* %0, %struct.iadc_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %9 = load %struct.iadc_chip*, %struct.iadc_chip** %4, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @iadc_configure(%struct.iadc_chip* %9, i32 %10)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  br label %53

15:                                               ; preds = %3
  %16 = load i32, i32* @IADC_DEF_AVG_SAMPLES, align 4
  %17 = call i32 @BIT(i32 %16)
  %18 = load i32, i32* @IADC_CONV_TIME_MIN_US, align 4
  %19 = mul nsw i32 %17, %18
  %20 = mul nsw i32 %19, 2
  store i32 %20, i32* %7, align 4
  %21 = load %struct.iadc_chip*, %struct.iadc_chip** %4, align 8
  %22 = getelementptr inbounds %struct.iadc_chip, %struct.iadc_chip* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %15
  %26 = load %struct.iadc_chip*, %struct.iadc_chip** %4, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @iadc_poll_wait_eoc(%struct.iadc_chip* %26, i32 %27)
  store i32 %28, i32* %8, align 4
  br label %45

29:                                               ; preds = %15
  %30 = load %struct.iadc_chip*, %struct.iadc_chip** %4, align 8
  %31 = getelementptr inbounds %struct.iadc_chip, %struct.iadc_chip* %30, i32 0, i32 1
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @usecs_to_jiffies(i32 %32)
  %34 = call i32 @wait_for_completion_timeout(i32* %31, i32 %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %29
  %38 = load i32, i32* @ETIMEDOUT, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %8, align 4
  br label %44

40:                                               ; preds = %29
  %41 = load %struct.iadc_chip*, %struct.iadc_chip** %4, align 8
  %42 = load i32, i32* @IADC_CONV_TIME_MIN_US, align 4
  %43 = call i32 @iadc_poll_wait_eoc(%struct.iadc_chip* %41, i32 %42)
  store i32 %43, i32* %8, align 4
  br label %44

44:                                               ; preds = %40, %37
  br label %45

45:                                               ; preds = %44, %25
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %45
  %49 = load %struct.iadc_chip*, %struct.iadc_chip** %4, align 8
  %50 = load i32*, i32** %6, align 8
  %51 = call i32 @iadc_read_result(%struct.iadc_chip* %49, i32* %50)
  store i32 %51, i32* %8, align 4
  br label %52

52:                                               ; preds = %48, %45
  br label %53

53:                                               ; preds = %52, %14
  %54 = load %struct.iadc_chip*, %struct.iadc_chip** %4, align 8
  %55 = call i32 @iadc_set_state(%struct.iadc_chip* %54, i32 0)
  %56 = load i32, i32* %8, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %53
  %59 = load %struct.iadc_chip*, %struct.iadc_chip** %4, align 8
  %60 = getelementptr inbounds %struct.iadc_chip, %struct.iadc_chip* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @dev_err(i32 %61, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %63

63:                                               ; preds = %58, %53
  %64 = load i32, i32* %8, align 4
  ret i32 %64
}

declare dso_local i32 @iadc_configure(%struct.iadc_chip*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @iadc_poll_wait_eoc(%struct.iadc_chip*, i32) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @usecs_to_jiffies(i32) #1

declare dso_local i32 @iadc_read_result(%struct.iadc_chip*, i32*) #1

declare dso_local i32 @iadc_set_state(%struct.iadc_chip*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
