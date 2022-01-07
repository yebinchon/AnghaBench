; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega10_hwmgr.c_vega10_enable_dpm_tasks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega10_hwmgr.c_vega10_enable_dpm_tasks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { %struct.vega10_hwmgr* }
%struct.vega10_hwmgr = type { i32 }

@PPSMC_MSG_ConfigureTelemetry = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Failed to construct voltage tables!\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Failed to initialize SMC table!\00", align 1
@PHM_PlatformCaps_ThermalController = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"Failed to enable thermal protection!\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"Failed to enable VR hot feature!\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"Failed to enable deep sleep master switch!\00", align 1
@SMC_DPM_FEATURES = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [21 x i8] c"Failed to start DPM!\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"Failed to enable didt config!\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"Failed to enable power containment!\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"Failed to power control set level!\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"Failed to enable ULV!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*)* @vega10_enable_dpm_tasks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vega10_enable_dpm_tasks(%struct.pp_hwmgr* %0) #0 {
  %2 = alloca %struct.pp_hwmgr*, align 8
  %3 = alloca %struct.vega10_hwmgr*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %2, align 8
  %6 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %7 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %6, i32 0, i32 0
  %8 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %7, align 8
  store %struct.vega10_hwmgr* %8, %struct.vega10_hwmgr** %3, align 8
  store i32 0, i32* %5, align 4
  %9 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %10 = call i32 @vega10_enable_disable_PCC_limit_feature(%struct.pp_hwmgr* %9, i32 1)
  %11 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %12 = load i32, i32* @PPSMC_MSG_ConfigureTelemetry, align 4
  %13 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %14 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @smum_send_msg_to_smc_with_parameter(%struct.pp_hwmgr* %11, i32 %12, i32 %15)
  %17 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %18 = call i32 @vega10_construct_voltage_tables(%struct.pp_hwmgr* %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = load i32, i32* %4, align 4
  store i32 %23, i32* %5, align 4
  %24 = call i32 @PP_ASSERT_WITH_CODE(i32 %22, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %26 = call i32 @vega10_init_smc_table(%struct.pp_hwmgr* %25)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = load i32, i32* %4, align 4
  store i32 %31, i32* %5, align 4
  %32 = call i32 @PP_ASSERT_WITH_CODE(i32 %30, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* @PHM_PlatformCaps_ThermalController, align 4
  %34 = call i64 @PP_CAP(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %1
  %37 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %38 = call i32 @vega10_enable_thermal_protection(%struct.pp_hwmgr* %37)
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %4, align 4
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = load i32, i32* %4, align 4
  store i32 %43, i32* %5, align 4
  %44 = call i32 @PP_ASSERT_WITH_CODE(i32 %42, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %43)
  br label %45

45:                                               ; preds = %36, %1
  %46 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %47 = call i32 @vega10_enable_vrhot_feature(%struct.pp_hwmgr* %46)
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* %4, align 4
  %49 = icmp ne i32 %48, 0
  %50 = xor i1 %49, true
  %51 = zext i1 %50 to i32
  %52 = load i32, i32* %4, align 4
  store i32 %52, i32* %5, align 4
  %53 = call i32 @PP_ASSERT_WITH_CODE(i32 %51, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %52)
  %54 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %55 = call i32 @vega10_enable_deep_sleep_master_switch(%struct.pp_hwmgr* %54)
  store i32 %55, i32* %4, align 4
  %56 = load i32, i32* %4, align 4
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i32
  %60 = load i32, i32* %4, align 4
  store i32 %60, i32* %5, align 4
  %61 = call i32 @PP_ASSERT_WITH_CODE(i32 %59, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i32 %60)
  %62 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %63 = load i32, i32* @SMC_DPM_FEATURES, align 4
  %64 = call i32 @vega10_start_dpm(%struct.pp_hwmgr* %62, i32 %63)
  store i32 %64, i32* %4, align 4
  %65 = load i32, i32* %4, align 4
  %66 = icmp ne i32 %65, 0
  %67 = xor i1 %66, true
  %68 = zext i1 %67 to i32
  %69 = load i32, i32* %4, align 4
  store i32 %69, i32* %5, align 4
  %70 = call i32 @PP_ASSERT_WITH_CODE(i32 %68, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 %69)
  %71 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %72 = call i32 @vega10_enable_didt_config(%struct.pp_hwmgr* %71)
  store i32 %72, i32* %4, align 4
  %73 = load i32, i32* %4, align 4
  %74 = icmp ne i32 %73, 0
  %75 = xor i1 %74, true
  %76 = zext i1 %75 to i32
  %77 = call i32 @PP_ASSERT(i32 %76, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  %78 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %79 = call i32 @vega10_enable_power_containment(%struct.pp_hwmgr* %78)
  store i32 %79, i32* %4, align 4
  %80 = load i32, i32* %4, align 4
  %81 = icmp ne i32 %80, 0
  %82 = xor i1 %81, true
  %83 = zext i1 %82 to i32
  %84 = load i32, i32* %4, align 4
  store i32 %84, i32* %5, align 4
  %85 = call i32 @PP_ASSERT_WITH_CODE(i32 %83, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0), i32 %84)
  %86 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %87 = call i32 @vega10_power_control_set_level(%struct.pp_hwmgr* %86)
  store i32 %87, i32* %4, align 4
  %88 = load i32, i32* %4, align 4
  %89 = icmp ne i32 %88, 0
  %90 = xor i1 %89, true
  %91 = zext i1 %90 to i32
  %92 = load i32, i32* %4, align 4
  store i32 %92, i32* %5, align 4
  %93 = call i32 @PP_ASSERT_WITH_CODE(i32 %91, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0), i32 %92)
  %94 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %95 = call i32 @vega10_enable_ulv(%struct.pp_hwmgr* %94)
  store i32 %95, i32* %4, align 4
  %96 = load i32, i32* %4, align 4
  %97 = icmp ne i32 %96, 0
  %98 = xor i1 %97, true
  %99 = zext i1 %98 to i32
  %100 = load i32, i32* %4, align 4
  store i32 %100, i32* %5, align 4
  %101 = call i32 @PP_ASSERT_WITH_CODE(i32 %99, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0), i32 %100)
  %102 = load i32, i32* %5, align 4
  ret i32 %102
}

declare dso_local i32 @vega10_enable_disable_PCC_limit_feature(%struct.pp_hwmgr*, i32) #1

declare dso_local i32 @smum_send_msg_to_smc_with_parameter(%struct.pp_hwmgr*, i32, i32) #1

declare dso_local i32 @vega10_construct_voltage_tables(%struct.pp_hwmgr*) #1

declare dso_local i32 @PP_ASSERT_WITH_CODE(i32, i8*, i32) #1

declare dso_local i32 @vega10_init_smc_table(%struct.pp_hwmgr*) #1

declare dso_local i64 @PP_CAP(i32) #1

declare dso_local i32 @vega10_enable_thermal_protection(%struct.pp_hwmgr*) #1

declare dso_local i32 @vega10_enable_vrhot_feature(%struct.pp_hwmgr*) #1

declare dso_local i32 @vega10_enable_deep_sleep_master_switch(%struct.pp_hwmgr*) #1

declare dso_local i32 @vega10_start_dpm(%struct.pp_hwmgr*, i32) #1

declare dso_local i32 @vega10_enable_didt_config(%struct.pp_hwmgr*) #1

declare dso_local i32 @PP_ASSERT(i32, i8*) #1

declare dso_local i32 @vega10_enable_power_containment(%struct.pp_hwmgr*) #1

declare dso_local i32 @vega10_power_control_set_level(%struct.pp_hwmgr*) #1

declare dso_local i32 @vega10_enable_ulv(%struct.pp_hwmgr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
