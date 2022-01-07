; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_vce_v2_0.c_vce_v2_0_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_vce_v2_0.c_vce_v2_0_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@VCE_CLOCK_GATING_A = common dso_local global i32 0, align 4
@VCE_UENC_CLOCK_GATING = common dso_local global i32 0, align 4
@VCE_UENC_REG_CLOCK_GATING = common dso_local global i32 0, align 4
@VCE_CLOCK_GATING_B = common dso_local global i32 0, align 4
@VCE_LMI_CTRL = common dso_local global i32 0, align 4
@VCE_LMI_CACHE_CTRL = common dso_local global i32 0, align 4
@VCE_LMI_SWAP_CNTL = common dso_local global i32 0, align 4
@VCE_LMI_SWAP_CNTL1 = common dso_local global i32 0, align 4
@VCE_LMI_VM_CTRL = common dso_local global i32 0, align 4
@VCE_LMI_VCPU_CACHE_40BIT_BAR = common dso_local global i32 0, align 4
@VCE_V2_0_FW_SIZE = common dso_local global i32 0, align 4
@VCE_VCPU_CACHE_OFFSET0 = common dso_local global i32 0, align 4
@VCE_VCPU_CACHE_SIZE0 = common dso_local global i32 0, align 4
@VCE_V2_0_STACK_SIZE = common dso_local global i32 0, align 4
@VCE_VCPU_CACHE_OFFSET1 = common dso_local global i32 0, align 4
@VCE_VCPU_CACHE_SIZE1 = common dso_local global i32 0, align 4
@VCE_V2_0_DATA_SIZE = common dso_local global i32 0, align 4
@VCE_VCPU_CACHE_OFFSET2 = common dso_local global i32 0, align 4
@VCE_VCPU_CACHE_SIZE2 = common dso_local global i32 0, align 4
@VCE_LMI_CTRL2 = common dso_local global i32 0, align 4
@VCE_SYS_INT_EN = common dso_local global i32 0, align 4
@VCE_SYS_INT_TRAP_INTERRUPT_EN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vce_v2_0_resume(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %5 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %6 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* @VCE_CLOCK_GATING_A, align 4
  %10 = call i32 @WREG32_P(i32 %9, i32 0, i32 -65537)
  %11 = load i32, i32* @VCE_UENC_CLOCK_GATING, align 4
  %12 = call i32 @WREG32_P(i32 %11, i32 2093056, i32 6295551)
  %13 = load i32, i32* @VCE_UENC_REG_CLOCK_GATING, align 4
  %14 = call i32 @WREG32_P(i32 %13, i32 63, i32 -64)
  %15 = load i32, i32* @VCE_CLOCK_GATING_B, align 4
  %16 = call i32 @WREG32(i32 %15, i32 247)
  %17 = load i32, i32* @VCE_LMI_CTRL, align 4
  %18 = call i32 @WREG32(i32 %17, i32 3768320)
  %19 = load i32, i32* @VCE_LMI_CACHE_CTRL, align 4
  %20 = call i32 @WREG32_P(i32 %19, i32 0, i32 -2)
  %21 = load i32, i32* @VCE_LMI_SWAP_CNTL, align 4
  %22 = call i32 @WREG32(i32 %21, i32 0)
  %23 = load i32, i32* @VCE_LMI_SWAP_CNTL1, align 4
  %24 = call i32 @WREG32(i32 %23, i32 0)
  %25 = load i32, i32* @VCE_LMI_VM_CTRL, align 4
  %26 = call i32 @WREG32(i32 %25, i32 0)
  %27 = load i32, i32* @VCE_LMI_VCPU_CACHE_40BIT_BAR, align 4
  %28 = load i32, i32* %3, align 4
  %29 = ashr i32 %28, 8
  %30 = call i32 @WREG32(i32 %27, i32 %29)
  %31 = load i32, i32* %3, align 4
  %32 = and i32 %31, 255
  store i32 %32, i32* %3, align 4
  %33 = load i32, i32* @VCE_V2_0_FW_SIZE, align 4
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* @VCE_VCPU_CACHE_OFFSET0, align 4
  %35 = load i32, i32* %3, align 4
  %36 = and i32 %35, 2147483647
  %37 = call i32 @WREG32(i32 %34, i32 %36)
  %38 = load i32, i32* @VCE_VCPU_CACHE_SIZE0, align 4
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @WREG32(i32 %38, i32 %39)
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* %3, align 4
  %43 = add nsw i32 %42, %41
  store i32 %43, i32* %3, align 4
  %44 = load i32, i32* @VCE_V2_0_STACK_SIZE, align 4
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* @VCE_VCPU_CACHE_OFFSET1, align 4
  %46 = load i32, i32* %3, align 4
  %47 = and i32 %46, 2147483647
  %48 = call i32 @WREG32(i32 %45, i32 %47)
  %49 = load i32, i32* @VCE_VCPU_CACHE_SIZE1, align 4
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @WREG32(i32 %49, i32 %50)
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* %3, align 4
  %54 = add nsw i32 %53, %52
  store i32 %54, i32* %3, align 4
  %55 = load i32, i32* @VCE_V2_0_DATA_SIZE, align 4
  store i32 %55, i32* %4, align 4
  %56 = load i32, i32* @VCE_VCPU_CACHE_OFFSET2, align 4
  %57 = load i32, i32* %3, align 4
  %58 = and i32 %57, 2147483647
  %59 = call i32 @WREG32(i32 %56, i32 %58)
  %60 = load i32, i32* @VCE_VCPU_CACHE_SIZE2, align 4
  %61 = load i32, i32* %4, align 4
  %62 = call i32 @WREG32(i32 %60, i32 %61)
  %63 = load i32, i32* @VCE_LMI_CTRL2, align 4
  %64 = call i32 @WREG32_P(i32 %63, i32 0, i32 -257)
  %65 = load i32, i32* @VCE_SYS_INT_EN, align 4
  %66 = load i32, i32* @VCE_SYS_INT_TRAP_INTERRUPT_EN, align 4
  %67 = load i32, i32* @VCE_SYS_INT_TRAP_INTERRUPT_EN, align 4
  %68 = xor i32 %67, -1
  %69 = call i32 @WREG32_P(i32 %65, i32 %66, i32 %68)
  %70 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %71 = call i32 @vce_v2_0_init_cg(%struct.radeon_device* %70)
  ret i32 0
}

declare dso_local i32 @WREG32_P(i32, i32, i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @vce_v2_0_init_cg(%struct.radeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
