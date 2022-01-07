; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_ci_smumgr.c_ci_update_uvd_smc_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_ci_smumgr.c_ci_update_uvd_smc_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i64, i32, %struct.TYPE_11__, %struct.ci_smumgr*, %struct.smu7_hwmgr*, %struct.amdgpu_device* }
%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.TYPE_9__, %struct.phm_uvd_clock_voltage_dependency_table* }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i64 }
%struct.phm_uvd_clock_voltage_dependency_table = type { i64, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64 }
%struct.ci_smumgr = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64 }
%struct.smu7_hwmgr = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }
%struct.amdgpu_device = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }

@AMD_DPM_FORCED_LEVEL_PROFILE_STANDARD = common dso_local global i64 0, align 8
@AMD_DPM_FORCED_LEVEL_PROFILE_MIN_SCLK = common dso_local global i64 0, align 8
@AMD_DPM_FORCED_LEVEL_PROFILE_MIN_MCLK = common dso_local global i64 0, align 8
@AMD_DPM_FORCED_LEVEL_PROFILE_PEAK = common dso_local global i64 0, align 8
@PHM_PlatformCaps_UVDDPM = common dso_local global i32 0, align 4
@CGS_IND_REG__SMC = common dso_local global i32 0, align 4
@DPM_TABLE_475 = common dso_local global i32 0, align 4
@UvdBootLevel = common dso_local global i32 0, align 4
@PPSMC_MSG_UVDDPM_SetEnabledMask = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*)* @ci_update_uvd_smc_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ci_update_uvd_smc_table(%struct.pp_hwmgr* %0) #0 {
  %2 = alloca %struct.pp_hwmgr*, align 8
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca %struct.smu7_hwmgr*, align 8
  %5 = alloca %struct.ci_smumgr*, align 8
  %6 = alloca %struct.phm_uvd_clock_voltage_dependency_table*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %2, align 8
  %10 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %11 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %10, i32 0, i32 5
  %12 = load %struct.amdgpu_device*, %struct.amdgpu_device** %11, align 8
  store %struct.amdgpu_device* %12, %struct.amdgpu_device** %3, align 8
  %13 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %14 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %13, i32 0, i32 4
  %15 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %14, align 8
  store %struct.smu7_hwmgr* %15, %struct.smu7_hwmgr** %4, align 8
  %16 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %17 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %16, i32 0, i32 3
  %18 = load %struct.ci_smumgr*, %struct.ci_smumgr** %17, align 8
  store %struct.ci_smumgr* %18, %struct.ci_smumgr** %5, align 8
  %19 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %20 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 2
  %22 = load %struct.phm_uvd_clock_voltage_dependency_table*, %struct.phm_uvd_clock_voltage_dependency_table** %21, align 8
  store %struct.phm_uvd_clock_voltage_dependency_table* %22, %struct.phm_uvd_clock_voltage_dependency_table** %6, align 8
  %23 = load i64, i64* @AMD_DPM_FORCED_LEVEL_PROFILE_STANDARD, align 8
  %24 = load i64, i64* @AMD_DPM_FORCED_LEVEL_PROFILE_MIN_SCLK, align 8
  %25 = or i64 %23, %24
  %26 = load i64, i64* @AMD_DPM_FORCED_LEVEL_PROFILE_MIN_MCLK, align 8
  %27 = or i64 %25, %26
  %28 = load i64, i64* @AMD_DPM_FORCED_LEVEL_PROFILE_PEAK, align 8
  %29 = or i64 %27, %28
  store i64 %29, i64* %7, align 8
  %30 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %31 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %1
  %36 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %37 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  br label %47

41:                                               ; preds = %1
  %42 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %43 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  br label %47

47:                                               ; preds = %41, %35
  %48 = phi i64 [ %40, %35 ], [ %46, %41 ]
  store i64 %48, i64* %8, align 8
  %49 = load i32, i32* @PHM_PlatformCaps_UVDDPM, align 4
  %50 = call i64 @PP_CAP(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %47
  %53 = load %struct.phm_uvd_clock_voltage_dependency_table*, %struct.phm_uvd_clock_voltage_dependency_table** %6, align 8
  %54 = getelementptr inbounds %struct.phm_uvd_clock_voltage_dependency_table, %struct.phm_uvd_clock_voltage_dependency_table* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp sle i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %52, %47
  %58 = load %struct.ci_smumgr*, %struct.ci_smumgr** %5, align 8
  %59 = getelementptr inbounds %struct.ci_smumgr, %struct.ci_smumgr* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 0
  store i64 0, i64* %60, align 8
  br label %69

61:                                               ; preds = %52
  %62 = load %struct.phm_uvd_clock_voltage_dependency_table*, %struct.phm_uvd_clock_voltage_dependency_table** %6, align 8
  %63 = getelementptr inbounds %struct.phm_uvd_clock_voltage_dependency_table, %struct.phm_uvd_clock_voltage_dependency_table* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = sub nsw i64 %64, 1
  %66 = load %struct.ci_smumgr*, %struct.ci_smumgr** %5, align 8
  %67 = getelementptr inbounds %struct.ci_smumgr, %struct.ci_smumgr* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 0
  store i64 %65, i64* %68, align 8
  br label %69

69:                                               ; preds = %61, %57
  %70 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %71 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @CGS_IND_REG__SMC, align 4
  %74 = load i32, i32* @DPM_TABLE_475, align 4
  %75 = load i32, i32* @UvdBootLevel, align 4
  %76 = load %struct.ci_smumgr*, %struct.ci_smumgr** %5, align 8
  %77 = getelementptr inbounds %struct.ci_smumgr, %struct.ci_smumgr* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = call i32 @PHM_WRITE_INDIRECT_FIELD(i32 %72, i32 %73, i32 %74, i32 %75, i64 %79)
  %81 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %4, align 8
  %82 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 0
  store i32 0, i32* %83, align 4
  %84 = load %struct.phm_uvd_clock_voltage_dependency_table*, %struct.phm_uvd_clock_voltage_dependency_table** %6, align 8
  %85 = getelementptr inbounds %struct.phm_uvd_clock_voltage_dependency_table, %struct.phm_uvd_clock_voltage_dependency_table* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = sub nsw i64 %86, 1
  store i64 %87, i64* %9, align 8
  br label %88

88:                                               ; preds = %123, %69
  %89 = load i64, i64* %9, align 8
  %90 = icmp uge i64 %89, 0
  br i1 %90, label %91, label %126

91:                                               ; preds = %88
  %92 = load %struct.phm_uvd_clock_voltage_dependency_table*, %struct.phm_uvd_clock_voltage_dependency_table** %6, align 8
  %93 = getelementptr inbounds %struct.phm_uvd_clock_voltage_dependency_table, %struct.phm_uvd_clock_voltage_dependency_table* %92, i32 0, i32 1
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %93, align 8
  %95 = load i64, i64* %9, align 8
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* %8, align 8
  %100 = icmp sle i64 %98, %99
  br i1 %100, label %101, label %110

101:                                              ; preds = %91
  %102 = load i64, i64* %9, align 8
  %103 = trunc i64 %102 to i32
  %104 = shl i32 1, %103
  %105 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %4, align 8
  %106 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = or i32 %108, %104
  store i32 %109, i32* %107, align 4
  br label %110

110:                                              ; preds = %101, %91
  %111 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %112 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* %7, align 8
  %115 = and i64 %113, %114
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %121, label %117

117:                                              ; preds = %110
  %118 = load i32, i32* @PHM_PlatformCaps_UVDDPM, align 4
  %119 = call i64 @PP_CAP(i32 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %122, label %121

121:                                              ; preds = %117, %110
  br label %126

122:                                              ; preds = %117
  br label %123

123:                                              ; preds = %122
  %124 = load i64, i64* %9, align 8
  %125 = add i64 %124, -1
  store i64 %125, i64* %9, align 8
  br label %88

126:                                              ; preds = %121, %88
  %127 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %128 = load i32, i32* @PPSMC_MSG_UVDDPM_SetEnabledMask, align 4
  %129 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %4, align 8
  %130 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @ci_send_msg_to_smc_with_parameter(%struct.pp_hwmgr* %127, i32 %128, i32 %132)
  ret i32 0
}

declare dso_local i64 @PP_CAP(i32) #1

declare dso_local i32 @PHM_WRITE_INDIRECT_FIELD(i32, i32, i32, i32, i64) #1

declare dso_local i32 @ci_send_msg_to_smc_with_parameter(%struct.pp_hwmgr*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
