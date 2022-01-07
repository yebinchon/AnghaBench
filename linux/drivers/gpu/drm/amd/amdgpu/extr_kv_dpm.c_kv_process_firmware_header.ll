; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_kv_dpm.c_kv_process_firmware_header.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_kv_dpm.c_kv_process_firmware_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }
%struct.kv_power_info = type { i8*, i32, i8* }

@SMU7_FIRMWARE_HEADER_LOCATION = common dso_local global i64 0, align 8
@SMU7_Firmware_Header = common dso_local global i32 0, align 4
@DpmTable = common dso_local global i32 0, align 4
@SoftRegisters = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*)* @kv_process_firmware_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kv_process_firmware_header(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  %3 = alloca %struct.kv_power_info*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  %6 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %7 = call %struct.kv_power_info* @kv_get_pi(%struct.amdgpu_device* %6)
  store %struct.kv_power_info* %7, %struct.kv_power_info** %3, align 8
  %8 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %9 = load i64, i64* @SMU7_FIRMWARE_HEADER_LOCATION, align 8
  %10 = load i32, i32* @SMU7_Firmware_Header, align 4
  %11 = load i32, i32* @DpmTable, align 4
  %12 = call i64 @offsetof(i32 %10, i32 %11)
  %13 = add nsw i64 %9, %12
  %14 = load %struct.kv_power_info*, %struct.kv_power_info** %3, align 8
  %15 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @amdgpu_kv_read_smc_sram_dword(%struct.amdgpu_device* %8, i64 %13, i8** %4, i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %1
  %21 = load i8*, i8** %4, align 8
  %22 = load %struct.kv_power_info*, %struct.kv_power_info** %3, align 8
  %23 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %22, i32 0, i32 2
  store i8* %21, i8** %23, align 8
  br label %24

24:                                               ; preds = %20, %1
  %25 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %26 = load i64, i64* @SMU7_FIRMWARE_HEADER_LOCATION, align 8
  %27 = load i32, i32* @SMU7_Firmware_Header, align 4
  %28 = load i32, i32* @SoftRegisters, align 4
  %29 = call i64 @offsetof(i32 %27, i32 %28)
  %30 = add nsw i64 %26, %29
  %31 = load %struct.kv_power_info*, %struct.kv_power_info** %3, align 8
  %32 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @amdgpu_kv_read_smc_sram_dword(%struct.amdgpu_device* %25, i64 %30, i8** %4, i32 %33)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %24
  %38 = load i8*, i8** %4, align 8
  %39 = load %struct.kv_power_info*, %struct.kv_power_info** %3, align 8
  %40 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %39, i32 0, i32 0
  store i8* %38, i8** %40, align 8
  br label %41

41:                                               ; preds = %37, %24
  %42 = load i32, i32* %5, align 4
  ret i32 %42
}

declare dso_local %struct.kv_power_info* @kv_get_pi(%struct.amdgpu_device*) #1

declare dso_local i32 @amdgpu_kv_read_smc_sram_dword(%struct.amdgpu_device*, i64, i8**, i32) #1

declare dso_local i64 @offsetof(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
