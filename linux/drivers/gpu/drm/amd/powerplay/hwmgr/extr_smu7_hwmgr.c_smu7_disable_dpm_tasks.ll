; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu7_hwmgr.c_smu7_disable_dpm_tasks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu7_hwmgr.c_smu7_disable_dpm_tasks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@PHM_PlatformCaps_ThermalController = common dso_local global i32 0, align 4
@CGS_IND_REG__SMC = common dso_local global i32 0, align 4
@GENERAL_PWRMGT = common dso_local global i32 0, align 4
@THERMAL_PROTECTION_DIS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Failed to disable power containment!\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Failed to disable SMC CAC!\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Failed to disable DIDT!\00", align 1
@CG_SPLL_SPREAD_SPECTRUM = common dso_local global i32 0, align 4
@SSEN = common dso_local global i32 0, align 4
@DYN_SPREAD_SPECTRUM_EN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"Failed to disable thermal auto throttle!\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"Failed to disable AVFS!\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"Failed to stop DPM!\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"Failed to disable deep sleep master switch!\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"Failed to disable ULV!\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"Failed to clear voting clients!\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"Failed to reset to default!\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"Failed to force to switch arbf0!\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smu7_disable_dpm_tasks(%struct.pp_hwmgr* %0) #0 {
  %2 = alloca %struct.pp_hwmgr*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %6 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @PHM_PlatformCaps_ThermalController, align 4
  %10 = call i64 @phm_cap_enabled(i32 %8, i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %1
  %13 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %14 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @CGS_IND_REG__SMC, align 4
  %17 = load i32, i32* @GENERAL_PWRMGT, align 4
  %18 = load i32, i32* @THERMAL_PROTECTION_DIS, align 4
  %19 = call i32 @PHM_WRITE_INDIRECT_FIELD(i32 %15, i32 %16, i32 %17, i32 %18, i32 1)
  br label %20

20:                                               ; preds = %12, %1
  %21 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %22 = call i32 @smu7_disable_power_containment(%struct.pp_hwmgr* %21)
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* %3, align 4
  %24 = icmp eq i32 %23, 0
  %25 = zext i1 %24 to i32
  %26 = load i32, i32* %3, align 4
  store i32 %26, i32* %4, align 4
  %27 = call i32 @PP_ASSERT_WITH_CODE(i32 %25, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %29 = call i32 @smu7_disable_smc_cac(%struct.pp_hwmgr* %28)
  store i32 %29, i32* %3, align 4
  %30 = load i32, i32* %3, align 4
  %31 = icmp eq i32 %30, 0
  %32 = zext i1 %31 to i32
  %33 = load i32, i32* %3, align 4
  store i32 %33, i32* %4, align 4
  %34 = call i32 @PP_ASSERT_WITH_CODE(i32 %32, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  %35 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %36 = call i32 @smu7_disable_didt_config(%struct.pp_hwmgr* %35)
  store i32 %36, i32* %3, align 4
  %37 = load i32, i32* %3, align 4
  %38 = icmp eq i32 %37, 0
  %39 = zext i1 %38 to i32
  %40 = load i32, i32* %3, align 4
  store i32 %40, i32* %4, align 4
  %41 = call i32 @PP_ASSERT_WITH_CODE(i32 %39, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %40)
  %42 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %43 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @CGS_IND_REG__SMC, align 4
  %46 = load i32, i32* @CG_SPLL_SPREAD_SPECTRUM, align 4
  %47 = load i32, i32* @SSEN, align 4
  %48 = call i32 @PHM_WRITE_INDIRECT_FIELD(i32 %44, i32 %45, i32 %46, i32 %47, i32 0)
  %49 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %50 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @CGS_IND_REG__SMC, align 4
  %53 = load i32, i32* @GENERAL_PWRMGT, align 4
  %54 = load i32, i32* @DYN_SPREAD_SPECTRUM_EN, align 4
  %55 = call i32 @PHM_WRITE_INDIRECT_FIELD(i32 %51, i32 %52, i32 %53, i32 %54, i32 0)
  %56 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %57 = call i32 @smu7_disable_thermal_auto_throttle(%struct.pp_hwmgr* %56)
  store i32 %57, i32* %3, align 4
  %58 = load i32, i32* %3, align 4
  %59 = icmp eq i32 %58, 0
  %60 = zext i1 %59 to i32
  %61 = load i32, i32* %3, align 4
  store i32 %61, i32* %4, align 4
  %62 = call i32 @PP_ASSERT_WITH_CODE(i32 %60, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %61)
  %63 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %64 = call i32 @smu7_avfs_control(%struct.pp_hwmgr* %63, i32 0)
  store i32 %64, i32* %3, align 4
  %65 = load i32, i32* %3, align 4
  %66 = icmp eq i32 %65, 0
  %67 = zext i1 %66 to i32
  %68 = load i32, i32* %3, align 4
  store i32 %68, i32* %4, align 4
  %69 = call i32 @PP_ASSERT_WITH_CODE(i32 %67, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %68)
  %70 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %71 = call i32 @smu7_stop_dpm(%struct.pp_hwmgr* %70)
  store i32 %71, i32* %3, align 4
  %72 = load i32, i32* %3, align 4
  %73 = icmp eq i32 %72, 0
  %74 = zext i1 %73 to i32
  %75 = load i32, i32* %3, align 4
  store i32 %75, i32* %4, align 4
  %76 = call i32 @PP_ASSERT_WITH_CODE(i32 %74, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i32 %75)
  %77 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %78 = call i32 @smu7_disable_deep_sleep_master_switch(%struct.pp_hwmgr* %77)
  store i32 %78, i32* %3, align 4
  %79 = load i32, i32* %3, align 4
  %80 = icmp eq i32 %79, 0
  %81 = zext i1 %80 to i32
  %82 = load i32, i32* %3, align 4
  store i32 %82, i32* %4, align 4
  %83 = call i32 @PP_ASSERT_WITH_CODE(i32 %81, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0), i32 %82)
  %84 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %85 = call i32 @smu7_disable_ulv(%struct.pp_hwmgr* %84)
  store i32 %85, i32* %3, align 4
  %86 = load i32, i32* %3, align 4
  %87 = icmp eq i32 %86, 0
  %88 = zext i1 %87 to i32
  %89 = load i32, i32* %3, align 4
  store i32 %89, i32* %4, align 4
  %90 = call i32 @PP_ASSERT_WITH_CODE(i32 %88, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i32 %89)
  %91 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %92 = call i32 @smu7_clear_voting_clients(%struct.pp_hwmgr* %91)
  store i32 %92, i32* %3, align 4
  %93 = load i32, i32* %3, align 4
  %94 = icmp eq i32 %93, 0
  %95 = zext i1 %94 to i32
  %96 = load i32, i32* %3, align 4
  store i32 %96, i32* %4, align 4
  %97 = call i32 @PP_ASSERT_WITH_CODE(i32 %95, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0), i32 %96)
  %98 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %99 = call i32 @smu7_reset_to_default(%struct.pp_hwmgr* %98)
  store i32 %99, i32* %3, align 4
  %100 = load i32, i32* %3, align 4
  %101 = icmp eq i32 %100, 0
  %102 = zext i1 %101 to i32
  %103 = load i32, i32* %3, align 4
  store i32 %103, i32* %4, align 4
  %104 = call i32 @PP_ASSERT_WITH_CODE(i32 %102, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0), i32 %103)
  %105 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %106 = call i32 @smu7_force_switch_to_arbf0(%struct.pp_hwmgr* %105)
  store i32 %106, i32* %3, align 4
  %107 = load i32, i32* %3, align 4
  %108 = icmp eq i32 %107, 0
  %109 = zext i1 %108 to i32
  %110 = load i32, i32* %3, align 4
  store i32 %110, i32* %4, align 4
  %111 = call i32 @PP_ASSERT_WITH_CODE(i32 %109, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0), i32 %110)
  %112 = load i32, i32* %4, align 4
  ret i32 %112
}

declare dso_local i64 @phm_cap_enabled(i32, i32) #1

declare dso_local i32 @PHM_WRITE_INDIRECT_FIELD(i32, i32, i32, i32, i32) #1

declare dso_local i32 @smu7_disable_power_containment(%struct.pp_hwmgr*) #1

declare dso_local i32 @PP_ASSERT_WITH_CODE(i32, i8*, i32) #1

declare dso_local i32 @smu7_disable_smc_cac(%struct.pp_hwmgr*) #1

declare dso_local i32 @smu7_disable_didt_config(%struct.pp_hwmgr*) #1

declare dso_local i32 @smu7_disable_thermal_auto_throttle(%struct.pp_hwmgr*) #1

declare dso_local i32 @smu7_avfs_control(%struct.pp_hwmgr*, i32) #1

declare dso_local i32 @smu7_stop_dpm(%struct.pp_hwmgr*) #1

declare dso_local i32 @smu7_disable_deep_sleep_master_switch(%struct.pp_hwmgr*) #1

declare dso_local i32 @smu7_disable_ulv(%struct.pp_hwmgr*) #1

declare dso_local i32 @smu7_clear_voting_clients(%struct.pp_hwmgr*) #1

declare dso_local i32 @smu7_reset_to_default(%struct.pp_hwmgr*) #1

declare dso_local i32 @smu7_force_switch_to_arbf0(%struct.pp_hwmgr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
