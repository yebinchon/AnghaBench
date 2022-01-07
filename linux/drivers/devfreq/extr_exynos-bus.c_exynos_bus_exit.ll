; ModuleID = '/home/carl/AnghaBench/linux/drivers/devfreq/extr_exynos-bus.c_exynos_bus_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/devfreq/extr_exynos-bus.c_exynos_bus_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.exynos_bus = type { i32*, i32 }

@.str = private unnamed_addr constant [45 x i8] c"failed to disable the devfreq-event devices\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*)* @exynos_bus_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exynos_bus_exit(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.exynos_bus*, align 8
  %4 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %5 = load %struct.device*, %struct.device** %2, align 8
  %6 = call %struct.exynos_bus* @dev_get_drvdata(%struct.device* %5)
  store %struct.exynos_bus* %6, %struct.exynos_bus** %3, align 8
  %7 = load %struct.exynos_bus*, %struct.exynos_bus** %3, align 8
  %8 = call i32 @exynos_bus_disable_edev(%struct.exynos_bus* %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load %struct.device*, %struct.device** %2, align 8
  %13 = call i32 @dev_warn(%struct.device* %12, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  br label %14

14:                                               ; preds = %11, %1
  %15 = load %struct.device*, %struct.device** %2, align 8
  %16 = call i32 @dev_pm_opp_of_remove_table(%struct.device* %15)
  %17 = load %struct.exynos_bus*, %struct.exynos_bus** %3, align 8
  %18 = getelementptr inbounds %struct.exynos_bus, %struct.exynos_bus* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @clk_disable_unprepare(i32 %19)
  %21 = load %struct.exynos_bus*, %struct.exynos_bus** %3, align 8
  %22 = getelementptr inbounds %struct.exynos_bus, %struct.exynos_bus* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %32

25:                                               ; preds = %14
  %26 = load %struct.exynos_bus*, %struct.exynos_bus** %3, align 8
  %27 = getelementptr inbounds %struct.exynos_bus, %struct.exynos_bus* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = call i32 @dev_pm_opp_put_regulators(i32* %28)
  %30 = load %struct.exynos_bus*, %struct.exynos_bus** %3, align 8
  %31 = getelementptr inbounds %struct.exynos_bus, %struct.exynos_bus* %30, i32 0, i32 0
  store i32* null, i32** %31, align 8
  br label %32

32:                                               ; preds = %25, %14
  ret void
}

declare dso_local %struct.exynos_bus* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @exynos_bus_disable_edev(%struct.exynos_bus*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

declare dso_local i32 @dev_pm_opp_of_remove_table(%struct.device*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @dev_pm_opp_put_regulators(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
