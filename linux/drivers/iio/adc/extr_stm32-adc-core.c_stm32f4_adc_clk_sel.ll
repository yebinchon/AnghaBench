; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_stm32-adc-core.c_stm32f4_adc_clk_sel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_stm32-adc-core.c_stm32f4_adc_clk_sel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.stm32_adc_priv = type { %struct.TYPE_4__, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [22 x i8] c"No 'adc' clock found\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Invalid clock rate: 0\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@stm32f4_pclk_div = common dso_local global i64* null, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"adc clk selection failed\0A\00", align 1
@STM32F4_ADC_CCR = common dso_local global i64 0, align 8
@STM32F4_ADC_ADCPRE_MASK = common dso_local global i32 0, align 4
@STM32F4_ADC_ADCPRE_SHIFT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"Using analog clock source at %ld kHz\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, %struct.stm32_adc_priv*)* @stm32f4_adc_clk_sel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32f4_adc_clk_sel(%struct.platform_device* %0, %struct.stm32_adc_priv* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.stm32_adc_priv*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store %struct.stm32_adc_priv* %1, %struct.stm32_adc_priv** %5, align 8
  %9 = load %struct.stm32_adc_priv*, %struct.stm32_adc_priv** %5, align 8
  %10 = getelementptr inbounds %struct.stm32_adc_priv, %struct.stm32_adc_priv* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %2
  %14 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  %16 = call i32 @dev_err(i32* %15, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @ENOENT, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %112

19:                                               ; preds = %2
  %20 = load %struct.stm32_adc_priv*, %struct.stm32_adc_priv** %5, align 8
  %21 = getelementptr inbounds %struct.stm32_adc_priv, %struct.stm32_adc_priv* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = call i64 @clk_get_rate(i32 %22)
  store i64 %23, i64* %6, align 8
  %24 = load i64, i64* %6, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %19
  %27 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %28 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %27, i32 0, i32 0
  %29 = call i32 @dev_err(i32* %28, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %112

32:                                               ; preds = %19
  store i32 0, i32* %8, align 4
  br label %33

33:                                               ; preds = %54, %32
  %34 = load i32, i32* %8, align 4
  %35 = load i64*, i64** @stm32f4_pclk_div, align 8
  %36 = call i32 @ARRAY_SIZE(i64* %35)
  %37 = icmp slt i32 %34, %36
  br i1 %37, label %38, label %57

38:                                               ; preds = %33
  %39 = load i64, i64* %6, align 8
  %40 = load i64*, i64** @stm32f4_pclk_div, align 8
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i64, i64* %40, i64 %42
  %44 = load i64, i64* %43, align 8
  %45 = udiv i64 %39, %44
  %46 = load %struct.stm32_adc_priv*, %struct.stm32_adc_priv** %5, align 8
  %47 = getelementptr inbounds %struct.stm32_adc_priv, %struct.stm32_adc_priv* %46, i32 0, i32 1
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ule i64 %45, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %38
  br label %57

53:                                               ; preds = %38
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %8, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %8, align 4
  br label %33

57:                                               ; preds = %52, %33
  %58 = load i32, i32* %8, align 4
  %59 = load i64*, i64** @stm32f4_pclk_div, align 8
  %60 = call i32 @ARRAY_SIZE(i64* %59)
  %61 = icmp sge i32 %58, %60
  br i1 %61, label %62, label %68

62:                                               ; preds = %57
  %63 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %64 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %63, i32 0, i32 0
  %65 = call i32 @dev_err(i32* %64, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %3, align 4
  br label %112

68:                                               ; preds = %57
  %69 = load i64, i64* %6, align 8
  %70 = load i64*, i64** @stm32f4_pclk_div, align 8
  %71 = load i32, i32* %8, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i64, i64* %70, i64 %72
  %74 = load i64, i64* %73, align 8
  %75 = udiv i64 %69, %74
  %76 = load %struct.stm32_adc_priv*, %struct.stm32_adc_priv** %5, align 8
  %77 = getelementptr inbounds %struct.stm32_adc_priv, %struct.stm32_adc_priv* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  store i64 %75, i64* %78, align 8
  %79 = load %struct.stm32_adc_priv*, %struct.stm32_adc_priv** %5, align 8
  %80 = getelementptr inbounds %struct.stm32_adc_priv, %struct.stm32_adc_priv* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @STM32F4_ADC_CCR, align 8
  %84 = add nsw i64 %82, %83
  %85 = call i32 @readl_relaxed(i64 %84)
  store i32 %85, i32* %7, align 4
  %86 = load i32, i32* @STM32F4_ADC_ADCPRE_MASK, align 4
  %87 = xor i32 %86, -1
  %88 = load i32, i32* %7, align 4
  %89 = and i32 %88, %87
  store i32 %89, i32* %7, align 4
  %90 = load i32, i32* %8, align 4
  %91 = load i32, i32* @STM32F4_ADC_ADCPRE_SHIFT, align 4
  %92 = shl i32 %90, %91
  %93 = load i32, i32* %7, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %7, align 4
  %95 = load i32, i32* %7, align 4
  %96 = load %struct.stm32_adc_priv*, %struct.stm32_adc_priv** %5, align 8
  %97 = getelementptr inbounds %struct.stm32_adc_priv, %struct.stm32_adc_priv* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @STM32F4_ADC_CCR, align 8
  %101 = add nsw i64 %99, %100
  %102 = call i32 @writel_relaxed(i32 %95, i64 %101)
  %103 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %104 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %103, i32 0, i32 0
  %105 = load %struct.stm32_adc_priv*, %struct.stm32_adc_priv** %5, align 8
  %106 = getelementptr inbounds %struct.stm32_adc_priv, %struct.stm32_adc_priv* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = udiv i64 %108, 1000
  %110 = trunc i64 %109 to i32
  %111 = call i32 @dev_dbg(i32* %104, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %110)
  store i32 0, i32* %3, align 4
  br label %112

112:                                              ; preds = %68, %62, %26, %13
  %113 = load i32, i32* %3, align 4
  ret i32 %113
}

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i32 @ARRAY_SIZE(i64*) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
