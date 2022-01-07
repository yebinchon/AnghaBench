; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_amdkfd_gfx_v9.c_kgd_gfx_v9_wave_control_execute.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_amdkfd_gfx_v9.c_kgd_gfx_v9_wave_control_execute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kgd_dev = type { i32 }
%struct.amdgpu_device = type { i32 }

@GC = common dso_local global i32 0, align 4
@mmGRBM_GFX_INDEX = common dso_local global i32 0, align 4
@mmSQ_CMD = common dso_local global i32 0, align 4
@GRBM_GFX_INDEX = common dso_local global i32 0, align 4
@INSTANCE_BROADCAST_WRITES = common dso_local global i32 0, align 4
@SH_BROADCAST_WRITES = common dso_local global i32 0, align 4
@SE_BROADCAST_WRITES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kgd_gfx_v9_wave_control_execute(%struct.kgd_dev* %0, i32 %1, i32 %2) #0 {
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
  store i32 0, i32* %8, align 4
  %11 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %12 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %11, i32 0, i32 0
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load i32, i32* @GC, align 4
  %15 = load i32, i32* @mmGRBM_GFX_INDEX, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @WREG32_SOC15_RLC_SHADOW(i32 %14, i32 0, i32 %15, i32 %16)
  %18 = load i32, i32* @GC, align 4
  %19 = load i32, i32* @mmSQ_CMD, align 4
  %20 = call i32 @SOC15_REG_OFFSET(i32 %18, i32 0, i32 %19)
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @WREG32(i32 %20, i32 %21)
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @GRBM_GFX_INDEX, align 4
  %25 = load i32, i32* @INSTANCE_BROADCAST_WRITES, align 4
  %26 = call i32 @REG_SET_FIELD(i32 %23, i32 %24, i32 %25, i32 1)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @GRBM_GFX_INDEX, align 4
  %29 = load i32, i32* @SH_BROADCAST_WRITES, align 4
  %30 = call i32 @REG_SET_FIELD(i32 %27, i32 %28, i32 %29, i32 1)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @GRBM_GFX_INDEX, align 4
  %33 = load i32, i32* @SE_BROADCAST_WRITES, align 4
  %34 = call i32 @REG_SET_FIELD(i32 %31, i32 %32, i32 %33, i32 1)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* @GC, align 4
  %36 = load i32, i32* @mmGRBM_GFX_INDEX, align 4
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @WREG32_SOC15_RLC_SHADOW(i32 %35, i32 0, i32 %36, i32 %37)
  %39 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %40 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %39, i32 0, i32 0
  %41 = call i32 @mutex_unlock(i32* %40)
  ret i32 0
}

declare dso_local %struct.amdgpu_device* @get_amdgpu_device(%struct.kgd_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @WREG32_SOC15_RLC_SHADOW(i32, i32, i32, i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @SOC15_REG_OFFSET(i32, i32, i32) #1

declare dso_local i32 @REG_SET_FIELD(i32, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
