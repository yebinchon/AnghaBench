; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_tonga_smumgr.c_tonga_start_smu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_tonga_smumgr.c_tonga_start_smu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i32, i64, %struct.tonga_smumgr* }
%struct.tonga_smumgr = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@CGS_IND_REG__SMC = common dso_local global i32 0, align 4
@SMU_FIRMWARE = common dso_local global i32 0, align 4
@SMU_MODE = common dso_local global i32 0, align 4
@SMU72_FIRMWARE_HEADER_LOCATION = common dso_local global i64 0, align 8
@SMU72_Firmware_Header = common dso_local global i32 0, align 4
@SoftRegisters = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*)* @tonga_start_smu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tonga_start_smu(%struct.pp_hwmgr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pp_hwmgr*, align 8
  %4 = alloca %struct.tonga_smumgr*, align 8
  %5 = alloca i32, align 4
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %3, align 8
  %6 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %7 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %6, i32 0, i32 2
  %8 = load %struct.tonga_smumgr*, %struct.tonga_smumgr** %7, align 8
  store %struct.tonga_smumgr* %8, %struct.tonga_smumgr** %4, align 8
  %9 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %10 = call i32 @smu7_is_smc_ram_running(%struct.pp_hwmgr* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %43, label %12

12:                                               ; preds = %1
  %13 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %14 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %43

17:                                               ; preds = %12
  %18 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %19 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @CGS_IND_REG__SMC, align 4
  %22 = load i32, i32* @SMU_FIRMWARE, align 4
  %23 = load i32, i32* @SMU_MODE, align 4
  %24 = call i64 @PHM_READ_VFPF_INDIRECT_FIELD(i32 %20, i32 %21, i32 %22, i32 %23)
  %25 = icmp eq i64 0, %24
  br i1 %25, label %26, label %34

26:                                               ; preds = %17
  %27 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %28 = call i32 @tonga_start_in_non_protection_mode(%struct.pp_hwmgr* %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i32, i32* %5, align 4
  store i32 %32, i32* %2, align 4
  br label %57

33:                                               ; preds = %26
  br label %42

34:                                               ; preds = %17
  %35 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %36 = call i32 @tonga_start_in_protection_mode(%struct.pp_hwmgr* %35)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i32, i32* %5, align 4
  store i32 %40, i32* %2, align 4
  br label %57

41:                                               ; preds = %34
  br label %42

42:                                               ; preds = %41, %33
  br label %43

43:                                               ; preds = %42, %12, %1
  %44 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %45 = load i64, i64* @SMU72_FIRMWARE_HEADER_LOCATION, align 8
  %46 = load i32, i32* @SMU72_Firmware_Header, align 4
  %47 = load i32, i32* @SoftRegisters, align 4
  %48 = call i64 @offsetof(i32 %46, i32 %47)
  %49 = add nsw i64 %45, %48
  %50 = load %struct.tonga_smumgr*, %struct.tonga_smumgr** %4, align 8
  %51 = getelementptr inbounds %struct.tonga_smumgr, %struct.tonga_smumgr* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = call i32 @smu7_read_smc_sram_dword(%struct.pp_hwmgr* %44, i64 %49, i32* %52, i32 262144)
  %54 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %55 = call i32 @smu7_request_smu_load_fw(%struct.pp_hwmgr* %54)
  store i32 %55, i32* %5, align 4
  %56 = load i32, i32* %5, align 4
  store i32 %56, i32* %2, align 4
  br label %57

57:                                               ; preds = %43, %39, %31
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i32 @smu7_is_smc_ram_running(%struct.pp_hwmgr*) #1

declare dso_local i64 @PHM_READ_VFPF_INDIRECT_FIELD(i32, i32, i32, i32) #1

declare dso_local i32 @tonga_start_in_non_protection_mode(%struct.pp_hwmgr*) #1

declare dso_local i32 @tonga_start_in_protection_mode(%struct.pp_hwmgr*) #1

declare dso_local i32 @smu7_read_smc_sram_dword(%struct.pp_hwmgr*, i64, i32*, i32) #1

declare dso_local i64 @offsetof(i32, i32) #1

declare dso_local i32 @smu7_request_smu_load_fw(%struct.pp_hwmgr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
