; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_qcom-spmi-iadc.c_iadc_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_qcom-spmi-iadc.c_iadc_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iadc_chip = type { i32 }

@IADC_SEC_ACCESS = common dso_local global i32 0, align 4
@IADC_SEC_ACCESS_DATA = common dso_local global i32 0, align 4
@IADC_PERH_RESET_CTL3 = common dso_local global i32 0, align 4
@IADC_FOLLOW_WARM_RB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iadc_chip*)* @iadc_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iadc_reset(%struct.iadc_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iadc_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.iadc_chip* %0, %struct.iadc_chip** %3, align 8
  %6 = load %struct.iadc_chip*, %struct.iadc_chip** %3, align 8
  %7 = load i32, i32* @IADC_SEC_ACCESS, align 4
  %8 = load i32, i32* @IADC_SEC_ACCESS_DATA, align 4
  %9 = call i32 @iadc_write(%struct.iadc_chip* %6, i32 %7, i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %5, align 4
  store i32 %13, i32* %2, align 4
  br label %39

14:                                               ; preds = %1
  %15 = load %struct.iadc_chip*, %struct.iadc_chip** %3, align 8
  %16 = load i32, i32* @IADC_PERH_RESET_CTL3, align 4
  %17 = call i32 @iadc_read(%struct.iadc_chip* %15, i32 %16, i32* %4)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = load i32, i32* %5, align 4
  store i32 %21, i32* %2, align 4
  br label %39

22:                                               ; preds = %14
  %23 = load %struct.iadc_chip*, %struct.iadc_chip** %3, align 8
  %24 = load i32, i32* @IADC_SEC_ACCESS, align 4
  %25 = load i32, i32* @IADC_SEC_ACCESS_DATA, align 4
  %26 = call i32 @iadc_write(%struct.iadc_chip* %23, i32 %24, i32 %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = load i32, i32* %5, align 4
  store i32 %30, i32* %2, align 4
  br label %39

31:                                               ; preds = %22
  %32 = load i32, i32* @IADC_FOLLOW_WARM_RB, align 4
  %33 = load i32, i32* %4, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %4, align 4
  %35 = load %struct.iadc_chip*, %struct.iadc_chip** %3, align 8
  %36 = load i32, i32* @IADC_PERH_RESET_CTL3, align 4
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @iadc_write(%struct.iadc_chip* %35, i32 %36, i32 %37)
  store i32 %38, i32* %2, align 4
  br label %39

39:                                               ; preds = %31, %29, %20, %12
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @iadc_write(%struct.iadc_chip*, i32, i32) #1

declare dso_local i32 @iadc_read(%struct.iadc_chip*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
