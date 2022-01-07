; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_kv_dpm.c_kv_dpm_powergate_uvd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_kv_dpm.c_kv_dpm_powergate_uvd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }
%struct.kv_power_info = type { i32, i64 }

@AMD_IP_BLOCK_TYPE_UVD = common dso_local global i32 0, align 4
@AMD_PG_STATE_GATE = common dso_local global i32 0, align 4
@PPSMC_MSG_UVDPowerOFF = common dso_local global i32 0, align 4
@PPSMC_MSG_UVDPowerON = common dso_local global i32 0, align 4
@AMD_PG_STATE_UNGATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @kv_dpm_powergate_uvd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kv_dpm_powergate_uvd(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.amdgpu_device*, align 8
  %6 = alloca %struct.kv_power_info*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.amdgpu_device*
  store %struct.amdgpu_device* %9, %struct.amdgpu_device** %5, align 8
  %10 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %11 = call %struct.kv_power_info* @kv_get_pi(%struct.amdgpu_device* %10)
  store %struct.kv_power_info* %11, %struct.kv_power_info** %6, align 8
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.kv_power_info*, %struct.kv_power_info** %6, align 8
  %14 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 8
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %34

17:                                               ; preds = %2
  %18 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %19 = load i32, i32* @AMD_IP_BLOCK_TYPE_UVD, align 4
  %20 = load i32, i32* @AMD_PG_STATE_GATE, align 4
  %21 = call i32 @amdgpu_device_ip_set_powergating_state(%struct.amdgpu_device* %18, i32 %19, i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @kv_update_uvd_dpm(%struct.amdgpu_device* %22, i32 %23)
  %25 = load %struct.kv_power_info*, %struct.kv_power_info** %6, align 8
  %26 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %17
  %30 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %31 = load i32, i32* @PPSMC_MSG_UVDPowerOFF, align 4
  %32 = call i32 @amdgpu_kv_notify_message_to_smu(%struct.amdgpu_device* %30, i32 %31)
  br label %33

33:                                               ; preds = %29, %17
  br label %51

34:                                               ; preds = %2
  %35 = load %struct.kv_power_info*, %struct.kv_power_info** %6, align 8
  %36 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %41 = load i32, i32* @PPSMC_MSG_UVDPowerON, align 4
  %42 = call i32 @amdgpu_kv_notify_message_to_smu(%struct.amdgpu_device* %40, i32 %41)
  br label %43

43:                                               ; preds = %39, %34
  %44 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @kv_update_uvd_dpm(%struct.amdgpu_device* %44, i32 %45)
  %47 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %48 = load i32, i32* @AMD_IP_BLOCK_TYPE_UVD, align 4
  %49 = load i32, i32* @AMD_PG_STATE_UNGATE, align 4
  %50 = call i32 @amdgpu_device_ip_set_powergating_state(%struct.amdgpu_device* %47, i32 %48, i32 %49)
  store i32 %50, i32* %7, align 4
  br label %51

51:                                               ; preds = %43, %33
  ret void
}

declare dso_local %struct.kv_power_info* @kv_get_pi(%struct.amdgpu_device*) #1

declare dso_local i32 @amdgpu_device_ip_set_powergating_state(%struct.amdgpu_device*, i32, i32) #1

declare dso_local i32 @kv_update_uvd_dpm(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @amdgpu_kv_notify_message_to_smu(%struct.amdgpu_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
