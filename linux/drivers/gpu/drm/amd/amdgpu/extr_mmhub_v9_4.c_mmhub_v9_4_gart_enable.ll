; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_mmhub_v9_4.c_mmhub_v9_4_gart_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_mmhub_v9_4.c_mmhub_v9_4_gart_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@MMHUB_NUM_INSTANCES = common dso_local global i32 0, align 4
@MMHUB = common dso_local global i32 0, align 4
@mmVMSHAREDVC0_MC_VM_FB_LOCATION_BASE = common dso_local global i32 0, align 4
@MMHUB_INSTANCE_REGISTER_OFFSET = common dso_local global i32 0, align 4
@mmVMSHAREDVC0_MC_VM_FB_LOCATION_TOP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mmhub_v9_4_gart_enable(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  %3 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %60, %1
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @MMHUB_NUM_INSTANCES, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %63

8:                                                ; preds = %4
  %9 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %10 = call i64 @amdgpu_sriov_vf(%struct.amdgpu_device* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %35

12:                                               ; preds = %8
  %13 = load i32, i32* @MMHUB, align 4
  %14 = load i32, i32* @mmVMSHAREDVC0_MC_VM_FB_LOCATION_BASE, align 4
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @MMHUB_INSTANCE_REGISTER_OFFSET, align 4
  %17 = mul nsw i32 %15, %16
  %18 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %19 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = ashr i32 %21, 24
  %23 = call i32 @WREG32_SOC15_OFFSET(i32 %13, i32 0, i32 %14, i32 %17, i32 %22)
  %24 = load i32, i32* @MMHUB, align 4
  %25 = load i32, i32* @mmVMSHAREDVC0_MC_VM_FB_LOCATION_TOP, align 4
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* @MMHUB_INSTANCE_REGISTER_OFFSET, align 4
  %28 = mul nsw i32 %26, %27
  %29 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %30 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = ashr i32 %32, 24
  %34 = call i32 @WREG32_SOC15_OFFSET(i32 %24, i32 0, i32 %25, i32 %28, i32 %33)
  br label %35

35:                                               ; preds = %12, %8
  %36 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %37 = load i32, i32* %3, align 4
  %38 = call i32 @mmhub_v9_4_init_gart_aperture_regs(%struct.amdgpu_device* %36, i32 %37)
  %39 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %40 = load i32, i32* %3, align 4
  %41 = call i32 @mmhub_v9_4_init_system_aperture_regs(%struct.amdgpu_device* %39, i32 %40)
  %42 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %43 = load i32, i32* %3, align 4
  %44 = call i32 @mmhub_v9_4_init_tlb_regs(%struct.amdgpu_device* %42, i32 %43)
  %45 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %46 = load i32, i32* %3, align 4
  %47 = call i32 @mmhub_v9_4_init_cache_regs(%struct.amdgpu_device* %45, i32 %46)
  %48 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %49 = load i32, i32* %3, align 4
  %50 = call i32 @mmhub_v9_4_enable_system_domain(%struct.amdgpu_device* %48, i32 %49)
  %51 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %52 = load i32, i32* %3, align 4
  %53 = call i32 @mmhub_v9_4_disable_identity_aperture(%struct.amdgpu_device* %51, i32 %52)
  %54 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %55 = load i32, i32* %3, align 4
  %56 = call i32 @mmhub_v9_4_setup_vmid_config(%struct.amdgpu_device* %54, i32 %55)
  %57 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %58 = load i32, i32* %3, align 4
  %59 = call i32 @mmhub_v9_4_program_invalidation(%struct.amdgpu_device* %57, i32 %58)
  br label %60

60:                                               ; preds = %35
  %61 = load i32, i32* %3, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %3, align 4
  br label %4

63:                                               ; preds = %4
  ret i32 0
}

declare dso_local i64 @amdgpu_sriov_vf(%struct.amdgpu_device*) #1

declare dso_local i32 @WREG32_SOC15_OFFSET(i32, i32, i32, i32, i32) #1

declare dso_local i32 @mmhub_v9_4_init_gart_aperture_regs(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @mmhub_v9_4_init_system_aperture_regs(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @mmhub_v9_4_init_tlb_regs(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @mmhub_v9_4_init_cache_regs(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @mmhub_v9_4_enable_system_domain(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @mmhub_v9_4_disable_identity_aperture(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @mmhub_v9_4_setup_vmid_config(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @mmhub_v9_4_program_invalidation(%struct.amdgpu_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
