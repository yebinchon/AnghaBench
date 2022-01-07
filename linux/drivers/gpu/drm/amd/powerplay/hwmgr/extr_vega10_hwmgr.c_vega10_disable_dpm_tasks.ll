; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega10_hwmgr.c_vega10_disable_dpm_tasks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega10_hwmgr.c_vega10_disable_dpm_tasks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i32 }

@PHM_PlatformCaps_ThermalController = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Failed to disable power containment!\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Failed to disable didt config!\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Failed to disable AVFS!\00", align 1
@SMC_DPM_FEATURES = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"Failed to stop DPM!\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"Failed to disable deep sleep!\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"Failed to disable ulv!\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"Failed to disable acg!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*)* @vega10_disable_dpm_tasks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vega10_disable_dpm_tasks(%struct.pp_hwmgr* %0) #0 {
  %2 = alloca %struct.pp_hwmgr*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = load i32, i32* @PHM_PlatformCaps_ThermalController, align 4
  %6 = call i64 @PP_CAP(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %10 = call i32 @vega10_disable_thermal_protection(%struct.pp_hwmgr* %9)
  br label %11

11:                                               ; preds = %8, %1
  %12 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %13 = call i32 @vega10_disable_power_containment(%struct.pp_hwmgr* %12)
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = icmp eq i32 %14, 0
  %16 = zext i1 %15 to i32
  %17 = load i32, i32* %3, align 4
  store i32 %17, i32* %4, align 4
  %18 = call i32 @PP_ASSERT_WITH_CODE(i32 %16, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %20 = call i32 @vega10_disable_didt_config(%struct.pp_hwmgr* %19)
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* %3, align 4
  %22 = icmp eq i32 %21, 0
  %23 = zext i1 %22 to i32
  %24 = load i32, i32* %3, align 4
  store i32 %24, i32* %4, align 4
  %25 = call i32 @PP_ASSERT_WITH_CODE(i32 %23, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  %26 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %27 = call i32 @vega10_avfs_enable(%struct.pp_hwmgr* %26, i32 0)
  store i32 %27, i32* %3, align 4
  %28 = load i32, i32* %3, align 4
  %29 = icmp eq i32 %28, 0
  %30 = zext i1 %29 to i32
  %31 = load i32, i32* %3, align 4
  store i32 %31, i32* %4, align 4
  %32 = call i32 @PP_ASSERT_WITH_CODE(i32 %30, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %31)
  %33 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %34 = load i32, i32* @SMC_DPM_FEATURES, align 4
  %35 = call i32 @vega10_stop_dpm(%struct.pp_hwmgr* %33, i32 %34)
  store i32 %35, i32* %3, align 4
  %36 = load i32, i32* %3, align 4
  %37 = icmp eq i32 %36, 0
  %38 = zext i1 %37 to i32
  %39 = load i32, i32* %3, align 4
  store i32 %39, i32* %4, align 4
  %40 = call i32 @PP_ASSERT_WITH_CODE(i32 %38, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %39)
  %41 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %42 = call i32 @vega10_disable_deep_sleep_master_switch(%struct.pp_hwmgr* %41)
  store i32 %42, i32* %3, align 4
  %43 = load i32, i32* %3, align 4
  %44 = icmp eq i32 %43, 0
  %45 = zext i1 %44 to i32
  %46 = load i32, i32* %3, align 4
  store i32 %46, i32* %4, align 4
  %47 = call i32 @PP_ASSERT_WITH_CODE(i32 %45, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %46)
  %48 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %49 = call i32 @vega10_disable_ulv(%struct.pp_hwmgr* %48)
  store i32 %49, i32* %3, align 4
  %50 = load i32, i32* %3, align 4
  %51 = icmp eq i32 %50, 0
  %52 = zext i1 %51 to i32
  %53 = load i32, i32* %3, align 4
  store i32 %53, i32* %4, align 4
  %54 = call i32 @PP_ASSERT_WITH_CODE(i32 %52, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 %53)
  %55 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %56 = call i32 @vega10_acg_disable(%struct.pp_hwmgr* %55)
  store i32 %56, i32* %3, align 4
  %57 = load i32, i32* %3, align 4
  %58 = icmp eq i32 %57, 0
  %59 = zext i1 %58 to i32
  %60 = load i32, i32* %3, align 4
  store i32 %60, i32* %4, align 4
  %61 = call i32 @PP_ASSERT_WITH_CODE(i32 %59, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i32 %60)
  %62 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %63 = call i32 @vega10_enable_disable_PCC_limit_feature(%struct.pp_hwmgr* %62, i32 0)
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i64 @PP_CAP(i32) #1

declare dso_local i32 @vega10_disable_thermal_protection(%struct.pp_hwmgr*) #1

declare dso_local i32 @vega10_disable_power_containment(%struct.pp_hwmgr*) #1

declare dso_local i32 @PP_ASSERT_WITH_CODE(i32, i8*, i32) #1

declare dso_local i32 @vega10_disable_didt_config(%struct.pp_hwmgr*) #1

declare dso_local i32 @vega10_avfs_enable(%struct.pp_hwmgr*, i32) #1

declare dso_local i32 @vega10_stop_dpm(%struct.pp_hwmgr*, i32) #1

declare dso_local i32 @vega10_disable_deep_sleep_master_switch(%struct.pp_hwmgr*) #1

declare dso_local i32 @vega10_disable_ulv(%struct.pp_hwmgr*) #1

declare dso_local i32 @vega10_acg_disable(%struct.pp_hwmgr*) #1

declare dso_local i32 @vega10_enable_disable_PCC_limit_feature(%struct.pp_hwmgr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
