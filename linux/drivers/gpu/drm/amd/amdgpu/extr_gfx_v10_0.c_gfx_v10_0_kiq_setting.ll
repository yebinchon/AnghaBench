; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v10_0.c_gfx_v10_0_kiq_setting.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v10_0.c_gfx_v10_0_kiq_setting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ring = type { i32, i32, i32, %struct.amdgpu_device* }
%struct.amdgpu_device = type { i32 }

@GC = common dso_local global i32 0, align 4
@mmRLC_CP_SCHEDULERS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_ring*)* @gfx_v10_0_kiq_setting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfx_v10_0_kiq_setting(%struct.amdgpu_ring* %0) #0 {
  %2 = alloca %struct.amdgpu_ring*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.amdgpu_device*, align 8
  store %struct.amdgpu_ring* %0, %struct.amdgpu_ring** %2, align 8
  %5 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %6 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %5, i32 0, i32 3
  %7 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  store %struct.amdgpu_device* %7, %struct.amdgpu_device** %4, align 8
  %8 = load i32, i32* @GC, align 4
  %9 = load i32, i32* @mmRLC_CP_SCHEDULERS, align 4
  %10 = call i32 @RREG32_SOC15(i32 %8, i32 0, i32 %9)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = and i32 %11, -256
  store i32 %12, i32* %3, align 4
  %13 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %14 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = shl i32 %15, 5
  %17 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %18 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = shl i32 %19, 3
  %21 = or i32 %16, %20
  %22 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %23 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = or i32 %21, %24
  %26 = load i32, i32* %3, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %3, align 4
  %28 = load i32, i32* @GC, align 4
  %29 = load i32, i32* @mmRLC_CP_SCHEDULERS, align 4
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @WREG32_SOC15(i32 %28, i32 0, i32 %29, i32 %30)
  %32 = load i32, i32* %3, align 4
  %33 = or i32 %32, 128
  store i32 %33, i32* %3, align 4
  %34 = load i32, i32* @GC, align 4
  %35 = load i32, i32* @mmRLC_CP_SCHEDULERS, align 4
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @WREG32_SOC15(i32 %34, i32 0, i32 %35, i32 %36)
  ret void
}

declare dso_local i32 @RREG32_SOC15(i32, i32, i32) #1

declare dso_local i32 @WREG32_SOC15(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
