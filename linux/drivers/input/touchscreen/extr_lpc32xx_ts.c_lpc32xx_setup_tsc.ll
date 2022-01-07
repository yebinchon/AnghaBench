; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_lpc32xx_ts.c_lpc32xx_setup_tsc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_lpc32xx_ts.c_lpc32xx_setup_tsc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpc32xx_tsc = type { i32 }

@LPC32XX_TSC_CON = common dso_local global i32 0, align 4
@LPC32XX_TSC_ADCCON_POWER_UP = common dso_local global i32 0, align 4
@LPC32XX_TSC_ADCCON_IRQ_TO_FIFO_4 = common dso_local global i32 0, align 4
@LPC32XX_TSC_SEL = common dso_local global i32 0, align 4
@LPC32XX_TSC_SEL_DEFVAL = common dso_local global i32 0, align 4
@LPC32XX_TSC_MIN_X = common dso_local global i32 0, align 4
@LPC32XX_TSC_MIN_XY_VAL = common dso_local global i32 0, align 4
@LPC32XX_TSC_MAX_X = common dso_local global i32 0, align 4
@LPC32XX_TSC_MAX_XY_VAL = common dso_local global i32 0, align 4
@LPC32XX_TSC_MIN_Y = common dso_local global i32 0, align 4
@LPC32XX_TSC_MAX_Y = common dso_local global i32 0, align 4
@LPC32XX_TSC_AUX_UTR = common dso_local global i32 0, align 4
@LPC32XX_TSC_AUX_MIN = common dso_local global i32 0, align 4
@LPC32XX_TSC_AUX_MAX = common dso_local global i32 0, align 4
@LPC32XX_TSC_RTR = common dso_local global i32 0, align 4
@LPC32XX_TSC_DTR = common dso_local global i32 0, align 4
@LPC32XX_TSC_TTR = common dso_local global i32 0, align 4
@LPC32XX_TSC_DXP = common dso_local global i32 0, align 4
@LPC32XX_TSC_UTR = common dso_local global i32 0, align 4
@LPC32XX_TSC_ADCCON_AUTO_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpc32xx_tsc*)* @lpc32xx_setup_tsc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpc32xx_setup_tsc(%struct.lpc32xx_tsc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lpc32xx_tsc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.lpc32xx_tsc* %0, %struct.lpc32xx_tsc** %3, align 8
  %6 = load %struct.lpc32xx_tsc*, %struct.lpc32xx_tsc** %3, align 8
  %7 = getelementptr inbounds %struct.lpc32xx_tsc, %struct.lpc32xx_tsc* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @clk_prepare_enable(i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %5, align 4
  store i32 %13, i32* %2, align 4
  br label %82

14:                                               ; preds = %1
  %15 = load %struct.lpc32xx_tsc*, %struct.lpc32xx_tsc** %3, align 8
  %16 = load i32, i32* @LPC32XX_TSC_CON, align 4
  %17 = call i32 @tsc_readl(%struct.lpc32xx_tsc* %15, i32 %16)
  %18 = load i32, i32* @LPC32XX_TSC_ADCCON_POWER_UP, align 4
  %19 = xor i32 %18, -1
  %20 = and i32 %17, %19
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* @LPC32XX_TSC_ADCCON_IRQ_TO_FIFO_4, align 4
  %22 = call i32 @LPC32XX_TSC_ADCCON_X_SAMPLE_SIZE(i32 10)
  %23 = or i32 %21, %22
  %24 = call i32 @LPC32XX_TSC_ADCCON_Y_SAMPLE_SIZE(i32 10)
  %25 = or i32 %23, %24
  store i32 %25, i32* %4, align 4
  %26 = load %struct.lpc32xx_tsc*, %struct.lpc32xx_tsc** %3, align 8
  %27 = load i32, i32* @LPC32XX_TSC_CON, align 4
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @tsc_writel(%struct.lpc32xx_tsc* %26, i32 %27, i32 %28)
  %30 = load %struct.lpc32xx_tsc*, %struct.lpc32xx_tsc** %3, align 8
  %31 = load i32, i32* @LPC32XX_TSC_SEL, align 4
  %32 = load i32, i32* @LPC32XX_TSC_SEL_DEFVAL, align 4
  %33 = call i32 @tsc_writel(%struct.lpc32xx_tsc* %30, i32 %31, i32 %32)
  %34 = load %struct.lpc32xx_tsc*, %struct.lpc32xx_tsc** %3, align 8
  %35 = load i32, i32* @LPC32XX_TSC_MIN_X, align 4
  %36 = load i32, i32* @LPC32XX_TSC_MIN_XY_VAL, align 4
  %37 = call i32 @tsc_writel(%struct.lpc32xx_tsc* %34, i32 %35, i32 %36)
  %38 = load %struct.lpc32xx_tsc*, %struct.lpc32xx_tsc** %3, align 8
  %39 = load i32, i32* @LPC32XX_TSC_MAX_X, align 4
  %40 = load i32, i32* @LPC32XX_TSC_MAX_XY_VAL, align 4
  %41 = call i32 @tsc_writel(%struct.lpc32xx_tsc* %38, i32 %39, i32 %40)
  %42 = load %struct.lpc32xx_tsc*, %struct.lpc32xx_tsc** %3, align 8
  %43 = load i32, i32* @LPC32XX_TSC_MIN_Y, align 4
  %44 = load i32, i32* @LPC32XX_TSC_MIN_XY_VAL, align 4
  %45 = call i32 @tsc_writel(%struct.lpc32xx_tsc* %42, i32 %43, i32 %44)
  %46 = load %struct.lpc32xx_tsc*, %struct.lpc32xx_tsc** %3, align 8
  %47 = load i32, i32* @LPC32XX_TSC_MAX_Y, align 4
  %48 = load i32, i32* @LPC32XX_TSC_MAX_XY_VAL, align 4
  %49 = call i32 @tsc_writel(%struct.lpc32xx_tsc* %46, i32 %47, i32 %48)
  %50 = load %struct.lpc32xx_tsc*, %struct.lpc32xx_tsc** %3, align 8
  %51 = load i32, i32* @LPC32XX_TSC_AUX_UTR, align 4
  %52 = call i32 @tsc_writel(%struct.lpc32xx_tsc* %50, i32 %51, i32 0)
  %53 = load %struct.lpc32xx_tsc*, %struct.lpc32xx_tsc** %3, align 8
  %54 = load i32, i32* @LPC32XX_TSC_AUX_MIN, align 4
  %55 = call i32 @tsc_writel(%struct.lpc32xx_tsc* %53, i32 %54, i32 0)
  %56 = load %struct.lpc32xx_tsc*, %struct.lpc32xx_tsc** %3, align 8
  %57 = load i32, i32* @LPC32XX_TSC_AUX_MAX, align 4
  %58 = call i32 @tsc_writel(%struct.lpc32xx_tsc* %56, i32 %57, i32 0)
  %59 = load %struct.lpc32xx_tsc*, %struct.lpc32xx_tsc** %3, align 8
  %60 = load i32, i32* @LPC32XX_TSC_RTR, align 4
  %61 = call i32 @tsc_writel(%struct.lpc32xx_tsc* %59, i32 %60, i32 2)
  %62 = load %struct.lpc32xx_tsc*, %struct.lpc32xx_tsc** %3, align 8
  %63 = load i32, i32* @LPC32XX_TSC_DTR, align 4
  %64 = call i32 @tsc_writel(%struct.lpc32xx_tsc* %62, i32 %63, i32 2)
  %65 = load %struct.lpc32xx_tsc*, %struct.lpc32xx_tsc** %3, align 8
  %66 = load i32, i32* @LPC32XX_TSC_TTR, align 4
  %67 = call i32 @tsc_writel(%struct.lpc32xx_tsc* %65, i32 %66, i32 16)
  %68 = load %struct.lpc32xx_tsc*, %struct.lpc32xx_tsc** %3, align 8
  %69 = load i32, i32* @LPC32XX_TSC_DXP, align 4
  %70 = call i32 @tsc_writel(%struct.lpc32xx_tsc* %68, i32 %69, i32 4)
  %71 = load %struct.lpc32xx_tsc*, %struct.lpc32xx_tsc** %3, align 8
  %72 = load i32, i32* @LPC32XX_TSC_UTR, align 4
  %73 = call i32 @tsc_writel(%struct.lpc32xx_tsc* %71, i32 %72, i32 88)
  %74 = load %struct.lpc32xx_tsc*, %struct.lpc32xx_tsc** %3, align 8
  %75 = call i32 @lpc32xx_fifo_clear(%struct.lpc32xx_tsc* %74)
  %76 = load %struct.lpc32xx_tsc*, %struct.lpc32xx_tsc** %3, align 8
  %77 = load i32, i32* @LPC32XX_TSC_CON, align 4
  %78 = load i32, i32* %4, align 4
  %79 = load i32, i32* @LPC32XX_TSC_ADCCON_AUTO_EN, align 4
  %80 = or i32 %78, %79
  %81 = call i32 @tsc_writel(%struct.lpc32xx_tsc* %76, i32 %77, i32 %80)
  store i32 0, i32* %2, align 4
  br label %82

82:                                               ; preds = %14, %12
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @tsc_readl(%struct.lpc32xx_tsc*, i32) #1

declare dso_local i32 @LPC32XX_TSC_ADCCON_X_SAMPLE_SIZE(i32) #1

declare dso_local i32 @LPC32XX_TSC_ADCCON_Y_SAMPLE_SIZE(i32) #1

declare dso_local i32 @tsc_writel(%struct.lpc32xx_tsc*, i32, i32) #1

declare dso_local i32 @lpc32xx_fifo_clear(%struct.lpc32xx_tsc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
