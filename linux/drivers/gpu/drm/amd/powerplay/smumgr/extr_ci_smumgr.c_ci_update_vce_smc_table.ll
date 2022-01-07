; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_ci_smumgr.c_ci_update_vce_smc_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_ci_smumgr.c_ci_update_vce_smc_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i64, i32, %struct.TYPE_10__, %struct.smu7_hwmgr*, %struct.amdgpu_device* }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_8__, %struct.phm_vce_clock_voltage_dependency_table* }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i64 }
%struct.phm_vce_clock_voltage_dependency_table = type { i64, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64 }
%struct.smu7_hwmgr = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.amdgpu_device = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }

@AMD_DPM_FORCED_LEVEL_PROFILE_STANDARD = common dso_local global i64 0, align 8
@AMD_DPM_FORCED_LEVEL_PROFILE_MIN_SCLK = common dso_local global i64 0, align 8
@AMD_DPM_FORCED_LEVEL_PROFILE_MIN_MCLK = common dso_local global i64 0, align 8
@AMD_DPM_FORCED_LEVEL_PROFILE_PEAK = common dso_local global i64 0, align 8
@CGS_IND_REG__SMC = common dso_local global i32 0, align 4
@DPM_TABLE_475 = common dso_local global i32 0, align 4
@VceBootLevel = common dso_local global i32 0, align 4
@PHM_PlatformCaps_VCEDPM = common dso_local global i32 0, align 4
@PPSMC_MSG_VCEDPM_SetEnabledMask = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*)* @ci_update_vce_smc_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ci_update_vce_smc_table(%struct.pp_hwmgr* %0) #0 {
  %2 = alloca %struct.pp_hwmgr*, align 8
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca %struct.smu7_hwmgr*, align 8
  %5 = alloca %struct.phm_vce_clock_voltage_dependency_table*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %2, align 8
  %9 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %10 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %9, i32 0, i32 4
  %11 = load %struct.amdgpu_device*, %struct.amdgpu_device** %10, align 8
  store %struct.amdgpu_device* %11, %struct.amdgpu_device** %3, align 8
  %12 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %13 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %12, i32 0, i32 3
  %14 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %13, align 8
  store %struct.smu7_hwmgr* %14, %struct.smu7_hwmgr** %4, align 8
  %15 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %16 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 2
  %18 = load %struct.phm_vce_clock_voltage_dependency_table*, %struct.phm_vce_clock_voltage_dependency_table** %17, align 8
  store %struct.phm_vce_clock_voltage_dependency_table* %18, %struct.phm_vce_clock_voltage_dependency_table** %5, align 8
  %19 = load i64, i64* @AMD_DPM_FORCED_LEVEL_PROFILE_STANDARD, align 8
  %20 = load i64, i64* @AMD_DPM_FORCED_LEVEL_PROFILE_MIN_SCLK, align 8
  %21 = or i64 %19, %20
  %22 = load i64, i64* @AMD_DPM_FORCED_LEVEL_PROFILE_MIN_MCLK, align 8
  %23 = or i64 %21, %22
  %24 = load i64, i64* @AMD_DPM_FORCED_LEVEL_PROFILE_PEAK, align 8
  %25 = or i64 %23, %24
  store i64 %25, i64* %6, align 8
  %26 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %27 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %1
  %32 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %33 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  br label %43

37:                                               ; preds = %1
  %38 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %39 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  br label %43

43:                                               ; preds = %37, %31
  %44 = phi i64 [ %36, %31 ], [ %42, %37 ]
  store i64 %44, i64* %7, align 8
  %45 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %46 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @CGS_IND_REG__SMC, align 4
  %49 = load i32, i32* @DPM_TABLE_475, align 4
  %50 = load i32, i32* @VceBootLevel, align 4
  %51 = call i32 @PHM_WRITE_INDIRECT_FIELD(i32 %47, i32 %48, i32 %49, i32 %50, i32 0)
  %52 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %4, align 8
  %53 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 0
  store i32 0, i32* %54, align 4
  %55 = load %struct.phm_vce_clock_voltage_dependency_table*, %struct.phm_vce_clock_voltage_dependency_table** %5, align 8
  %56 = getelementptr inbounds %struct.phm_vce_clock_voltage_dependency_table, %struct.phm_vce_clock_voltage_dependency_table* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = sub i64 %57, 1
  store i64 %58, i64* %8, align 8
  br label %59

59:                                               ; preds = %94, %43
  %60 = load i64, i64* %8, align 8
  %61 = icmp uge i64 %60, 0
  br i1 %61, label %62, label %97

62:                                               ; preds = %59
  %63 = load %struct.phm_vce_clock_voltage_dependency_table*, %struct.phm_vce_clock_voltage_dependency_table** %5, align 8
  %64 = getelementptr inbounds %struct.phm_vce_clock_voltage_dependency_table, %struct.phm_vce_clock_voltage_dependency_table* %63, i32 0, i32 1
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %64, align 8
  %66 = load i64, i64* %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* %7, align 8
  %71 = icmp sle i64 %69, %70
  br i1 %71, label %72, label %81

72:                                               ; preds = %62
  %73 = load i64, i64* %8, align 8
  %74 = trunc i64 %73 to i32
  %75 = shl i32 1, %74
  %76 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %4, align 8
  %77 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = or i32 %79, %75
  store i32 %80, i32* %78, align 4
  br label %81

81:                                               ; preds = %72, %62
  %82 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %83 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* %6, align 8
  %86 = and i64 %84, %85
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %92, label %88

88:                                               ; preds = %81
  %89 = load i32, i32* @PHM_PlatformCaps_VCEDPM, align 4
  %90 = call i32 @PP_CAP(i32 %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %93, label %92

92:                                               ; preds = %88, %81
  br label %97

93:                                               ; preds = %88
  br label %94

94:                                               ; preds = %93
  %95 = load i64, i64* %8, align 8
  %96 = add i64 %95, -1
  store i64 %96, i64* %8, align 8
  br label %59

97:                                               ; preds = %92, %59
  %98 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %99 = load i32, i32* @PPSMC_MSG_VCEDPM_SetEnabledMask, align 4
  %100 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %4, align 8
  %101 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @ci_send_msg_to_smc_with_parameter(%struct.pp_hwmgr* %98, i32 %99, i32 %103)
  ret i32 0
}

declare dso_local i32 @PHM_WRITE_INDIRECT_FIELD(i32, i32, i32, i32, i32) #1

declare dso_local i32 @PP_CAP(i32) #1

declare dso_local i32 @ci_send_msg_to_smc_with_parameter(%struct.pp_hwmgr*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
