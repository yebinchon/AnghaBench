; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vce_v2_0.c_vce_v2_0_mc_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vce_v2_0.c_vce_v2_0_mc_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@mmVCE_CLOCK_GATING_A = common dso_local global i32 0, align 4
@mmVCE_UENC_CLOCK_GATING = common dso_local global i32 0, align 4
@mmVCE_UENC_REG_CLOCK_GATING = common dso_local global i32 0, align 4
@mmVCE_CLOCK_GATING_B = common dso_local global i32 0, align 4
@mmVCE_LMI_CTRL = common dso_local global i32 0, align 4
@mmVCE_LMI_CACHE_CTRL = common dso_local global i32 0, align 4
@mmVCE_LMI_SWAP_CNTL = common dso_local global i32 0, align 4
@mmVCE_LMI_SWAP_CNTL1 = common dso_local global i32 0, align 4
@mmVCE_LMI_VM_CTRL = common dso_local global i32 0, align 4
@mmVCE_LMI_VCPU_CACHE_40BIT_BAR = common dso_local global i32 0, align 4
@AMDGPU_VCE_FIRMWARE_OFFSET = common dso_local global i32 0, align 4
@VCE_V2_0_FW_SIZE = common dso_local global i32 0, align 4
@mmVCE_VCPU_CACHE_OFFSET0 = common dso_local global i32 0, align 4
@mmVCE_VCPU_CACHE_SIZE0 = common dso_local global i32 0, align 4
@VCE_V2_0_STACK_SIZE = common dso_local global i32 0, align 4
@mmVCE_VCPU_CACHE_OFFSET1 = common dso_local global i32 0, align 4
@mmVCE_VCPU_CACHE_SIZE1 = common dso_local global i32 0, align 4
@VCE_V2_0_DATA_SIZE = common dso_local global i32 0, align 4
@mmVCE_VCPU_CACHE_OFFSET2 = common dso_local global i32 0, align 4
@mmVCE_VCPU_CACHE_SIZE2 = common dso_local global i32 0, align 4
@mmVCE_LMI_CTRL2 = common dso_local global i32 0, align 4
@VCE_SYS_INT_EN = common dso_local global i32 0, align 4
@VCE_SYS_INT_TRAP_INTERRUPT_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*)* @vce_v2_0_mc_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vce_v2_0_mc_resume(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  %5 = load i32, i32* @mmVCE_CLOCK_GATING_A, align 4
  %6 = call i32 @WREG32_P(i32 %5, i32 0, i32 -65537)
  %7 = load i32, i32* @mmVCE_UENC_CLOCK_GATING, align 4
  %8 = call i32 @WREG32_P(i32 %7, i32 2093056, i32 6295551)
  %9 = load i32, i32* @mmVCE_UENC_REG_CLOCK_GATING, align 4
  %10 = call i32 @WREG32_P(i32 %9, i32 63, i32 -64)
  %11 = load i32, i32* @mmVCE_CLOCK_GATING_B, align 4
  %12 = call i32 @WREG32(i32 %11, i32 247)
  %13 = load i32, i32* @mmVCE_LMI_CTRL, align 4
  %14 = call i32 @WREG32(i32 %13, i32 3768320)
  %15 = load i32, i32* @mmVCE_LMI_CACHE_CTRL, align 4
  %16 = call i32 @WREG32_P(i32 %15, i32 0, i32 -2)
  %17 = load i32, i32* @mmVCE_LMI_SWAP_CNTL, align 4
  %18 = call i32 @WREG32(i32 %17, i32 0)
  %19 = load i32, i32* @mmVCE_LMI_SWAP_CNTL1, align 4
  %20 = call i32 @WREG32(i32 %19, i32 0)
  %21 = load i32, i32* @mmVCE_LMI_VM_CTRL, align 4
  %22 = call i32 @WREG32(i32 %21, i32 0)
  %23 = load i32, i32* @mmVCE_LMI_VCPU_CACHE_40BIT_BAR, align 4
  %24 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %25 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = ashr i32 %27, 8
  %29 = call i32 @WREG32(i32 %23, i32 %28)
  %30 = load i32, i32* @AMDGPU_VCE_FIRMWARE_OFFSET, align 4
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* @VCE_V2_0_FW_SIZE, align 4
  store i32 %31, i32* %3, align 4
  %32 = load i32, i32* @mmVCE_VCPU_CACHE_OFFSET0, align 4
  %33 = load i32, i32* %4, align 4
  %34 = and i32 %33, 2147483647
  %35 = call i32 @WREG32(i32 %32, i32 %34)
  %36 = load i32, i32* @mmVCE_VCPU_CACHE_SIZE0, align 4
  %37 = load i32, i32* %3, align 4
  %38 = call i32 @WREG32(i32 %36, i32 %37)
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* %4, align 4
  %41 = add nsw i32 %40, %39
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* @VCE_V2_0_STACK_SIZE, align 4
  store i32 %42, i32* %3, align 4
  %43 = load i32, i32* @mmVCE_VCPU_CACHE_OFFSET1, align 4
  %44 = load i32, i32* %4, align 4
  %45 = and i32 %44, 2147483647
  %46 = call i32 @WREG32(i32 %43, i32 %45)
  %47 = load i32, i32* @mmVCE_VCPU_CACHE_SIZE1, align 4
  %48 = load i32, i32* %3, align 4
  %49 = call i32 @WREG32(i32 %47, i32 %48)
  %50 = load i32, i32* %3, align 4
  %51 = load i32, i32* %4, align 4
  %52 = add nsw i32 %51, %50
  store i32 %52, i32* %4, align 4
  %53 = load i32, i32* @VCE_V2_0_DATA_SIZE, align 4
  store i32 %53, i32* %3, align 4
  %54 = load i32, i32* @mmVCE_VCPU_CACHE_OFFSET2, align 4
  %55 = load i32, i32* %4, align 4
  %56 = and i32 %55, 2147483647
  %57 = call i32 @WREG32(i32 %54, i32 %56)
  %58 = load i32, i32* @mmVCE_VCPU_CACHE_SIZE2, align 4
  %59 = load i32, i32* %3, align 4
  %60 = call i32 @WREG32(i32 %58, i32 %59)
  %61 = load i32, i32* @mmVCE_LMI_CTRL2, align 4
  %62 = call i32 @WREG32_P(i32 %61, i32 0, i32 -257)
  %63 = load i32, i32* @VCE_SYS_INT_EN, align 4
  %64 = load i32, i32* @VCE_SYS_INT_TRAP_INTERRUPT_EN, align 4
  %65 = call i32 @WREG32_FIELD(i32 %63, i32 %64, i32 1)
  ret void
}

declare dso_local i32 @WREG32_P(i32, i32, i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @WREG32_FIELD(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
