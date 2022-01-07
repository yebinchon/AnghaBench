; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v8_0.c_gfx_v8_0_update_medium_grain_clock_gating.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v8_0.c_gfx_v8_0_update_medium_grain_clock_gating.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32, i32 }

@AMD_CG_SUPPORT_GFX_MGCG = common dso_local global i32 0, align 4
@AMD_CG_SUPPORT_GFX_MGLS = common dso_local global i32 0, align 4
@AMD_CG_SUPPORT_GFX_RLC_LS = common dso_local global i32 0, align 4
@RLC_MEM_SLP_CNTL = common dso_local global i32 0, align 4
@RLC_MEM_LS_EN = common dso_local global i32 0, align 4
@AMD_CG_SUPPORT_GFX_CP_LS = common dso_local global i32 0, align 4
@CP_MEM_SLP_CNTL = common dso_local global i32 0, align 4
@CP_MEM_LS_EN = common dso_local global i32 0, align 4
@mmRLC_CGTT_MGCG_OVERRIDE = common dso_local global i32 0, align 4
@AMD_IS_APU = common dso_local global i32 0, align 4
@RLC_CGTT_MGCG_OVERRIDE__CPF_MASK = common dso_local global i32 0, align 4
@RLC_CGTT_MGCG_OVERRIDE__RLC_MASK = common dso_local global i32 0, align 4
@RLC_CGTT_MGCG_OVERRIDE__MGCG_MASK = common dso_local global i32 0, align 4
@RLC_CGTT_MGCG_OVERRIDE__GRBM_MASK = common dso_local global i32 0, align 4
@BPM_REG_MGCG_OVERRIDE = common dso_local global i32 0, align 4
@CLE_BPM_SERDES_CMD = common dso_local global i32 0, align 4
@AMD_CG_SUPPORT_GFX_CGTS = common dso_local global i32 0, align 4
@mmCGTS_SM_CTRL_REG = common dso_local global i32 0, align 4
@CGTS_SM_CTRL_REG__SM_MODE_MASK = common dso_local global i32 0, align 4
@CGTS_SM_CTRL_REG__SM_MODE__SHIFT = common dso_local global i32 0, align 4
@CGTS_SM_CTRL_REG__SM_MODE_ENABLE_MASK = common dso_local global i32 0, align 4
@CGTS_SM_CTRL_REG__OVERRIDE_MASK = common dso_local global i32 0, align 4
@AMD_CG_SUPPORT_GFX_CGTS_LS = common dso_local global i32 0, align 4
@CGTS_SM_CTRL_REG__LS_OVERRIDE_MASK = common dso_local global i32 0, align 4
@CGTS_SM_CTRL_REG__ON_MONITOR_ADD_EN_MASK = common dso_local global i32 0, align 4
@CGTS_SM_CTRL_REG__ON_MONITOR_ADD__SHIFT = common dso_local global i32 0, align 4
@mmRLC_MEM_SLP_CNTL = common dso_local global i32 0, align 4
@RLC_MEM_SLP_CNTL__RLC_MEM_LS_EN_MASK = common dso_local global i32 0, align 4
@mmCP_MEM_SLP_CNTL = common dso_local global i32 0, align 4
@CP_MEM_SLP_CNTL__CP_MEM_LS_EN_MASK = common dso_local global i32 0, align 4
@SET_BPM_SERDES_CMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*, i32)* @gfx_v8_0_update_medium_grain_clock_gating to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfx_v8_0_update_medium_grain_clock_gating(%struct.amdgpu_device* %0, i32 %1) #0 {
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
  br i1 %10, label %11, label %154

11:                                               ; preds = %2
  %12 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %13 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @AMD_CG_SUPPORT_GFX_MGCG, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %154

18:                                               ; preds = %11
  %19 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %20 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @AMD_CG_SUPPORT_GFX_MGLS, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %48

25:                                               ; preds = %18
  %26 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %27 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @AMD_CG_SUPPORT_GFX_RLC_LS, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %25
  %33 = load i32, i32* @RLC_MEM_SLP_CNTL, align 4
  %34 = load i32, i32* @RLC_MEM_LS_EN, align 4
  %35 = call i32 @WREG32_FIELD(i32 %33, i32 %34, i32 1)
  br label %36

36:                                               ; preds = %32, %25
  %37 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %38 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @AMD_CG_SUPPORT_GFX_CP_LS, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %36
  %44 = load i32, i32* @CP_MEM_SLP_CNTL, align 4
  %45 = load i32, i32* @CP_MEM_LS_EN, align 4
  %46 = call i32 @WREG32_FIELD(i32 %44, i32 %45, i32 1)
  br label %47

47:                                               ; preds = %43, %36
  br label %48

48:                                               ; preds = %47, %18
  %49 = load i32, i32* @mmRLC_CGTT_MGCG_OVERRIDE, align 4
  %50 = call i32 @RREG32(i32 %49)
  store i32 %50, i32* %6, align 4
  store i32 %50, i32* %5, align 4
  %51 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %52 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @AMD_IS_APU, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %48
  %58 = load i32, i32* @RLC_CGTT_MGCG_OVERRIDE__CPF_MASK, align 4
  %59 = load i32, i32* @RLC_CGTT_MGCG_OVERRIDE__RLC_MASK, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @RLC_CGTT_MGCG_OVERRIDE__MGCG_MASK, align 4
  %62 = or i32 %60, %61
  %63 = xor i32 %62, -1
  %64 = load i32, i32* %6, align 4
  %65 = and i32 %64, %63
  store i32 %65, i32* %6, align 4
  br label %77

66:                                               ; preds = %48
  %67 = load i32, i32* @RLC_CGTT_MGCG_OVERRIDE__CPF_MASK, align 4
  %68 = load i32, i32* @RLC_CGTT_MGCG_OVERRIDE__RLC_MASK, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* @RLC_CGTT_MGCG_OVERRIDE__MGCG_MASK, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* @RLC_CGTT_MGCG_OVERRIDE__GRBM_MASK, align 4
  %73 = or i32 %71, %72
  %74 = xor i32 %73, -1
  %75 = load i32, i32* %6, align 4
  %76 = and i32 %75, %74
  store i32 %76, i32* %6, align 4
  br label %77

77:                                               ; preds = %66, %57
  %78 = load i32, i32* %5, align 4
  %79 = load i32, i32* %6, align 4
  %80 = icmp ne i32 %78, %79
  br i1 %80, label %81, label %85

81:                                               ; preds = %77
  %82 = load i32, i32* @mmRLC_CGTT_MGCG_OVERRIDE, align 4
  %83 = load i32, i32* %6, align 4
  %84 = call i32 @WREG32(i32 %82, i32 %83)
  br label %85

85:                                               ; preds = %81, %77
  %86 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %87 = call i32 @gfx_v8_0_wait_for_rlc_serdes(%struct.amdgpu_device* %86)
  %88 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %89 = load i32, i32* @BPM_REG_MGCG_OVERRIDE, align 4
  %90 = load i32, i32* @CLE_BPM_SERDES_CMD, align 4
  %91 = call i32 @gfx_v8_0_send_serdes_cmd(%struct.amdgpu_device* %88, i32 %89, i32 %90)
  %92 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %93 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @AMD_CG_SUPPORT_GFX_CGTS, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %150

98:                                               ; preds = %85
  %99 = load i32, i32* @mmCGTS_SM_CTRL_REG, align 4
  %100 = call i32 @RREG32(i32 %99)
  store i32 %100, i32* %6, align 4
  store i32 %100, i32* %5, align 4
  %101 = load i32, i32* @CGTS_SM_CTRL_REG__SM_MODE_MASK, align 4
  %102 = xor i32 %101, -1
  %103 = load i32, i32* %6, align 4
  %104 = and i32 %103, %102
  store i32 %104, i32* %6, align 4
  %105 = load i32, i32* @CGTS_SM_CTRL_REG__SM_MODE__SHIFT, align 4
  %106 = shl i32 2, %105
  %107 = load i32, i32* %6, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %6, align 4
  %109 = load i32, i32* @CGTS_SM_CTRL_REG__SM_MODE_ENABLE_MASK, align 4
  %110 = load i32, i32* %6, align 4
  %111 = or i32 %110, %109
  store i32 %111, i32* %6, align 4
  %112 = load i32, i32* @CGTS_SM_CTRL_REG__OVERRIDE_MASK, align 4
  %113 = xor i32 %112, -1
  %114 = load i32, i32* %6, align 4
  %115 = and i32 %114, %113
  store i32 %115, i32* %6, align 4
  %116 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %117 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @AMD_CG_SUPPORT_GFX_MGLS, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %134

122:                                              ; preds = %98
  %123 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %124 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @AMD_CG_SUPPORT_GFX_CGTS_LS, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %134

129:                                              ; preds = %122
  %130 = load i32, i32* @CGTS_SM_CTRL_REG__LS_OVERRIDE_MASK, align 4
  %131 = xor i32 %130, -1
  %132 = load i32, i32* %6, align 4
  %133 = and i32 %132, %131
  store i32 %133, i32* %6, align 4
  br label %134

134:                                              ; preds = %129, %122, %98
  %135 = load i32, i32* @CGTS_SM_CTRL_REG__ON_MONITOR_ADD_EN_MASK, align 4
  %136 = load i32, i32* %6, align 4
  %137 = or i32 %136, %135
  store i32 %137, i32* %6, align 4
  %138 = load i32, i32* @CGTS_SM_CTRL_REG__ON_MONITOR_ADD__SHIFT, align 4
  %139 = shl i32 150, %138
  %140 = load i32, i32* %6, align 4
  %141 = or i32 %140, %139
  store i32 %141, i32* %6, align 4
  %142 = load i32, i32* %5, align 4
  %143 = load i32, i32* %6, align 4
  %144 = icmp ne i32 %142, %143
  br i1 %144, label %145, label %149

145:                                              ; preds = %134
  %146 = load i32, i32* @mmCGTS_SM_CTRL_REG, align 4
  %147 = load i32, i32* %6, align 4
  %148 = call i32 @WREG32(i32 %146, i32 %147)
  br label %149

149:                                              ; preds = %145, %134
  br label %150

150:                                              ; preds = %149, %85
  %151 = call i32 @udelay(i32 50)
  %152 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %153 = call i32 @gfx_v8_0_wait_for_rlc_serdes(%struct.amdgpu_device* %152)
  br label %228

154:                                              ; preds = %11, %2
  %155 = load i32, i32* @mmRLC_CGTT_MGCG_OVERRIDE, align 4
  %156 = call i32 @RREG32(i32 %155)
  store i32 %156, i32* %6, align 4
  store i32 %156, i32* %5, align 4
  %157 = load i32, i32* @RLC_CGTT_MGCG_OVERRIDE__CPF_MASK, align 4
  %158 = load i32, i32* @RLC_CGTT_MGCG_OVERRIDE__RLC_MASK, align 4
  %159 = or i32 %157, %158
  %160 = load i32, i32* @RLC_CGTT_MGCG_OVERRIDE__MGCG_MASK, align 4
  %161 = or i32 %159, %160
  %162 = load i32, i32* @RLC_CGTT_MGCG_OVERRIDE__GRBM_MASK, align 4
  %163 = or i32 %161, %162
  %164 = load i32, i32* %6, align 4
  %165 = or i32 %164, %163
  store i32 %165, i32* %6, align 4
  %166 = load i32, i32* %5, align 4
  %167 = load i32, i32* %6, align 4
  %168 = icmp ne i32 %166, %167
  br i1 %168, label %169, label %173

169:                                              ; preds = %154
  %170 = load i32, i32* @mmRLC_CGTT_MGCG_OVERRIDE, align 4
  %171 = load i32, i32* %6, align 4
  %172 = call i32 @WREG32(i32 %170, i32 %171)
  br label %173

173:                                              ; preds = %169, %154
  %174 = load i32, i32* @mmRLC_MEM_SLP_CNTL, align 4
  %175 = call i32 @RREG32(i32 %174)
  store i32 %175, i32* %6, align 4
  %176 = load i32, i32* %6, align 4
  %177 = load i32, i32* @RLC_MEM_SLP_CNTL__RLC_MEM_LS_EN_MASK, align 4
  %178 = and i32 %176, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %188

180:                                              ; preds = %173
  %181 = load i32, i32* @RLC_MEM_SLP_CNTL__RLC_MEM_LS_EN_MASK, align 4
  %182 = xor i32 %181, -1
  %183 = load i32, i32* %6, align 4
  %184 = and i32 %183, %182
  store i32 %184, i32* %6, align 4
  %185 = load i32, i32* @mmRLC_MEM_SLP_CNTL, align 4
  %186 = load i32, i32* %6, align 4
  %187 = call i32 @WREG32(i32 %185, i32 %186)
  br label %188

188:                                              ; preds = %180, %173
  %189 = load i32, i32* @mmCP_MEM_SLP_CNTL, align 4
  %190 = call i32 @RREG32(i32 %189)
  store i32 %190, i32* %6, align 4
  %191 = load i32, i32* %6, align 4
  %192 = load i32, i32* @CP_MEM_SLP_CNTL__CP_MEM_LS_EN_MASK, align 4
  %193 = and i32 %191, %192
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %203

195:                                              ; preds = %188
  %196 = load i32, i32* @CP_MEM_SLP_CNTL__CP_MEM_LS_EN_MASK, align 4
  %197 = xor i32 %196, -1
  %198 = load i32, i32* %6, align 4
  %199 = and i32 %198, %197
  store i32 %199, i32* %6, align 4
  %200 = load i32, i32* @mmCP_MEM_SLP_CNTL, align 4
  %201 = load i32, i32* %6, align 4
  %202 = call i32 @WREG32(i32 %200, i32 %201)
  br label %203

203:                                              ; preds = %195, %188
  %204 = load i32, i32* @mmCGTS_SM_CTRL_REG, align 4
  %205 = call i32 @RREG32(i32 %204)
  store i32 %205, i32* %6, align 4
  store i32 %205, i32* %5, align 4
  %206 = load i32, i32* @CGTS_SM_CTRL_REG__OVERRIDE_MASK, align 4
  %207 = load i32, i32* @CGTS_SM_CTRL_REG__LS_OVERRIDE_MASK, align 4
  %208 = or i32 %206, %207
  %209 = load i32, i32* %6, align 4
  %210 = or i32 %209, %208
  store i32 %210, i32* %6, align 4
  %211 = load i32, i32* %5, align 4
  %212 = load i32, i32* %6, align 4
  %213 = icmp ne i32 %211, %212
  br i1 %213, label %214, label %218

214:                                              ; preds = %203
  %215 = load i32, i32* @mmCGTS_SM_CTRL_REG, align 4
  %216 = load i32, i32* %6, align 4
  %217 = call i32 @WREG32(i32 %215, i32 %216)
  br label %218

218:                                              ; preds = %214, %203
  %219 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %220 = call i32 @gfx_v8_0_wait_for_rlc_serdes(%struct.amdgpu_device* %219)
  %221 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %222 = load i32, i32* @BPM_REG_MGCG_OVERRIDE, align 4
  %223 = load i32, i32* @SET_BPM_SERDES_CMD, align 4
  %224 = call i32 @gfx_v8_0_send_serdes_cmd(%struct.amdgpu_device* %221, i32 %222, i32 %223)
  %225 = call i32 @udelay(i32 50)
  %226 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %227 = call i32 @gfx_v8_0_wait_for_rlc_serdes(%struct.amdgpu_device* %226)
  br label %228

228:                                              ; preds = %218, %150
  %229 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %230 = call i32 @amdgpu_gfx_rlc_exit_safe_mode(%struct.amdgpu_device* %229)
  ret void
}

declare dso_local i32 @amdgpu_gfx_rlc_enter_safe_mode(%struct.amdgpu_device*) #1

declare dso_local i32 @WREG32_FIELD(i32, i32, i32) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @gfx_v8_0_wait_for_rlc_serdes(%struct.amdgpu_device*) #1

declare dso_local i32 @gfx_v8_0_send_serdes_cmd(%struct.amdgpu_device*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @amdgpu_gfx_rlc_exit_safe_mode(%struct.amdgpu_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
