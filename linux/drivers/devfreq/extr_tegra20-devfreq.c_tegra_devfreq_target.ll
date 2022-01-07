; ModuleID = '/home/carl/AnghaBench/linux/drivers/devfreq/extr_tegra20-devfreq.c_tegra_devfreq_target.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/devfreq/extr_tegra20-devfreq.c_tegra_devfreq_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.tegra_devfreq = type { i32, %struct.devfreq* }
%struct.devfreq = type { i64 }
%struct.dev_pm_opp = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i64*, i32)* @tegra_devfreq_target to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_devfreq_target(%struct.device* %0, i64* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.tegra_devfreq*, align 8
  %9 = alloca %struct.devfreq*, align 8
  %10 = alloca %struct.dev_pm_opp*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.device*, %struct.device** %5, align 8
  %14 = call %struct.tegra_devfreq* @dev_get_drvdata(%struct.device* %13)
  store %struct.tegra_devfreq* %14, %struct.tegra_devfreq** %8, align 8
  %15 = load %struct.tegra_devfreq*, %struct.tegra_devfreq** %8, align 8
  %16 = getelementptr inbounds %struct.tegra_devfreq, %struct.tegra_devfreq* %15, i32 0, i32 1
  %17 = load %struct.devfreq*, %struct.devfreq** %16, align 8
  store %struct.devfreq* %17, %struct.devfreq** %9, align 8
  %18 = load %struct.device*, %struct.device** %5, align 8
  %19 = load i64*, i64** %6, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call %struct.dev_pm_opp* @devfreq_recommended_opp(%struct.device* %18, i64* %19, i32 %20)
  store %struct.dev_pm_opp* %21, %struct.dev_pm_opp** %10, align 8
  %22 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %10, align 8
  %23 = call i64 @IS_ERR(%struct.dev_pm_opp* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %3
  %26 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %10, align 8
  %27 = call i32 @PTR_ERR(%struct.dev_pm_opp* %26)
  store i32 %27, i32* %4, align 4
  br label %60

28:                                               ; preds = %3
  %29 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %10, align 8
  %30 = call i64 @dev_pm_opp_get_freq(%struct.dev_pm_opp* %29)
  store i64 %30, i64* %11, align 8
  %31 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %10, align 8
  %32 = call i32 @dev_pm_opp_put(%struct.dev_pm_opp* %31)
  %33 = load %struct.tegra_devfreq*, %struct.tegra_devfreq** %8, align 8
  %34 = getelementptr inbounds %struct.tegra_devfreq, %struct.tegra_devfreq* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i64, i64* %11, align 8
  %37 = call i32 @clk_set_min_rate(i32 %35, i64 %36)
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* %12, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %28
  %41 = load i32, i32* %12, align 4
  store i32 %41, i32* %4, align 4
  br label %60

42:                                               ; preds = %28
  %43 = load %struct.tegra_devfreq*, %struct.tegra_devfreq** %8, align 8
  %44 = getelementptr inbounds %struct.tegra_devfreq, %struct.tegra_devfreq* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @clk_set_rate(i32 %45, i32 0)
  store i32 %46, i32* %12, align 4
  %47 = load i32, i32* %12, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %42
  br label %51

50:                                               ; preds = %42
  store i32 0, i32* %4, align 4
  br label %60

51:                                               ; preds = %49
  %52 = load %struct.tegra_devfreq*, %struct.tegra_devfreq** %8, align 8
  %53 = getelementptr inbounds %struct.tegra_devfreq, %struct.tegra_devfreq* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.devfreq*, %struct.devfreq** %9, align 8
  %56 = getelementptr inbounds %struct.devfreq, %struct.devfreq* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @clk_set_min_rate(i32 %54, i64 %57)
  %59 = load i32, i32* %12, align 4
  store i32 %59, i32* %4, align 4
  br label %60

60:                                               ; preds = %51, %50, %40, %25
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local %struct.tegra_devfreq* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.dev_pm_opp* @devfreq_recommended_opp(%struct.device*, i64*, i32) #1

declare dso_local i64 @IS_ERR(%struct.dev_pm_opp*) #1

declare dso_local i32 @PTR_ERR(%struct.dev_pm_opp*) #1

declare dso_local i64 @dev_pm_opp_get_freq(%struct.dev_pm_opp*) #1

declare dso_local i32 @dev_pm_opp_put(%struct.dev_pm_opp*) #1

declare dso_local i32 @clk_set_min_rate(i32, i64) #1

declare dso_local i32 @clk_set_rate(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
