; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v9_0.c_gfx_v9_0_update_coarse_grain_clock_gating.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v9_0.c_gfx_v9_0_update_coarse_grain_clock_gating.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32, i64 }

@AMD_CG_SUPPORT_GFX_CGCG = common dso_local global i32 0, align 4
@GC = common dso_local global i32 0, align 4
@mmRLC_CGTT_MGCG_OVERRIDE = common dso_local global i32 0, align 4
@RLC_CGTT_MGCG_OVERRIDE__GFXIP_CGCG_OVERRIDE_MASK = common dso_local global i32 0, align 4
@AMD_CG_SUPPORT_GFX_CGLS = common dso_local global i32 0, align 4
@RLC_CGTT_MGCG_OVERRIDE__GFXIP_CGLS_OVERRIDE_MASK = common dso_local global i32 0, align 4
@mmRLC_CGCG_CGLS_CTRL = common dso_local global i32 0, align 4
@CHIP_ARCTURUS = common dso_local global i64 0, align 8
@RLC_CGCG_CGLS_CTRL__CGCG_GFX_IDLE_THRESHOLD__SHIFT = common dso_local global i32 0, align 4
@RLC_CGCG_CGLS_CTRL__CGCG_EN_MASK = common dso_local global i32 0, align 4
@RLC_CGCG_CGLS_CTRL__CGLS_REP_COMPANSAT_DELAY__SHIFT = common dso_local global i32 0, align 4
@RLC_CGCG_CGLS_CTRL__CGLS_EN_MASK = common dso_local global i32 0, align 4
@mmCP_RB_WPTR_POLL_CNTL = common dso_local global i32 0, align 4
@CP_RB_WPTR_POLL_CNTL__POLL_FREQUENCY__SHIFT = common dso_local global i32 0, align 4
@CP_RB_WPTR_POLL_CNTL__IDLE_POLL_COUNT__SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*, i32)* @gfx_v9_0_update_coarse_grain_clock_gating to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfx_v9_0_update_coarse_grain_clock_gating(%struct.amdgpu_device* %0, i32 %1) #0 {
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %8 = call i32 @amdgpu_gfx_rlc_enter_safe_mode(%struct.amdgpu_device* %7)
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %110

11:                                               ; preds = %2
  %12 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %13 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @AMD_CG_SUPPORT_GFX_CGCG, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %110

18:                                               ; preds = %11
  %19 = load i32, i32* @GC, align 4
  %20 = load i32, i32* @mmRLC_CGTT_MGCG_OVERRIDE, align 4
  %21 = call i32 @RREG32_SOC15(i32 %19, i32 0, i32 %20)
  store i32 %21, i32* %6, align 4
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* @RLC_CGTT_MGCG_OVERRIDE__GFXIP_CGCG_OVERRIDE_MASK, align 4
  %23 = xor i32 %22, -1
  %24 = load i32, i32* %6, align 4
  %25 = and i32 %24, %23
  store i32 %25, i32* %6, align 4
  %26 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %27 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @AMD_CG_SUPPORT_GFX_CGLS, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %18
  %33 = load i32, i32* @RLC_CGTT_MGCG_OVERRIDE__GFXIP_CGLS_OVERRIDE_MASK, align 4
  %34 = xor i32 %33, -1
  %35 = load i32, i32* %6, align 4
  %36 = and i32 %35, %34
  store i32 %36, i32* %6, align 4
  br label %41

37:                                               ; preds = %18
  %38 = load i32, i32* @RLC_CGTT_MGCG_OVERRIDE__GFXIP_CGLS_OVERRIDE_MASK, align 4
  %39 = load i32, i32* %6, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %6, align 4
  br label %41

41:                                               ; preds = %37, %32
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %41
  %46 = load i32, i32* @GC, align 4
  %47 = load i32, i32* @mmRLC_CGTT_MGCG_OVERRIDE, align 4
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @WREG32_SOC15(i32 %46, i32 0, i32 %47, i32 %48)
  br label %50

50:                                               ; preds = %45, %41
  %51 = load i32, i32* @GC, align 4
  %52 = load i32, i32* @mmRLC_CGCG_CGLS_CTRL, align 4
  %53 = call i32 @RREG32_SOC15(i32 %51, i32 0, i32 %52)
  store i32 %53, i32* %5, align 4
  %54 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %55 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @CHIP_ARCTURUS, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %64

59:                                               ; preds = %50
  %60 = load i32, i32* @RLC_CGCG_CGLS_CTRL__CGCG_GFX_IDLE_THRESHOLD__SHIFT, align 4
  %61 = shl i32 8192, %60
  %62 = load i32, i32* @RLC_CGCG_CGLS_CTRL__CGCG_EN_MASK, align 4
  %63 = or i32 %61, %62
  store i32 %63, i32* %6, align 4
  br label %69

64:                                               ; preds = %50
  %65 = load i32, i32* @RLC_CGCG_CGLS_CTRL__CGCG_GFX_IDLE_THRESHOLD__SHIFT, align 4
  %66 = shl i32 54, %65
  %67 = load i32, i32* @RLC_CGCG_CGLS_CTRL__CGCG_EN_MASK, align 4
  %68 = or i32 %66, %67
  store i32 %68, i32* %6, align 4
  br label %69

69:                                               ; preds = %64, %59
  %70 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %71 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @AMD_CG_SUPPORT_GFX_CGLS, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %69
  %77 = load i32, i32* @RLC_CGCG_CGLS_CTRL__CGLS_REP_COMPANSAT_DELAY__SHIFT, align 4
  %78 = shl i32 15, %77
  %79 = load i32, i32* @RLC_CGCG_CGLS_CTRL__CGLS_EN_MASK, align 4
  %80 = or i32 %78, %79
  %81 = load i32, i32* %6, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %6, align 4
  br label %83

83:                                               ; preds = %76, %69
  %84 = load i32, i32* %5, align 4
  %85 = load i32, i32* %6, align 4
  %86 = icmp ne i32 %84, %85
  br i1 %86, label %87, label %92

87:                                               ; preds = %83
  %88 = load i32, i32* @GC, align 4
  %89 = load i32, i32* @mmRLC_CGCG_CGLS_CTRL, align 4
  %90 = load i32, i32* %6, align 4
  %91 = call i32 @WREG32_SOC15(i32 %88, i32 0, i32 %89, i32 %90)
  br label %92

92:                                               ; preds = %87, %83
  %93 = load i32, i32* @GC, align 4
  %94 = load i32, i32* @mmCP_RB_WPTR_POLL_CNTL, align 4
  %95 = call i32 @RREG32_SOC15(i32 %93, i32 0, i32 %94)
  store i32 %95, i32* %5, align 4
  %96 = load i32, i32* @CP_RB_WPTR_POLL_CNTL__POLL_FREQUENCY__SHIFT, align 4
  %97 = shl i32 256, %96
  %98 = load i32, i32* @CP_RB_WPTR_POLL_CNTL__IDLE_POLL_COUNT__SHIFT, align 4
  %99 = shl i32 144, %98
  %100 = or i32 %97, %99
  store i32 %100, i32* %6, align 4
  %101 = load i32, i32* %5, align 4
  %102 = load i32, i32* %6, align 4
  %103 = icmp ne i32 %101, %102
  br i1 %103, label %104, label %109

104:                                              ; preds = %92
  %105 = load i32, i32* @GC, align 4
  %106 = load i32, i32* @mmCP_RB_WPTR_POLL_CNTL, align 4
  %107 = load i32, i32* %6, align 4
  %108 = call i32 @WREG32_SOC15(i32 %105, i32 0, i32 %106, i32 %107)
  br label %109

109:                                              ; preds = %104, %92
  br label %129

110:                                              ; preds = %11, %2
  %111 = load i32, i32* @GC, align 4
  %112 = load i32, i32* @mmRLC_CGCG_CGLS_CTRL, align 4
  %113 = call i32 @RREG32_SOC15(i32 %111, i32 0, i32 %112)
  store i32 %113, i32* %6, align 4
  store i32 %113, i32* %5, align 4
  %114 = load i32, i32* @RLC_CGCG_CGLS_CTRL__CGCG_EN_MASK, align 4
  %115 = load i32, i32* @RLC_CGCG_CGLS_CTRL__CGLS_EN_MASK, align 4
  %116 = or i32 %114, %115
  %117 = xor i32 %116, -1
  %118 = load i32, i32* %6, align 4
  %119 = and i32 %118, %117
  store i32 %119, i32* %6, align 4
  %120 = load i32, i32* %5, align 4
  %121 = load i32, i32* %6, align 4
  %122 = icmp ne i32 %120, %121
  br i1 %122, label %123, label %128

123:                                              ; preds = %110
  %124 = load i32, i32* @GC, align 4
  %125 = load i32, i32* @mmRLC_CGCG_CGLS_CTRL, align 4
  %126 = load i32, i32* %6, align 4
  %127 = call i32 @WREG32_SOC15(i32 %124, i32 0, i32 %125, i32 %126)
  br label %128

128:                                              ; preds = %123, %110
  br label %129

129:                                              ; preds = %128, %109
  %130 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %131 = call i32 @amdgpu_gfx_rlc_exit_safe_mode(%struct.amdgpu_device* %130)
  ret void
}

declare dso_local i32 @amdgpu_gfx_rlc_enter_safe_mode(%struct.amdgpu_device*) #1

declare dso_local i32 @RREG32_SOC15(i32, i32, i32) #1

declare dso_local i32 @WREG32_SOC15(i32, i32, i32, i32) #1

declare dso_local i32 @amdgpu_gfx_rlc_exit_safe_mode(%struct.amdgpu_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
