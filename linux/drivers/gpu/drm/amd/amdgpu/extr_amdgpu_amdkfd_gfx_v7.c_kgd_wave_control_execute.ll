; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_amdkfd_gfx_v7.c_kgd_wave_control_execute.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_amdkfd_gfx_v7.c_kgd_wave_control_execute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kgd_dev = type { i32 }
%struct.amdgpu_device = type { i32 }

@mmGRBM_GFX_INDEX = common dso_local global i32 0, align 4
@mmSQ_CMD = common dso_local global i32 0, align 4
@GRBM_GFX_INDEX__INSTANCE_BROADCAST_WRITES_MASK = common dso_local global i32 0, align 4
@GRBM_GFX_INDEX__SH_BROADCAST_WRITES_MASK = common dso_local global i32 0, align 4
@GRBM_GFX_INDEX__SE_BROADCAST_WRITES_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kgd_dev*, i32, i32)* @kgd_wave_control_execute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kgd_wave_control_execute(%struct.kgd_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.kgd_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.amdgpu_device*, align 8
  %8 = alloca i32, align 4
  store %struct.kgd_dev* %0, %struct.kgd_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.kgd_dev*, %struct.kgd_dev** %4, align 8
  %10 = call %struct.amdgpu_device* @get_amdgpu_device(%struct.kgd_dev* %9)
  store %struct.amdgpu_device* %10, %struct.amdgpu_device** %7, align 8
  %11 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %12 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %11, i32 0, i32 0
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load i32, i32* @mmGRBM_GFX_INDEX, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @WREG32(i32 %14, i32 %15)
  %17 = load i32, i32* @mmSQ_CMD, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @WREG32(i32 %17, i32 %18)
  %20 = load i32, i32* @GRBM_GFX_INDEX__INSTANCE_BROADCAST_WRITES_MASK, align 4
  %21 = load i32, i32* @GRBM_GFX_INDEX__SH_BROADCAST_WRITES_MASK, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @GRBM_GFX_INDEX__SE_BROADCAST_WRITES_MASK, align 4
  %24 = or i32 %22, %23
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* @mmGRBM_GFX_INDEX, align 4
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @WREG32(i32 %25, i32 %26)
  %28 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %29 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %28, i32 0, i32 0
  %30 = call i32 @mutex_unlock(i32* %29)
  ret i32 0
}

declare dso_local %struct.amdgpu_device* @get_amdgpu_device(%struct.kgd_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
