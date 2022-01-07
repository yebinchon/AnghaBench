; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_imx7d_adc.c_imx7d_adc_channel_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_imx7d_adc.c_imx7d_adc_channel_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx7d_adc = type { i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@IMX7D_REG_ADC_CH_CFG1_CHANNEL_EN = common dso_local global i32 0, align 4
@IMX7D_REG_ADC_CH_CFG1_CHANNEL_SINGLE = common dso_local global i32 0, align 4
@IMX7D_REG_ADC_CH_CFG1_CHANNEL_AVG_EN = common dso_local global i32 0, align 4
@IMX7D_EACH_CHANNEL_REG_OFFSET = common dso_local global i32 0, align 4
@IMX7D_REG_ADC_CHANNEL_CFG2_BASE = common dso_local global i64 0, align 8
@imx7d_adc_average_num = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.imx7d_adc*)* @imx7d_adc_channel_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @imx7d_adc_channel_set(%struct.imx7d_adc* %0) #0 {
  %2 = alloca %struct.imx7d_adc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.imx7d_adc* %0, %struct.imx7d_adc** %2, align 8
  store i32 0, i32* %3, align 4
  %6 = load %struct.imx7d_adc*, %struct.imx7d_adc** %2, align 8
  %7 = getelementptr inbounds %struct.imx7d_adc, %struct.imx7d_adc* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* @IMX7D_REG_ADC_CH_CFG1_CHANNEL_EN, align 4
  %10 = load i32, i32* @IMX7D_REG_ADC_CH_CFG1_CHANNEL_SINGLE, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @IMX7D_REG_ADC_CH_CFG1_CHANNEL_AVG_EN, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* %3, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @IMX7D_REG_ADC_CH_CFG1_CHANNEL_SEL(i32 %16)
  %18 = load i32, i32* %3, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %3, align 4
  %20 = load %struct.imx7d_adc*, %struct.imx7d_adc** %2, align 8
  %21 = getelementptr inbounds %struct.imx7d_adc, %struct.imx7d_adc* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i32, i32* @IMX7D_EACH_CHANNEL_REG_OFFSET, align 4
  %24 = load i32, i32* %5, align 4
  %25 = mul nsw i32 %23, %24
  %26 = sext i32 %25 to i64
  %27 = add nsw i64 %22, %26
  %28 = load i64, i64* @IMX7D_REG_ADC_CHANNEL_CFG2_BASE, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @readl(i64 %29)
  store i32 %30, i32* %4, align 4
  %31 = load i32*, i32** @imx7d_adc_average_num, align 8
  %32 = load %struct.imx7d_adc*, %struct.imx7d_adc** %2, align 8
  %33 = getelementptr inbounds %struct.imx7d_adc, %struct.imx7d_adc* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds i32, i32* %31, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %4, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* %4, align 4
  %41 = load %struct.imx7d_adc*, %struct.imx7d_adc** %2, align 8
  %42 = getelementptr inbounds %struct.imx7d_adc, %struct.imx7d_adc* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i32, i32* @IMX7D_EACH_CHANNEL_REG_OFFSET, align 4
  %45 = load i32, i32* %5, align 4
  %46 = mul nsw i32 %44, %45
  %47 = sext i32 %46 to i64
  %48 = add nsw i64 %43, %47
  %49 = load i64, i64* @IMX7D_REG_ADC_CHANNEL_CFG2_BASE, align 8
  %50 = add nsw i64 %48, %49
  %51 = call i32 @writel(i32 %40, i64 %50)
  %52 = load i32, i32* %3, align 4
  %53 = load %struct.imx7d_adc*, %struct.imx7d_adc** %2, align 8
  %54 = getelementptr inbounds %struct.imx7d_adc, %struct.imx7d_adc* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i32, i32* @IMX7D_EACH_CHANNEL_REG_OFFSET, align 4
  %57 = load i32, i32* %5, align 4
  %58 = mul nsw i32 %56, %57
  %59 = sext i32 %58 to i64
  %60 = add nsw i64 %55, %59
  %61 = call i32 @writel(i32 %52, i64 %60)
  ret void
}

declare dso_local i32 @IMX7D_REG_ADC_CH_CFG1_CHANNEL_SEL(i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
