; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_imx7d_adc.c_imx7d_adc_power_down.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_imx7d_adc.c_imx7d_adc_power_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx7d_adc = type { i64 }

@IMX7D_REG_ADC_ADC_CFG = common dso_local global i64 0, align 8
@IMX7D_REG_ADC_ADC_CFG_ADC_CLK_DOWN = common dso_local global i32 0, align 4
@IMX7D_REG_ADC_ADC_CFG_ADC_POWER_DOWN = common dso_local global i32 0, align 4
@IMX7D_REG_ADC_ADC_CFG_ADC_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.imx7d_adc*)* @imx7d_adc_power_down to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @imx7d_adc_power_down(%struct.imx7d_adc* %0) #0 {
  %2 = alloca %struct.imx7d_adc*, align 8
  %3 = alloca i32, align 4
  store %struct.imx7d_adc* %0, %struct.imx7d_adc** %2, align 8
  %4 = load %struct.imx7d_adc*, %struct.imx7d_adc** %2, align 8
  %5 = getelementptr inbounds %struct.imx7d_adc, %struct.imx7d_adc* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @IMX7D_REG_ADC_ADC_CFG, align 8
  %8 = add nsw i64 %6, %7
  %9 = call i32 @readl(i64 %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* @IMX7D_REG_ADC_ADC_CFG_ADC_CLK_DOWN, align 4
  %11 = load i32, i32* @IMX7D_REG_ADC_ADC_CFG_ADC_POWER_DOWN, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* %3, align 4
  %14 = or i32 %13, %12
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* @IMX7D_REG_ADC_ADC_CFG_ADC_EN, align 4
  %16 = xor i32 %15, -1
  %17 = load i32, i32* %3, align 4
  %18 = and i32 %17, %16
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* %3, align 4
  %20 = load %struct.imx7d_adc*, %struct.imx7d_adc** %2, align 8
  %21 = getelementptr inbounds %struct.imx7d_adc, %struct.imx7d_adc* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @IMX7D_REG_ADC_ADC_CFG, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @writel(i32 %19, i64 %24)
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
