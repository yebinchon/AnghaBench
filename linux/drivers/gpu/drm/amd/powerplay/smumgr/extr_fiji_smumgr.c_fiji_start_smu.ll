; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_fiji_smumgr.c_fiji_start_smu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_fiji_smumgr.c_fiji_start_smu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i32, i32, i64, i64 }
%struct.fiji_smumgr = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@CGS_IND_REG__SMC = common dso_local global i32 0, align 4
@SMU_FIRMWARE = common dso_local global i32 0, align 4
@SMU_MODE = common dso_local global i32 0, align 4
@SMU7_FIRMWARE_HEADER_LOCATION = common dso_local global i64 0, align 8
@SMU73_Firmware_Header = common dso_local global i32 0, align 4
@SoftRegisters = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*)* @fiji_start_smu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fiji_start_smu(%struct.pp_hwmgr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pp_hwmgr*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.fiji_smumgr*, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %3, align 8
  store i32 0, i32* %4, align 4
  %6 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %7 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %6, i32 0, i32 3
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.fiji_smumgr*
  store %struct.fiji_smumgr* %9, %struct.fiji_smumgr** %5, align 8
  %10 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %11 = call i32 @smu7_is_smc_ram_running(%struct.pp_hwmgr* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %51, label %13

13:                                               ; preds = %1
  %14 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %15 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %51

18:                                               ; preds = %13
  %19 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %20 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @CGS_IND_REG__SMC, align 4
  %23 = load i32, i32* @SMU_FIRMWARE, align 4
  %24 = load i32, i32* @SMU_MODE, align 4
  %25 = call i64 @PHM_READ_VFPF_INDIRECT_FIELD(i32 %21, i32 %22, i32 %23, i32 %24)
  %26 = icmp eq i64 0, %25
  br i1 %26, label %27, label %35

27:                                               ; preds = %18
  %28 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %29 = call i32 @fiji_start_smu_in_non_protection_mode(%struct.pp_hwmgr* %28)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i32, i32* %4, align 4
  store i32 %33, i32* %2, align 4
  br label %65

34:                                               ; preds = %27
  br label %43

35:                                               ; preds = %18
  %36 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %37 = call i32 @fiji_start_smu_in_protection_mode(%struct.pp_hwmgr* %36)
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i32, i32* %4, align 4
  store i32 %41, i32* %2, align 4
  br label %65

42:                                               ; preds = %35
  br label %43

43:                                               ; preds = %42, %34
  %44 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %45 = call i64 @fiji_avfs_event_mgr(%struct.pp_hwmgr* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %49 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %48, i32 0, i32 0
  store i32 0, i32* %49, align 8
  br label %50

50:                                               ; preds = %47, %43
  br label %51

51:                                               ; preds = %50, %13, %1
  %52 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %53 = load i64, i64* @SMU7_FIRMWARE_HEADER_LOCATION, align 8
  %54 = load i32, i32* @SMU73_Firmware_Header, align 4
  %55 = load i32, i32* @SoftRegisters, align 4
  %56 = call i64 @offsetof(i32 %54, i32 %55)
  %57 = add nsw i64 %53, %56
  %58 = load %struct.fiji_smumgr*, %struct.fiji_smumgr** %5, align 8
  %59 = getelementptr inbounds %struct.fiji_smumgr, %struct.fiji_smumgr* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = call i32 @smu7_read_smc_sram_dword(%struct.pp_hwmgr* %52, i64 %57, i32* %60, i32 262144)
  %62 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %63 = call i32 @smu7_request_smu_load_fw(%struct.pp_hwmgr* %62)
  store i32 %63, i32* %4, align 4
  %64 = load i32, i32* %4, align 4
  store i32 %64, i32* %2, align 4
  br label %65

65:                                               ; preds = %51, %40, %32
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i32 @smu7_is_smc_ram_running(%struct.pp_hwmgr*) #1

declare dso_local i64 @PHM_READ_VFPF_INDIRECT_FIELD(i32, i32, i32, i32) #1

declare dso_local i32 @fiji_start_smu_in_non_protection_mode(%struct.pp_hwmgr*) #1

declare dso_local i32 @fiji_start_smu_in_protection_mode(%struct.pp_hwmgr*) #1

declare dso_local i64 @fiji_avfs_event_mgr(%struct.pp_hwmgr*) #1

declare dso_local i32 @smu7_read_smc_sram_dword(%struct.pp_hwmgr*, i64, i32*, i32) #1

declare dso_local i64 @offsetof(i32, i32) #1

declare dso_local i32 @smu7_request_smu_load_fw(%struct.pp_hwmgr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
