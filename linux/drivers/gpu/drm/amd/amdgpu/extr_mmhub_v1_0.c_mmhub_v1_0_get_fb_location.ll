; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_mmhub_v1_0.c_mmhub_v1_0_get_fb_location.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_mmhub_v1_0.c_mmhub_v1_0_get_fb_location.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@MMHUB = common dso_local global i32 0, align 4
@mmMC_VM_FB_LOCATION_BASE = common dso_local global i32 0, align 4
@mmMC_VM_FB_LOCATION_TOP = common dso_local global i32 0, align 4
@MC_VM_FB_LOCATION_BASE__FB_BASE_MASK = common dso_local global i32 0, align 4
@MC_VM_FB_LOCATION_TOP__FB_TOP_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mmhub_v1_0_get_fb_location(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  %5 = load i32, i32* @MMHUB, align 4
  %6 = load i32, i32* @mmMC_VM_FB_LOCATION_BASE, align 4
  %7 = call i32 @RREG32_SOC15(i32 %5, i32 0, i32 %6)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* @MMHUB, align 4
  %9 = load i32, i32* @mmMC_VM_FB_LOCATION_TOP, align 4
  %10 = call i32 @RREG32_SOC15(i32 %8, i32 0, i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* @MC_VM_FB_LOCATION_BASE__FB_BASE_MASK, align 4
  %12 = load i32, i32* %3, align 4
  %13 = and i32 %12, %11
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = shl i32 %14, 24
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* @MC_VM_FB_LOCATION_TOP__FB_TOP_MASK, align 4
  %17 = load i32, i32* %4, align 4
  %18 = and i32 %17, %16
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = shl i32 %19, 24
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %3, align 4
  %22 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %23 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i32 %21, i32* %24, align 4
  %25 = load i32, i32* %4, align 4
  %26 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %27 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  store i32 %25, i32* %28, align 4
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i32 @RREG32_SOC15(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
