; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_exynos_adc.c_exynos_adc_v1_exit_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_exynos_adc.c_exynos_adc_v1_exit_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exynos_adc = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i64 }

@ADC_V1_CON_STANDBY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.exynos_adc*)* @exynos_adc_v1_exit_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exynos_adc_v1_exit_hw(%struct.exynos_adc* %0) #0 {
  %2 = alloca %struct.exynos_adc*, align 8
  %3 = alloca i32, align 4
  store %struct.exynos_adc* %0, %struct.exynos_adc** %2, align 8
  %4 = load %struct.exynos_adc*, %struct.exynos_adc** %2, align 8
  %5 = getelementptr inbounds %struct.exynos_adc, %struct.exynos_adc* %4, i32 0, i32 1
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %20

10:                                               ; preds = %1
  %11 = load %struct.exynos_adc*, %struct.exynos_adc** %2, align 8
  %12 = getelementptr inbounds %struct.exynos_adc, %struct.exynos_adc* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.exynos_adc*, %struct.exynos_adc** %2, align 8
  %15 = getelementptr inbounds %struct.exynos_adc, %struct.exynos_adc* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @regmap_write(i32 %13, i32 %18, i32 0)
  br label %20

20:                                               ; preds = %10, %1
  %21 = load %struct.exynos_adc*, %struct.exynos_adc** %2, align 8
  %22 = getelementptr inbounds %struct.exynos_adc, %struct.exynos_adc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @ADC_V1_CON(i32 %23)
  %25 = call i32 @readl(i32 %24)
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* @ADC_V1_CON_STANDBY, align 4
  %27 = load i32, i32* %3, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %3, align 4
  %29 = load i32, i32* %3, align 4
  %30 = load %struct.exynos_adc*, %struct.exynos_adc** %2, align 8
  %31 = getelementptr inbounds %struct.exynos_adc, %struct.exynos_adc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @ADC_V1_CON(i32 %32)
  %34 = call i32 @writel(i32 %29, i32 %33)
  ret void
}

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @ADC_V1_CON(i32) #1

declare dso_local i32 @writel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
