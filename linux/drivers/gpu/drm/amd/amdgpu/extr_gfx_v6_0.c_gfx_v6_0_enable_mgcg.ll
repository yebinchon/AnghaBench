; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v6_0.c_gfx_v6_0_enable_mgcg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v6_0.c_gfx_v6_0_enable_mgcg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }

@AMD_CG_SUPPORT_GFX_MGCG = common dso_local global i32 0, align 4
@mmCGTS_SM_CTRL_REG = common dso_local global i32 0, align 4
@AMD_CG_SUPPORT_GFX_CP_LS = common dso_local global i32 0, align 4
@mmCP_MEM_SLP_CNTL = common dso_local global i32 0, align 4
@CP_MEM_SLP_CNTL__CP_MEM_LS_EN_MASK = common dso_local global i32 0, align 4
@mmRLC_CGTT_MGCG_OVERRIDE = common dso_local global i32 0, align 4
@mmRLC_SERDES_WR_MASTER_MASK_0 = common dso_local global i32 0, align 4
@mmRLC_SERDES_WR_MASTER_MASK_1 = common dso_local global i32 0, align 4
@mmRLC_SERDES_WR_CTRL = common dso_local global i32 0, align 4
@CGTS_SM_CTRL_REG__LS_OVERRIDE_MASK = common dso_local global i32 0, align 4
@CGTS_SM_CTRL_REG__OVERRIDE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*, i32)* @gfx_v6_0_enable_mgcg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfx_v6_0_enable_mgcg(%struct.amdgpu_device* %0, i32 %1) #0 {
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %72

10:                                               ; preds = %2
  %11 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %12 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @AMD_CG_SUPPORT_GFX_MGCG, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %72

17:                                               ; preds = %10
  %18 = load i32, i32* @mmCGTS_SM_CTRL_REG, align 4
  %19 = call i32 @RREG32(i32 %18)
  store i32 %19, i32* %5, align 4
  store i32 %19, i32* %6, align 4
  store i32 -1768685056, i32* %5, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %17
  %24 = load i32, i32* @mmCGTS_SM_CTRL_REG, align 4
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @WREG32(i32 %24, i32 %25)
  br label %27

27:                                               ; preds = %23, %17
  %28 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %29 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @AMD_CG_SUPPORT_GFX_CP_LS, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %48

34:                                               ; preds = %27
  %35 = load i32, i32* @mmCP_MEM_SLP_CNTL, align 4
  %36 = call i32 @RREG32(i32 %35)
  store i32 %36, i32* %5, align 4
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* @CP_MEM_SLP_CNTL__CP_MEM_LS_EN_MASK, align 4
  %38 = load i32, i32* %5, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %5, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %34
  %44 = load i32, i32* @mmCP_MEM_SLP_CNTL, align 4
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @WREG32(i32 %44, i32 %45)
  br label %47

47:                                               ; preds = %43, %34
  br label %48

48:                                               ; preds = %47, %27
  %49 = load i32, i32* @mmRLC_CGTT_MGCG_OVERRIDE, align 4
  %50 = call i32 @RREG32(i32 %49)
  store i32 %50, i32* %5, align 4
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %5, align 4
  %52 = and i32 %51, -64
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* %5, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %48
  %57 = load i32, i32* @mmRLC_CGTT_MGCG_OVERRIDE, align 4
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @WREG32(i32 %57, i32 %58)
  br label %60

60:                                               ; preds = %56, %48
  %61 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %62 = call i32 @gfx_v6_0_halt_rlc(%struct.amdgpu_device* %61)
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* @mmRLC_SERDES_WR_MASTER_MASK_0, align 4
  %64 = call i32 @WREG32(i32 %63, i32 -1)
  %65 = load i32, i32* @mmRLC_SERDES_WR_MASTER_MASK_1, align 4
  %66 = call i32 @WREG32(i32 %65, i32 -1)
  %67 = load i32, i32* @mmRLC_SERDES_WR_CTRL, align 4
  %68 = call i32 @WREG32(i32 %67, i32 13631743)
  %69 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @gfx_v6_0_update_rlc(%struct.amdgpu_device* %69, i32 %70)
  br label %126

72:                                               ; preds = %10, %2
  %73 = load i32, i32* @mmRLC_CGTT_MGCG_OVERRIDE, align 4
  %74 = call i32 @RREG32(i32 %73)
  store i32 %74, i32* %5, align 4
  store i32 %74, i32* %6, align 4
  %75 = load i32, i32* %5, align 4
  %76 = or i32 %75, 3
  store i32 %76, i32* %5, align 4
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* %5, align 4
  %79 = icmp ne i32 %77, %78
  br i1 %79, label %80, label %84

80:                                               ; preds = %72
  %81 = load i32, i32* @mmRLC_CGTT_MGCG_OVERRIDE, align 4
  %82 = load i32, i32* %5, align 4
  %83 = call i32 @WREG32(i32 %81, i32 %82)
  br label %84

84:                                               ; preds = %80, %72
  %85 = load i32, i32* @mmCP_MEM_SLP_CNTL, align 4
  %86 = call i32 @RREG32(i32 %85)
  store i32 %86, i32* %5, align 4
  %87 = load i32, i32* %5, align 4
  %88 = load i32, i32* @CP_MEM_SLP_CNTL__CP_MEM_LS_EN_MASK, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %99

91:                                               ; preds = %84
  %92 = load i32, i32* @CP_MEM_SLP_CNTL__CP_MEM_LS_EN_MASK, align 4
  %93 = xor i32 %92, -1
  %94 = load i32, i32* %5, align 4
  %95 = and i32 %94, %93
  store i32 %95, i32* %5, align 4
  %96 = load i32, i32* @mmCP_MEM_SLP_CNTL, align 4
  %97 = load i32, i32* %5, align 4
  %98 = call i32 @WREG32(i32 %96, i32 %97)
  br label %99

99:                                               ; preds = %91, %84
  %100 = load i32, i32* @mmCGTS_SM_CTRL_REG, align 4
  %101 = call i32 @RREG32(i32 %100)
  store i32 %101, i32* %5, align 4
  store i32 %101, i32* %6, align 4
  %102 = load i32, i32* @CGTS_SM_CTRL_REG__LS_OVERRIDE_MASK, align 4
  %103 = load i32, i32* @CGTS_SM_CTRL_REG__OVERRIDE_MASK, align 4
  %104 = or i32 %102, %103
  %105 = load i32, i32* %5, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %5, align 4
  %107 = load i32, i32* %6, align 4
  %108 = load i32, i32* %5, align 4
  %109 = icmp ne i32 %107, %108
  br i1 %109, label %110, label %114

110:                                              ; preds = %99
  %111 = load i32, i32* @mmCGTS_SM_CTRL_REG, align 4
  %112 = load i32, i32* %5, align 4
  %113 = call i32 @WREG32(i32 %111, i32 %112)
  br label %114

114:                                              ; preds = %110, %99
  %115 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %116 = call i32 @gfx_v6_0_halt_rlc(%struct.amdgpu_device* %115)
  store i32 %116, i32* %7, align 4
  %117 = load i32, i32* @mmRLC_SERDES_WR_MASTER_MASK_0, align 4
  %118 = call i32 @WREG32(i32 %117, i32 -1)
  %119 = load i32, i32* @mmRLC_SERDES_WR_MASTER_MASK_1, align 4
  %120 = call i32 @WREG32(i32 %119, i32 -1)
  %121 = load i32, i32* @mmRLC_SERDES_WR_CTRL, align 4
  %122 = call i32 @WREG32(i32 %121, i32 14680319)
  %123 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %124 = load i32, i32* %7, align 4
  %125 = call i32 @gfx_v6_0_update_rlc(%struct.amdgpu_device* %123, i32 %124)
  br label %126

126:                                              ; preds = %114, %60
  ret void
}

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @gfx_v6_0_halt_rlc(%struct.amdgpu_device*) #1

declare dso_local i32 @gfx_v6_0_update_rlc(%struct.amdgpu_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
