; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v9_0.c_gfx_v9_0_update_medium_grain_clock_gating.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v9_0.c_gfx_v9_0_update_medium_grain_clock_gating.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32, i64 }

@AMD_CG_SUPPORT_GFX_MGCG = common dso_local global i32 0, align 4
@GC = common dso_local global i32 0, align 4
@mmRLC_CGTT_MGCG_OVERRIDE = common dso_local global i32 0, align 4
@CHIP_VEGA12 = common dso_local global i64 0, align 8
@RLC_CGTT_MGCG_OVERRIDE__CPF_CGTT_SCLK_OVERRIDE_MASK = common dso_local global i32 0, align 4
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*, i32)* @gfx_v9_0_update_medium_grain_clock_gating to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfx_v9_0_update_medium_grain_clock_gating(%struct.amdgpu_device* %0, i32 %1) #0 {
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
  br i1 %10, label %11, label %107

11:                                               ; preds = %2
  %12 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %13 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @AMD_CG_SUPPORT_GFX_MGCG, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %107

18:                                               ; preds = %11
  %19 = load i32, i32* @GC, align 4
  %20 = load i32, i32* @mmRLC_CGTT_MGCG_OVERRIDE, align 4
  %21 = call i32 @RREG32_SOC15(i32 %19, i32 0, i32 %20)
  store i32 %21, i32* %5, align 4
  store i32 %21, i32* %6, align 4
  %22 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %23 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @CHIP_VEGA12, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %18
  %28 = load i32, i32* @RLC_CGTT_MGCG_OVERRIDE__CPF_CGTT_SCLK_OVERRIDE_MASK, align 4
  %29 = xor i32 %28, -1
  %30 = load i32, i32* %5, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %5, align 4
  br label %32

32:                                               ; preds = %27, %18
  %33 = load i32, i32* @RLC_CGTT_MGCG_OVERRIDE__GRBM_CGTT_SCLK_OVERRIDE_MASK, align 4
  %34 = load i32, i32* @RLC_CGTT_MGCG_OVERRIDE__GFXIP_MGCG_OVERRIDE_MASK, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @RLC_CGTT_MGCG_OVERRIDE__GFXIP_MGLS_OVERRIDE_MASK, align 4
  %37 = or i32 %35, %36
  %38 = xor i32 %37, -1
  %39 = load i32, i32* %5, align 4
  %40 = and i32 %39, %38
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* @RLC_CGTT_MGCG_OVERRIDE__RLC_CGTT_SCLK_OVERRIDE_MASK, align 4
  %42 = load i32, i32* %5, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %32
  %48 = load i32, i32* @GC, align 4
  %49 = load i32, i32* @mmRLC_CGTT_MGCG_OVERRIDE, align 4
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @WREG32_SOC15(i32 %48, i32 0, i32 %49, i32 %50)
  br label %52

52:                                               ; preds = %47, %32
  %53 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %54 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @AMD_CG_SUPPORT_GFX_MGLS, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %106

59:                                               ; preds = %52
  %60 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %61 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @AMD_CG_SUPPORT_GFX_RLC_LS, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %82

66:                                               ; preds = %59
  %67 = load i32, i32* @GC, align 4
  %68 = load i32, i32* @mmRLC_MEM_SLP_CNTL, align 4
  %69 = call i32 @RREG32_SOC15(i32 %67, i32 0, i32 %68)
  store i32 %69, i32* %5, align 4
  store i32 %69, i32* %6, align 4
  %70 = load i32, i32* @RLC_MEM_SLP_CNTL__RLC_MEM_LS_EN_MASK, align 4
  %71 = load i32, i32* %5, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %5, align 4
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* %5, align 4
  %75 = icmp ne i32 %73, %74
  br i1 %75, label %76, label %81

76:                                               ; preds = %66
  %77 = load i32, i32* @GC, align 4
  %78 = load i32, i32* @mmRLC_MEM_SLP_CNTL, align 4
  %79 = load i32, i32* %5, align 4
  %80 = call i32 @WREG32_SOC15(i32 %77, i32 0, i32 %78, i32 %79)
  br label %81

81:                                               ; preds = %76, %66
  br label %82

82:                                               ; preds = %81, %59
  %83 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %84 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @AMD_CG_SUPPORT_GFX_CP_LS, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %105

89:                                               ; preds = %82
  %90 = load i32, i32* @GC, align 4
  %91 = load i32, i32* @mmCP_MEM_SLP_CNTL, align 4
  %92 = call i32 @RREG32_SOC15(i32 %90, i32 0, i32 %91)
  store i32 %92, i32* %5, align 4
  store i32 %92, i32* %6, align 4
  %93 = load i32, i32* @CP_MEM_SLP_CNTL__CP_MEM_LS_EN_MASK, align 4
  %94 = load i32, i32* %5, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %5, align 4
  %96 = load i32, i32* %6, align 4
  %97 = load i32, i32* %5, align 4
  %98 = icmp ne i32 %96, %97
  br i1 %98, label %99, label %104

99:                                               ; preds = %89
  %100 = load i32, i32* @GC, align 4
  %101 = load i32, i32* @mmCP_MEM_SLP_CNTL, align 4
  %102 = load i32, i32* %5, align 4
  %103 = call i32 @WREG32_SOC15(i32 %100, i32 0, i32 %101, i32 %102)
  br label %104

104:                                              ; preds = %99, %89
  br label %105

105:                                              ; preds = %104, %82
  br label %106

106:                                              ; preds = %105, %52
  br label %173

107:                                              ; preds = %11, %2
  %108 = load i32, i32* @GC, align 4
  %109 = load i32, i32* @mmRLC_CGTT_MGCG_OVERRIDE, align 4
  %110 = call i32 @RREG32_SOC15(i32 %108, i32 0, i32 %109)
  store i32 %110, i32* %5, align 4
  store i32 %110, i32* %6, align 4
  %111 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %112 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @CHIP_VEGA12, align 8
  %115 = icmp ne i64 %113, %114
  br i1 %115, label %116, label %120

116:                                              ; preds = %107
  %117 = load i32, i32* @RLC_CGTT_MGCG_OVERRIDE__CPF_CGTT_SCLK_OVERRIDE_MASK, align 4
  %118 = load i32, i32* %5, align 4
  %119 = or i32 %118, %117
  store i32 %119, i32* %5, align 4
  br label %120

120:                                              ; preds = %116, %107
  %121 = load i32, i32* @RLC_CGTT_MGCG_OVERRIDE__RLC_CGTT_SCLK_OVERRIDE_MASK, align 4
  %122 = load i32, i32* @RLC_CGTT_MGCG_OVERRIDE__GRBM_CGTT_SCLK_OVERRIDE_MASK, align 4
  %123 = or i32 %121, %122
  %124 = load i32, i32* @RLC_CGTT_MGCG_OVERRIDE__GFXIP_MGCG_OVERRIDE_MASK, align 4
  %125 = or i32 %123, %124
  %126 = load i32, i32* @RLC_CGTT_MGCG_OVERRIDE__GFXIP_MGLS_OVERRIDE_MASK, align 4
  %127 = or i32 %125, %126
  %128 = load i32, i32* %5, align 4
  %129 = or i32 %128, %127
  store i32 %129, i32* %5, align 4
  %130 = load i32, i32* %6, align 4
  %131 = load i32, i32* %5, align 4
  %132 = icmp ne i32 %130, %131
  br i1 %132, label %133, label %138

133:                                              ; preds = %120
  %134 = load i32, i32* @GC, align 4
  %135 = load i32, i32* @mmRLC_CGTT_MGCG_OVERRIDE, align 4
  %136 = load i32, i32* %5, align 4
  %137 = call i32 @WREG32_SOC15(i32 %134, i32 0, i32 %135, i32 %136)
  br label %138

138:                                              ; preds = %133, %120
  %139 = load i32, i32* @GC, align 4
  %140 = load i32, i32* @mmRLC_MEM_SLP_CNTL, align 4
  %141 = call i32 @RREG32_SOC15(i32 %139, i32 0, i32 %140)
  store i32 %141, i32* %5, align 4
  %142 = load i32, i32* %5, align 4
  %143 = load i32, i32* @RLC_MEM_SLP_CNTL__RLC_MEM_LS_EN_MASK, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %155

146:                                              ; preds = %138
  %147 = load i32, i32* @RLC_MEM_SLP_CNTL__RLC_MEM_LS_EN_MASK, align 4
  %148 = xor i32 %147, -1
  %149 = load i32, i32* %5, align 4
  %150 = and i32 %149, %148
  store i32 %150, i32* %5, align 4
  %151 = load i32, i32* @GC, align 4
  %152 = load i32, i32* @mmRLC_MEM_SLP_CNTL, align 4
  %153 = load i32, i32* %5, align 4
  %154 = call i32 @WREG32_SOC15(i32 %151, i32 0, i32 %152, i32 %153)
  br label %155

155:                                              ; preds = %146, %138
  %156 = load i32, i32* @GC, align 4
  %157 = load i32, i32* @mmCP_MEM_SLP_CNTL, align 4
  %158 = call i32 @RREG32_SOC15(i32 %156, i32 0, i32 %157)
  store i32 %158, i32* %5, align 4
  %159 = load i32, i32* %5, align 4
  %160 = load i32, i32* @CP_MEM_SLP_CNTL__CP_MEM_LS_EN_MASK, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %172

163:                                              ; preds = %155
  %164 = load i32, i32* @CP_MEM_SLP_CNTL__CP_MEM_LS_EN_MASK, align 4
  %165 = xor i32 %164, -1
  %166 = load i32, i32* %5, align 4
  %167 = and i32 %166, %165
  store i32 %167, i32* %5, align 4
  %168 = load i32, i32* @GC, align 4
  %169 = load i32, i32* @mmCP_MEM_SLP_CNTL, align 4
  %170 = load i32, i32* %5, align 4
  %171 = call i32 @WREG32_SOC15(i32 %168, i32 0, i32 %169, i32 %170)
  br label %172

172:                                              ; preds = %163, %155
  br label %173

173:                                              ; preds = %172, %106
  %174 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %175 = call i32 @amdgpu_gfx_rlc_exit_safe_mode(%struct.amdgpu_device* %174)
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
