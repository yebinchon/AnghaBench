; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_qcom-spmi-iadc.c_iadc_status_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_qcom-spmi-iadc.c_iadc_status_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iadc_chip = type { i32 }

@IADC_MODE_CTL = common dso_local global i32 0, align 4
@IADC_DIG_PARAM = common dso_local global i32 0, align 4
@IADC_CH_SEL_CTL = common dso_local global i32 0, align 4
@IADC_CONV_REQ = common dso_local global i32 0, align 4
@IADC_STATUS1 = common dso_local global i32 0, align 4
@IADC_EN_CTL1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"mode:%02x en:%02x chan:%02x dig:%02x req:%02x sta1:%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iadc_chip*)* @iadc_status_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iadc_status_show(%struct.iadc_chip* %0) #0 {
  %2 = alloca %struct.iadc_chip*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.iadc_chip* %0, %struct.iadc_chip** %2, align 8
  %10 = load %struct.iadc_chip*, %struct.iadc_chip** %2, align 8
  %11 = load i32, i32* @IADC_MODE_CTL, align 4
  %12 = call i32 @iadc_read(%struct.iadc_chip* %10, i32 %11, i32* %3)
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %62

16:                                               ; preds = %1
  %17 = load %struct.iadc_chip*, %struct.iadc_chip** %2, align 8
  %18 = load i32, i32* @IADC_DIG_PARAM, align 4
  %19 = call i32 @iadc_read(%struct.iadc_chip* %17, i32 %18, i32* %6)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  br label %62

23:                                               ; preds = %16
  %24 = load %struct.iadc_chip*, %struct.iadc_chip** %2, align 8
  %25 = load i32, i32* @IADC_CH_SEL_CTL, align 4
  %26 = call i32 @iadc_read(%struct.iadc_chip* %24, i32 %25, i32* %5)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  br label %62

30:                                               ; preds = %23
  %31 = load %struct.iadc_chip*, %struct.iadc_chip** %2, align 8
  %32 = load i32, i32* @IADC_CONV_REQ, align 4
  %33 = call i32 @iadc_read(%struct.iadc_chip* %31, i32 %32, i32* %8)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  br label %62

37:                                               ; preds = %30
  %38 = load %struct.iadc_chip*, %struct.iadc_chip** %2, align 8
  %39 = load i32, i32* @IADC_STATUS1, align 4
  %40 = call i32 @iadc_read(%struct.iadc_chip* %38, i32 %39, i32* %4)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  br label %62

44:                                               ; preds = %37
  %45 = load %struct.iadc_chip*, %struct.iadc_chip** %2, align 8
  %46 = load i32, i32* @IADC_EN_CTL1, align 4
  %47 = call i32 @iadc_read(%struct.iadc_chip* %45, i32 %46, i32* %7)
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  br label %62

51:                                               ; preds = %44
  %52 = load %struct.iadc_chip*, %struct.iadc_chip** %2, align 8
  %53 = getelementptr inbounds %struct.iadc_chip, %struct.iadc_chip* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %3, align 4
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @dev_err(i32 %54, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %55, i32 %56, i32 %57, i32 %58, i32 %59, i32 %60)
  br label %62

62:                                               ; preds = %51, %50, %43, %36, %29, %22, %15
  ret void
}

declare dso_local i32 @iadc_read(%struct.iadc_chip*, i32, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
