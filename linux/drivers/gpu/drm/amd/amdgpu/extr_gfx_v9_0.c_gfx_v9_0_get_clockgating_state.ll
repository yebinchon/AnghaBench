; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v9_0.c_gfx_v9_0_get_clockgating_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v9_0.c_gfx_v9_0_get_clockgating_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i64 }

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
@CHIP_ARCTURUS = common dso_local global i64 0, align 8
@mmRLC_CGCG_CGLS_CTRL_3D = common dso_local global i32 0, align 4
@RLC_CGCG_CGLS_CTRL_3D__CGCG_EN_MASK = common dso_local global i32 0, align 4
@AMD_CG_SUPPORT_GFX_3D_CGCG = common dso_local global i32 0, align 4
@RLC_CGCG_CGLS_CTRL_3D__CGLS_EN_MASK = common dso_local global i32 0, align 4
@AMD_CG_SUPPORT_GFX_3D_CGLS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*)* @gfx_v9_0_get_clockgating_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfx_v9_0_get_clockgating_state(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.amdgpu_device*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.amdgpu_device*
  store %struct.amdgpu_device* %8, %struct.amdgpu_device** %5, align 8
  %9 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %10 = call i64 @amdgpu_sriov_vf(%struct.amdgpu_device* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32*, i32** %4, align 8
  store i32 0, i32* %13, align 4
  br label %14

14:                                               ; preds = %12, %2
  %15 = load i32, i32* @GC, align 4
  %16 = load i32, i32* @mmRLC_CGTT_MGCG_OVERRIDE, align 4
  %17 = call i32 @RREG32_SOC15(i32 %15, i32 0, i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @RLC_CGTT_MGCG_OVERRIDE__GFXIP_MGCG_OVERRIDE_MASK, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %14
  %23 = load i32, i32* @AMD_CG_SUPPORT_GFX_MGCG, align 4
  %24 = load i32*, i32** %4, align 8
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %25, %23
  store i32 %26, i32* %24, align 4
  br label %27

27:                                               ; preds = %22, %14
  %28 = load i32, i32* @GC, align 4
  %29 = load i32, i32* @mmRLC_CGCG_CGLS_CTRL, align 4
  %30 = call i32 @RREG32_SOC15(i32 %28, i32 0, i32 %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @RLC_CGCG_CGLS_CTRL__CGCG_EN_MASK, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %27
  %36 = load i32, i32* @AMD_CG_SUPPORT_GFX_CGCG, align 4
  %37 = load i32*, i32** %4, align 8
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %38, %36
  store i32 %39, i32* %37, align 4
  br label %40

40:                                               ; preds = %35, %27
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @RLC_CGCG_CGLS_CTRL__CGLS_EN_MASK, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %40
  %46 = load i32, i32* @AMD_CG_SUPPORT_GFX_CGLS, align 4
  %47 = load i32*, i32** %4, align 8
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %48, %46
  store i32 %49, i32* %47, align 4
  br label %50

50:                                               ; preds = %45, %40
  %51 = load i32, i32* @GC, align 4
  %52 = load i32, i32* @mmRLC_MEM_SLP_CNTL, align 4
  %53 = call i32 @RREG32_SOC15(i32 %51, i32 0, i32 %52)
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* @RLC_MEM_SLP_CNTL__RLC_MEM_LS_EN_MASK, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %50
  %59 = load i32, i32* @AMD_CG_SUPPORT_GFX_RLC_LS, align 4
  %60 = load i32, i32* @AMD_CG_SUPPORT_GFX_MGLS, align 4
  %61 = or i32 %59, %60
  %62 = load i32*, i32** %4, align 8
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %63, %61
  store i32 %64, i32* %62, align 4
  br label %65

65:                                               ; preds = %58, %50
  %66 = load i32, i32* @GC, align 4
  %67 = load i32, i32* @mmCP_MEM_SLP_CNTL, align 4
  %68 = call i32 @RREG32_SOC15(i32 %66, i32 0, i32 %67)
  store i32 %68, i32* %6, align 4
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* @CP_MEM_SLP_CNTL__CP_MEM_LS_EN_MASK, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %65
  %74 = load i32, i32* @AMD_CG_SUPPORT_GFX_CP_LS, align 4
  %75 = load i32, i32* @AMD_CG_SUPPORT_GFX_MGLS, align 4
  %76 = or i32 %74, %75
  %77 = load i32*, i32** %4, align 8
  %78 = load i32, i32* %77, align 4
  %79 = or i32 %78, %76
  store i32 %79, i32* %77, align 4
  br label %80

80:                                               ; preds = %73, %65
  %81 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %82 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @CHIP_ARCTURUS, align 8
  %85 = icmp ne i64 %83, %84
  br i1 %85, label %86, label %110

86:                                               ; preds = %80
  %87 = load i32, i32* @GC, align 4
  %88 = load i32, i32* @mmRLC_CGCG_CGLS_CTRL_3D, align 4
  %89 = call i32 @RREG32_SOC15(i32 %87, i32 0, i32 %88)
  store i32 %89, i32* %6, align 4
  %90 = load i32, i32* %6, align 4
  %91 = load i32, i32* @RLC_CGCG_CGLS_CTRL_3D__CGCG_EN_MASK, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %86
  %95 = load i32, i32* @AMD_CG_SUPPORT_GFX_3D_CGCG, align 4
  %96 = load i32*, i32** %4, align 8
  %97 = load i32, i32* %96, align 4
  %98 = or i32 %97, %95
  store i32 %98, i32* %96, align 4
  br label %99

99:                                               ; preds = %94, %86
  %100 = load i32, i32* %6, align 4
  %101 = load i32, i32* @RLC_CGCG_CGLS_CTRL_3D__CGLS_EN_MASK, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %99
  %105 = load i32, i32* @AMD_CG_SUPPORT_GFX_3D_CGLS, align 4
  %106 = load i32*, i32** %4, align 8
  %107 = load i32, i32* %106, align 4
  %108 = or i32 %107, %105
  store i32 %108, i32* %106, align 4
  br label %109

109:                                              ; preds = %104, %99
  br label %110

110:                                              ; preds = %109, %80
  ret void
}

declare dso_local i64 @amdgpu_sriov_vf(%struct.amdgpu_device*) #1

declare dso_local i32 @RREG32_SOC15(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
