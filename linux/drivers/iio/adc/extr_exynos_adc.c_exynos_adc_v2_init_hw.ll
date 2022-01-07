; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_exynos_adc.c_exynos_adc_v2_init_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_exynos_adc.c_exynos_adc_v2_init_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exynos_adc = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i64 }

@ADC_V2_CON1_SOFT_RESET = common dso_local global i32 0, align 4
@ADC_V2_CON2_OSEL = common dso_local global i32 0, align 4
@ADC_V2_CON2_ESEL = common dso_local global i32 0, align 4
@ADC_V2_CON2_HIGHF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.exynos_adc*)* @exynos_adc_v2_init_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exynos_adc_v2_init_hw(%struct.exynos_adc* %0) #0 {
  %2 = alloca %struct.exynos_adc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.exynos_adc* %0, %struct.exynos_adc** %2, align 8
  %5 = load %struct.exynos_adc*, %struct.exynos_adc** %2, align 8
  %6 = getelementptr inbounds %struct.exynos_adc, %struct.exynos_adc* %5, i32 0, i32 1
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %21

11:                                               ; preds = %1
  %12 = load %struct.exynos_adc*, %struct.exynos_adc** %2, align 8
  %13 = getelementptr inbounds %struct.exynos_adc, %struct.exynos_adc* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.exynos_adc*, %struct.exynos_adc** %2, align 8
  %16 = getelementptr inbounds %struct.exynos_adc, %struct.exynos_adc* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @regmap_write(i32 %14, i32 %19, i32 1)
  br label %21

21:                                               ; preds = %11, %1
  %22 = load i32, i32* @ADC_V2_CON1_SOFT_RESET, align 4
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* %3, align 4
  %24 = load %struct.exynos_adc*, %struct.exynos_adc** %2, align 8
  %25 = getelementptr inbounds %struct.exynos_adc, %struct.exynos_adc* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @ADC_V2_CON1(i32 %26)
  %28 = call i32 @writel(i32 %23, i32 %27)
  %29 = load i32, i32* @ADC_V2_CON2_OSEL, align 4
  %30 = load i32, i32* @ADC_V2_CON2_ESEL, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @ADC_V2_CON2_HIGHF, align 4
  %33 = or i32 %31, %32
  %34 = call i32 @ADC_V2_CON2_C_TIME(i32 0)
  %35 = or i32 %33, %34
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  %37 = load %struct.exynos_adc*, %struct.exynos_adc** %2, align 8
  %38 = getelementptr inbounds %struct.exynos_adc, %struct.exynos_adc* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @ADC_V2_CON2(i32 %39)
  %41 = call i32 @writel(i32 %36, i32 %40)
  %42 = load %struct.exynos_adc*, %struct.exynos_adc** %2, align 8
  %43 = getelementptr inbounds %struct.exynos_adc, %struct.exynos_adc* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @ADC_V2_INT_EN(i32 %44)
  %46 = call i32 @writel(i32 1, i32 %45)
  ret void
}

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @ADC_V2_CON1(i32) #1

declare dso_local i32 @ADC_V2_CON2_C_TIME(i32) #1

declare dso_local i32 @ADC_V2_CON2(i32) #1

declare dso_local i32 @ADC_V2_INT_EN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
