; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_qcom-spmi-vadc.c_vadc_configure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_qcom-spmi-vadc.c_vadc_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vadc_priv = type { i32 }
%struct.vadc_channel_prop = type { i32, i32, i32, i32 }

@VADC_OP_MODE_NORMAL = common dso_local global i32 0, align 4
@VADC_OP_MODE_SHIFT = common dso_local global i32 0, align 4
@VADC_ADC_TRIM_EN = common dso_local global i32 0, align 4
@VADC_AMUX_TRIM_EN = common dso_local global i32 0, align 4
@VADC_MODE_CTL = common dso_local global i32 0, align 4
@VADC_ADC_CH_SEL_CTL = common dso_local global i32 0, align 4
@VADC_ADC_DIG_DEC_RATIO_SEL_SHIFT = common dso_local global i32 0, align 4
@VADC_ADC_DIG_PARAM = common dso_local global i32 0, align 4
@VADC_HW_SETTLE_DELAY = common dso_local global i32 0, align 4
@VADC_FAST_AVG_CTL = common dso_local global i32 0, align 4
@VADC_FAST_AVG_EN = common dso_local global i32 0, align 4
@VADC_FAST_AVG_EN_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vadc_priv*, %struct.vadc_channel_prop*)* @vadc_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vadc_configure(%struct.vadc_priv* %0, %struct.vadc_channel_prop* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vadc_priv*, align 8
  %5 = alloca %struct.vadc_channel_prop*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.vadc_priv* %0, %struct.vadc_priv** %4, align 8
  store %struct.vadc_channel_prop* %1, %struct.vadc_channel_prop** %5, align 8
  %9 = load i32, i32* @VADC_OP_MODE_NORMAL, align 4
  %10 = load i32, i32* @VADC_OP_MODE_SHIFT, align 4
  %11 = shl i32 %9, %10
  %12 = load i32, i32* @VADC_ADC_TRIM_EN, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @VADC_AMUX_TRIM_EN, align 4
  %15 = or i32 %13, %14
  store i32 %15, i32* %7, align 4
  %16 = load %struct.vadc_priv*, %struct.vadc_priv** %4, align 8
  %17 = load i32, i32* @VADC_MODE_CTL, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @vadc_write(%struct.vadc_priv* %16, i32 %17, i32 %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* %8, align 4
  store i32 %23, i32* %3, align 4
  br label %87

24:                                               ; preds = %2
  %25 = load %struct.vadc_priv*, %struct.vadc_priv** %4, align 8
  %26 = load i32, i32* @VADC_ADC_CH_SEL_CTL, align 4
  %27 = load %struct.vadc_channel_prop*, %struct.vadc_channel_prop** %5, align 8
  %28 = getelementptr inbounds %struct.vadc_channel_prop, %struct.vadc_channel_prop* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @vadc_write(%struct.vadc_priv* %25, i32 %26, i32 %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %24
  %34 = load i32, i32* %8, align 4
  store i32 %34, i32* %3, align 4
  br label %87

35:                                               ; preds = %24
  %36 = load %struct.vadc_channel_prop*, %struct.vadc_channel_prop** %5, align 8
  %37 = getelementptr inbounds %struct.vadc_channel_prop, %struct.vadc_channel_prop* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @VADC_ADC_DIG_DEC_RATIO_SEL_SHIFT, align 4
  %40 = shl i32 %38, %39
  store i32 %40, i32* %6, align 4
  %41 = load %struct.vadc_priv*, %struct.vadc_priv** %4, align 8
  %42 = load i32, i32* @VADC_ADC_DIG_PARAM, align 4
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @vadc_write(%struct.vadc_priv* %41, i32 %42, i32 %43)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %35
  %48 = load i32, i32* %8, align 4
  store i32 %48, i32* %3, align 4
  br label %87

49:                                               ; preds = %35
  %50 = load %struct.vadc_priv*, %struct.vadc_priv** %4, align 8
  %51 = load i32, i32* @VADC_HW_SETTLE_DELAY, align 4
  %52 = load %struct.vadc_channel_prop*, %struct.vadc_channel_prop** %5, align 8
  %53 = getelementptr inbounds %struct.vadc_channel_prop, %struct.vadc_channel_prop* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @vadc_write(%struct.vadc_priv* %50, i32 %51, i32 %54)
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %8, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %49
  %59 = load i32, i32* %8, align 4
  store i32 %59, i32* %3, align 4
  br label %87

60:                                               ; preds = %49
  %61 = load %struct.vadc_priv*, %struct.vadc_priv** %4, align 8
  %62 = load i32, i32* @VADC_FAST_AVG_CTL, align 4
  %63 = load %struct.vadc_channel_prop*, %struct.vadc_channel_prop** %5, align 8
  %64 = getelementptr inbounds %struct.vadc_channel_prop, %struct.vadc_channel_prop* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @vadc_write(%struct.vadc_priv* %61, i32 %62, i32 %65)
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* %8, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %60
  %70 = load i32, i32* %8, align 4
  store i32 %70, i32* %3, align 4
  br label %87

71:                                               ; preds = %60
  %72 = load %struct.vadc_channel_prop*, %struct.vadc_channel_prop** %5, align 8
  %73 = getelementptr inbounds %struct.vadc_channel_prop, %struct.vadc_channel_prop* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %71
  %77 = load %struct.vadc_priv*, %struct.vadc_priv** %4, align 8
  %78 = load i32, i32* @VADC_FAST_AVG_EN, align 4
  %79 = load i32, i32* @VADC_FAST_AVG_EN_SET, align 4
  %80 = call i32 @vadc_write(%struct.vadc_priv* %77, i32 %78, i32 %79)
  store i32 %80, i32* %8, align 4
  br label %85

81:                                               ; preds = %71
  %82 = load %struct.vadc_priv*, %struct.vadc_priv** %4, align 8
  %83 = load i32, i32* @VADC_FAST_AVG_EN, align 4
  %84 = call i32 @vadc_write(%struct.vadc_priv* %82, i32 %83, i32 0)
  store i32 %84, i32* %8, align 4
  br label %85

85:                                               ; preds = %81, %76
  %86 = load i32, i32* %8, align 4
  store i32 %86, i32* %3, align 4
  br label %87

87:                                               ; preds = %85, %69, %58, %47, %33, %22
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i32 @vadc_write(%struct.vadc_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
