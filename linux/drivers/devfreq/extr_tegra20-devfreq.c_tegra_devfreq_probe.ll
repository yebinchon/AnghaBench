; ModuleID = '/home/carl/AnghaBench/linux/drivers/devfreq/extr_tegra20-devfreq.c_tegra_devfreq_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/devfreq/extr_tegra20-devfreq.c_tegra_devfreq_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.tegra_devfreq = type { %struct.tegra_mc*, i64, %struct.tegra_mc* }
%struct.tegra_mc = type { i64 }

@.str = private unnamed_addr constant [37 x i8] c"failed to get memory controller: %d\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"emc\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"failed to get emc clock: %d\0A\00", align 1
@ULONG_MAX = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [23 x i8] c"failed to add opp: %d\0A\00", align 1
@MC_STAT_CONTROL = common dso_local global i64 0, align 8
@MC_STAT_EMC_CONTROL = common dso_local global i64 0, align 8
@MC_STAT_EMC_CLOCK_LIMIT = common dso_local global i64 0, align 8
@tegra_devfreq_profile = common dso_local global i32 0, align 4
@DEVFREQ_GOV_SIMPLE_ONDEMAND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @tegra_devfreq_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_devfreq_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.tegra_devfreq*, align 8
  %5 = alloca %struct.tegra_mc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = call %struct.tegra_mc* (...) @tegra_get_memory_controller()
  store %struct.tegra_mc* %9, %struct.tegra_mc** %5, align 8
  %10 = load %struct.tegra_mc*, %struct.tegra_mc** %5, align 8
  %11 = call i64 @IS_ERR(%struct.tegra_mc* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %1
  %14 = load %struct.tegra_mc*, %struct.tegra_mc** %5, align 8
  %15 = call i32 @PTR_ERR(%struct.tegra_mc* %14)
  store i32 %15, i32* %8, align 4
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 0
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @dev_err(i32* %17, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* %8, align 4
  store i32 %20, i32* %2, align 4
  br label %132

21:                                               ; preds = %1
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %22, i32 0, i32 0
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.tegra_devfreq* @devm_kzalloc(i32* %23, i32 24, i32 %24)
  store %struct.tegra_devfreq* %25, %struct.tegra_devfreq** %4, align 8
  %26 = load %struct.tegra_devfreq*, %struct.tegra_devfreq** %4, align 8
  %27 = icmp ne %struct.tegra_devfreq* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %21
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %132

31:                                               ; preds = %21
  %32 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %33 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %32, i32 0, i32 0
  %34 = call %struct.tegra_mc* @devm_clk_get(i32* %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %35 = load %struct.tegra_devfreq*, %struct.tegra_devfreq** %4, align 8
  %36 = getelementptr inbounds %struct.tegra_devfreq, %struct.tegra_devfreq* %35, i32 0, i32 2
  store %struct.tegra_mc* %34, %struct.tegra_mc** %36, align 8
  %37 = load %struct.tegra_devfreq*, %struct.tegra_devfreq** %4, align 8
  %38 = getelementptr inbounds %struct.tegra_devfreq, %struct.tegra_devfreq* %37, i32 0, i32 2
  %39 = load %struct.tegra_mc*, %struct.tegra_mc** %38, align 8
  %40 = call i64 @IS_ERR(%struct.tegra_mc* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %31
  %43 = load %struct.tegra_devfreq*, %struct.tegra_devfreq** %4, align 8
  %44 = getelementptr inbounds %struct.tegra_devfreq, %struct.tegra_devfreq* %43, i32 0, i32 2
  %45 = load %struct.tegra_mc*, %struct.tegra_mc** %44, align 8
  %46 = call i32 @PTR_ERR(%struct.tegra_mc* %45)
  store i32 %46, i32* %8, align 4
  %47 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %48 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %47, i32 0, i32 0
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @dev_err(i32* %48, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* %8, align 4
  store i32 %51, i32* %2, align 4
  br label %132

52:                                               ; preds = %31
  %53 = load %struct.tegra_mc*, %struct.tegra_mc** %5, align 8
  %54 = getelementptr inbounds %struct.tegra_mc, %struct.tegra_mc* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.tegra_devfreq*, %struct.tegra_devfreq** %4, align 8
  %57 = getelementptr inbounds %struct.tegra_devfreq, %struct.tegra_devfreq* %56, i32 0, i32 1
  store i64 %55, i64* %57, align 8
  %58 = load %struct.tegra_devfreq*, %struct.tegra_devfreq** %4, align 8
  %59 = getelementptr inbounds %struct.tegra_devfreq, %struct.tegra_devfreq* %58, i32 0, i32 2
  %60 = load %struct.tegra_mc*, %struct.tegra_mc** %59, align 8
  %61 = load i64, i64* @ULONG_MAX, align 8
  %62 = call i64 @clk_round_rate(%struct.tegra_mc* %60, i64 %61)
  store i64 %62, i64* %6, align 8
  store i64 0, i64* %7, align 8
  br label %63

63:                                               ; preds = %85, %52
  %64 = load i64, i64* %7, align 8
  %65 = load i64, i64* %6, align 8
  %66 = icmp ule i64 %64, %65
  br i1 %66, label %67, label %88

67:                                               ; preds = %63
  %68 = load %struct.tegra_devfreq*, %struct.tegra_devfreq** %4, align 8
  %69 = getelementptr inbounds %struct.tegra_devfreq, %struct.tegra_devfreq* %68, i32 0, i32 2
  %70 = load %struct.tegra_mc*, %struct.tegra_mc** %69, align 8
  %71 = load i64, i64* %7, align 8
  %72 = call i64 @clk_round_rate(%struct.tegra_mc* %70, i64 %71)
  store i64 %72, i64* %7, align 8
  %73 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %74 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %73, i32 0, i32 0
  %75 = load i64, i64* %7, align 8
  %76 = call i32 @dev_pm_opp_add(i32* %74, i64 %75, i32 0)
  store i32 %76, i32* %8, align 4
  %77 = load i32, i32* %8, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %67
  %80 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %81 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %80, i32 0, i32 0
  %82 = load i32, i32* %8, align 4
  %83 = call i32 @dev_err(i32* %81, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %82)
  br label %127

84:                                               ; preds = %67
  br label %85

85:                                               ; preds = %84
  %86 = load i64, i64* %7, align 8
  %87 = add i64 %86, 1
  store i64 %87, i64* %7, align 8
  br label %63

88:                                               ; preds = %63
  %89 = load %struct.tegra_devfreq*, %struct.tegra_devfreq** %4, align 8
  %90 = getelementptr inbounds %struct.tegra_devfreq, %struct.tegra_devfreq* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @MC_STAT_CONTROL, align 8
  %93 = add nsw i64 %91, %92
  %94 = call i32 @writel_relaxed(i32 0, i64 %93)
  %95 = load %struct.tegra_devfreq*, %struct.tegra_devfreq** %4, align 8
  %96 = getelementptr inbounds %struct.tegra_devfreq, %struct.tegra_devfreq* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @MC_STAT_EMC_CONTROL, align 8
  %99 = add nsw i64 %97, %98
  %100 = call i32 @writel_relaxed(i32 0, i64 %99)
  %101 = load %struct.tegra_devfreq*, %struct.tegra_devfreq** %4, align 8
  %102 = getelementptr inbounds %struct.tegra_devfreq, %struct.tegra_devfreq* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @MC_STAT_EMC_CLOCK_LIMIT, align 8
  %105 = add nsw i64 %103, %104
  %106 = call i32 @writel_relaxed(i32 -1, i64 %105)
  %107 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %108 = load %struct.tegra_devfreq*, %struct.tegra_devfreq** %4, align 8
  %109 = call i32 @platform_set_drvdata(%struct.platform_device* %107, %struct.tegra_devfreq* %108)
  %110 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %111 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %110, i32 0, i32 0
  %112 = load i32, i32* @DEVFREQ_GOV_SIMPLE_ONDEMAND, align 4
  %113 = call %struct.tegra_mc* @devfreq_add_device(i32* %111, i32* @tegra_devfreq_profile, i32 %112, i32* null)
  %114 = load %struct.tegra_devfreq*, %struct.tegra_devfreq** %4, align 8
  %115 = getelementptr inbounds %struct.tegra_devfreq, %struct.tegra_devfreq* %114, i32 0, i32 0
  store %struct.tegra_mc* %113, %struct.tegra_mc** %115, align 8
  %116 = load %struct.tegra_devfreq*, %struct.tegra_devfreq** %4, align 8
  %117 = getelementptr inbounds %struct.tegra_devfreq, %struct.tegra_devfreq* %116, i32 0, i32 0
  %118 = load %struct.tegra_mc*, %struct.tegra_mc** %117, align 8
  %119 = call i64 @IS_ERR(%struct.tegra_mc* %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %126

121:                                              ; preds = %88
  %122 = load %struct.tegra_devfreq*, %struct.tegra_devfreq** %4, align 8
  %123 = getelementptr inbounds %struct.tegra_devfreq, %struct.tegra_devfreq* %122, i32 0, i32 0
  %124 = load %struct.tegra_mc*, %struct.tegra_mc** %123, align 8
  %125 = call i32 @PTR_ERR(%struct.tegra_mc* %124)
  store i32 %125, i32* %8, align 4
  br label %127

126:                                              ; preds = %88
  store i32 0, i32* %2, align 4
  br label %132

127:                                              ; preds = %121, %79
  %128 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %129 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %128, i32 0, i32 0
  %130 = call i32 @dev_pm_opp_remove_all_dynamic(i32* %129)
  %131 = load i32, i32* %8, align 4
  store i32 %131, i32* %2, align 4
  br label %132

132:                                              ; preds = %127, %126, %42, %28, %13
  %133 = load i32, i32* %2, align 4
  ret i32 %133
}

declare dso_local %struct.tegra_mc* @tegra_get_memory_controller(...) #1

declare dso_local i64 @IS_ERR(%struct.tegra_mc*) #1

declare dso_local i32 @PTR_ERR(%struct.tegra_mc*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local %struct.tegra_devfreq* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local %struct.tegra_mc* @devm_clk_get(i32*, i8*) #1

declare dso_local i64 @clk_round_rate(%struct.tegra_mc*, i64) #1

declare dso_local i32 @dev_pm_opp_add(i32*, i64, i32) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.tegra_devfreq*) #1

declare dso_local %struct.tegra_mc* @devfreq_add_device(i32*, i32*, i32, i32*) #1

declare dso_local i32 @dev_pm_opp_remove_all_dynamic(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
