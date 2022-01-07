; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cik.c_cik_gpu_soft_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cik.c_cik_gpu_soft_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32, i32 }
%struct.evergreen_mc_save = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"GPU softreset: 0x%08X\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"  VM_CONTEXT1_PROTECTION_FAULT_ADDR   0x%08X\0A\00", align 1
@VM_CONTEXT1_PROTECTION_FAULT_ADDR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [46 x i8] c"  VM_CONTEXT1_PROTECTION_FAULT_STATUS 0x%08X\0A\00", align 1
@VM_CONTEXT1_PROTECTION_FAULT_STATUS = common dso_local global i64 0, align 8
@CP_ME_CNTL = common dso_local global i64 0, align 8
@CP_ME_HALT = common dso_local global i32 0, align 4
@CP_PFP_HALT = common dso_local global i32 0, align 4
@CP_CE_HALT = common dso_local global i32 0, align 4
@CP_MEC_CNTL = common dso_local global i64 0, align 8
@MEC_ME1_HALT = common dso_local global i32 0, align 4
@MEC_ME2_HALT = common dso_local global i32 0, align 4
@RADEON_RESET_DMA = common dso_local global i32 0, align 4
@SDMA0_ME_CNTL = common dso_local global i64 0, align 8
@SDMA0_REGISTER_OFFSET = common dso_local global i64 0, align 8
@SDMA_HALT = common dso_local global i32 0, align 4
@RADEON_RESET_DMA1 = common dso_local global i32 0, align 4
@SDMA1_REGISTER_OFFSET = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [29 x i8] c"Wait for MC idle timedout !\0A\00", align 1
@RADEON_RESET_GFX = common dso_local global i32 0, align 4
@RADEON_RESET_COMPUTE = common dso_local global i32 0, align 4
@RADEON_RESET_CP = common dso_local global i32 0, align 4
@SOFT_RESET_CP = common dso_local global i32 0, align 4
@SOFT_RESET_GFX = common dso_local global i32 0, align 4
@SOFT_RESET_GRBM = common dso_local global i32 0, align 4
@SOFT_RESET_SDMA = common dso_local global i32 0, align 4
@SOFT_RESET_SDMA1 = common dso_local global i32 0, align 4
@RADEON_RESET_DISPLAY = common dso_local global i32 0, align 4
@SOFT_RESET_DC = common dso_local global i32 0, align 4
@RADEON_RESET_RLC = common dso_local global i32 0, align 4
@SOFT_RESET_RLC = common dso_local global i32 0, align 4
@RADEON_RESET_SEM = common dso_local global i32 0, align 4
@SOFT_RESET_SEM = common dso_local global i32 0, align 4
@RADEON_RESET_IH = common dso_local global i32 0, align 4
@SOFT_RESET_IH = common dso_local global i32 0, align 4
@RADEON_RESET_GRBM = common dso_local global i32 0, align 4
@RADEON_RESET_VMC = common dso_local global i32 0, align 4
@SOFT_RESET_VMC = common dso_local global i32 0, align 4
@RADEON_IS_IGP = common dso_local global i32 0, align 4
@RADEON_RESET_MC = common dso_local global i32 0, align 4
@SOFT_RESET_MC = common dso_local global i32 0, align 4
@GRBM_SOFT_RESET = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [24 x i8] c"GRBM_SOFT_RESET=0x%08X\0A\00", align 1
@SRBM_SOFT_RESET = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [24 x i8] c"SRBM_SOFT_RESET=0x%08X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*, i32)* @cik_gpu_soft_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cik_gpu_soft_reset(%struct.radeon_device* %0, i32 %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.evergreen_mc_save, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %275

12:                                               ; preds = %2
  %13 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %14 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @dev_info(i32 %15, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %19 = call i32 @cik_print_gpu_status_regs(%struct.radeon_device* %18)
  %20 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %21 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i64, i64* @VM_CONTEXT1_PROTECTION_FAULT_ADDR, align 8
  %24 = call i32 @RREG32(i64 %23)
  %25 = call i32 @dev_info(i32 %22, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  %26 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %27 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i64, i64* @VM_CONTEXT1_PROTECTION_FAULT_STATUS, align 8
  %30 = call i32 @RREG32(i64 %29)
  %31 = call i32 @dev_info(i32 %28, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %30)
  %32 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %33 = call i32 @cik_fini_pg(%struct.radeon_device* %32)
  %34 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %35 = call i32 @cik_fini_cg(%struct.radeon_device* %34)
  %36 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %37 = call i32 @cik_rlc_stop(%struct.radeon_device* %36)
  %38 = load i64, i64* @CP_ME_CNTL, align 8
  %39 = load i32, i32* @CP_ME_HALT, align 4
  %40 = load i32, i32* @CP_PFP_HALT, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @CP_CE_HALT, align 4
  %43 = or i32 %41, %42
  %44 = call i32 @WREG32(i64 %38, i32 %43)
  %45 = load i64, i64* @CP_MEC_CNTL, align 8
  %46 = load i32, i32* @MEC_ME1_HALT, align 4
  %47 = load i32, i32* @MEC_ME2_HALT, align 4
  %48 = or i32 %46, %47
  %49 = call i32 @WREG32(i64 %45, i32 %48)
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* @RADEON_RESET_DMA, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %67

54:                                               ; preds = %12
  %55 = load i64, i64* @SDMA0_ME_CNTL, align 8
  %56 = load i64, i64* @SDMA0_REGISTER_OFFSET, align 8
  %57 = add nsw i64 %55, %56
  %58 = call i32 @RREG32(i64 %57)
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* @SDMA_HALT, align 4
  %60 = load i32, i32* %8, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %8, align 4
  %62 = load i64, i64* @SDMA0_ME_CNTL, align 8
  %63 = load i64, i64* @SDMA0_REGISTER_OFFSET, align 8
  %64 = add nsw i64 %62, %63
  %65 = load i32, i32* %8, align 4
  %66 = call i32 @WREG32(i64 %64, i32 %65)
  br label %67

67:                                               ; preds = %54, %12
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* @RADEON_RESET_DMA1, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %85

72:                                               ; preds = %67
  %73 = load i64, i64* @SDMA0_ME_CNTL, align 8
  %74 = load i64, i64* @SDMA1_REGISTER_OFFSET, align 8
  %75 = add nsw i64 %73, %74
  %76 = call i32 @RREG32(i64 %75)
  store i32 %76, i32* %8, align 4
  %77 = load i32, i32* @SDMA_HALT, align 4
  %78 = load i32, i32* %8, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %8, align 4
  %80 = load i64, i64* @SDMA0_ME_CNTL, align 8
  %81 = load i64, i64* @SDMA1_REGISTER_OFFSET, align 8
  %82 = add nsw i64 %80, %81
  %83 = load i32, i32* %8, align 4
  %84 = call i32 @WREG32(i64 %82, i32 %83)
  br label %85

85:                                               ; preds = %72, %67
  %86 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %87 = call i32 @evergreen_mc_stop(%struct.radeon_device* %86, %struct.evergreen_mc_save* %5)
  %88 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %89 = call i64 @evergreen_mc_wait_for_idle(%struct.radeon_device* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %85
  %92 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %93 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @dev_warn(i32 %94, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  br label %96

96:                                               ; preds = %91, %85
  %97 = load i32, i32* %4, align 4
  %98 = load i32, i32* @RADEON_RESET_GFX, align 4
  %99 = load i32, i32* @RADEON_RESET_COMPUTE, align 4
  %100 = or i32 %98, %99
  %101 = load i32, i32* @RADEON_RESET_CP, align 4
  %102 = or i32 %100, %101
  %103 = and i32 %97, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %96
  %106 = load i32, i32* @SOFT_RESET_CP, align 4
  %107 = load i32, i32* @SOFT_RESET_GFX, align 4
  %108 = or i32 %106, %107
  store i32 %108, i32* %6, align 4
  br label %109

109:                                              ; preds = %105, %96
  %110 = load i32, i32* %4, align 4
  %111 = load i32, i32* @RADEON_RESET_CP, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %121

114:                                              ; preds = %109
  %115 = load i32, i32* @SOFT_RESET_CP, align 4
  %116 = load i32, i32* %6, align 4
  %117 = or i32 %116, %115
  store i32 %117, i32* %6, align 4
  %118 = load i32, i32* @SOFT_RESET_GRBM, align 4
  %119 = load i32, i32* %7, align 4
  %120 = or i32 %119, %118
  store i32 %120, i32* %7, align 4
  br label %121

121:                                              ; preds = %114, %109
  %122 = load i32, i32* %4, align 4
  %123 = load i32, i32* @RADEON_RESET_DMA, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %121
  %127 = load i32, i32* @SOFT_RESET_SDMA, align 4
  %128 = load i32, i32* %7, align 4
  %129 = or i32 %128, %127
  store i32 %129, i32* %7, align 4
  br label %130

130:                                              ; preds = %126, %121
  %131 = load i32, i32* %4, align 4
  %132 = load i32, i32* @RADEON_RESET_DMA1, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %139

135:                                              ; preds = %130
  %136 = load i32, i32* @SOFT_RESET_SDMA1, align 4
  %137 = load i32, i32* %7, align 4
  %138 = or i32 %137, %136
  store i32 %138, i32* %7, align 4
  br label %139

139:                                              ; preds = %135, %130
  %140 = load i32, i32* %4, align 4
  %141 = load i32, i32* @RADEON_RESET_DISPLAY, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %148

144:                                              ; preds = %139
  %145 = load i32, i32* @SOFT_RESET_DC, align 4
  %146 = load i32, i32* %7, align 4
  %147 = or i32 %146, %145
  store i32 %147, i32* %7, align 4
  br label %148

148:                                              ; preds = %144, %139
  %149 = load i32, i32* %4, align 4
  %150 = load i32, i32* @RADEON_RESET_RLC, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %157

153:                                              ; preds = %148
  %154 = load i32, i32* @SOFT_RESET_RLC, align 4
  %155 = load i32, i32* %6, align 4
  %156 = or i32 %155, %154
  store i32 %156, i32* %6, align 4
  br label %157

157:                                              ; preds = %153, %148
  %158 = load i32, i32* %4, align 4
  %159 = load i32, i32* @RADEON_RESET_SEM, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %166

162:                                              ; preds = %157
  %163 = load i32, i32* @SOFT_RESET_SEM, align 4
  %164 = load i32, i32* %7, align 4
  %165 = or i32 %164, %163
  store i32 %165, i32* %7, align 4
  br label %166

166:                                              ; preds = %162, %157
  %167 = load i32, i32* %4, align 4
  %168 = load i32, i32* @RADEON_RESET_IH, align 4
  %169 = and i32 %167, %168
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %175

171:                                              ; preds = %166
  %172 = load i32, i32* @SOFT_RESET_IH, align 4
  %173 = load i32, i32* %7, align 4
  %174 = or i32 %173, %172
  store i32 %174, i32* %7, align 4
  br label %175

175:                                              ; preds = %171, %166
  %176 = load i32, i32* %4, align 4
  %177 = load i32, i32* @RADEON_RESET_GRBM, align 4
  %178 = and i32 %176, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %184

180:                                              ; preds = %175
  %181 = load i32, i32* @SOFT_RESET_GRBM, align 4
  %182 = load i32, i32* %7, align 4
  %183 = or i32 %182, %181
  store i32 %183, i32* %7, align 4
  br label %184

184:                                              ; preds = %180, %175
  %185 = load i32, i32* %4, align 4
  %186 = load i32, i32* @RADEON_RESET_VMC, align 4
  %187 = and i32 %185, %186
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %193

189:                                              ; preds = %184
  %190 = load i32, i32* @SOFT_RESET_VMC, align 4
  %191 = load i32, i32* %7, align 4
  %192 = or i32 %191, %190
  store i32 %192, i32* %7, align 4
  br label %193

193:                                              ; preds = %189, %184
  %194 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %195 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = load i32, i32* @RADEON_IS_IGP, align 4
  %198 = and i32 %196, %197
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %210, label %200

200:                                              ; preds = %193
  %201 = load i32, i32* %4, align 4
  %202 = load i32, i32* @RADEON_RESET_MC, align 4
  %203 = and i32 %201, %202
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %209

205:                                              ; preds = %200
  %206 = load i32, i32* @SOFT_RESET_MC, align 4
  %207 = load i32, i32* %7, align 4
  %208 = or i32 %207, %206
  store i32 %208, i32* %7, align 4
  br label %209

209:                                              ; preds = %205, %200
  br label %210

210:                                              ; preds = %209, %193
  %211 = load i32, i32* %6, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %239

213:                                              ; preds = %210
  %214 = load i64, i64* @GRBM_SOFT_RESET, align 8
  %215 = call i32 @RREG32(i64 %214)
  store i32 %215, i32* %8, align 4
  %216 = load i32, i32* %6, align 4
  %217 = load i32, i32* %8, align 4
  %218 = or i32 %217, %216
  store i32 %218, i32* %8, align 4
  %219 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %220 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 4
  %222 = load i32, i32* %8, align 4
  %223 = call i32 @dev_info(i32 %221, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %222)
  %224 = load i64, i64* @GRBM_SOFT_RESET, align 8
  %225 = load i32, i32* %8, align 4
  %226 = call i32 @WREG32(i64 %224, i32 %225)
  %227 = load i64, i64* @GRBM_SOFT_RESET, align 8
  %228 = call i32 @RREG32(i64 %227)
  store i32 %228, i32* %8, align 4
  %229 = call i32 @udelay(i32 50)
  %230 = load i32, i32* %6, align 4
  %231 = xor i32 %230, -1
  %232 = load i32, i32* %8, align 4
  %233 = and i32 %232, %231
  store i32 %233, i32* %8, align 4
  %234 = load i64, i64* @GRBM_SOFT_RESET, align 8
  %235 = load i32, i32* %8, align 4
  %236 = call i32 @WREG32(i64 %234, i32 %235)
  %237 = load i64, i64* @GRBM_SOFT_RESET, align 8
  %238 = call i32 @RREG32(i64 %237)
  store i32 %238, i32* %8, align 4
  br label %239

239:                                              ; preds = %213, %210
  %240 = load i32, i32* %7, align 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %268

242:                                              ; preds = %239
  %243 = load i64, i64* @SRBM_SOFT_RESET, align 8
  %244 = call i32 @RREG32(i64 %243)
  store i32 %244, i32* %8, align 4
  %245 = load i32, i32* %7, align 4
  %246 = load i32, i32* %8, align 4
  %247 = or i32 %246, %245
  store i32 %247, i32* %8, align 4
  %248 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %249 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %248, i32 0, i32 1
  %250 = load i32, i32* %249, align 4
  %251 = load i32, i32* %8, align 4
  %252 = call i32 @dev_info(i32 %250, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 %251)
  %253 = load i64, i64* @SRBM_SOFT_RESET, align 8
  %254 = load i32, i32* %8, align 4
  %255 = call i32 @WREG32(i64 %253, i32 %254)
  %256 = load i64, i64* @SRBM_SOFT_RESET, align 8
  %257 = call i32 @RREG32(i64 %256)
  store i32 %257, i32* %8, align 4
  %258 = call i32 @udelay(i32 50)
  %259 = load i32, i32* %7, align 4
  %260 = xor i32 %259, -1
  %261 = load i32, i32* %8, align 4
  %262 = and i32 %261, %260
  store i32 %262, i32* %8, align 4
  %263 = load i64, i64* @SRBM_SOFT_RESET, align 8
  %264 = load i32, i32* %8, align 4
  %265 = call i32 @WREG32(i64 %263, i32 %264)
  %266 = load i64, i64* @SRBM_SOFT_RESET, align 8
  %267 = call i32 @RREG32(i64 %266)
  store i32 %267, i32* %8, align 4
  br label %268

268:                                              ; preds = %242, %239
  %269 = call i32 @udelay(i32 50)
  %270 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %271 = call i32 @evergreen_mc_resume(%struct.radeon_device* %270, %struct.evergreen_mc_save* %5)
  %272 = call i32 @udelay(i32 50)
  %273 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %274 = call i32 @cik_print_gpu_status_regs(%struct.radeon_device* %273)
  br label %275

275:                                              ; preds = %268, %11
  ret void
}

declare dso_local i32 @dev_info(i32, i8*, i32) #1

declare dso_local i32 @cik_print_gpu_status_regs(%struct.radeon_device*) #1

declare dso_local i32 @RREG32(i64) #1

declare dso_local i32 @cik_fini_pg(%struct.radeon_device*) #1

declare dso_local i32 @cik_fini_cg(%struct.radeon_device*) #1

declare dso_local i32 @cik_rlc_stop(%struct.radeon_device*) #1

declare dso_local i32 @WREG32(i64, i32) #1

declare dso_local i32 @evergreen_mc_stop(%struct.radeon_device*, %struct.evergreen_mc_save*) #1

declare dso_local i64 @evergreen_mc_wait_for_idle(%struct.radeon_device*) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @evergreen_mc_resume(%struct.radeon_device*, %struct.evergreen_mc_save*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
