; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_kv_dpm.c_kv_enable_dpm_voltage_scaling.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_kv_dpm.c_kv_enable_dpm_voltage_scaling.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }
%struct.kv_power_info = type { i32, i32, i64 }

@SMU7_Fusion_DpmTable = common dso_local global i32 0, align 4
@GraphicsVoltageChangeEnable = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*)* @kv_enable_dpm_voltage_scaling to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kv_enable_dpm_voltage_scaling(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  %3 = alloca %struct.kv_power_info*, align 8
  %4 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  %5 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %6 = call %struct.kv_power_info* @kv_get_pi(%struct.amdgpu_device* %5)
  store %struct.kv_power_info* %6, %struct.kv_power_info** %3, align 8
  %7 = load %struct.kv_power_info*, %struct.kv_power_info** %3, align 8
  %8 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %7, i32 0, i32 0
  store i32 1, i32* %8, align 8
  %9 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %10 = load %struct.kv_power_info*, %struct.kv_power_info** %3, align 8
  %11 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = load i32, i32* @SMU7_Fusion_DpmTable, align 4
  %14 = load i32, i32* @GraphicsVoltageChangeEnable, align 4
  %15 = call i64 @offsetof(i32 %13, i32 %14)
  %16 = add nsw i64 %12, %15
  %17 = load %struct.kv_power_info*, %struct.kv_power_info** %3, align 8
  %18 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %17, i32 0, i32 0
  %19 = load %struct.kv_power_info*, %struct.kv_power_info** %3, align 8
  %20 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @amdgpu_kv_copy_bytes_to_smc(%struct.amdgpu_device* %9, i64 %16, i32* %18, i32 4, i32 %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  ret i32 %23
}

declare dso_local %struct.kv_power_info* @kv_get_pi(%struct.amdgpu_device*) #1

declare dso_local i32 @amdgpu_kv_copy_bytes_to_smc(%struct.amdgpu_device*, i64, i32*, i32, i32) #1

declare dso_local i64 @offsetof(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
