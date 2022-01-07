; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v10_0.c_gfx_v10_0_update_coarse_grain_clock_gating.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v10_0.c_gfx_v10_0_update_coarse_grain_clock_gating.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }

@AMD_CG_SUPPORT_GFX_CGCG = common dso_local global i32 0, align 4
@GC = common dso_local global i32 0, align 4
@mmRLC_CGTT_MGCG_OVERRIDE = common dso_local global i32 0, align 4
@RLC_CGTT_MGCG_OVERRIDE__GFXIP_CGCG_OVERRIDE_MASK = common dso_local global i32 0, align 4
@AMD_CG_SUPPORT_GFX_CGLS = common dso_local global i32 0, align 4
@RLC_CGTT_MGCG_OVERRIDE__GFXIP_CGLS_OVERRIDE_MASK = common dso_local global i32 0, align 4
@mmRLC_CGCG_CGLS_CTRL = common dso_local global i32 0, align 4
@RLC_CGCG_CGLS_CTRL__CGCG_GFX_IDLE_THRESHOLD__SHIFT = common dso_local global i32 0, align 4
@RLC_CGCG_CGLS_CTRL__CGCG_EN_MASK = common dso_local global i32 0, align 4
@RLC_CGCG_CGLS_CTRL__CGLS_REP_COMPANSAT_DELAY__SHIFT = common dso_local global i32 0, align 4
@RLC_CGCG_CGLS_CTRL__CGLS_EN_MASK = common dso_local global i32 0, align 4
@mmCP_RB_WPTR_POLL_CNTL = common dso_local global i32 0, align 4
@CP_RB_WPTR_POLL_CNTL__POLL_FREQUENCY__SHIFT = common dso_local global i32 0, align 4
@CP_RB_WPTR_POLL_CNTL__IDLE_POLL_COUNT__SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*, i32)* @gfx_v10_0_update_coarse_grain_clock_gating to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfx_v10_0_update_coarse_grain_clock_gating(%struct.amdgpu_device* %0, i32 %1) #0 {
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %96

9:                                                ; preds = %2
  %10 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %11 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @AMD_CG_SUPPORT_GFX_CGCG, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %96

16:                                               ; preds = %9
  %17 = load i32, i32* @GC, align 4
  %18 = load i32, i32* @mmRLC_CGTT_MGCG_OVERRIDE, align 4
  %19 = call i32 @RREG32_SOC15(i32 %17, i32 0, i32 %18)
  store i32 %19, i32* %6, align 4
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* @RLC_CGTT_MGCG_OVERRIDE__GFXIP_CGCG_OVERRIDE_MASK, align 4
  %21 = xor i32 %20, -1
  %22 = load i32, i32* %6, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* %6, align 4
  %24 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %25 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @AMD_CG_SUPPORT_GFX_CGLS, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %16
  %31 = load i32, i32* @RLC_CGTT_MGCG_OVERRIDE__GFXIP_CGLS_OVERRIDE_MASK, align 4
  %32 = xor i32 %31, -1
  %33 = load i32, i32* %6, align 4
  %34 = and i32 %33, %32
  store i32 %34, i32* %6, align 4
  br label %39

35:                                               ; preds = %16
  %36 = load i32, i32* @RLC_CGTT_MGCG_OVERRIDE__GFXIP_CGLS_OVERRIDE_MASK, align 4
  %37 = load i32, i32* %6, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %6, align 4
  br label %39

39:                                               ; preds = %35, %30
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %39
  %44 = load i32, i32* @GC, align 4
  %45 = load i32, i32* @mmRLC_CGTT_MGCG_OVERRIDE, align 4
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @WREG32_SOC15(i32 %44, i32 0, i32 %45, i32 %46)
  br label %48

48:                                               ; preds = %43, %39
  %49 = load i32, i32* @GC, align 4
  %50 = load i32, i32* @mmRLC_CGCG_CGLS_CTRL, align 4
  %51 = call i32 @RREG32_SOC15(i32 %49, i32 0, i32 %50)
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* @RLC_CGCG_CGLS_CTRL__CGCG_GFX_IDLE_THRESHOLD__SHIFT, align 4
  %53 = shl i32 54, %52
  %54 = load i32, i32* @RLC_CGCG_CGLS_CTRL__CGCG_EN_MASK, align 4
  %55 = or i32 %53, %54
  store i32 %55, i32* %6, align 4
  %56 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %57 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @AMD_CG_SUPPORT_GFX_CGLS, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %48
  %63 = load i32, i32* @RLC_CGCG_CGLS_CTRL__CGLS_REP_COMPANSAT_DELAY__SHIFT, align 4
  %64 = shl i32 15, %63
  %65 = load i32, i32* @RLC_CGCG_CGLS_CTRL__CGLS_EN_MASK, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* %6, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %6, align 4
  br label %69

69:                                               ; preds = %62, %48
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* %6, align 4
  %72 = icmp ne i32 %70, %71
  br i1 %72, label %73, label %78

73:                                               ; preds = %69
  %74 = load i32, i32* @GC, align 4
  %75 = load i32, i32* @mmRLC_CGCG_CGLS_CTRL, align 4
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @WREG32_SOC15(i32 %74, i32 0, i32 %75, i32 %76)
  br label %78

78:                                               ; preds = %73, %69
  %79 = load i32, i32* @GC, align 4
  %80 = load i32, i32* @mmCP_RB_WPTR_POLL_CNTL, align 4
  %81 = call i32 @RREG32_SOC15(i32 %79, i32 0, i32 %80)
  store i32 %81, i32* %5, align 4
  %82 = load i32, i32* @CP_RB_WPTR_POLL_CNTL__POLL_FREQUENCY__SHIFT, align 4
  %83 = shl i32 256, %82
  %84 = load i32, i32* @CP_RB_WPTR_POLL_CNTL__IDLE_POLL_COUNT__SHIFT, align 4
  %85 = shl i32 144, %84
  %86 = or i32 %83, %85
  store i32 %86, i32* %6, align 4
  %87 = load i32, i32* %5, align 4
  %88 = load i32, i32* %6, align 4
  %89 = icmp ne i32 %87, %88
  br i1 %89, label %90, label %95

90:                                               ; preds = %78
  %91 = load i32, i32* @GC, align 4
  %92 = load i32, i32* @mmCP_RB_WPTR_POLL_CNTL, align 4
  %93 = load i32, i32* %6, align 4
  %94 = call i32 @WREG32_SOC15(i32 %91, i32 0, i32 %92, i32 %93)
  br label %95

95:                                               ; preds = %90, %78
  br label %115

96:                                               ; preds = %9, %2
  %97 = load i32, i32* @GC, align 4
  %98 = load i32, i32* @mmRLC_CGCG_CGLS_CTRL, align 4
  %99 = call i32 @RREG32_SOC15(i32 %97, i32 0, i32 %98)
  store i32 %99, i32* %6, align 4
  store i32 %99, i32* %5, align 4
  %100 = load i32, i32* @RLC_CGCG_CGLS_CTRL__CGCG_EN_MASK, align 4
  %101 = load i32, i32* @RLC_CGCG_CGLS_CTRL__CGLS_EN_MASK, align 4
  %102 = or i32 %100, %101
  %103 = xor i32 %102, -1
  %104 = load i32, i32* %6, align 4
  %105 = and i32 %104, %103
  store i32 %105, i32* %6, align 4
  %106 = load i32, i32* %5, align 4
  %107 = load i32, i32* %6, align 4
  %108 = icmp ne i32 %106, %107
  br i1 %108, label %109, label %114

109:                                              ; preds = %96
  %110 = load i32, i32* @GC, align 4
  %111 = load i32, i32* @mmRLC_CGCG_CGLS_CTRL, align 4
  %112 = load i32, i32* %6, align 4
  %113 = call i32 @WREG32_SOC15(i32 %110, i32 0, i32 %111, i32 %112)
  br label %114

114:                                              ; preds = %109, %96
  br label %115

115:                                              ; preds = %114, %95
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
