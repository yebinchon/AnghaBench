; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v9_0.c_gfx_v9_0_update_3d_clock_gating.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v9_0.c_gfx_v9_0_update_3d_clock_gating.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i64, i32 }

@CHIP_ARCTURUS = common dso_local global i64 0, align 8
@AMD_CG_SUPPORT_GFX_3D_CGCG = common dso_local global i32 0, align 4
@GC = common dso_local global i32 0, align 4
@mmRLC_CGTT_MGCG_OVERRIDE = common dso_local global i32 0, align 4
@RLC_CGTT_MGCG_OVERRIDE__GFXIP_GFX3D_CG_OVERRIDE_MASK = common dso_local global i32 0, align 4
@mmRLC_CGCG_CGLS_CTRL_3D = common dso_local global i32 0, align 4
@RLC_CGCG_CGLS_CTRL_3D__CGCG_GFX_IDLE_THRESHOLD__SHIFT = common dso_local global i32 0, align 4
@RLC_CGCG_CGLS_CTRL_3D__CGCG_EN_MASK = common dso_local global i32 0, align 4
@AMD_CG_SUPPORT_GFX_3D_CGLS = common dso_local global i32 0, align 4
@RLC_CGCG_CGLS_CTRL_3D__CGLS_REP_COMPANSAT_DELAY__SHIFT = common dso_local global i32 0, align 4
@RLC_CGCG_CGLS_CTRL_3D__CGLS_EN_MASK = common dso_local global i32 0, align 4
@mmCP_RB_WPTR_POLL_CNTL = common dso_local global i32 0, align 4
@CP_RB_WPTR_POLL_CNTL__POLL_FREQUENCY__SHIFT = common dso_local global i32 0, align 4
@CP_RB_WPTR_POLL_CNTL__IDLE_POLL_COUNT__SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*, i32)* @gfx_v9_0_update_3d_clock_gating to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfx_v9_0_update_3d_clock_gating(%struct.amdgpu_device* %0, i32 %1) #0 {
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %8 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @CHIP_ARCTURUS, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %111

13:                                               ; preds = %2
  %14 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %15 = call i32 @amdgpu_gfx_rlc_enter_safe_mode(%struct.amdgpu_device* %14)
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %89

18:                                               ; preds = %13
  %19 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %20 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @AMD_CG_SUPPORT_GFX_3D_CGCG, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %89

25:                                               ; preds = %18
  %26 = load i32, i32* @GC, align 4
  %27 = load i32, i32* @mmRLC_CGTT_MGCG_OVERRIDE, align 4
  %28 = call i32 @RREG32_SOC15(i32 %26, i32 0, i32 %27)
  store i32 %28, i32* %5, align 4
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* @RLC_CGTT_MGCG_OVERRIDE__GFXIP_GFX3D_CG_OVERRIDE_MASK, align 4
  %30 = xor i32 %29, -1
  %31 = load i32, i32* %5, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %25
  %37 = load i32, i32* @GC, align 4
  %38 = load i32, i32* @mmRLC_CGTT_MGCG_OVERRIDE, align 4
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @WREG32_SOC15(i32 %37, i32 0, i32 %38, i32 %39)
  br label %41

41:                                               ; preds = %36, %25
  %42 = load i32, i32* @GC, align 4
  %43 = load i32, i32* @mmRLC_CGCG_CGLS_CTRL_3D, align 4
  %44 = call i32 @RREG32_SOC15(i32 %42, i32 0, i32 %43)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* @RLC_CGCG_CGLS_CTRL_3D__CGCG_GFX_IDLE_THRESHOLD__SHIFT, align 4
  %46 = shl i32 54, %45
  %47 = load i32, i32* @RLC_CGCG_CGLS_CTRL_3D__CGCG_EN_MASK, align 4
  %48 = or i32 %46, %47
  store i32 %48, i32* %5, align 4
  %49 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %50 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @AMD_CG_SUPPORT_GFX_3D_CGLS, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %41
  %56 = load i32, i32* @RLC_CGCG_CGLS_CTRL_3D__CGLS_REP_COMPANSAT_DELAY__SHIFT, align 4
  %57 = shl i32 15, %56
  %58 = load i32, i32* @RLC_CGCG_CGLS_CTRL_3D__CGLS_EN_MASK, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* %5, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %5, align 4
  br label %62

62:                                               ; preds = %55, %41
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* %5, align 4
  %65 = icmp ne i32 %63, %64
  br i1 %65, label %66, label %71

66:                                               ; preds = %62
  %67 = load i32, i32* @GC, align 4
  %68 = load i32, i32* @mmRLC_CGCG_CGLS_CTRL_3D, align 4
  %69 = load i32, i32* %5, align 4
  %70 = call i32 @WREG32_SOC15(i32 %67, i32 0, i32 %68, i32 %69)
  br label %71

71:                                               ; preds = %66, %62
  %72 = load i32, i32* @GC, align 4
  %73 = load i32, i32* @mmCP_RB_WPTR_POLL_CNTL, align 4
  %74 = call i32 @RREG32_SOC15(i32 %72, i32 0, i32 %73)
  store i32 %74, i32* %6, align 4
  %75 = load i32, i32* @CP_RB_WPTR_POLL_CNTL__POLL_FREQUENCY__SHIFT, align 4
  %76 = shl i32 256, %75
  %77 = load i32, i32* @CP_RB_WPTR_POLL_CNTL__IDLE_POLL_COUNT__SHIFT, align 4
  %78 = shl i32 144, %77
  %79 = or i32 %76, %78
  store i32 %79, i32* %5, align 4
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* %5, align 4
  %82 = icmp ne i32 %80, %81
  br i1 %82, label %83, label %88

83:                                               ; preds = %71
  %84 = load i32, i32* @GC, align 4
  %85 = load i32, i32* @mmCP_RB_WPTR_POLL_CNTL, align 4
  %86 = load i32, i32* %5, align 4
  %87 = call i32 @WREG32_SOC15(i32 %84, i32 0, i32 %85, i32 %86)
  br label %88

88:                                               ; preds = %83, %71
  br label %108

89:                                               ; preds = %18, %13
  %90 = load i32, i32* @GC, align 4
  %91 = load i32, i32* @mmRLC_CGCG_CGLS_CTRL_3D, align 4
  %92 = call i32 @RREG32_SOC15(i32 %90, i32 0, i32 %91)
  store i32 %92, i32* %5, align 4
  store i32 %92, i32* %6, align 4
  %93 = load i32, i32* @RLC_CGCG_CGLS_CTRL_3D__CGCG_EN_MASK, align 4
  %94 = load i32, i32* @RLC_CGCG_CGLS_CTRL_3D__CGLS_EN_MASK, align 4
  %95 = or i32 %93, %94
  %96 = xor i32 %95, -1
  %97 = load i32, i32* %5, align 4
  %98 = and i32 %97, %96
  store i32 %98, i32* %5, align 4
  %99 = load i32, i32* %6, align 4
  %100 = load i32, i32* %5, align 4
  %101 = icmp ne i32 %99, %100
  br i1 %101, label %102, label %107

102:                                              ; preds = %89
  %103 = load i32, i32* @GC, align 4
  %104 = load i32, i32* @mmRLC_CGCG_CGLS_CTRL_3D, align 4
  %105 = load i32, i32* %5, align 4
  %106 = call i32 @WREG32_SOC15(i32 %103, i32 0, i32 %104, i32 %105)
  br label %107

107:                                              ; preds = %102, %89
  br label %108

108:                                              ; preds = %107, %88
  %109 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %110 = call i32 @amdgpu_gfx_rlc_exit_safe_mode(%struct.amdgpu_device* %109)
  br label %111

111:                                              ; preds = %108, %12
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
