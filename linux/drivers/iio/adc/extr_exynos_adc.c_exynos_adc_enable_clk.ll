; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_exynos_adc.c_exynos_adc_enable_clk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_exynos_adc.c_exynos_adc_enable_clk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exynos_adc = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [31 x i8] c"failed enabling adc clock: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"failed enabling sclk_adc clock: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.exynos_adc*)* @exynos_adc_enable_clk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exynos_adc_enable_clk(%struct.exynos_adc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.exynos_adc*, align 8
  %4 = alloca i32, align 4
  store %struct.exynos_adc* %0, %struct.exynos_adc** %3, align 8
  %5 = load %struct.exynos_adc*, %struct.exynos_adc** %3, align 8
  %6 = getelementptr inbounds %struct.exynos_adc, %struct.exynos_adc* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @clk_enable(i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %1
  %12 = load %struct.exynos_adc*, %struct.exynos_adc** %3, align 8
  %13 = getelementptr inbounds %struct.exynos_adc, %struct.exynos_adc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @dev_err(i32 %14, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* %4, align 4
  store i32 %17, i32* %2, align 4
  br label %45

18:                                               ; preds = %1
  %19 = load %struct.exynos_adc*, %struct.exynos_adc** %3, align 8
  %20 = getelementptr inbounds %struct.exynos_adc, %struct.exynos_adc* %19, i32 0, i32 3
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %44

25:                                               ; preds = %18
  %26 = load %struct.exynos_adc*, %struct.exynos_adc** %3, align 8
  %27 = getelementptr inbounds %struct.exynos_adc, %struct.exynos_adc* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @clk_enable(i32 %28)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %43

32:                                               ; preds = %25
  %33 = load %struct.exynos_adc*, %struct.exynos_adc** %3, align 8
  %34 = getelementptr inbounds %struct.exynos_adc, %struct.exynos_adc* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @clk_disable(i32 %35)
  %37 = load %struct.exynos_adc*, %struct.exynos_adc** %3, align 8
  %38 = getelementptr inbounds %struct.exynos_adc, %struct.exynos_adc* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @dev_err(i32 %39, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* %4, align 4
  store i32 %42, i32* %2, align 4
  br label %45

43:                                               ; preds = %25
  br label %44

44:                                               ; preds = %43, %18
  store i32 0, i32* %2, align 4
  br label %45

45:                                               ; preds = %44, %32, %11
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @clk_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
