; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_smu8_smumgr.c_smu8_smu_construct_toc_for_vddgfx_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_smu8_smumgr.c_smu8_smu_construct_toc_for_vddgfx_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i64, %struct.smu8_smumgr* }
%struct.smu8_smumgr = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.TOC = type { i64* }

@JOB_GFX_RESTORE = common dso_local global i64 0, align 8
@SMU8_SCRATCH_ENTRY_UCODE_ID_CP_CE = common dso_local global i32 0, align 4
@SMU8_SCRATCH_ENTRY_UCODE_ID_CP_PFP = common dso_local global i32 0, align 4
@SMU8_SCRATCH_ENTRY_UCODE_ID_CP_ME = common dso_local global i32 0, align 4
@SMU8_SCRATCH_ENTRY_UCODE_ID_CP_MEC_JT1 = common dso_local global i32 0, align 4
@CHIP_STONEY = common dso_local global i64 0, align 8
@SMU8_SCRATCH_ENTRY_UCODE_ID_CP_MEC_JT2 = common dso_local global i32 0, align 4
@SMU8_SCRATCH_ENTRY_UCODE_ID_RLC_G = common dso_local global i32 0, align 4
@SMU8_SCRATCH_ENTRY_UCODE_ID_RLC_SCRATCH = common dso_local global i32 0, align 4
@TASK_TYPE_UCODE_LOAD = common dso_local global i32 0, align 4
@SMU8_SCRATCH_ENTRY_UCODE_ID_RLC_SRM_ARAM = common dso_local global i32 0, align 4
@SMU8_SCRATCH_ENTRY_UCODE_ID_RLC_SRM_DRAM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*)* @smu8_smu_construct_toc_for_vddgfx_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu8_smu_construct_toc_for_vddgfx_exit(%struct.pp_hwmgr* %0) #0 {
  %2 = alloca %struct.pp_hwmgr*, align 8
  %3 = alloca %struct.smu8_smumgr*, align 8
  %4 = alloca %struct.TOC*, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %2, align 8
  %5 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %6 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %5, i32 0, i32 1
  %7 = load %struct.smu8_smumgr*, %struct.smu8_smumgr** %6, align 8
  store %struct.smu8_smumgr* %7, %struct.smu8_smumgr** %3, align 8
  %8 = load %struct.smu8_smumgr*, %struct.smu8_smumgr** %3, align 8
  %9 = getelementptr inbounds %struct.smu8_smumgr, %struct.smu8_smumgr* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.TOC*
  store %struct.TOC* %12, %struct.TOC** %4, align 8
  %13 = load %struct.smu8_smumgr*, %struct.smu8_smumgr** %3, align 8
  %14 = getelementptr inbounds %struct.smu8_smumgr, %struct.smu8_smumgr* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.TOC*, %struct.TOC** %4, align 8
  %17 = getelementptr inbounds %struct.TOC, %struct.TOC* %16, i32 0, i32 0
  %18 = load i64*, i64** %17, align 8
  %19 = load i64, i64* @JOB_GFX_RESTORE, align 8
  %20 = getelementptr inbounds i64, i64* %18, i64 %19
  store i64 %15, i64* %20, align 8
  %21 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %22 = load i32, i32* @SMU8_SCRATCH_ENTRY_UCODE_ID_CP_CE, align 4
  %23 = call i32 @smu8_smu_populate_single_ucode_load_task(%struct.pp_hwmgr* %21, i32 %22, i32 0)
  %24 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %25 = load i32, i32* @SMU8_SCRATCH_ENTRY_UCODE_ID_CP_PFP, align 4
  %26 = call i32 @smu8_smu_populate_single_ucode_load_task(%struct.pp_hwmgr* %24, i32 %25, i32 0)
  %27 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %28 = load i32, i32* @SMU8_SCRATCH_ENTRY_UCODE_ID_CP_ME, align 4
  %29 = call i32 @smu8_smu_populate_single_ucode_load_task(%struct.pp_hwmgr* %27, i32 %28, i32 0)
  %30 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %31 = load i32, i32* @SMU8_SCRATCH_ENTRY_UCODE_ID_CP_MEC_JT1, align 4
  %32 = call i32 @smu8_smu_populate_single_ucode_load_task(%struct.pp_hwmgr* %30, i32 %31, i32 0)
  %33 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %34 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @CHIP_STONEY, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %1
  %39 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %40 = load i32, i32* @SMU8_SCRATCH_ENTRY_UCODE_ID_CP_MEC_JT1, align 4
  %41 = call i32 @smu8_smu_populate_single_ucode_load_task(%struct.pp_hwmgr* %39, i32 %40, i32 0)
  br label %46

42:                                               ; preds = %1
  %43 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %44 = load i32, i32* @SMU8_SCRATCH_ENTRY_UCODE_ID_CP_MEC_JT2, align 4
  %45 = call i32 @smu8_smu_populate_single_ucode_load_task(%struct.pp_hwmgr* %43, i32 %44, i32 0)
  br label %46

46:                                               ; preds = %42, %38
  %47 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %48 = load i32, i32* @SMU8_SCRATCH_ENTRY_UCODE_ID_RLC_G, align 4
  %49 = call i32 @smu8_smu_populate_single_ucode_load_task(%struct.pp_hwmgr* %47, i32 %48, i32 0)
  %50 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %51 = load i32, i32* @SMU8_SCRATCH_ENTRY_UCODE_ID_RLC_SCRATCH, align 4
  %52 = load i32, i32* @TASK_TYPE_UCODE_LOAD, align 4
  %53 = call i32 @smu8_smu_populate_single_scratch_task(%struct.pp_hwmgr* %50, i32 %51, i32 %52, i32 0)
  %54 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %55 = load i32, i32* @SMU8_SCRATCH_ENTRY_UCODE_ID_RLC_SRM_ARAM, align 4
  %56 = load i32, i32* @TASK_TYPE_UCODE_LOAD, align 4
  %57 = call i32 @smu8_smu_populate_single_scratch_task(%struct.pp_hwmgr* %54, i32 %55, i32 %56, i32 0)
  %58 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %59 = load i32, i32* @SMU8_SCRATCH_ENTRY_UCODE_ID_RLC_SRM_DRAM, align 4
  %60 = load i32, i32* @TASK_TYPE_UCODE_LOAD, align 4
  %61 = call i32 @smu8_smu_populate_single_scratch_task(%struct.pp_hwmgr* %58, i32 %59, i32 %60, i32 1)
  ret i32 0
}

declare dso_local i32 @smu8_smu_populate_single_ucode_load_task(%struct.pp_hwmgr*, i32, i32) #1

declare dso_local i32 @smu8_smu_populate_single_scratch_task(%struct.pp_hwmgr*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
