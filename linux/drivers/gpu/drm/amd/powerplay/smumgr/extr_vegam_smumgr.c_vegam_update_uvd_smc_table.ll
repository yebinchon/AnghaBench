; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_vegam_smumgr.c_vegam_update_uvd_smc_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_vegam_smumgr.c_vegam_update_uvd_smc_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { %struct.TYPE_7__, i32, i64, i64 }
%struct.TYPE_7__ = type { i32 }
%struct.vegam_smumgr = type { %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.phm_ppt_v1_information = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@SMU75_Discrete_DpmTable = common dso_local global i32 0, align 4
@UvdBootLevel = common dso_local global i32 0, align 4
@CGS_IND_REG__SMC = common dso_local global i32 0, align 4
@PHM_PlatformCaps_UVDDPM = common dso_local global i32 0, align 4
@PHM_PlatformCaps_StablePState = common dso_local global i32 0, align 4
@PPSMC_MSG_UVDDPM_SetEnabledMask = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*)* @vegam_update_uvd_smc_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vegam_update_uvd_smc_table(%struct.pp_hwmgr* %0) #0 {
  %2 = alloca %struct.pp_hwmgr*, align 8
  %3 = alloca %struct.vegam_smumgr*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.phm_ppt_v1_information*, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %2, align 8
  %7 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %8 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %7, i32 0, i32 3
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.vegam_smumgr*
  store %struct.vegam_smumgr* %10, %struct.vegam_smumgr** %3, align 8
  %11 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %12 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.phm_ppt_v1_information*
  store %struct.phm_ppt_v1_information* %14, %struct.phm_ppt_v1_information** %6, align 8
  %15 = load %struct.vegam_smumgr*, %struct.vegam_smumgr** %3, align 8
  %16 = getelementptr inbounds %struct.vegam_smumgr, %struct.vegam_smumgr* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  store i32 0, i32* %17, align 4
  %18 = load %struct.phm_ppt_v1_information*, %struct.phm_ppt_v1_information** %6, align 8
  %19 = getelementptr inbounds %struct.phm_ppt_v1_information, %struct.phm_ppt_v1_information* %18, i32 0, i32 0
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %1
  %25 = load %struct.phm_ppt_v1_information*, %struct.phm_ppt_v1_information** %6, align 8
  %26 = getelementptr inbounds %struct.phm_ppt_v1_information, %struct.phm_ppt_v1_information* %25, i32 0, i32 0
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = sub nsw i32 %29, 1
  %31 = load %struct.vegam_smumgr*, %struct.vegam_smumgr** %3, align 8
  %32 = getelementptr inbounds %struct.vegam_smumgr, %struct.vegam_smumgr* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  store i32 %30, i32* %33, align 4
  br label %34

34:                                               ; preds = %24, %1
  %35 = load %struct.vegam_smumgr*, %struct.vegam_smumgr** %3, align 8
  %36 = getelementptr inbounds %struct.vegam_smumgr, %struct.vegam_smumgr* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @SMU75_Discrete_DpmTable, align 4
  %40 = load i32, i32* @UvdBootLevel, align 4
  %41 = call i32 @offsetof(i32 %39, i32 %40)
  %42 = add nsw i32 %38, %41
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* %4, align 4
  %44 = sdiv i32 %43, 4
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* %4, align 4
  %46 = mul nsw i32 %45, 4
  store i32 %46, i32* %4, align 4
  %47 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %48 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @CGS_IND_REG__SMC, align 4
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @cgs_read_ind_register(i32 %49, i32 %50, i32 %51)
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %5, align 4
  %54 = and i32 %53, 16777215
  store i32 %54, i32* %5, align 4
  %55 = load %struct.vegam_smumgr*, %struct.vegam_smumgr** %3, align 8
  %56 = getelementptr inbounds %struct.vegam_smumgr, %struct.vegam_smumgr* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = shl i32 %58, 24
  %60 = load i32, i32* %5, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %5, align 4
  %62 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %63 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @CGS_IND_REG__SMC, align 4
  %66 = load i32, i32* %4, align 4
  %67 = load i32, i32* %5, align 4
  %68 = call i32 @cgs_write_ind_register(i32 %64, i32 %65, i32 %66, i32 %67)
  %69 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %70 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @PHM_PlatformCaps_UVDDPM, align 4
  %74 = call i64 @phm_cap_enabled(i32 %72, i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %84

76:                                               ; preds = %34
  %77 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %78 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @PHM_PlatformCaps_StablePState, align 4
  %82 = call i64 @phm_cap_enabled(i32 %80, i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %93

84:                                               ; preds = %76, %34
  %85 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %86 = load i32, i32* @PPSMC_MSG_UVDDPM_SetEnabledMask, align 4
  %87 = load %struct.vegam_smumgr*, %struct.vegam_smumgr** %3, align 8
  %88 = getelementptr inbounds %struct.vegam_smumgr, %struct.vegam_smumgr* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = shl i32 1, %90
  %92 = call i32 @smum_send_msg_to_smc_with_parameter(%struct.pp_hwmgr* %85, i32 %86, i32 %91)
  br label %93

93:                                               ; preds = %84, %76
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
