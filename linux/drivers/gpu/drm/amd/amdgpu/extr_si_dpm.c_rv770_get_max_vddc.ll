; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_si_dpm.c_rv770_get_max_vddc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_si_dpm.c_rv770_get_max_vddc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }
%struct.rv7xx_power_info = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*)* @rv770_get_max_vddc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rv770_get_max_vddc(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  %3 = alloca %struct.rv7xx_power_info*, align 8
  %4 = alloca i64, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  %5 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %6 = call %struct.rv7xx_power_info* @rv770_get_pi(%struct.amdgpu_device* %5)
  store %struct.rv7xx_power_info* %6, %struct.rv7xx_power_info** %3, align 8
  %7 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %8 = call i64 @amdgpu_atombios_get_max_vddc(%struct.amdgpu_device* %7, i32 0, i32 0, i64* %4)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %3, align 8
  %12 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %11, i32 0, i32 0
  store i64 0, i64* %12, align 8
  br label %17

13:                                               ; preds = %1
  %14 = load i64, i64* %4, align 8
  %15 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %3, align 8
  %16 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %15, i32 0, i32 0
  store i64 %14, i64* %16, align 8
  br label %17

17:                                               ; preds = %13, %10
  ret void
}

declare dso_local %struct.rv7xx_power_info* @rv770_get_pi(%struct.amdgpu_device*) #1

declare dso_local i64 @amdgpu_atombios_get_max_vddc(%struct.amdgpu_device*, i32, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
