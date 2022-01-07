; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfxhub_v1_0.c_gfxhub_v1_0_gart_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfxhub_v1_0.c_gfxhub_v1_0_gart_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@GC = common dso_local global i32 0, align 4
@mmMC_VM_FB_LOCATION_BASE = common dso_local global i32 0, align 4
@mmMC_VM_FB_LOCATION_TOP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gfxhub_v1_0_gart_enable(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  %3 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %4 = call i64 @amdgpu_sriov_vf(%struct.amdgpu_device* %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %23

6:                                                ; preds = %1
  %7 = load i32, i32* @GC, align 4
  %8 = load i32, i32* @mmMC_VM_FB_LOCATION_BASE, align 4
  %9 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %10 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = ashr i32 %12, 24
  %14 = call i32 @WREG32_SOC15_RLC(i32 %7, i32 0, i32 %8, i32 %13)
  %15 = load i32, i32* @GC, align 4
  %16 = load i32, i32* @mmMC_VM_FB_LOCATION_TOP, align 4
  %17 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %18 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = ashr i32 %20, 24
  %22 = call i32 @WREG32_SOC15_RLC(i32 %15, i32 0, i32 %16, i32 %21)
  br label %23

23:                                               ; preds = %6, %1
  %24 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %25 = call i32 @gfxhub_v1_0_init_gart_aperture_regs(%struct.amdgpu_device* %24)
  %26 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %27 = call i32 @gfxhub_v1_0_init_system_aperture_regs(%struct.amdgpu_device* %26)
  %28 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %29 = call i32 @gfxhub_v1_0_init_tlb_regs(%struct.amdgpu_device* %28)
  %30 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %31 = call i32 @gfxhub_v1_0_init_cache_regs(%struct.amdgpu_device* %30)
  %32 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %33 = call i32 @gfxhub_v1_0_enable_system_domain(%struct.amdgpu_device* %32)
  %34 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %35 = call i32 @gfxhub_v1_0_disable_identity_aperture(%struct.amdgpu_device* %34)
  %36 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %37 = call i32 @gfxhub_v1_0_setup_vmid_config(%struct.amdgpu_device* %36)
  %38 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %39 = call i32 @gfxhub_v1_0_program_invalidation(%struct.amdgpu_device* %38)
  ret i32 0
}

declare dso_local i64 @amdgpu_sriov_vf(%struct.amdgpu_device*) #1

declare dso_local i32 @WREG32_SOC15_RLC(i32, i32, i32, i32) #1

declare dso_local i32 @gfxhub_v1_0_init_gart_aperture_regs(%struct.amdgpu_device*) #1

declare dso_local i32 @gfxhub_v1_0_init_system_aperture_regs(%struct.amdgpu_device*) #1

declare dso_local i32 @gfxhub_v1_0_init_tlb_regs(%struct.amdgpu_device*) #1

declare dso_local i32 @gfxhub_v1_0_init_cache_regs(%struct.amdgpu_device*) #1

declare dso_local i32 @gfxhub_v1_0_enable_system_domain(%struct.amdgpu_device*) #1

declare dso_local i32 @gfxhub_v1_0_disable_identity_aperture(%struct.amdgpu_device*) #1

declare dso_local i32 @gfxhub_v1_0_setup_vmid_config(%struct.amdgpu_device*) #1

declare dso_local i32 @gfxhub_v1_0_program_invalidation(%struct.amdgpu_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
