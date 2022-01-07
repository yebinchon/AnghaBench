; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v10_0.c_gfx_v10_0_update_3d_clock_gating.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v10_0.c_gfx_v10_0_update_3d_clock_gating.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }

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
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*, i32)* @gfx_v10_0_update_3d_clock_gating to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfx_v10_0_update_3d_clock_gating(%struct.amdgpu_device* %0, i32 %1) #0 {
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %80

9:                                                ; preds = %2
  %10 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %11 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @AMD_CG_SUPPORT_GFX_3D_CGCG, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %80

16:                                               ; preds = %9
  %17 = load i32, i32* @GC, align 4
  %18 = load i32, i32* @mmRLC_CGTT_MGCG_OVERRIDE, align 4
  %19 = call i32 @RREG32_SOC15(i32 %17, i32 0, i32 %18)
  store i32 %19, i32* %5, align 4
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* @RLC_CGTT_MGCG_OVERRIDE__GFXIP_GFX3D_CG_OVERRIDE_MASK, align 4
  %21 = xor i32 %20, -1
  %22 = load i32, i32* %5, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %16
  %28 = load i32, i32* @GC, align 4
  %29 = load i32, i32* @mmRLC_CGTT_MGCG_OVERRIDE, align 4
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @WREG32_SOC15(i32 %28, i32 0, i32 %29, i32 %30)
  br label %32

32:                                               ; preds = %27, %16
  %33 = load i32, i32* @GC, align 4
  %34 = load i32, i32* @mmRLC_CGCG_CGLS_CTRL_3D, align 4
  %35 = call i32 @RREG32_SOC15(i32 %33, i32 0, i32 %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* @RLC_CGCG_CGLS_CTRL_3D__CGCG_GFX_IDLE_THRESHOLD__SHIFT, align 4
  %37 = shl i32 54, %36
  %38 = load i32, i32* @RLC_CGCG_CGLS_CTRL_3D__CGCG_EN_MASK, align 4
  %39 = or i32 %37, %38
  store i32 %39, i32* %5, align 4
  %40 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %41 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @AMD_CG_SUPPORT_GFX_3D_CGLS, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %32
  %47 = load i32, i32* @RLC_CGCG_CGLS_CTRL_3D__CGLS_REP_COMPANSAT_DELAY__SHIFT, align 4
  %48 = shl i32 15, %47
  %49 = load i32, i32* @RLC_CGCG_CGLS_CTRL_3D__CGLS_EN_MASK, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* %5, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %5, align 4
  br label %53

53:                                               ; preds = %46, %32
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* %5, align 4
  %56 = icmp ne i32 %54, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %53
  %58 = load i32, i32* @GC, align 4
  %59 = load i32, i32* @mmRLC_CGCG_CGLS_CTRL_3D, align 4
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @WREG32_SOC15(i32 %58, i32 0, i32 %59, i32 %60)
  br label %62

62:                                               ; preds = %57, %53
  %63 = load i32, i32* @GC, align 4
  %64 = load i32, i32* @mmCP_RB_WPTR_POLL_CNTL, align 4
  %65 = call i32 @RREG32_SOC15(i32 %63, i32 0, i32 %64)
  store i32 %65, i32* %6, align 4
  %66 = load i32, i32* @CP_RB_WPTR_POLL_CNTL__POLL_FREQUENCY__SHIFT, align 4
  %67 = shl i32 256, %66
  %68 = load i32, i32* @CP_RB_WPTR_POLL_CNTL__IDLE_POLL_COUNT__SHIFT, align 4
  %69 = shl i32 144, %68
  %70 = or i32 %67, %69
  store i32 %70, i32* %5, align 4
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* %5, align 4
  %73 = icmp ne i32 %71, %72
  br i1 %73, label %74, label %79

74:                                               ; preds = %62
  %75 = load i32, i32* @GC, align 4
  %76 = load i32, i32* @mmCP_RB_WPTR_POLL_CNTL, align 4
  %77 = load i32, i32* %5, align 4
  %78 = call i32 @WREG32_SOC15(i32 %75, i32 0, i32 %76, i32 %77)
  br label %79

79:                                               ; preds = %74, %62
  br label %99

80:                                               ; preds = %9, %2
  %81 = load i32, i32* @GC, align 4
  %82 = load i32, i32* @mmRLC_CGCG_CGLS_CTRL_3D, align 4
  %83 = call i32 @RREG32_SOC15(i32 %81, i32 0, i32 %82)
  store i32 %83, i32* %5, align 4
  store i32 %83, i32* %6, align 4
  %84 = load i32, i32* @RLC_CGCG_CGLS_CTRL_3D__CGCG_EN_MASK, align 4
  %85 = load i32, i32* @RLC_CGCG_CGLS_CTRL_3D__CGLS_EN_MASK, align 4
  %86 = or i32 %84, %85
  %87 = xor i32 %86, -1
  %88 = load i32, i32* %5, align 4
  %89 = and i32 %88, %87
  store i32 %89, i32* %5, align 4
  %90 = load i32, i32* %6, align 4
  %91 = load i32, i32* %5, align 4
  %92 = icmp ne i32 %90, %91
  br i1 %92, label %93, label %98

93:                                               ; preds = %80
  %94 = load i32, i32* @GC, align 4
  %95 = load i32, i32* @mmRLC_CGCG_CGLS_CTRL_3D, align 4
  %96 = load i32, i32* %5, align 4
  %97 = call i32 @WREG32_SOC15(i32 %94, i32 0, i32 %95, i32 %96)
  br label %98

98:                                               ; preds = %93, %80
  br label %99

99:                                               ; preds = %98, %79
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
