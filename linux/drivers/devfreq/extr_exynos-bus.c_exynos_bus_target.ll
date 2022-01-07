; ModuleID = '/home/carl/AnghaBench/linux/drivers/devfreq/extr_exynos-bus.c_exynos_bus_target.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/devfreq/extr_exynos-bus.c_exynos_bus_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.exynos_bus = type { i64, i32 }
%struct.dev_pm_opp = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"failed to get recommended opp instance\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i64*, i32)* @exynos_bus_target to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exynos_bus_target(%struct.device* %0, i64* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.exynos_bus*, align 8
  %9 = alloca %struct.dev_pm_opp*, align 8
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = call %struct.exynos_bus* @dev_get_drvdata(%struct.device* %11)
  store %struct.exynos_bus* %12, %struct.exynos_bus** %8, align 8
  store i32 0, i32* %10, align 4
  %13 = load %struct.device*, %struct.device** %5, align 8
  %14 = load i64*, i64** %6, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call %struct.dev_pm_opp* @devfreq_recommended_opp(%struct.device* %13, i64* %14, i32 %15)
  store %struct.dev_pm_opp* %16, %struct.dev_pm_opp** %9, align 8
  %17 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %9, align 8
  %18 = call i64 @IS_ERR(%struct.dev_pm_opp* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %3
  %21 = load %struct.device*, %struct.device** %5, align 8
  %22 = call i32 @dev_err(%struct.device* %21, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %9, align 8
  %24 = call i32 @PTR_ERR(%struct.dev_pm_opp* %23)
  store i32 %24, i32* %4, align 4
  br label %47

25:                                               ; preds = %3
  %26 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %9, align 8
  %27 = call i32 @dev_pm_opp_put(%struct.dev_pm_opp* %26)
  %28 = load %struct.exynos_bus*, %struct.exynos_bus** %8, align 8
  %29 = getelementptr inbounds %struct.exynos_bus, %struct.exynos_bus* %28, i32 0, i32 1
  %30 = call i32 @mutex_lock(i32* %29)
  %31 = load %struct.device*, %struct.device** %5, align 8
  %32 = load i64*, i64** %6, align 8
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @dev_pm_opp_set_rate(%struct.device* %31, i64 %33)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %25
  %38 = load i64*, i64** %6, align 8
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.exynos_bus*, %struct.exynos_bus** %8, align 8
  %41 = getelementptr inbounds %struct.exynos_bus, %struct.exynos_bus* %40, i32 0, i32 0
  store i64 %39, i64* %41, align 8
  br label %42

42:                                               ; preds = %37, %25
  %43 = load %struct.exynos_bus*, %struct.exynos_bus** %8, align 8
  %44 = getelementptr inbounds %struct.exynos_bus, %struct.exynos_bus* %43, i32 0, i32 1
  %45 = call i32 @mutex_unlock(i32* %44)
  %46 = load i32, i32* %10, align 4
  store i32 %46, i32* %4, align 4
  br label %47

47:                                               ; preds = %42, %20
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local %struct.exynos_bus* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.dev_pm_opp* @devfreq_recommended_opp(%struct.device*, i64*, i32) #1

declare dso_local i64 @IS_ERR(%struct.dev_pm_opp*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @PTR_ERR(%struct.dev_pm_opp*) #1

declare dso_local i32 @dev_pm_opp_put(%struct.dev_pm_opp*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dev_pm_opp_set_rate(%struct.device*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
