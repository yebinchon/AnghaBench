; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_smu8_smumgr.c_smu8_smu_construct_toc_for_bootup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_smu8_smumgr.c_smu8_smu_construct_toc_for_bootup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i64, %struct.smu8_smumgr* }
%struct.smu8_smumgr = type { i32, i32 }

@SMU8_SCRATCH_ENTRY_UCODE_ID_SDMA0 = common dso_local global i32 0, align 4
@CHIP_STONEY = common dso_local global i64 0, align 8
@SMU8_SCRATCH_ENTRY_UCODE_ID_SDMA1 = common dso_local global i32 0, align 4
@SMU8_SCRATCH_ENTRY_UCODE_ID_CP_CE = common dso_local global i32 0, align 4
@SMU8_SCRATCH_ENTRY_UCODE_ID_CP_PFP = common dso_local global i32 0, align 4
@SMU8_SCRATCH_ENTRY_UCODE_ID_CP_ME = common dso_local global i32 0, align 4
@SMU8_SCRATCH_ENTRY_UCODE_ID_CP_MEC_JT1 = common dso_local global i32 0, align 4
@SMU8_SCRATCH_ENTRY_UCODE_ID_CP_MEC_JT2 = common dso_local global i32 0, align 4
@SMU8_SCRATCH_ENTRY_UCODE_ID_RLC_G = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*)* @smu8_smu_construct_toc_for_bootup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu8_smu_construct_toc_for_bootup(%struct.pp_hwmgr* %0) #0 {
  %2 = alloca %struct.pp_hwmgr*, align 8
  %3 = alloca %struct.smu8_smumgr*, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %2, align 8
  %4 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %5 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %4, i32 0, i32 1
  %6 = load %struct.smu8_smumgr*, %struct.smu8_smumgr** %5, align 8
  store %struct.smu8_smumgr* %6, %struct.smu8_smumgr** %3, align 8
  %7 = load %struct.smu8_smumgr*, %struct.smu8_smumgr** %3, align 8
  %8 = getelementptr inbounds %struct.smu8_smumgr, %struct.smu8_smumgr* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.smu8_smumgr*, %struct.smu8_smumgr** %3, align 8
  %11 = getelementptr inbounds %struct.smu8_smumgr, %struct.smu8_smumgr* %10, i32 0, i32 1
  store i32 %9, i32* %11, align 4
  %12 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %13 = load i32, i32* @SMU8_SCRATCH_ENTRY_UCODE_ID_SDMA0, align 4
  %14 = call i32 @smu8_smu_populate_single_ucode_load_task(%struct.pp_hwmgr* %12, i32 %13, i32 0)
  %15 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %16 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @CHIP_STONEY, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %1
  %21 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %22 = load i32, i32* @SMU8_SCRATCH_ENTRY_UCODE_ID_SDMA1, align 4
  %23 = call i32 @smu8_smu_populate_single_ucode_load_task(%struct.pp_hwmgr* %21, i32 %22, i32 0)
  br label %24

24:                                               ; preds = %20, %1
  %25 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %26 = load i32, i32* @SMU8_SCRATCH_ENTRY_UCODE_ID_CP_CE, align 4
  %27 = call i32 @smu8_smu_populate_single_ucode_load_task(%struct.pp_hwmgr* %25, i32 %26, i32 0)
  %28 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %29 = load i32, i32* @SMU8_SCRATCH_ENTRY_UCODE_ID_CP_PFP, align 4
  %30 = call i32 @smu8_smu_populate_single_ucode_load_task(%struct.pp_hwmgr* %28, i32 %29, i32 0)
  %31 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %32 = load i32, i32* @SMU8_SCRATCH_ENTRY_UCODE_ID_CP_ME, align 4
  %33 = call i32 @smu8_smu_populate_single_ucode_load_task(%struct.pp_hwmgr* %31, i32 %32, i32 0)
  %34 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %35 = load i32, i32* @SMU8_SCRATCH_ENTRY_UCODE_ID_CP_MEC_JT1, align 4
  %36 = call i32 @smu8_smu_populate_single_ucode_load_task(%struct.pp_hwmgr* %34, i32 %35, i32 0)
  %37 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %38 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @CHIP_STONEY, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %24
  %43 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %44 = load i32, i32* @SMU8_SCRATCH_ENTRY_UCODE_ID_CP_MEC_JT2, align 4
  %45 = call i32 @smu8_smu_populate_single_ucode_load_task(%struct.pp_hwmgr* %43, i32 %44, i32 0)
  br label %46

46:                                               ; preds = %42, %24
  %47 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %48 = load i32, i32* @SMU8_SCRATCH_ENTRY_UCODE_ID_RLC_G, align 4
  %49 = call i32 @smu8_smu_populate_single_ucode_load_task(%struct.pp_hwmgr* %47, i32 %48, i32 1)
  ret i32 0
}

declare dso_local i32 @smu8_smu_populate_single_ucode_load_task(%struct.pp_hwmgr*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
