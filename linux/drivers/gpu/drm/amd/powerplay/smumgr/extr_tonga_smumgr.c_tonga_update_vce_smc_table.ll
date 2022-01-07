; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_tonga_smumgr.c_tonga_update_vce_smc_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_tonga_smumgr.c_tonga_update_vce_smc_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { %struct.TYPE_7__, i32, i64, i64 }
%struct.TYPE_7__ = type { i32 }
%struct.tonga_smumgr = type { %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.phm_ppt_v1_information = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@SMU72_Discrete_DpmTable = common dso_local global i32 0, align 4
@VceBootLevel = common dso_local global i32 0, align 4
@CGS_IND_REG__SMC = common dso_local global i32 0, align 4
@PHM_PlatformCaps_StablePState = common dso_local global i32 0, align 4
@PPSMC_MSG_VCEDPM_SetEnabledMask = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*)* @tonga_update_vce_smc_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tonga_update_vce_smc_table(%struct.pp_hwmgr* %0) #0 {
  %2 = alloca %struct.pp_hwmgr*, align 8
  %3 = alloca %struct.tonga_smumgr*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.phm_ppt_v1_information*, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %2, align 8
  %7 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %8 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %7, i32 0, i32 3
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.tonga_smumgr*
  store %struct.tonga_smumgr* %10, %struct.tonga_smumgr** %3, align 8
  %11 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %12 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.phm_ppt_v1_information*
  store %struct.phm_ppt_v1_information* %14, %struct.phm_ppt_v1_information** %6, align 8
  %15 = load %struct.phm_ppt_v1_information*, %struct.phm_ppt_v1_information** %6, align 8
  %16 = getelementptr inbounds %struct.phm_ppt_v1_information, %struct.phm_ppt_v1_information* %15, i32 0, i32 0
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = sub nsw i32 %19, 1
  %21 = load %struct.tonga_smumgr*, %struct.tonga_smumgr** %3, align 8
  %22 = getelementptr inbounds %struct.tonga_smumgr, %struct.tonga_smumgr* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  store i32 %20, i32* %23, align 4
  %24 = load %struct.tonga_smumgr*, %struct.tonga_smumgr** %3, align 8
  %25 = getelementptr inbounds %struct.tonga_smumgr, %struct.tonga_smumgr* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @SMU72_Discrete_DpmTable, align 4
  %29 = load i32, i32* @VceBootLevel, align 4
  %30 = call i32 @offsetof(i32 %28, i32 %29)
  %31 = add nsw i32 %27, %30
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = sdiv i32 %32, 4
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = mul nsw i32 %34, 4
  store i32 %35, i32* %4, align 4
  %36 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %37 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @CGS_IND_REG__SMC, align 4
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @cgs_read_ind_register(i32 %38, i32 %39, i32 %40)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = and i32 %42, -16711681
  store i32 %43, i32* %5, align 4
  %44 = load %struct.tonga_smumgr*, %struct.tonga_smumgr** %3, align 8
  %45 = getelementptr inbounds %struct.tonga_smumgr, %struct.tonga_smumgr* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = shl i32 %47, 16
  %49 = load i32, i32* %5, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %5, align 4
  %51 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %52 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @CGS_IND_REG__SMC, align 4
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @cgs_write_ind_register(i32 %53, i32 %54, i32 %55, i32 %56)
  %58 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %59 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @PHM_PlatformCaps_StablePState, align 4
  %63 = call i64 @phm_cap_enabled(i32 %61, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %74

65:                                               ; preds = %1
  %66 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %67 = load i32, i32* @PPSMC_MSG_VCEDPM_SetEnabledMask, align 4
  %68 = load %struct.tonga_smumgr*, %struct.tonga_smumgr** %3, align 8
  %69 = getelementptr inbounds %struct.tonga_smumgr, %struct.tonga_smumgr* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = shl i32 1, %71
  %73 = call i32 @smum_send_msg_to_smc_with_parameter(%struct.pp_hwmgr* %66, i32 %67, i32 %72)
  br label %74

74:                                               ; preds = %65, %1
  ret i32 0
}

declare dso_local i32 @offsetof(i32, i32) #1

declare dso_local i32 @cgs_read_ind_register(i32, i32, i32) #1

declare dso_local i32 @cgs_write_ind_register(i32, i32, i32, i32) #1

declare dso_local i64 @phm_cap_enabled(i32, i32) #1

declare dso_local i32 @smum_send_msg_to_smc_with_parameter(%struct.pp_hwmgr*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
