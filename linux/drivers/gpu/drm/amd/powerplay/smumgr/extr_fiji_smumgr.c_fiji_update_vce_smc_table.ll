; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_fiji_smumgr.c_fiji_update_vce_smc_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_fiji_smumgr.c_fiji_update_vce_smc_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { %struct.TYPE_7__, i32, i64, i64 }
%struct.TYPE_7__ = type { i32 }
%struct.fiji_smumgr = type { %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.phm_ppt_v1_information = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@PHM_PlatformCaps_StablePState = common dso_local global i32 0, align 4
@SMU73_Discrete_DpmTable = common dso_local global i32 0, align 4
@VceBootLevel = common dso_local global i32 0, align 4
@CGS_IND_REG__SMC = common dso_local global i32 0, align 4
@PPSMC_MSG_VCEDPM_SetEnabledMask = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*)* @fiji_update_vce_smc_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fiji_update_vce_smc_table(%struct.pp_hwmgr* %0) #0 {
  %2 = alloca %struct.pp_hwmgr*, align 8
  %3 = alloca %struct.fiji_smumgr*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.phm_ppt_v1_information*, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %2, align 8
  %7 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %8 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %7, i32 0, i32 3
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.fiji_smumgr*
  store %struct.fiji_smumgr* %10, %struct.fiji_smumgr** %3, align 8
  %11 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %12 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.phm_ppt_v1_information*
  store %struct.phm_ppt_v1_information* %14, %struct.phm_ppt_v1_information** %6, align 8
  %15 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %16 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @PHM_PlatformCaps_StablePState, align 4
  %20 = call i64 @phm_cap_enabled(i32 %18, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %1
  %23 = load %struct.phm_ppt_v1_information*, %struct.phm_ppt_v1_information** %6, align 8
  %24 = getelementptr inbounds %struct.phm_ppt_v1_information, %struct.phm_ppt_v1_information* %23, i32 0, i32 0
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = sub nsw i32 %27, 1
  %29 = load %struct.fiji_smumgr*, %struct.fiji_smumgr** %3, align 8
  %30 = getelementptr inbounds %struct.fiji_smumgr, %struct.fiji_smumgr* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  store i32 %28, i32* %31, align 4
  br label %36

32:                                               ; preds = %1
  %33 = load %struct.fiji_smumgr*, %struct.fiji_smumgr** %3, align 8
  %34 = getelementptr inbounds %struct.fiji_smumgr, %struct.fiji_smumgr* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  store i32 0, i32* %35, align 4
  br label %36

36:                                               ; preds = %32, %22
  %37 = load %struct.fiji_smumgr*, %struct.fiji_smumgr** %3, align 8
  %38 = getelementptr inbounds %struct.fiji_smumgr, %struct.fiji_smumgr* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @SMU73_Discrete_DpmTable, align 4
  %42 = load i32, i32* @VceBootLevel, align 4
  %43 = call i32 @offsetof(i32 %41, i32 %42)
  %44 = add nsw i32 %40, %43
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* %4, align 4
  %46 = sdiv i32 %45, 4
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* %4, align 4
  %48 = mul nsw i32 %47, 4
  store i32 %48, i32* %4, align 4
  %49 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %50 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @CGS_IND_REG__SMC, align 4
  %53 = load i32, i32* %4, align 4
  %54 = call i32 @cgs_read_ind_register(i32 %51, i32 %52, i32 %53)
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* %5, align 4
  %56 = and i32 %55, -16711681
  store i32 %56, i32* %5, align 4
  %57 = load %struct.fiji_smumgr*, %struct.fiji_smumgr** %3, align 8
  %58 = getelementptr inbounds %struct.fiji_smumgr, %struct.fiji_smumgr* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = shl i32 %60, 16
  %62 = load i32, i32* %5, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %5, align 4
  %64 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %65 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @CGS_IND_REG__SMC, align 4
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* %5, align 4
  %70 = call i32 @cgs_write_ind_register(i32 %66, i32 %67, i32 %68, i32 %69)
  %71 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %72 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @PHM_PlatformCaps_StablePState, align 4
  %76 = call i64 @phm_cap_enabled(i32 %74, i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %87

78:                                               ; preds = %36
  %79 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %80 = load i32, i32* @PPSMC_MSG_VCEDPM_SetEnabledMask, align 4
  %81 = load %struct.fiji_smumgr*, %struct.fiji_smumgr** %3, align 8
  %82 = getelementptr inbounds %struct.fiji_smumgr, %struct.fiji_smumgr* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = shl i32 1, %84
  %86 = call i32 @smum_send_msg_to_smc_with_parameter(%struct.pp_hwmgr* %79, i32 %80, i32 %85)
  br label %87

87:                                               ; preds = %78, %36
  ret i32 0
}

declare dso_local i64 @phm_cap_enabled(i32, i32) #1

declare dso_local i32 @offsetof(i32, i32) #1

declare dso_local i32 @cgs_read_ind_register(i32, i32, i32) #1

declare dso_local i32 @cgs_write_ind_register(i32, i32, i32, i32) #1

declare dso_local i32 @smum_send_msg_to_smc_with_parameter(%struct.pp_hwmgr*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
