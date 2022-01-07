; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_imx6ul_tsc.c_imx6ul_adc_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_imx6ul_tsc.c_imx6ul_adc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx6ul_tsc = type { i32, i64, i32, i32, i64 }

@REG_ADC_CFG = common dso_local global i64 0, align 8
@ADC_CONV_MODE_MASK = common dso_local global i32 0, align 4
@ADC_INPUT_CLK_MASK = common dso_local global i32 0, align 4
@ADC_12BIT_MODE = common dso_local global i32 0, align 4
@ADC_IPG_CLK = common dso_local global i32 0, align 4
@ADC_CLK_DIV_MASK = common dso_local global i32 0, align 4
@ADC_SAMPLE_MODE_MASK = common dso_local global i32 0, align 4
@ADC_CLK_DIV_8 = common dso_local global i32 0, align 4
@ADC_SHORT_SAMPLE_MODE = common dso_local global i32 0, align 4
@ADC_AVGS_MASK = common dso_local global i32 0, align 4
@ADC_AVGS_SHIFT = common dso_local global i32 0, align 4
@ADC_HARDWARE_TRIGGER = common dso_local global i32 0, align 4
@ADC_AIEN = common dso_local global i32 0, align 4
@ADC_CONV_DISABLE = common dso_local global i32 0, align 4
@REG_ADC_HC0 = common dso_local global i64 0, align 8
@REG_ADC_GC = common dso_local global i64 0, align 8
@ADC_CAL = common dso_local global i32 0, align 4
@ADC_AVGE = common dso_local global i32 0, align 4
@ADC_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Timeout for adc calibration\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@REG_ADC_GS = common dso_local global i64 0, align 8
@ADC_CALF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"ADC calibration failed\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.imx6ul_tsc*)* @imx6ul_adc_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx6ul_adc_init(%struct.imx6ul_tsc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.imx6ul_tsc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.imx6ul_tsc* %0, %struct.imx6ul_tsc** %3, align 8
  store i32 0, i32* %4, align 4
  %9 = load %struct.imx6ul_tsc*, %struct.imx6ul_tsc** %3, align 8
  %10 = getelementptr inbounds %struct.imx6ul_tsc, %struct.imx6ul_tsc* %9, i32 0, i32 3
  %11 = call i32 @reinit_completion(i32* %10)
  %12 = load %struct.imx6ul_tsc*, %struct.imx6ul_tsc** %3, align 8
  %13 = getelementptr inbounds %struct.imx6ul_tsc, %struct.imx6ul_tsc* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @REG_ADC_CFG, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @readl(i64 %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* @ADC_CONV_MODE_MASK, align 4
  %19 = load i32, i32* @ADC_INPUT_CLK_MASK, align 4
  %20 = or i32 %18, %19
  %21 = xor i32 %20, -1
  %22 = load i32, i32* %7, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* @ADC_12BIT_MODE, align 4
  %25 = load i32, i32* @ADC_IPG_CLK, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* %7, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* @ADC_CLK_DIV_MASK, align 4
  %30 = load i32, i32* @ADC_SAMPLE_MODE_MASK, align 4
  %31 = or i32 %29, %30
  %32 = xor i32 %31, -1
  %33 = load i32, i32* %7, align 4
  %34 = and i32 %33, %32
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* @ADC_CLK_DIV_8, align 4
  %36 = load i32, i32* @ADC_SHORT_SAMPLE_MODE, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* %7, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %7, align 4
  %40 = load %struct.imx6ul_tsc*, %struct.imx6ul_tsc** %3, align 8
  %41 = getelementptr inbounds %struct.imx6ul_tsc, %struct.imx6ul_tsc* %40, i32 0, i32 4
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %56

44:                                               ; preds = %1
  %45 = load i32, i32* @ADC_AVGS_MASK, align 4
  %46 = xor i32 %45, -1
  %47 = load i32, i32* %7, align 4
  %48 = and i32 %47, %46
  store i32 %48, i32* %7, align 4
  %49 = load %struct.imx6ul_tsc*, %struct.imx6ul_tsc** %3, align 8
  %50 = getelementptr inbounds %struct.imx6ul_tsc, %struct.imx6ul_tsc* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @ADC_AVGS_SHIFT, align 4
  %53 = shl i32 %51, %52
  %54 = load i32, i32* %7, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %7, align 4
  br label %56

56:                                               ; preds = %44, %1
  %57 = load i32, i32* @ADC_HARDWARE_TRIGGER, align 4
  %58 = xor i32 %57, -1
  %59 = load i32, i32* %7, align 4
  %60 = and i32 %59, %58
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %7, align 4
  %62 = load %struct.imx6ul_tsc*, %struct.imx6ul_tsc** %3, align 8
  %63 = getelementptr inbounds %struct.imx6ul_tsc, %struct.imx6ul_tsc* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @REG_ADC_CFG, align 8
  %66 = add nsw i64 %64, %65
  %67 = call i32 @writel(i32 %61, i64 %66)
  %68 = load i32, i32* @ADC_AIEN, align 4
  %69 = load i32, i32* %4, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %4, align 4
  %71 = load i32, i32* @ADC_CONV_DISABLE, align 4
  %72 = load i32, i32* %4, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %4, align 4
  %74 = load i32, i32* %4, align 4
  %75 = load %struct.imx6ul_tsc*, %struct.imx6ul_tsc** %3, align 8
  %76 = getelementptr inbounds %struct.imx6ul_tsc, %struct.imx6ul_tsc* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @REG_ADC_HC0, align 8
  %79 = add nsw i64 %77, %78
  %80 = call i32 @writel(i32 %74, i64 %79)
  %81 = load %struct.imx6ul_tsc*, %struct.imx6ul_tsc** %3, align 8
  %82 = getelementptr inbounds %struct.imx6ul_tsc, %struct.imx6ul_tsc* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @REG_ADC_GC, align 8
  %85 = add nsw i64 %83, %84
  %86 = call i32 @readl(i64 %85)
  store i32 %86, i32* %5, align 4
  %87 = load i32, i32* @ADC_CAL, align 4
  %88 = load i32, i32* %5, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %5, align 4
  %90 = load %struct.imx6ul_tsc*, %struct.imx6ul_tsc** %3, align 8
  %91 = getelementptr inbounds %struct.imx6ul_tsc, %struct.imx6ul_tsc* %90, i32 0, i32 4
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %56
  %95 = load i32, i32* @ADC_AVGE, align 4
  %96 = load i32, i32* %5, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %5, align 4
  br label %98

98:                                               ; preds = %94, %56
  %99 = load i32, i32* %5, align 4
  %100 = load %struct.imx6ul_tsc*, %struct.imx6ul_tsc** %3, align 8
  %101 = getelementptr inbounds %struct.imx6ul_tsc, %struct.imx6ul_tsc* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @REG_ADC_GC, align 8
  %104 = add nsw i64 %102, %103
  %105 = call i32 @writel(i32 %99, i64 %104)
  %106 = load %struct.imx6ul_tsc*, %struct.imx6ul_tsc** %3, align 8
  %107 = getelementptr inbounds %struct.imx6ul_tsc, %struct.imx6ul_tsc* %106, i32 0, i32 3
  %108 = load i32, i32* @ADC_TIMEOUT, align 4
  %109 = call i64 @wait_for_completion_timeout(i32* %107, i32 %108)
  store i64 %109, i64* %8, align 8
  %110 = load i64, i64* %8, align 8
  %111 = icmp eq i64 %110, 0
  br i1 %111, label %112, label %119

112:                                              ; preds = %98
  %113 = load %struct.imx6ul_tsc*, %struct.imx6ul_tsc** %3, align 8
  %114 = getelementptr inbounds %struct.imx6ul_tsc, %struct.imx6ul_tsc* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @dev_err(i32 %115, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %117 = load i32, i32* @ETIMEDOUT, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %2, align 4
  br label %154

119:                                              ; preds = %98
  %120 = load %struct.imx6ul_tsc*, %struct.imx6ul_tsc** %3, align 8
  %121 = getelementptr inbounds %struct.imx6ul_tsc, %struct.imx6ul_tsc* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @REG_ADC_GS, align 8
  %124 = add nsw i64 %122, %123
  %125 = call i32 @readl(i64 %124)
  store i32 %125, i32* %6, align 4
  %126 = load i32, i32* %6, align 4
  %127 = load i32, i32* @ADC_CALF, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %137

130:                                              ; preds = %119
  %131 = load %struct.imx6ul_tsc*, %struct.imx6ul_tsc** %3, align 8
  %132 = getelementptr inbounds %struct.imx6ul_tsc, %struct.imx6ul_tsc* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @dev_err(i32 %133, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %135 = load i32, i32* @EINVAL, align 4
  %136 = sub nsw i32 0, %135
  store i32 %136, i32* %2, align 4
  br label %154

137:                                              ; preds = %119
  %138 = load %struct.imx6ul_tsc*, %struct.imx6ul_tsc** %3, align 8
  %139 = getelementptr inbounds %struct.imx6ul_tsc, %struct.imx6ul_tsc* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @REG_ADC_CFG, align 8
  %142 = add nsw i64 %140, %141
  %143 = call i32 @readl(i64 %142)
  store i32 %143, i32* %7, align 4
  %144 = load i32, i32* @ADC_HARDWARE_TRIGGER, align 4
  %145 = load i32, i32* %7, align 4
  %146 = or i32 %145, %144
  store i32 %146, i32* %7, align 4
  %147 = load i32, i32* %7, align 4
  %148 = load %struct.imx6ul_tsc*, %struct.imx6ul_tsc** %3, align 8
  %149 = getelementptr inbounds %struct.imx6ul_tsc, %struct.imx6ul_tsc* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* @REG_ADC_CFG, align 8
  %152 = add nsw i64 %150, %151
  %153 = call i32 @writel(i32 %147, i64 %152)
  store i32 0, i32* %2, align 4
  br label %154

154:                                              ; preds = %137, %130, %112
  %155 = load i32, i32* %2, align 4
  ret i32 %155
}

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
