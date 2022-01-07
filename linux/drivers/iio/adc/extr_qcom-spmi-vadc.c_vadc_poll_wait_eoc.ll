; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_qcom-spmi-vadc.c_vadc_poll_wait_eoc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_qcom-spmi-vadc.c_vadc_poll_wait_eoc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vadc_priv = type { i32 }

@VADC_CONV_TIME_MIN_US = common dso_local global i32 0, align 4
@VADC_STATUS1 = common dso_local global i32 0, align 4
@VADC_STATUS1_REQ_STS_EOC_MASK = common dso_local global i32 0, align 4
@VADC_STATUS1_EOC = common dso_local global i32 0, align 4
@VADC_CONV_TIME_MAX_US = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vadc_priv*, i32)* @vadc_poll_wait_eoc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vadc_poll_wait_eoc(%struct.vadc_priv* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vadc_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.vadc_priv* %0, %struct.vadc_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @VADC_CONV_TIME_MIN_US, align 4
  %12 = udiv i32 %10, %11
  store i32 %12, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %13

13:                                               ; preds = %37, %2
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp ult i32 %14, %15
  br i1 %16, label %17, label %40

17:                                               ; preds = %13
  %18 = load %struct.vadc_priv*, %struct.vadc_priv** %4, align 8
  %19 = load i32, i32* @VADC_STATUS1, align 4
  %20 = call i32 @vadc_read(%struct.vadc_priv* %18, i32 %19, i32* %8)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = load i32, i32* %9, align 4
  store i32 %24, i32* %3, align 4
  br label %45

25:                                               ; preds = %17
  %26 = load i32, i32* @VADC_STATUS1_REQ_STS_EOC_MASK, align 4
  %27 = load i32, i32* %8, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @VADC_STATUS1_EOC, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %45

33:                                               ; preds = %25
  %34 = load i32, i32* @VADC_CONV_TIME_MIN_US, align 4
  %35 = load i32, i32* @VADC_CONV_TIME_MAX_US, align 4
  %36 = call i32 @usleep_range(i32 %34, i32 %35)
  br label %37

37:                                               ; preds = %33
  %38 = load i32, i32* %6, align 4
  %39 = add i32 %38, 1
  store i32 %39, i32* %6, align 4
  br label %13

40:                                               ; preds = %13
  %41 = load %struct.vadc_priv*, %struct.vadc_priv** %4, align 8
  %42 = call i32 @vadc_show_status(%struct.vadc_priv* %41)
  %43 = load i32, i32* @ETIMEDOUT, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %40, %32, %23
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @vadc_read(%struct.vadc_priv*, i32, i32*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @vadc_show_status(%struct.vadc_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
