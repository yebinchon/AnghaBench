; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_kv_dpm.c_kv_dpm_powergate_vce.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_kv_dpm.c_kv_dpm_powergate_vce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }
%struct.kv_power_info = type { i32, i64 }

@AMD_IP_BLOCK_TYPE_VCE = common dso_local global i32 0, align 4
@AMD_PG_STATE_GATE = common dso_local global i32 0, align 4
@PPSMC_MSG_VCEPowerOFF = common dso_local global i32 0, align 4
@PPSMC_MSG_VCEPowerON = common dso_local global i32 0, align 4
@AMD_PG_STATE_UNGATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @kv_dpm_powergate_vce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kv_dpm_powergate_vce(i8* %0, i32 %1) #0 {
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
  br i1 %16, label %17, label %33

17:                                               ; preds = %2
  %18 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %19 = load i32, i32* @AMD_IP_BLOCK_TYPE_VCE, align 4
  %20 = load i32, i32* @AMD_PG_STATE_GATE, align 4
  %21 = call i32 @amdgpu_device_ip_set_powergating_state(%struct.amdgpu_device* %18, i32 %19, i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %23 = call i32 @kv_enable_vce_dpm(%struct.amdgpu_device* %22, i32 0)
  %24 = load %struct.kv_power_info*, %struct.kv_power_info** %6, align 8
  %25 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %17
  %29 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %30 = load i32, i32* @PPSMC_MSG_VCEPowerOFF, align 4
  %31 = call i32 @amdgpu_kv_notify_message_to_smu(%struct.amdgpu_device* %29, i32 %30)
  br label %32

32:                                               ; preds = %28, %17
  br label %49

33:                                               ; preds = %2
  %34 = load %struct.kv_power_info*, %struct.kv_power_info** %6, align 8
  %35 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %40 = load i32, i32* @PPSMC_MSG_VCEPowerON, align 4
  %41 = call i32 @amdgpu_kv_notify_message_to_smu(%struct.amdgpu_device* %39, i32 %40)
  br label %42

42:                                               ; preds = %38, %33
  %43 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %44 = call i32 @kv_enable_vce_dpm(%struct.amdgpu_device* %43, i32 1)
  %45 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %46 = load i32, i32* @AMD_IP_BLOCK_TYPE_VCE, align 4
  %47 = load i32, i32* @AMD_PG_STATE_UNGATE, align 4
  %48 = call i32 @amdgpu_device_ip_set_powergating_state(%struct.amdgpu_device* %45, i32 %46, i32 %47)
  store i32 %48, i32* %7, align 4
  br label %49

49:                                               ; preds = %42, %32
  ret void
}

declare dso_local %struct.kv_power_info* @kv_get_pi(%struct.amdgpu_device*) #1

declare dso_local i32 @amdgpu_device_ip_set_powergating_state(%struct.amdgpu_device*, i32, i32) #1

declare dso_local i32 @kv_enable_vce_dpm(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @amdgpu_kv_notify_message_to_smu(%struct.amdgpu_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
