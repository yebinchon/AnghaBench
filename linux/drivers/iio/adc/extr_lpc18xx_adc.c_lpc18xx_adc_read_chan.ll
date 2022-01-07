; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_lpc18xx_adc.c_lpc18xx_adc_read_chan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_lpc18xx_adc.c_lpc18xx_adc_read_chan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpc18xx_adc = type { i32, i32, i64 }

@LPC18XX_ADC_CR_START_NOW = common dso_local global i32 0, align 4
@LPC18XX_ADC_CR = common dso_local global i64 0, align 8
@LPC18XX_ADC_GDR = common dso_local global i64 0, align 8
@LPC18XX_ADC_CONV_DONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"adc read timed out\0A\00", align 1
@LPC18XX_ADC_SAMPLE_SHIFT = common dso_local global i32 0, align 4
@LPC18XX_ADC_SAMPLE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpc18xx_adc*, i32)* @lpc18xx_adc_read_chan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpc18xx_adc_read_chan(%struct.lpc18xx_adc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lpc18xx_adc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.lpc18xx_adc* %0, %struct.lpc18xx_adc** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.lpc18xx_adc*, %struct.lpc18xx_adc** %4, align 8
  %9 = getelementptr inbounds %struct.lpc18xx_adc, %struct.lpc18xx_adc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @BIT(i32 %11)
  %13 = or i32 %10, %12
  %14 = load i32, i32* @LPC18XX_ADC_CR_START_NOW, align 4
  %15 = or i32 %13, %14
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.lpc18xx_adc*, %struct.lpc18xx_adc** %4, align 8
  %18 = getelementptr inbounds %struct.lpc18xx_adc, %struct.lpc18xx_adc* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @LPC18XX_ADC_CR, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @writel(i32 %16, i64 %21)
  %23 = load %struct.lpc18xx_adc*, %struct.lpc18xx_adc** %4, align 8
  %24 = getelementptr inbounds %struct.lpc18xx_adc, %struct.lpc18xx_adc* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @LPC18XX_ADC_GDR, align 8
  %27 = add nsw i64 %25, %26
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @LPC18XX_ADC_CONV_DONE, align 4
  %31 = and i32 %29, %30
  %32 = call i32 @readl_poll_timeout(i64 %27, i32 %28, i32 %31, i32 3, i32 9)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %2
  %36 = load %struct.lpc18xx_adc*, %struct.lpc18xx_adc** %4, align 8
  %37 = getelementptr inbounds %struct.lpc18xx_adc, %struct.lpc18xx_adc* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @dev_warn(i32 %38, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %40 = load i32, i32* %6, align 4
  store i32 %40, i32* %3, align 4
  br label %47

41:                                               ; preds = %2
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @LPC18XX_ADC_SAMPLE_SHIFT, align 4
  %44 = ashr i32 %42, %43
  %45 = load i32, i32* @LPC18XX_ADC_SAMPLE_MASK, align 4
  %46 = and i32 %44, %45
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %41, %35
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl_poll_timeout(i64, i32, i32, i32, i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
