; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v10_0.c_gfx_v10_0_update_medium_grain_clock_gating.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v10_0.c_gfx_v10_0_update_medium_grain_clock_gating.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }

@AMD_CG_SUPPORT_GFX_MGCG = common dso_local global i32 0, align 4
@GC = common dso_local global i32 0, align 4
@mmRLC_CGTT_MGCG_OVERRIDE = common dso_local global i32 0, align 4
@RLC_CGTT_MGCG_OVERRIDE__GRBM_CGTT_SCLK_OVERRIDE_MASK = common dso_local global i32 0, align 4
@RLC_CGTT_MGCG_OVERRIDE__GFXIP_MGCG_OVERRIDE_MASK = common dso_local global i32 0, align 4
@RLC_CGTT_MGCG_OVERRIDE__GFXIP_MGLS_OVERRIDE_MASK = common dso_local global i32 0, align 4
@RLC_CGTT_MGCG_OVERRIDE__RLC_CGTT_SCLK_OVERRIDE_MASK = common dso_local global i32 0, align 4
@AMD_CG_SUPPORT_GFX_MGLS = common dso_local global i32 0, align 4
@AMD_CG_SUPPORT_GFX_RLC_LS = common dso_local global i32 0, align 4
@mmRLC_MEM_SLP_CNTL = common dso_local global i32 0, align 4
@RLC_MEM_SLP_CNTL__RLC_MEM_LS_EN_MASK = common dso_local global i32 0, align 4
@AMD_CG_SUPPORT_GFX_CP_LS = common dso_local global i32 0, align 4
@mmCP_MEM_SLP_CNTL = common dso_local global i32 0, align 4
@CP_MEM_SLP_CNTL__CP_MEM_LS_EN_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*, i32)* @gfx_v10_0_update_medium_grain_clock_gating to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfx_v10_0_update_medium_grain_clock_gating(%struct.amdgpu_device* %0, i32 %1) #0 {
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %94

9:                                                ; preds = %2
  %10 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %11 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @AMD_CG_SUPPORT_GFX_MGCG, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %94

16:                                               ; preds = %9
  %17 = load i32, i32* @GC, align 4
  %18 = load i32, i32* @mmRLC_CGTT_MGCG_OVERRIDE, align 4
  %19 = call i32 @RREG32_SOC15(i32 %17, i32 0, i32 %18)
  store i32 %19, i32* %5, align 4
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* @RLC_CGTT_MGCG_OVERRIDE__GRBM_CGTT_SCLK_OVERRIDE_MASK, align 4
  %21 = load i32, i32* @RLC_CGTT_MGCG_OVERRIDE__GFXIP_MGCG_OVERRIDE_MASK, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @RLC_CGTT_MGCG_OVERRIDE__GFXIP_MGLS_OVERRIDE_MASK, align 4
  %24 = or i32 %22, %23
  %25 = xor i32 %24, -1
  %26 = load i32, i32* %5, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* @RLC_CGTT_MGCG_OVERRIDE__RLC_CGTT_SCLK_OVERRIDE_MASK, align 4
  %29 = load i32, i32* %5, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %16
  %35 = load i32, i32* @GC, align 4
  %36 = load i32, i32* @mmRLC_CGTT_MGCG_OVERRIDE, align 4
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @WREG32_SOC15(i32 %35, i32 0, i32 %36, i32 %37)
  br label %39

39:                                               ; preds = %34, %16
  %40 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %41 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @AMD_CG_SUPPORT_GFX_MGLS, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %93

46:                                               ; preds = %39
  %47 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %48 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @AMD_CG_SUPPORT_GFX_RLC_LS, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %69

53:                                               ; preds = %46
  %54 = load i32, i32* @GC, align 4
  %55 = load i32, i32* @mmRLC_MEM_SLP_CNTL, align 4
  %56 = call i32 @RREG32_SOC15(i32 %54, i32 0, i32 %55)
  store i32 %56, i32* %5, align 4
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* @RLC_MEM_SLP_CNTL__RLC_MEM_LS_EN_MASK, align 4
  %58 = load i32, i32* %5, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* %5, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %53
  %64 = load i32, i32* @GC, align 4
  %65 = load i32, i32* @mmRLC_MEM_SLP_CNTL, align 4
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @WREG32_SOC15(i32 %64, i32 0, i32 %65, i32 %66)
  br label %68

68:                                               ; preds = %63, %53
  br label %69

69:                                               ; preds = %68, %46
  %70 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %71 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @AMD_CG_SUPPORT_GFX_CP_LS, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %92

76:                                               ; preds = %69
  %77 = load i32, i32* @GC, align 4
  %78 = load i32, i32* @mmCP_MEM_SLP_CNTL, align 4
  %79 = call i32 @RREG32_SOC15(i32 %77, i32 0, i32 %78)
  store i32 %79, i32* %5, align 4
  store i32 %79, i32* %6, align 4
  %80 = load i32, i32* @CP_MEM_SLP_CNTL__CP_MEM_LS_EN_MASK, align 4
  %81 = load i32, i32* %5, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %5, align 4
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* %5, align 4
  %85 = icmp ne i32 %83, %84
  br i1 %85, label %86, label %91

86:                                               ; preds = %76
  %87 = load i32, i32* @GC, align 4
  %88 = load i32, i32* @mmCP_MEM_SLP_CNTL, align 4
  %89 = load i32, i32* %5, align 4
  %90 = call i32 @WREG32_SOC15(i32 %87, i32 0, i32 %88, i32 %89)
  br label %91

91:                                               ; preds = %86, %76
  br label %92

92:                                               ; preds = %91, %69
  br label %93

93:                                               ; preds = %92, %39
  br label %150

94:                                               ; preds = %9, %2
  %95 = load i32, i32* @GC, align 4
  %96 = load i32, i32* @mmRLC_CGTT_MGCG_OVERRIDE, align 4
  %97 = call i32 @RREG32_SOC15(i32 %95, i32 0, i32 %96)
  store i32 %97, i32* %5, align 4
  store i32 %97, i32* %6, align 4
  %98 = load i32, i32* @RLC_CGTT_MGCG_OVERRIDE__RLC_CGTT_SCLK_OVERRIDE_MASK, align 4
  %99 = load i32, i32* @RLC_CGTT_MGCG_OVERRIDE__GRBM_CGTT_SCLK_OVERRIDE_MASK, align 4
  %100 = or i32 %98, %99
  %101 = load i32, i32* @RLC_CGTT_MGCG_OVERRIDE__GFXIP_MGCG_OVERRIDE_MASK, align 4
  %102 = or i32 %100, %101
  %103 = load i32, i32* @RLC_CGTT_MGCG_OVERRIDE__GFXIP_MGLS_OVERRIDE_MASK, align 4
  %104 = or i32 %102, %103
  %105 = load i32, i32* %5, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %5, align 4
  %107 = load i32, i32* %6, align 4
  %108 = load i32, i32* %5, align 4
  %109 = icmp ne i32 %107, %108
  br i1 %109, label %110, label %115

110:                                              ; preds = %94
  %111 = load i32, i32* @GC, align 4
  %112 = load i32, i32* @mmRLC_CGTT_MGCG_OVERRIDE, align 4
  %113 = load i32, i32* %5, align 4
  %114 = call i32 @WREG32_SOC15(i32 %111, i32 0, i32 %112, i32 %113)
  br label %115

115:                                              ; preds = %110, %94
  %116 = load i32, i32* @GC, align 4
  %117 = load i32, i32* @mmRLC_MEM_SLP_CNTL, align 4
  %118 = call i32 @RREG32_SOC15(i32 %116, i32 0, i32 %117)
  store i32 %118, i32* %5, align 4
  %119 = load i32, i32* %5, align 4
  %120 = load i32, i32* @RLC_MEM_SLP_CNTL__RLC_MEM_LS_EN_MASK, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %132

123:                                              ; preds = %115
  %124 = load i32, i32* @RLC_MEM_SLP_CNTL__RLC_MEM_LS_EN_MASK, align 4
  %125 = xor i32 %124, -1
  %126 = load i32, i32* %5, align 4
  %127 = and i32 %126, %125
  store i32 %127, i32* %5, align 4
  %128 = load i32, i32* @GC, align 4
  %129 = load i32, i32* @mmRLC_MEM_SLP_CNTL, align 4
  %130 = load i32, i32* %5, align 4
  %131 = call i32 @WREG32_SOC15(i32 %128, i32 0, i32 %129, i32 %130)
  br label %132

132:                                              ; preds = %123, %115
  %133 = load i32, i32* @GC, align 4
  %134 = load i32, i32* @mmCP_MEM_SLP_CNTL, align 4
  %135 = call i32 @RREG32_SOC15(i32 %133, i32 0, i32 %134)
  store i32 %135, i32* %5, align 4
  %136 = load i32, i32* %5, align 4
  %137 = load i32, i32* @CP_MEM_SLP_CNTL__CP_MEM_LS_EN_MASK, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %149

140:                                              ; preds = %132
  %141 = load i32, i32* @CP_MEM_SLP_CNTL__CP_MEM_LS_EN_MASK, align 4
  %142 = xor i32 %141, -1
  %143 = load i32, i32* %5, align 4
  %144 = and i32 %143, %142
  store i32 %144, i32* %5, align 4
  %145 = load i32, i32* @GC, align 4
  %146 = load i32, i32* @mmCP_MEM_SLP_CNTL, align 4
  %147 = load i32, i32* %5, align 4
  %148 = call i32 @WREG32_SOC15(i32 %145, i32 0, i32 %146, i32 %147)
  br label %149

149:                                              ; preds = %140, %132
  br label %150

150:                                              ; preds = %149, %93
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
