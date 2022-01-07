; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v10_0.c_gfx_v10_0_get_clockgating_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v10_0.c_gfx_v10_0_get_clockgating_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }

@GC = common dso_local global i32 0, align 4
@mmRLC_CGTT_MGCG_OVERRIDE = common dso_local global i32 0, align 4
@RLC_CGTT_MGCG_OVERRIDE__GFXIP_MGCG_OVERRIDE_MASK = common dso_local global i32 0, align 4
@AMD_CG_SUPPORT_GFX_MGCG = common dso_local global i32 0, align 4
@mmRLC_CGCG_CGLS_CTRL = common dso_local global i32 0, align 4
@RLC_CGCG_CGLS_CTRL__CGCG_EN_MASK = common dso_local global i32 0, align 4
@AMD_CG_SUPPORT_GFX_CGCG = common dso_local global i32 0, align 4
@RLC_CGCG_CGLS_CTRL__CGLS_EN_MASK = common dso_local global i32 0, align 4
@AMD_CG_SUPPORT_GFX_CGLS = common dso_local global i32 0, align 4
@mmRLC_MEM_SLP_CNTL = common dso_local global i32 0, align 4
@RLC_MEM_SLP_CNTL__RLC_MEM_LS_EN_MASK = common dso_local global i32 0, align 4
@AMD_CG_SUPPORT_GFX_RLC_LS = common dso_local global i32 0, align 4
@AMD_CG_SUPPORT_GFX_MGLS = common dso_local global i32 0, align 4
@mmCP_MEM_SLP_CNTL = common dso_local global i32 0, align 4
@CP_MEM_SLP_CNTL__CP_MEM_LS_EN_MASK = common dso_local global i32 0, align 4
@AMD_CG_SUPPORT_GFX_CP_LS = common dso_local global i32 0, align 4
@mmRLC_CGCG_CGLS_CTRL_3D = common dso_local global i32 0, align 4
@RLC_CGCG_CGLS_CTRL_3D__CGCG_EN_MASK = common dso_local global i32 0, align 4
@AMD_CG_SUPPORT_GFX_3D_CGCG = common dso_local global i32 0, align 4
@RLC_CGCG_CGLS_CTRL_3D__CGLS_EN_MASK = common dso_local global i32 0, align 4
@AMD_CG_SUPPORT_GFX_3D_CGLS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*)* @gfx_v10_0_get_clockgating_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfx_v10_0_get_clockgating_state(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.amdgpu_device*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.amdgpu_device*
  store %struct.amdgpu_device* %8, %struct.amdgpu_device** %5, align 8
  %9 = load i32, i32* @GC, align 4
  %10 = load i32, i32* @mmRLC_CGTT_MGCG_OVERRIDE, align 4
  %11 = call i32 @RREG32_SOC15(i32 %9, i32 0, i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @RLC_CGTT_MGCG_OVERRIDE__GFXIP_MGCG_OVERRIDE_MASK, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @AMD_CG_SUPPORT_GFX_MGCG, align 4
  %18 = load i32*, i32** %4, align 8
  %19 = load i32, i32* %18, align 4
  %20 = or i32 %19, %17
  store i32 %20, i32* %18, align 4
  br label %21

21:                                               ; preds = %16, %2
  %22 = load i32, i32* @GC, align 4
  %23 = load i32, i32* @mmRLC_CGCG_CGLS_CTRL, align 4
  %24 = call i32 @RREG32_SOC15(i32 %22, i32 0, i32 %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @RLC_CGCG_CGLS_CTRL__CGCG_EN_MASK, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %21
  %30 = load i32, i32* @AMD_CG_SUPPORT_GFX_CGCG, align 4
  %31 = load i32*, i32** %4, align 8
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %30
  store i32 %33, i32* %31, align 4
  br label %34

34:                                               ; preds = %29, %21
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @RLC_CGCG_CGLS_CTRL__CGLS_EN_MASK, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load i32, i32* @AMD_CG_SUPPORT_GFX_CGLS, align 4
  %41 = load i32*, i32** %4, align 8
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %40
  store i32 %43, i32* %41, align 4
  br label %44

44:                                               ; preds = %39, %34
  %45 = load i32, i32* @GC, align 4
  %46 = load i32, i32* @mmRLC_MEM_SLP_CNTL, align 4
  %47 = call i32 @RREG32_SOC15(i32 %45, i32 0, i32 %46)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @RLC_MEM_SLP_CNTL__RLC_MEM_LS_EN_MASK, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %44
  %53 = load i32, i32* @AMD_CG_SUPPORT_GFX_RLC_LS, align 4
  %54 = load i32, i32* @AMD_CG_SUPPORT_GFX_MGLS, align 4
  %55 = or i32 %53, %54
  %56 = load i32*, i32** %4, align 8
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %57, %55
  store i32 %58, i32* %56, align 4
  br label %59

59:                                               ; preds = %52, %44
  %60 = load i32, i32* @GC, align 4
  %61 = load i32, i32* @mmCP_MEM_SLP_CNTL, align 4
  %62 = call i32 @RREG32_SOC15(i32 %60, i32 0, i32 %61)
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* @CP_MEM_SLP_CNTL__CP_MEM_LS_EN_MASK, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %59
  %68 = load i32, i32* @AMD_CG_SUPPORT_GFX_CP_LS, align 4
  %69 = load i32, i32* @AMD_CG_SUPPORT_GFX_MGLS, align 4
  %70 = or i32 %68, %69
  %71 = load i32*, i32** %4, align 8
  %72 = load i32, i32* %71, align 4
  %73 = or i32 %72, %70
  store i32 %73, i32* %71, align 4
  br label %74

74:                                               ; preds = %67, %59
  %75 = load i32, i32* @GC, align 4
  %76 = load i32, i32* @mmRLC_CGCG_CGLS_CTRL_3D, align 4
  %77 = call i32 @RREG32_SOC15(i32 %75, i32 0, i32 %76)
  store i32 %77, i32* %6, align 4
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* @RLC_CGCG_CGLS_CTRL_3D__CGCG_EN_MASK, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %74
  %83 = load i32, i32* @AMD_CG_SUPPORT_GFX_3D_CGCG, align 4
  %84 = load i32*, i32** %4, align 8
  %85 = load i32, i32* %84, align 4
  %86 = or i32 %85, %83
  store i32 %86, i32* %84, align 4
  br label %87

87:                                               ; preds = %82, %74
  %88 = load i32, i32* %6, align 4
  %89 = load i32, i32* @RLC_CGCG_CGLS_CTRL_3D__CGLS_EN_MASK, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %87
  %93 = load i32, i32* @AMD_CG_SUPPORT_GFX_3D_CGLS, align 4
  %94 = load i32*, i32** %4, align 8
  %95 = load i32, i32* %94, align 4
  %96 = or i32 %95, %93
  store i32 %96, i32* %94, align 4
  br label %97

97:                                               ; preds = %92, %87
  ret void
}

declare dso_local i32 @RREG32_SOC15(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
