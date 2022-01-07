; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vce_v3_0.c_vce_v3_0_set_vce_sw_clock_gating.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vce_v3_0.c_vce_v3_0_set_vce_sw_clock_gating.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }

@mmVCE_CLOCK_GATING_B = common dso_local global i32 0, align 4
@mmVCE_UENC_CLOCK_GATING = common dso_local global i32 0, align 4
@mmVCE_UENC_CLOCK_GATING_2 = common dso_local global i32 0, align 4
@mmVCE_UENC_REG_CLOCK_GATING = common dso_local global i32 0, align 4
@mmVCE_UENC_DMA_DCLK_CTRL = common dso_local global i32 0, align 4
@VCE_UENC_DMA_DCLK_CTRL__WRDMCLK_FORCEON_MASK = common dso_local global i32 0, align 4
@VCE_UENC_DMA_DCLK_CTRL__RDDMCLK_FORCEON_MASK = common dso_local global i32 0, align 4
@VCE_UENC_DMA_DCLK_CTRL__REGCLK_FORCEON_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*, i32)* @vce_v3_0_set_vce_sw_clock_gating to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vce_v3_0_set_vce_sw_clock_gating(%struct.amdgpu_device* %0, i32 %1) #0 {
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %7 = call i32 @vce_v3_0_override_vce_clock_gating(%struct.amdgpu_device* %6, i32 1)
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %58, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* @mmVCE_CLOCK_GATING_B, align 4
  %12 = call i32 @RREG32(i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = or i32 %13, 511
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = and i32 %15, -15663105
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* @mmVCE_CLOCK_GATING_B, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @WREG32(i32 %17, i32 %18)
  %20 = load i32, i32* @mmVCE_UENC_CLOCK_GATING, align 4
  %21 = call i32 @RREG32(i32 %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = or i32 %22, 4190208
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = and i32 %24, 4194303
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* @mmVCE_UENC_CLOCK_GATING, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @WREG32(i32 %26, i32 %27)
  %29 = load i32, i32* @mmVCE_UENC_CLOCK_GATING_2, align 4
  %30 = call i32 @RREG32(i32 %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = or i32 %31, 2
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = and i32 %33, -65537
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* @mmVCE_UENC_CLOCK_GATING_2, align 4
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @WREG32(i32 %35, i32 %36)
  %38 = load i32, i32* @mmVCE_UENC_REG_CLOCK_GATING, align 4
  %39 = call i32 @RREG32(i32 %38)
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = or i32 %40, 895
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* @mmVCE_UENC_REG_CLOCK_GATING, align 4
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @WREG32(i32 %42, i32 %43)
  %45 = load i32, i32* @mmVCE_UENC_DMA_DCLK_CTRL, align 4
  %46 = call i32 @RREG32(i32 %45)
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* @VCE_UENC_DMA_DCLK_CTRL__WRDMCLK_FORCEON_MASK, align 4
  %48 = load i32, i32* @VCE_UENC_DMA_DCLK_CTRL__RDDMCLK_FORCEON_MASK, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @VCE_UENC_DMA_DCLK_CTRL__REGCLK_FORCEON_MASK, align 4
  %51 = or i32 %49, %50
  %52 = or i32 %51, 8
  %53 = load i32, i32* %5, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* @mmVCE_UENC_DMA_DCLK_CTRL, align 4
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @WREG32(i32 %55, i32 %56)
  br label %103

58:                                               ; preds = %2
  %59 = load i32, i32* @mmVCE_CLOCK_GATING_B, align 4
  %60 = call i32 @RREG32(i32 %59)
  store i32 %60, i32* %5, align 4
  %61 = load i32, i32* %5, align 4
  %62 = and i32 %61, -524305
  store i32 %62, i32* %5, align 4
  %63 = load i32, i32* %5, align 4
  %64 = or i32 %63, 15138824
  store i32 %64, i32* %5, align 4
  %65 = load i32, i32* @mmVCE_CLOCK_GATING_B, align 4
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @WREG32(i32 %65, i32 %66)
  %68 = load i32, i32* @mmVCE_UENC_CLOCK_GATING, align 4
  %69 = call i32 @RREG32(i32 %68)
  store i32 %69, i32* %5, align 4
  %70 = load i32, i32* %5, align 4
  %71 = or i32 %70, -4194304
  store i32 %71, i32* %5, align 4
  %72 = load i32, i32* @mmVCE_UENC_CLOCK_GATING, align 4
  %73 = load i32, i32* %5, align 4
  %74 = call i32 @WREG32(i32 %72, i32 %73)
  %75 = load i32, i32* @mmVCE_UENC_CLOCK_GATING_2, align 4
  %76 = call i32 @RREG32(i32 %75)
  store i32 %76, i32* %5, align 4
  %77 = load i32, i32* %5, align 4
  %78 = or i32 %77, 65536
  store i32 %78, i32* %5, align 4
  %79 = load i32, i32* @mmVCE_UENC_CLOCK_GATING_2, align 4
  %80 = load i32, i32* %5, align 4
  %81 = call i32 @WREG32(i32 %79, i32 %80)
  %82 = load i32, i32* @mmVCE_UENC_REG_CLOCK_GATING, align 4
  %83 = call i32 @RREG32(i32 %82)
  store i32 %83, i32* %5, align 4
  %84 = load i32, i32* %5, align 4
  %85 = and i32 %84, -1024
  store i32 %85, i32* %5, align 4
  %86 = load i32, i32* @mmVCE_UENC_REG_CLOCK_GATING, align 4
  %87 = load i32, i32* %5, align 4
  %88 = call i32 @WREG32(i32 %86, i32 %87)
  %89 = load i32, i32* @mmVCE_UENC_DMA_DCLK_CTRL, align 4
  %90 = call i32 @RREG32(i32 %89)
  store i32 %90, i32* %5, align 4
  %91 = load i32, i32* @VCE_UENC_DMA_DCLK_CTRL__WRDMCLK_FORCEON_MASK, align 4
  %92 = load i32, i32* @VCE_UENC_DMA_DCLK_CTRL__RDDMCLK_FORCEON_MASK, align 4
  %93 = or i32 %91, %92
  %94 = load i32, i32* @VCE_UENC_DMA_DCLK_CTRL__REGCLK_FORCEON_MASK, align 4
  %95 = or i32 %93, %94
  %96 = or i32 %95, 8
  %97 = xor i32 %96, -1
  %98 = load i32, i32* %5, align 4
  %99 = and i32 %98, %97
  store i32 %99, i32* %5, align 4
  %100 = load i32, i32* @mmVCE_UENC_DMA_DCLK_CTRL, align 4
  %101 = load i32, i32* %5, align 4
  %102 = call i32 @WREG32(i32 %100, i32 %101)
  br label %103

103:                                              ; preds = %58, %10
  %104 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %105 = call i32 @vce_v3_0_override_vce_clock_gating(%struct.amdgpu_device* %104, i32 0)
  ret void
}

declare dso_local i32 @vce_v3_0_override_vce_clock_gating(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
