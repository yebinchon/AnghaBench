; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_exynos_adc.c_exynos_adc_v1_start_conv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_exynos_adc.c_exynos_adc_v1_start_conv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exynos_adc = type { i32 }

@ADC_CON_EN_START = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.exynos_adc*, i64)* @exynos_adc_v1_start_conv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exynos_adc_v1_start_conv(%struct.exynos_adc* %0, i64 %1) #0 {
  %3 = alloca %struct.exynos_adc*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.exynos_adc* %0, %struct.exynos_adc** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* %4, align 8
  %7 = load %struct.exynos_adc*, %struct.exynos_adc** %3, align 8
  %8 = getelementptr inbounds %struct.exynos_adc, %struct.exynos_adc* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @ADC_V1_MUX(i32 %9)
  %11 = call i32 @writel(i64 %6, i32 %10)
  %12 = load %struct.exynos_adc*, %struct.exynos_adc** %3, align 8
  %13 = getelementptr inbounds %struct.exynos_adc, %struct.exynos_adc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @ADC_V1_CON(i32 %14)
  %16 = call i64 @readl(i32 %15)
  store i64 %16, i64* %5, align 8
  %17 = load i64, i64* %5, align 8
  %18 = load i64, i64* @ADC_CON_EN_START, align 8
  %19 = or i64 %17, %18
  %20 = load %struct.exynos_adc*, %struct.exynos_adc** %3, align 8
  %21 = getelementptr inbounds %struct.exynos_adc, %struct.exynos_adc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @ADC_V1_CON(i32 %22)
  %24 = call i32 @writel(i64 %19, i32 %23)
  ret void
}

declare dso_local i32 @writel(i64, i32) #1

declare dso_local i32 @ADC_V1_MUX(i32) #1

declare dso_local i64 @readl(i32) #1

declare dso_local i32 @ADC_V1_CON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
