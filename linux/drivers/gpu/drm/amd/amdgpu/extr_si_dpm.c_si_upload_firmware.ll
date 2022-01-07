; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_si_dpm.c_si_upload_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_si_dpm.c_si_upload_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }
%struct.si_power_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*)* @si_upload_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si_upload_firmware(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  %3 = alloca %struct.si_power_info*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  %4 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %5 = call %struct.si_power_info* @si_get_pi(%struct.amdgpu_device* %4)
  store %struct.si_power_info* %5, %struct.si_power_info** %3, align 8
  %6 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %7 = call i32 @amdgpu_si_reset_smc(%struct.amdgpu_device* %6)
  %8 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %9 = call i32 @amdgpu_si_smc_clock(%struct.amdgpu_device* %8, i32 0)
  %10 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %11 = load %struct.si_power_info*, %struct.si_power_info** %3, align 8
  %12 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @amdgpu_si_load_smc_ucode(%struct.amdgpu_device* %10, i32 %13)
  ret i32 %14
}

declare dso_local %struct.si_power_info* @si_get_pi(%struct.amdgpu_device*) #1

declare dso_local i32 @amdgpu_si_reset_smc(%struct.amdgpu_device*) #1

declare dso_local i32 @amdgpu_si_smc_clock(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @amdgpu_si_load_smc_ucode(%struct.amdgpu_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
