; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v7_0.c_gfx_v7_0_enable_mgcg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v7_0.c_gfx_v7_0_enable_mgcg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32, i32 }

@AMD_CG_SUPPORT_GFX_MGCG = common dso_local global i32 0, align 4
@AMD_CG_SUPPORT_GFX_MGLS = common dso_local global i32 0, align 4
@AMD_CG_SUPPORT_GFX_CP_LS = common dso_local global i32 0, align 4
@mmCP_MEM_SLP_CNTL = common dso_local global i32 0, align 4
@CP_MEM_SLP_CNTL__CP_MEM_LS_EN_MASK = common dso_local global i32 0, align 4
@mmRLC_CGTT_MGCG_OVERRIDE = common dso_local global i32 0, align 4
@mmRLC_SERDES_WR_CU_MASTER_MASK = common dso_local global i32 0, align 4
@mmRLC_SERDES_WR_NONCU_MASTER_MASK = common dso_local global i32 0, align 4
@RLC_SERDES_WR_CTRL__BPM_ADDR_MASK = common dso_local global i32 0, align 4
@RLC_SERDES_WR_CTRL__MGCG_OVERRIDE_0_MASK = common dso_local global i32 0, align 4
@mmRLC_SERDES_WR_CTRL = common dso_local global i32 0, align 4
@AMD_CG_SUPPORT_GFX_CGTS = common dso_local global i32 0, align 4
@mmCGTS_SM_CTRL_REG = common dso_local global i32 0, align 4
@CGTS_SM_CTRL_REG__SM_MODE_MASK = common dso_local global i32 0, align 4
@CGTS_SM_CTRL_REG__SM_MODE__SHIFT = common dso_local global i32 0, align 4
@CGTS_SM_CTRL_REG__SM_MODE_ENABLE_MASK = common dso_local global i32 0, align 4
@CGTS_SM_CTRL_REG__OVERRIDE_MASK = common dso_local global i32 0, align 4
@AMD_CG_SUPPORT_GFX_CGTS_LS = common dso_local global i32 0, align 4
@CGTS_SM_CTRL_REG__LS_OVERRIDE_MASK = common dso_local global i32 0, align 4
@CGTS_SM_CTRL_REG__ON_MONITOR_ADD_MASK = common dso_local global i32 0, align 4
@CGTS_SM_CTRL_REG__ON_MONITOR_ADD_EN_MASK = common dso_local global i32 0, align 4
@CGTS_SM_CTRL_REG__ON_MONITOR_ADD__SHIFT = common dso_local global i32 0, align 4
@mmRLC_MEM_SLP_CNTL = common dso_local global i32 0, align 4
@RLC_MEM_SLP_CNTL__RLC_MEM_LS_EN_MASK = common dso_local global i32 0, align 4
@RLC_SERDES_WR_CTRL__MGCG_OVERRIDE_1_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*, i32)* @gfx_v7_0_enable_mgcg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfx_v7_0_enable_mgcg(%struct.amdgpu_device* %0, i32 %1) #0 {
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
  br i1 %9, label %10, label %147

10:                                               ; preds = %2
  %11 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %12 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @AMD_CG_SUPPORT_GFX_MGCG, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %147

17:                                               ; preds = %10
  %18 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %19 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @AMD_CG_SUPPORT_GFX_MGLS, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %46

24:                                               ; preds = %17
  %25 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %26 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @AMD_CG_SUPPORT_GFX_CP_LS, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %45

31:                                               ; preds = %24
  %32 = load i32, i32* @mmCP_MEM_SLP_CNTL, align 4
  %33 = call i32 @RREG32(i32 %32)
  store i32 %33, i32* %5, align 4
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* @CP_MEM_SLP_CNTL__CP_MEM_LS_EN_MASK, align 4
  %35 = load i32, i32* %5, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %31
  %41 = load i32, i32* @mmCP_MEM_SLP_CNTL, align 4
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @WREG32(i32 %41, i32 %42)
  br label %44

44:                                               ; preds = %40, %31
  br label %45

45:                                               ; preds = %44, %24
  br label %46

46:                                               ; preds = %45, %17
  %47 = load i32, i32* @mmRLC_CGTT_MGCG_OVERRIDE, align 4
  %48 = call i32 @RREG32(i32 %47)
  store i32 %48, i32* %5, align 4
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %5, align 4
  %50 = or i32 %49, 1
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %5, align 4
  %52 = and i32 %51, -3
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* %5, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %46
  %57 = load i32, i32* @mmRLC_CGTT_MGCG_OVERRIDE, align 4
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @WREG32(i32 %57, i32 %58)
  br label %60

60:                                               ; preds = %56, %46
  %61 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %62 = call i32 @gfx_v7_0_halt_rlc(%struct.amdgpu_device* %61)
  store i32 %62, i32* %7, align 4
  %63 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %64 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %63, i32 0, i32 1
  %65 = call i32 @mutex_lock(i32* %64)
  %66 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %67 = call i32 @gfx_v7_0_select_se_sh(%struct.amdgpu_device* %66, i32 -1, i32 -1, i32 -1)
  %68 = load i32, i32* @mmRLC_SERDES_WR_CU_MASTER_MASK, align 4
  %69 = call i32 @WREG32(i32 %68, i32 -1)
  %70 = load i32, i32* @mmRLC_SERDES_WR_NONCU_MASTER_MASK, align 4
  %71 = call i32 @WREG32(i32 %70, i32 -1)
  %72 = load i32, i32* @RLC_SERDES_WR_CTRL__BPM_ADDR_MASK, align 4
  %73 = load i32, i32* @RLC_SERDES_WR_CTRL__MGCG_OVERRIDE_0_MASK, align 4
  %74 = or i32 %72, %73
  store i32 %74, i32* %5, align 4
  %75 = load i32, i32* @mmRLC_SERDES_WR_CTRL, align 4
  %76 = load i32, i32* %5, align 4
  %77 = call i32 @WREG32(i32 %75, i32 %76)
  %78 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %79 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %78, i32 0, i32 1
  %80 = call i32 @mutex_unlock(i32* %79)
  %81 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %82 = load i32, i32* %7, align 4
  %83 = call i32 @gfx_v7_0_update_rlc(%struct.amdgpu_device* %81, i32 %82)
  %84 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %85 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @AMD_CG_SUPPORT_GFX_CGTS, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %146

90:                                               ; preds = %60
  %91 = load i32, i32* @mmCGTS_SM_CTRL_REG, align 4
  %92 = call i32 @RREG32(i32 %91)
  store i32 %92, i32* %5, align 4
  store i32 %92, i32* %6, align 4
  %93 = load i32, i32* @CGTS_SM_CTRL_REG__SM_MODE_MASK, align 4
  %94 = xor i32 %93, -1
  %95 = load i32, i32* %5, align 4
  %96 = and i32 %95, %94
  store i32 %96, i32* %5, align 4
  %97 = load i32, i32* @CGTS_SM_CTRL_REG__SM_MODE__SHIFT, align 4
  %98 = shl i32 2, %97
  %99 = load i32, i32* %5, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %5, align 4
  %101 = load i32, i32* @CGTS_SM_CTRL_REG__SM_MODE_ENABLE_MASK, align 4
  %102 = load i32, i32* %5, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %5, align 4
  %104 = load i32, i32* @CGTS_SM_CTRL_REG__OVERRIDE_MASK, align 4
  %105 = xor i32 %104, -1
  %106 = load i32, i32* %5, align 4
  %107 = and i32 %106, %105
  store i32 %107, i32* %5, align 4
  %108 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %109 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @AMD_CG_SUPPORT_GFX_MGLS, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %126

114:                                              ; preds = %90
  %115 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %116 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @AMD_CG_SUPPORT_GFX_CGTS_LS, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %126

121:                                              ; preds = %114
  %122 = load i32, i32* @CGTS_SM_CTRL_REG__LS_OVERRIDE_MASK, align 4
  %123 = xor i32 %122, -1
  %124 = load i32, i32* %5, align 4
  %125 = and i32 %124, %123
  store i32 %125, i32* %5, align 4
  br label %126

126:                                              ; preds = %121, %114, %90
  %127 = load i32, i32* @CGTS_SM_CTRL_REG__ON_MONITOR_ADD_MASK, align 4
  %128 = xor i32 %127, -1
  %129 = load i32, i32* %5, align 4
  %130 = and i32 %129, %128
  store i32 %130, i32* %5, align 4
  %131 = load i32, i32* @CGTS_SM_CTRL_REG__ON_MONITOR_ADD_EN_MASK, align 4
  %132 = load i32, i32* %5, align 4
  %133 = or i32 %132, %131
  store i32 %133, i32* %5, align 4
  %134 = load i32, i32* @CGTS_SM_CTRL_REG__ON_MONITOR_ADD__SHIFT, align 4
  %135 = shl i32 150, %134
  %136 = load i32, i32* %5, align 4
  %137 = or i32 %136, %135
  store i32 %137, i32* %5, align 4
  %138 = load i32, i32* %6, align 4
  %139 = load i32, i32* %5, align 4
  %140 = icmp ne i32 %138, %139
  br i1 %140, label %141, label %145

141:                                              ; preds = %126
  %142 = load i32, i32* @mmCGTS_SM_CTRL_REG, align 4
  %143 = load i32, i32* %5, align 4
  %144 = call i32 @WREG32(i32 %142, i32 %143)
  br label %145

145:                                              ; preds = %141, %126
  br label %146

146:                                              ; preds = %145, %60
  br label %228

147:                                              ; preds = %10, %2
  %148 = load i32, i32* @mmRLC_CGTT_MGCG_OVERRIDE, align 4
  %149 = call i32 @RREG32(i32 %148)
  store i32 %149, i32* %5, align 4
  store i32 %149, i32* %6, align 4
  %150 = load i32, i32* %5, align 4
  %151 = or i32 %150, 3
  store i32 %151, i32* %5, align 4
  %152 = load i32, i32* %6, align 4
  %153 = load i32, i32* %5, align 4
  %154 = icmp ne i32 %152, %153
  br i1 %154, label %155, label %159

155:                                              ; preds = %147
  %156 = load i32, i32* @mmRLC_CGTT_MGCG_OVERRIDE, align 4
  %157 = load i32, i32* %5, align 4
  %158 = call i32 @WREG32(i32 %156, i32 %157)
  br label %159

159:                                              ; preds = %155, %147
  %160 = load i32, i32* @mmRLC_MEM_SLP_CNTL, align 4
  %161 = call i32 @RREG32(i32 %160)
  store i32 %161, i32* %5, align 4
  %162 = load i32, i32* %5, align 4
  %163 = load i32, i32* @RLC_MEM_SLP_CNTL__RLC_MEM_LS_EN_MASK, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %174

166:                                              ; preds = %159
  %167 = load i32, i32* @RLC_MEM_SLP_CNTL__RLC_MEM_LS_EN_MASK, align 4
  %168 = xor i32 %167, -1
  %169 = load i32, i32* %5, align 4
  %170 = and i32 %169, %168
  store i32 %170, i32* %5, align 4
  %171 = load i32, i32* @mmRLC_MEM_SLP_CNTL, align 4
  %172 = load i32, i32* %5, align 4
  %173 = call i32 @WREG32(i32 %171, i32 %172)
  br label %174

174:                                              ; preds = %166, %159
  %175 = load i32, i32* @mmCP_MEM_SLP_CNTL, align 4
  %176 = call i32 @RREG32(i32 %175)
  store i32 %176, i32* %5, align 4
  %177 = load i32, i32* %5, align 4
  %178 = load i32, i32* @CP_MEM_SLP_CNTL__CP_MEM_LS_EN_MASK, align 4
  %179 = and i32 %177, %178
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %189

181:                                              ; preds = %174
  %182 = load i32, i32* @CP_MEM_SLP_CNTL__CP_MEM_LS_EN_MASK, align 4
  %183 = xor i32 %182, -1
  %184 = load i32, i32* %5, align 4
  %185 = and i32 %184, %183
  store i32 %185, i32* %5, align 4
  %186 = load i32, i32* @mmCP_MEM_SLP_CNTL, align 4
  %187 = load i32, i32* %5, align 4
  %188 = call i32 @WREG32(i32 %186, i32 %187)
  br label %189

189:                                              ; preds = %181, %174
  %190 = load i32, i32* @mmCGTS_SM_CTRL_REG, align 4
  %191 = call i32 @RREG32(i32 %190)
  store i32 %191, i32* %5, align 4
  store i32 %191, i32* %6, align 4
  %192 = load i32, i32* @CGTS_SM_CTRL_REG__OVERRIDE_MASK, align 4
  %193 = load i32, i32* @CGTS_SM_CTRL_REG__LS_OVERRIDE_MASK, align 4
  %194 = or i32 %192, %193
  %195 = load i32, i32* %5, align 4
  %196 = or i32 %195, %194
  store i32 %196, i32* %5, align 4
  %197 = load i32, i32* %6, align 4
  %198 = load i32, i32* %5, align 4
  %199 = icmp ne i32 %197, %198
  br i1 %199, label %200, label %204

200:                                              ; preds = %189
  %201 = load i32, i32* @mmCGTS_SM_CTRL_REG, align 4
  %202 = load i32, i32* %5, align 4
  %203 = call i32 @WREG32(i32 %201, i32 %202)
  br label %204

204:                                              ; preds = %200, %189
  %205 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %206 = call i32 @gfx_v7_0_halt_rlc(%struct.amdgpu_device* %205)
  store i32 %206, i32* %7, align 4
  %207 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %208 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %207, i32 0, i32 1
  %209 = call i32 @mutex_lock(i32* %208)
  %210 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %211 = call i32 @gfx_v7_0_select_se_sh(%struct.amdgpu_device* %210, i32 -1, i32 -1, i32 -1)
  %212 = load i32, i32* @mmRLC_SERDES_WR_CU_MASTER_MASK, align 4
  %213 = call i32 @WREG32(i32 %212, i32 -1)
  %214 = load i32, i32* @mmRLC_SERDES_WR_NONCU_MASTER_MASK, align 4
  %215 = call i32 @WREG32(i32 %214, i32 -1)
  %216 = load i32, i32* @RLC_SERDES_WR_CTRL__BPM_ADDR_MASK, align 4
  %217 = load i32, i32* @RLC_SERDES_WR_CTRL__MGCG_OVERRIDE_1_MASK, align 4
  %218 = or i32 %216, %217
  store i32 %218, i32* %5, align 4
  %219 = load i32, i32* @mmRLC_SERDES_WR_CTRL, align 4
  %220 = load i32, i32* %5, align 4
  %221 = call i32 @WREG32(i32 %219, i32 %220)
  %222 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %223 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %222, i32 0, i32 1
  %224 = call i32 @mutex_unlock(i32* %223)
  %225 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %226 = load i32, i32* %7, align 4
  %227 = call i32 @gfx_v7_0_update_rlc(%struct.amdgpu_device* %225, i32 %226)
  br label %228

228:                                              ; preds = %204, %146
  ret void
}

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @gfx_v7_0_halt_rlc(%struct.amdgpu_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @gfx_v7_0_select_se_sh(%struct.amdgpu_device*, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @gfx_v7_0_update_rlc(%struct.amdgpu_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
