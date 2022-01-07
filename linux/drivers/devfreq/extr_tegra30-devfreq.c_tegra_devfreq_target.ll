; ModuleID = '/home/carl/AnghaBench/linux/drivers/devfreq/extr_tegra30-devfreq.c_tegra_devfreq_target.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/devfreq/extr_tegra30-devfreq.c_tegra_devfreq_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.tegra_devfreq = type { i32, %struct.devfreq* }
%struct.devfreq = type { i64 }
%struct.dev_pm_opp = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"Failed to find opp for %lu Hz\0A\00", align 1
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
  br i1 %24, label %25, label %32

25:                                               ; preds = %3
  %26 = load %struct.device*, %struct.device** %5, align 8
  %27 = load i64*, i64** %6, align 8
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @dev_err(%struct.device* %26, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %28)
  %30 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %10, align 8
  %31 = call i32 @PTR_ERR(%struct.dev_pm_opp* %30)
  store i32 %31, i32* %4, align 4
  br label %64

32:                                               ; preds = %3
  %33 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %10, align 8
  %34 = call i64 @dev_pm_opp_get_freq(%struct.dev_pm_opp* %33)
  store i64 %34, i64* %11, align 8
  %35 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %10, align 8
  %36 = call i32 @dev_pm_opp_put(%struct.dev_pm_opp* %35)
  %37 = load %struct.tegra_devfreq*, %struct.tegra_devfreq** %8, align 8
  %38 = getelementptr inbounds %struct.tegra_devfreq, %struct.tegra_devfreq* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i64, i64* %11, align 8
  %41 = call i32 @clk_set_min_rate(i32 %39, i64 %40)
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* %12, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %32
  %45 = load i32, i32* %12, align 4
  store i32 %45, i32* %4, align 4
  br label %64

46:                                               ; preds = %32
  %47 = load %struct.tegra_devfreq*, %struct.tegra_devfreq** %8, align 8
  %48 = getelementptr inbounds %struct.tegra_devfreq, %struct.tegra_devfreq* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @clk_set_rate(i32 %49, i32 0)
  store i32 %50, i32* %12, align 4
  %51 = load i32, i32* %12, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %46
  br label %55

54:                                               ; preds = %46
  store i32 0, i32* %4, align 4
  br label %64

55:                                               ; preds = %53
  %56 = load %struct.tegra_devfreq*, %struct.tegra_devfreq** %8, align 8
  %57 = getelementptr inbounds %struct.tegra_devfreq, %struct.tegra_devfreq* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.devfreq*, %struct.devfreq** %9, align 8
  %60 = getelementptr inbounds %struct.devfreq, %struct.devfreq* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @clk_set_min_rate(i32 %58, i64 %61)
  %63 = load i32, i32* %12, align 4
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %55, %54, %44, %25
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local %struct.tegra_devfreq* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.dev_pm_opp* @devfreq_recommended_opp(%struct.device*, i64*, i32) #1

declare dso_local i64 @IS_ERR(%struct.dev_pm_opp*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i64) #1

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
