; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_ci_smumgr.c_ci_populate_pm_fuses.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_ci_smumgr.c_ci_populate_pm_fuses.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.ci_smumgr = type { i32 }

@PHM_PlatformCaps_PowerContainment = common dso_local global i32 0, align 4
@SMU7_FIRMWARE_HEADER_LOCATION = common dso_local global i64 0, align 8
@SMU7_Firmware_Header = common dso_local global i32 0, align 4
@PmFuseTable = common dso_local global i32 0, align 4
@SMC_RAM_END = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Attempt to get pm_fuse_table_offset Failed!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*)* @ci_populate_pm_fuses to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ci_populate_pm_fuses(%struct.pp_hwmgr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pp_hwmgr*, align 8
  %4 = alloca %struct.ci_smumgr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %3, align 8
  %7 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %8 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.ci_smumgr*
  store %struct.ci_smumgr* %10, %struct.ci_smumgr** %4, align 8
  store i32 0, i32* %6, align 4
  %11 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %12 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @PHM_PlatformCaps_PowerContainment, align 4
  %16 = call i64 @phm_cap_enabled(i32 %14, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %76

18:                                               ; preds = %1
  %19 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %20 = load i64, i64* @SMU7_FIRMWARE_HEADER_LOCATION, align 8
  %21 = load i32, i32* @SMU7_Firmware_Header, align 4
  %22 = load i32, i32* @PmFuseTable, align 4
  %23 = call i64 @offsetof(i32 %21, i32 %22)
  %24 = add nsw i64 %20, %23
  %25 = load i32, i32* @SMC_RAM_END, align 4
  %26 = call i64 @ci_read_smc_sram_dword(%struct.pp_hwmgr* %19, i64 %24, i32* %5, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %18
  %29 = call i32 @pr_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %78

32:                                               ; preds = %18
  %33 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %34 = call i32 @ci_populate_bapm_vddc_vid_sidd(%struct.pp_hwmgr* %33)
  store i32 %34, i32* %6, align 4
  %35 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %36 = call i32 @ci_populate_vddc_vid(%struct.pp_hwmgr* %35)
  %37 = load i32, i32* %6, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %6, align 4
  %39 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %40 = call i32 @ci_populate_svi_load_line(%struct.pp_hwmgr* %39)
  %41 = load i32, i32* %6, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %6, align 4
  %43 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %44 = call i32 @ci_populate_tdc_limit(%struct.pp_hwmgr* %43)
  %45 = load i32, i32* %6, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %6, align 4
  %47 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @ci_populate_dw8(%struct.pp_hwmgr* %47, i32 %48)
  %50 = load i32, i32* %6, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %6, align 4
  %52 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @ci_populate_fuzzy_fan(%struct.pp_hwmgr* %52, i32 %53)
  %55 = load i32, i32* %6, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %6, align 4
  %57 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %58 = call i32 @ci_min_max_v_gnbl_pm_lid_from_bapm_vddc(%struct.pp_hwmgr* %57)
  %59 = load i32, i32* %6, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %6, align 4
  %61 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %62 = call i32 @ci_populate_bapm_vddc_base_leakage_sidd(%struct.pp_hwmgr* %61)
  %63 = load i32, i32* %6, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* %6, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %32
  %68 = load i32, i32* %6, align 4
  store i32 %68, i32* %2, align 4
  br label %78

69:                                               ; preds = %32
  %70 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %71 = load i32, i32* %5, align 4
  %72 = load %struct.ci_smumgr*, %struct.ci_smumgr** %4, align 8
  %73 = getelementptr inbounds %struct.ci_smumgr, %struct.ci_smumgr* %72, i32 0, i32 0
  %74 = load i32, i32* @SMC_RAM_END, align 4
  %75 = call i32 @ci_copy_bytes_to_smc(%struct.pp_hwmgr* %70, i32 %71, i32* %73, i32 4, i32 %74)
  store i32 %75, i32* %6, align 4
  br label %76

76:                                               ; preds = %69, %1
  %77 = load i32, i32* %6, align 4
  store i32 %77, i32* %2, align 4
  br label %78

78:                                               ; preds = %76, %67, %28
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local i64 @phm_cap_enabled(i32, i32) #1

declare dso_local i64 @ci_read_smc_sram_dword(%struct.pp_hwmgr*, i64, i32*, i32) #1

declare dso_local i64 @offsetof(i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @ci_populate_bapm_vddc_vid_sidd(%struct.pp_hwmgr*) #1

declare dso_local i32 @ci_populate_vddc_vid(%struct.pp_hwmgr*) #1

declare dso_local i32 @ci_populate_svi_load_line(%struct.pp_hwmgr*) #1

declare dso_local i32 @ci_populate_tdc_limit(%struct.pp_hwmgr*) #1

declare dso_local i32 @ci_populate_dw8(%struct.pp_hwmgr*, i32) #1

declare dso_local i32 @ci_populate_fuzzy_fan(%struct.pp_hwmgr*, i32) #1

declare dso_local i32 @ci_min_max_v_gnbl_pm_lid_from_bapm_vddc(%struct.pp_hwmgr*) #1

declare dso_local i32 @ci_populate_bapm_vddc_base_leakage_sidd(%struct.pp_hwmgr*) #1

declare dso_local i32 @ci_copy_bytes_to_smc(%struct.pp_hwmgr*, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
