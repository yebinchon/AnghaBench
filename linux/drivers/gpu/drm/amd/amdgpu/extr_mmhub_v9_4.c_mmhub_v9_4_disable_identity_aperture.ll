; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_mmhub_v9_4.c_mmhub_v9_4_disable_identity_aperture.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_mmhub_v9_4.c_mmhub_v9_4_disable_identity_aperture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }

@MMHUB = common dso_local global i32 0, align 4
@mmVML2PF0_VM_L2_CONTEXT1_IDENTITY_APERTURE_LOW_ADDR_LO32 = common dso_local global i32 0, align 4
@MMHUB_INSTANCE_REGISTER_OFFSET = common dso_local global i32 0, align 4
@mmVML2PF0_VM_L2_CONTEXT1_IDENTITY_APERTURE_LOW_ADDR_HI32 = common dso_local global i32 0, align 4
@mmVML2PF0_VM_L2_CONTEXT1_IDENTITY_APERTURE_HIGH_ADDR_LO32 = common dso_local global i32 0, align 4
@mmVML2PF0_VM_L2_CONTEXT1_IDENTITY_APERTURE_HIGH_ADDR_HI32 = common dso_local global i32 0, align 4
@mmVML2PF0_VM_L2_CONTEXT_IDENTITY_PHYSICAL_OFFSET_LO32 = common dso_local global i32 0, align 4
@mmVML2PF0_VM_L2_CONTEXT_IDENTITY_PHYSICAL_OFFSET_HI32 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*, i32)* @mmhub_v9_4_disable_identity_aperture to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmhub_v9_4_disable_identity_aperture(%struct.amdgpu_device* %0, i32 %1) #0 {
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @MMHUB, align 4
  %6 = load i32, i32* @mmVML2PF0_VM_L2_CONTEXT1_IDENTITY_APERTURE_LOW_ADDR_LO32, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @MMHUB_INSTANCE_REGISTER_OFFSET, align 4
  %9 = mul nsw i32 %7, %8
  %10 = call i32 @WREG32_SOC15_OFFSET(i32 %5, i32 0, i32 %6, i32 %9, i32 -1)
  %11 = load i32, i32* @MMHUB, align 4
  %12 = load i32, i32* @mmVML2PF0_VM_L2_CONTEXT1_IDENTITY_APERTURE_LOW_ADDR_HI32, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @MMHUB_INSTANCE_REGISTER_OFFSET, align 4
  %15 = mul nsw i32 %13, %14
  %16 = call i32 @WREG32_SOC15_OFFSET(i32 %11, i32 0, i32 %12, i32 %15, i32 15)
  %17 = load i32, i32* @MMHUB, align 4
  %18 = load i32, i32* @mmVML2PF0_VM_L2_CONTEXT1_IDENTITY_APERTURE_HIGH_ADDR_LO32, align 4
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @MMHUB_INSTANCE_REGISTER_OFFSET, align 4
  %21 = mul nsw i32 %19, %20
  %22 = call i32 @WREG32_SOC15_OFFSET(i32 %17, i32 0, i32 %18, i32 %21, i32 0)
  %23 = load i32, i32* @MMHUB, align 4
  %24 = load i32, i32* @mmVML2PF0_VM_L2_CONTEXT1_IDENTITY_APERTURE_HIGH_ADDR_HI32, align 4
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @MMHUB_INSTANCE_REGISTER_OFFSET, align 4
  %27 = mul nsw i32 %25, %26
  %28 = call i32 @WREG32_SOC15_OFFSET(i32 %23, i32 0, i32 %24, i32 %27, i32 0)
  %29 = load i32, i32* @MMHUB, align 4
  %30 = load i32, i32* @mmVML2PF0_VM_L2_CONTEXT_IDENTITY_PHYSICAL_OFFSET_LO32, align 4
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @MMHUB_INSTANCE_REGISTER_OFFSET, align 4
  %33 = mul nsw i32 %31, %32
  %34 = call i32 @WREG32_SOC15_OFFSET(i32 %29, i32 0, i32 %30, i32 %33, i32 0)
  %35 = load i32, i32* @MMHUB, align 4
  %36 = load i32, i32* @mmVML2PF0_VM_L2_CONTEXT_IDENTITY_PHYSICAL_OFFSET_HI32, align 4
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @MMHUB_INSTANCE_REGISTER_OFFSET, align 4
  %39 = mul nsw i32 %37, %38
  %40 = call i32 @WREG32_SOC15_OFFSET(i32 %35, i32 0, i32 %36, i32 %39, i32 0)
  ret void
}

declare dso_local i32 @WREG32_SOC15_OFFSET(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
