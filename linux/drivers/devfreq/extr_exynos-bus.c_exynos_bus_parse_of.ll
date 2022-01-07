; ModuleID = '/home/carl/AnghaBench/linux/drivers/devfreq/extr_exynos-bus.c_exynos_bus_parse_of.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/devfreq/extr_exynos-bus.c_exynos_bus_parse_of.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }
%struct.exynos_bus = type { %struct.dev_pm_opp*, i32, %struct.device* }
%struct.dev_pm_opp = type { i32 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"bus\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"failed to get bus clock\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"failed to get enable clock\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"failed to get OPP table\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"failed to find dev_pm_opp\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device_node*, %struct.exynos_bus*)* @exynos_bus_parse_of to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exynos_bus_parse_of(%struct.device_node* %0, %struct.exynos_bus* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.exynos_bus*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.dev_pm_opp*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.device_node* %0, %struct.device_node** %4, align 8
  store %struct.exynos_bus* %1, %struct.exynos_bus** %5, align 8
  %10 = load %struct.exynos_bus*, %struct.exynos_bus** %5, align 8
  %11 = getelementptr inbounds %struct.exynos_bus, %struct.exynos_bus* %10, i32 0, i32 2
  %12 = load %struct.device*, %struct.device** %11, align 8
  store %struct.device* %12, %struct.device** %6, align 8
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = call %struct.dev_pm_opp* @devm_clk_get(%struct.device* %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.exynos_bus*, %struct.exynos_bus** %5, align 8
  %16 = getelementptr inbounds %struct.exynos_bus, %struct.exynos_bus* %15, i32 0, i32 0
  store %struct.dev_pm_opp* %14, %struct.dev_pm_opp** %16, align 8
  %17 = load %struct.exynos_bus*, %struct.exynos_bus** %5, align 8
  %18 = getelementptr inbounds %struct.exynos_bus, %struct.exynos_bus* %17, i32 0, i32 0
  %19 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %18, align 8
  %20 = call i64 @IS_ERR(%struct.dev_pm_opp* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %2
  %23 = load %struct.device*, %struct.device** %6, align 8
  %24 = call i32 @dev_err(%struct.device* %23, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %25 = load %struct.exynos_bus*, %struct.exynos_bus** %5, align 8
  %26 = getelementptr inbounds %struct.exynos_bus, %struct.exynos_bus* %25, i32 0, i32 0
  %27 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %26, align 8
  %28 = call i32 @PTR_ERR(%struct.dev_pm_opp* %27)
  store i32 %28, i32* %3, align 4
  br label %79

29:                                               ; preds = %2
  %30 = load %struct.exynos_bus*, %struct.exynos_bus** %5, align 8
  %31 = getelementptr inbounds %struct.exynos_bus, %struct.exynos_bus* %30, i32 0, i32 0
  %32 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %31, align 8
  %33 = call i32 @clk_prepare_enable(%struct.dev_pm_opp* %32)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %29
  %37 = load %struct.device*, %struct.device** %6, align 8
  %38 = call i32 @dev_err(%struct.device* %37, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %39 = load i32, i32* %9, align 4
  store i32 %39, i32* %3, align 4
  br label %79

40:                                               ; preds = %29
  %41 = load %struct.device*, %struct.device** %6, align 8
  %42 = call i32 @dev_pm_opp_of_add_table(%struct.device* %41)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load %struct.device*, %struct.device** %6, align 8
  %47 = call i32 @dev_err(%struct.device* %46, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %73

48:                                               ; preds = %40
  %49 = load %struct.exynos_bus*, %struct.exynos_bus** %5, align 8
  %50 = getelementptr inbounds %struct.exynos_bus, %struct.exynos_bus* %49, i32 0, i32 0
  %51 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %50, align 8
  %52 = call i64 @clk_get_rate(%struct.dev_pm_opp* %51)
  store i64 %52, i64* %8, align 8
  %53 = load %struct.device*, %struct.device** %6, align 8
  %54 = call %struct.dev_pm_opp* @devfreq_recommended_opp(%struct.device* %53, i64* %8, i32 0)
  store %struct.dev_pm_opp* %54, %struct.dev_pm_opp** %7, align 8
  %55 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %7, align 8
  %56 = call i64 @IS_ERR(%struct.dev_pm_opp* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %48
  %59 = load %struct.device*, %struct.device** %6, align 8
  %60 = call i32 @dev_err(%struct.device* %59, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %61 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %7, align 8
  %62 = call i32 @PTR_ERR(%struct.dev_pm_opp* %61)
  store i32 %62, i32* %9, align 4
  br label %70

63:                                               ; preds = %48
  %64 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %7, align 8
  %65 = call i32 @dev_pm_opp_get_freq(%struct.dev_pm_opp* %64)
  %66 = load %struct.exynos_bus*, %struct.exynos_bus** %5, align 8
  %67 = getelementptr inbounds %struct.exynos_bus, %struct.exynos_bus* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 8
  %68 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %7, align 8
  %69 = call i32 @dev_pm_opp_put(%struct.dev_pm_opp* %68)
  store i32 0, i32* %3, align 4
  br label %79

70:                                               ; preds = %58
  %71 = load %struct.device*, %struct.device** %6, align 8
  %72 = call i32 @dev_pm_opp_of_remove_table(%struct.device* %71)
  br label %73

73:                                               ; preds = %70, %45
  %74 = load %struct.exynos_bus*, %struct.exynos_bus** %5, align 8
  %75 = getelementptr inbounds %struct.exynos_bus, %struct.exynos_bus* %74, i32 0, i32 0
  %76 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %75, align 8
  %77 = call i32 @clk_disable_unprepare(%struct.dev_pm_opp* %76)
  %78 = load i32, i32* %9, align 4
  store i32 %78, i32* %3, align 4
  br label %79

79:                                               ; preds = %73, %63, %36, %22
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local %struct.dev_pm_opp* @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.dev_pm_opp*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @PTR_ERR(%struct.dev_pm_opp*) #1

declare dso_local i32 @clk_prepare_enable(%struct.dev_pm_opp*) #1

declare dso_local i32 @dev_pm_opp_of_add_table(%struct.device*) #1

declare dso_local i64 @clk_get_rate(%struct.dev_pm_opp*) #1

declare dso_local %struct.dev_pm_opp* @devfreq_recommended_opp(%struct.device*, i64*, i32) #1

declare dso_local i32 @dev_pm_opp_get_freq(%struct.dev_pm_opp*) #1

declare dso_local i32 @dev_pm_opp_put(%struct.dev_pm_opp*) #1

declare dso_local i32 @dev_pm_opp_of_remove_table(%struct.device*) #1

declare dso_local i32 @clk_disable_unprepare(%struct.dev_pm_opp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
