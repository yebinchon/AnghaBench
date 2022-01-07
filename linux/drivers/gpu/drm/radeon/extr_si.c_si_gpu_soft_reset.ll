; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si.c_si_gpu_soft_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si.c_si_gpu_soft_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
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
@RADEON_RESET_DMA = common dso_local global i32 0, align 4
@DMA_RB_CNTL = common dso_local global i64 0, align 8
@DMA0_REGISTER_OFFSET = common dso_local global i64 0, align 8
@DMA_RB_ENABLE = common dso_local global i32 0, align 4
@RADEON_RESET_DMA1 = common dso_local global i32 0, align 4
@DMA1_REGISTER_OFFSET = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [29 x i8] c"Wait for MC idle timedout !\0A\00", align 1
@RADEON_RESET_GFX = common dso_local global i32 0, align 4
@RADEON_RESET_COMPUTE = common dso_local global i32 0, align 4
@RADEON_RESET_CP = common dso_local global i32 0, align 4
@SOFT_RESET_CB = common dso_local global i32 0, align 4
@SOFT_RESET_DB = common dso_local global i32 0, align 4
@SOFT_RESET_GDS = common dso_local global i32 0, align 4
@SOFT_RESET_PA = common dso_local global i32 0, align 4
@SOFT_RESET_SC = common dso_local global i32 0, align 4
@SOFT_RESET_BCI = common dso_local global i32 0, align 4
@SOFT_RESET_SPI = common dso_local global i32 0, align 4
@SOFT_RESET_SX = common dso_local global i32 0, align 4
@SOFT_RESET_TC = common dso_local global i32 0, align 4
@SOFT_RESET_TA = common dso_local global i32 0, align 4
@SOFT_RESET_VGT = common dso_local global i32 0, align 4
@SOFT_RESET_IA = common dso_local global i32 0, align 4
@SOFT_RESET_CP = common dso_local global i32 0, align 4
@SOFT_RESET_GRBM = common dso_local global i32 0, align 4
@SOFT_RESET_DMA = common dso_local global i32 0, align 4
@SOFT_RESET_DMA1 = common dso_local global i32 0, align 4
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
@RADEON_RESET_MC = common dso_local global i32 0, align 4
@SOFT_RESET_MC = common dso_local global i32 0, align 4
@GRBM_SOFT_RESET = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [24 x i8] c"GRBM_SOFT_RESET=0x%08X\0A\00", align 1
@SRBM_SOFT_RESET = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [24 x i8] c"SRBM_SOFT_RESET=0x%08X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*, i32)* @si_gpu_soft_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @si_gpu_soft_reset(%struct.radeon_device* %0, i32 %1) #0 {
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
  br label %287

12:                                               ; preds = %2
  %13 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %14 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @dev_info(i32 %15, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %19 = call i32 @evergreen_print_gpu_status_regs(%struct.radeon_device* %18)
  %20 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %21 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i64, i64* @VM_CONTEXT1_PROTECTION_FAULT_ADDR, align 8
  %24 = call i32 @RREG32(i64 %23)
  %25 = call i32 @dev_info(i32 %22, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  %26 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %27 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i64, i64* @VM_CONTEXT1_PROTECTION_FAULT_STATUS, align 8
  %30 = call i32 @RREG32(i64 %29)
  %31 = call i32 @dev_info(i32 %28, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %30)
  %32 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %33 = call i32 @si_fini_pg(%struct.radeon_device* %32)
  %34 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %35 = call i32 @si_fini_cg(%struct.radeon_device* %34)
  %36 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %37 = call i32 @si_rlc_stop(%struct.radeon_device* %36)
  %38 = load i64, i64* @CP_ME_CNTL, align 8
  %39 = load i32, i32* @CP_ME_HALT, align 4
  %40 = load i32, i32* @CP_PFP_HALT, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @CP_CE_HALT, align 4
  %43 = or i32 %41, %42
  %44 = call i32 @WREG32(i64 %38, i32 %43)
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @RADEON_RESET_DMA, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %63

49:                                               ; preds = %12
  %50 = load i64, i64* @DMA_RB_CNTL, align 8
  %51 = load i64, i64* @DMA0_REGISTER_OFFSET, align 8
  %52 = add nsw i64 %50, %51
  %53 = call i32 @RREG32(i64 %52)
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* @DMA_RB_ENABLE, align 4
  %55 = xor i32 %54, -1
  %56 = load i32, i32* %8, align 4
  %57 = and i32 %56, %55
  store i32 %57, i32* %8, align 4
  %58 = load i64, i64* @DMA_RB_CNTL, align 8
  %59 = load i64, i64* @DMA0_REGISTER_OFFSET, align 8
  %60 = add nsw i64 %58, %59
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @WREG32(i64 %60, i32 %61)
  br label %63

63:                                               ; preds = %49, %12
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* @RADEON_RESET_DMA1, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %82

68:                                               ; preds = %63
  %69 = load i64, i64* @DMA_RB_CNTL, align 8
  %70 = load i64, i64* @DMA1_REGISTER_OFFSET, align 8
  %71 = add nsw i64 %69, %70
  %72 = call i32 @RREG32(i64 %71)
  store i32 %72, i32* %8, align 4
  %73 = load i32, i32* @DMA_RB_ENABLE, align 4
  %74 = xor i32 %73, -1
  %75 = load i32, i32* %8, align 4
  %76 = and i32 %75, %74
  store i32 %76, i32* %8, align 4
  %77 = load i64, i64* @DMA_RB_CNTL, align 8
  %78 = load i64, i64* @DMA1_REGISTER_OFFSET, align 8
  %79 = add nsw i64 %77, %78
  %80 = load i32, i32* %8, align 4
  %81 = call i32 @WREG32(i64 %79, i32 %80)
  br label %82

82:                                               ; preds = %68, %63
  %83 = call i32 @udelay(i32 50)
  %84 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %85 = call i32 @evergreen_mc_stop(%struct.radeon_device* %84, %struct.evergreen_mc_save* %5)
  %86 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %87 = call i64 @evergreen_mc_wait_for_idle(%struct.radeon_device* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %82
  %90 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %91 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @dev_warn(i32 %92, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  br label %94

94:                                               ; preds = %89, %82
  %95 = load i32, i32* %4, align 4
  %96 = load i32, i32* @RADEON_RESET_GFX, align 4
  %97 = load i32, i32* @RADEON_RESET_COMPUTE, align 4
  %98 = or i32 %96, %97
  %99 = load i32, i32* @RADEON_RESET_CP, align 4
  %100 = or i32 %98, %99
  %101 = and i32 %95, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %127

103:                                              ; preds = %94
  %104 = load i32, i32* @SOFT_RESET_CB, align 4
  %105 = load i32, i32* @SOFT_RESET_DB, align 4
  %106 = or i32 %104, %105
  %107 = load i32, i32* @SOFT_RESET_GDS, align 4
  %108 = or i32 %106, %107
  %109 = load i32, i32* @SOFT_RESET_PA, align 4
  %110 = or i32 %108, %109
  %111 = load i32, i32* @SOFT_RESET_SC, align 4
  %112 = or i32 %110, %111
  %113 = load i32, i32* @SOFT_RESET_BCI, align 4
  %114 = or i32 %112, %113
  %115 = load i32, i32* @SOFT_RESET_SPI, align 4
  %116 = or i32 %114, %115
  %117 = load i32, i32* @SOFT_RESET_SX, align 4
  %118 = or i32 %116, %117
  %119 = load i32, i32* @SOFT_RESET_TC, align 4
  %120 = or i32 %118, %119
  %121 = load i32, i32* @SOFT_RESET_TA, align 4
  %122 = or i32 %120, %121
  %123 = load i32, i32* @SOFT_RESET_VGT, align 4
  %124 = or i32 %122, %123
  %125 = load i32, i32* @SOFT_RESET_IA, align 4
  %126 = or i32 %124, %125
  store i32 %126, i32* %6, align 4
  br label %127

127:                                              ; preds = %103, %94
  %128 = load i32, i32* %4, align 4
  %129 = load i32, i32* @RADEON_RESET_CP, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %141

132:                                              ; preds = %127
  %133 = load i32, i32* @SOFT_RESET_CP, align 4
  %134 = load i32, i32* @SOFT_RESET_VGT, align 4
  %135 = or i32 %133, %134
  %136 = load i32, i32* %6, align 4
  %137 = or i32 %136, %135
  store i32 %137, i32* %6, align 4
  %138 = load i32, i32* @SOFT_RESET_GRBM, align 4
  %139 = load i32, i32* %7, align 4
  %140 = or i32 %139, %138
  store i32 %140, i32* %7, align 4
  br label %141

141:                                              ; preds = %132, %127
  %142 = load i32, i32* %4, align 4
  %143 = load i32, i32* @RADEON_RESET_DMA, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %150

146:                                              ; preds = %141
  %147 = load i32, i32* @SOFT_RESET_DMA, align 4
  %148 = load i32, i32* %7, align 4
  %149 = or i32 %148, %147
  store i32 %149, i32* %7, align 4
  br label %150

150:                                              ; preds = %146, %141
  %151 = load i32, i32* %4, align 4
  %152 = load i32, i32* @RADEON_RESET_DMA1, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %159

155:                                              ; preds = %150
  %156 = load i32, i32* @SOFT_RESET_DMA1, align 4
  %157 = load i32, i32* %7, align 4
  %158 = or i32 %157, %156
  store i32 %158, i32* %7, align 4
  br label %159

159:                                              ; preds = %155, %150
  %160 = load i32, i32* %4, align 4
  %161 = load i32, i32* @RADEON_RESET_DISPLAY, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %168

164:                                              ; preds = %159
  %165 = load i32, i32* @SOFT_RESET_DC, align 4
  %166 = load i32, i32* %7, align 4
  %167 = or i32 %166, %165
  store i32 %167, i32* %7, align 4
  br label %168

168:                                              ; preds = %164, %159
  %169 = load i32, i32* %4, align 4
  %170 = load i32, i32* @RADEON_RESET_RLC, align 4
  %171 = and i32 %169, %170
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %177

173:                                              ; preds = %168
  %174 = load i32, i32* @SOFT_RESET_RLC, align 4
  %175 = load i32, i32* %6, align 4
  %176 = or i32 %175, %174
  store i32 %176, i32* %6, align 4
  br label %177

177:                                              ; preds = %173, %168
  %178 = load i32, i32* %4, align 4
  %179 = load i32, i32* @RADEON_RESET_SEM, align 4
  %180 = and i32 %178, %179
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %186

182:                                              ; preds = %177
  %183 = load i32, i32* @SOFT_RESET_SEM, align 4
  %184 = load i32, i32* %7, align 4
  %185 = or i32 %184, %183
  store i32 %185, i32* %7, align 4
  br label %186

186:                                              ; preds = %182, %177
  %187 = load i32, i32* %4, align 4
  %188 = load i32, i32* @RADEON_RESET_IH, align 4
  %189 = and i32 %187, %188
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %195

191:                                              ; preds = %186
  %192 = load i32, i32* @SOFT_RESET_IH, align 4
  %193 = load i32, i32* %7, align 4
  %194 = or i32 %193, %192
  store i32 %194, i32* %7, align 4
  br label %195

195:                                              ; preds = %191, %186
  %196 = load i32, i32* %4, align 4
  %197 = load i32, i32* @RADEON_RESET_GRBM, align 4
  %198 = and i32 %196, %197
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %204

200:                                              ; preds = %195
  %201 = load i32, i32* @SOFT_RESET_GRBM, align 4
  %202 = load i32, i32* %7, align 4
  %203 = or i32 %202, %201
  store i32 %203, i32* %7, align 4
  br label %204

204:                                              ; preds = %200, %195
  %205 = load i32, i32* %4, align 4
  %206 = load i32, i32* @RADEON_RESET_VMC, align 4
  %207 = and i32 %205, %206
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %213

209:                                              ; preds = %204
  %210 = load i32, i32* @SOFT_RESET_VMC, align 4
  %211 = load i32, i32* %7, align 4
  %212 = or i32 %211, %210
  store i32 %212, i32* %7, align 4
  br label %213

213:                                              ; preds = %209, %204
  %214 = load i32, i32* %4, align 4
  %215 = load i32, i32* @RADEON_RESET_MC, align 4
  %216 = and i32 %214, %215
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %222

218:                                              ; preds = %213
  %219 = load i32, i32* @SOFT_RESET_MC, align 4
  %220 = load i32, i32* %7, align 4
  %221 = or i32 %220, %219
  store i32 %221, i32* %7, align 4
  br label %222

222:                                              ; preds = %218, %213
  %223 = load i32, i32* %6, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %251

225:                                              ; preds = %222
  %226 = load i64, i64* @GRBM_SOFT_RESET, align 8
  %227 = call i32 @RREG32(i64 %226)
  store i32 %227, i32* %8, align 4
  %228 = load i32, i32* %6, align 4
  %229 = load i32, i32* %8, align 4
  %230 = or i32 %229, %228
  store i32 %230, i32* %8, align 4
  %231 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %232 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 4
  %234 = load i32, i32* %8, align 4
  %235 = call i32 @dev_info(i32 %233, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %234)
  %236 = load i64, i64* @GRBM_SOFT_RESET, align 8
  %237 = load i32, i32* %8, align 4
  %238 = call i32 @WREG32(i64 %236, i32 %237)
  %239 = load i64, i64* @GRBM_SOFT_RESET, align 8
  %240 = call i32 @RREG32(i64 %239)
  store i32 %240, i32* %8, align 4
  %241 = call i32 @udelay(i32 50)
  %242 = load i32, i32* %6, align 4
  %243 = xor i32 %242, -1
  %244 = load i32, i32* %8, align 4
  %245 = and i32 %244, %243
  store i32 %245, i32* %8, align 4
  %246 = load i64, i64* @GRBM_SOFT_RESET, align 8
  %247 = load i32, i32* %8, align 4
  %248 = call i32 @WREG32(i64 %246, i32 %247)
  %249 = load i64, i64* @GRBM_SOFT_RESET, align 8
  %250 = call i32 @RREG32(i64 %249)
  store i32 %250, i32* %8, align 4
  br label %251

251:                                              ; preds = %225, %222
  %252 = load i32, i32* %7, align 4
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %280

254:                                              ; preds = %251
  %255 = load i64, i64* @SRBM_SOFT_RESET, align 8
  %256 = call i32 @RREG32(i64 %255)
  store i32 %256, i32* %8, align 4
  %257 = load i32, i32* %7, align 4
  %258 = load i32, i32* %8, align 4
  %259 = or i32 %258, %257
  store i32 %259, i32* %8, align 4
  %260 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %261 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 4
  %263 = load i32, i32* %8, align 4
  %264 = call i32 @dev_info(i32 %262, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 %263)
  %265 = load i64, i64* @SRBM_SOFT_RESET, align 8
  %266 = load i32, i32* %8, align 4
  %267 = call i32 @WREG32(i64 %265, i32 %266)
  %268 = load i64, i64* @SRBM_SOFT_RESET, align 8
  %269 = call i32 @RREG32(i64 %268)
  store i32 %269, i32* %8, align 4
  %270 = call i32 @udelay(i32 50)
  %271 = load i32, i32* %7, align 4
  %272 = xor i32 %271, -1
  %273 = load i32, i32* %8, align 4
  %274 = and i32 %273, %272
  store i32 %274, i32* %8, align 4
  %275 = load i64, i64* @SRBM_SOFT_RESET, align 8
  %276 = load i32, i32* %8, align 4
  %277 = call i32 @WREG32(i64 %275, i32 %276)
  %278 = load i64, i64* @SRBM_SOFT_RESET, align 8
  %279 = call i32 @RREG32(i64 %278)
  store i32 %279, i32* %8, align 4
  br label %280

280:                                              ; preds = %254, %251
  %281 = call i32 @udelay(i32 50)
  %282 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %283 = call i32 @evergreen_mc_resume(%struct.radeon_device* %282, %struct.evergreen_mc_save* %5)
  %284 = call i32 @udelay(i32 50)
  %285 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %286 = call i32 @evergreen_print_gpu_status_regs(%struct.radeon_device* %285)
  br label %287

287:                                              ; preds = %280, %11
  ret void
}

declare dso_local i32 @dev_info(i32, i8*, i32) #1

declare dso_local i32 @evergreen_print_gpu_status_regs(%struct.radeon_device*) #1

declare dso_local i32 @RREG32(i64) #1

declare dso_local i32 @si_fini_pg(%struct.radeon_device*) #1

declare dso_local i32 @si_fini_cg(%struct.radeon_device*) #1

declare dso_local i32 @si_rlc_stop(%struct.radeon_device*) #1

declare dso_local i32 @WREG32(i64, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @evergreen_mc_stop(%struct.radeon_device*, %struct.evergreen_mc_save*) #1

declare dso_local i64 @evergreen_mc_wait_for_idle(%struct.radeon_device*) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @evergreen_mc_resume(%struct.radeon_device*, %struct.evergreen_mc_save*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
