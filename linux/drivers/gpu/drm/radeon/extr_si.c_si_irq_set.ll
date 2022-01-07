; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si.c_si_irq_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si.c_si_irq_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32*, i32*, i64*, i64, i32*, i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [54 x i8] c"Can't enable IRQ/MSI because no handler is installed\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@CP_INT_CNTL_RING0 = common dso_local global i64 0, align 8
@CNTX_BUSY_INT_ENABLE = common dso_local global i32 0, align 4
@CNTX_EMPTY_INT_ENABLE = common dso_local global i32 0, align 4
@DMA_CNTL = common dso_local global i64 0, align 8
@DMA0_REGISTER_OFFSET = common dso_local global i64 0, align 8
@TRAP_ENABLE = common dso_local global i32 0, align 4
@DMA1_REGISTER_OFFSET = common dso_local global i64 0, align 8
@CG_THERMAL_INT = common dso_local global i64 0, align 8
@THERM_INT_MASK_HIGH = common dso_local global i32 0, align 4
@THERM_INT_MASK_LOW = common dso_local global i32 0, align 4
@RADEON_RING_TYPE_GFX_INDEX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"si_irq_set: sw int gfx\0A\00", align 1
@TIME_STAMP_INT_ENABLE = common dso_local global i32 0, align 4
@CAYMAN_RING_TYPE_CP1_INDEX = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [24 x i8] c"si_irq_set: sw int cp1\0A\00", align 1
@CAYMAN_RING_TYPE_CP2_INDEX = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [24 x i8] c"si_irq_set: sw int cp2\0A\00", align 1
@R600_RING_TYPE_DMA_INDEX = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [24 x i8] c"si_irq_set: sw int dma\0A\00", align 1
@CAYMAN_RING_TYPE_DMA1_INDEX = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [25 x i8] c"si_irq_set: sw int dma1\0A\00", align 1
@CP_INT_CNTL_RING1 = common dso_local global i64 0, align 8
@CP_INT_CNTL_RING2 = common dso_local global i64 0, align 8
@GRBM_INT_CNTL = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [13 x i8] c"dpm thermal\0A\00", align 1
@INT_MASK = common dso_local global i64 0, align 8
@crtc_offsets = common dso_local global i64* null, align 8
@VBLANK_INT_MASK = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [7 x i8] c"vblank\00", align 1
@GRPH_INT_CONTROL = common dso_local global i64 0, align 8
@GRPH_PFLIP_INT_MASK = common dso_local global i32 0, align 4
@DC_HPDx_INT_EN = common dso_local global i32 0, align 4
@DC_HPDx_RX_INT_EN = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [4 x i8] c"HPD\00", align 1
@SRBM_STATUS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @si_irq_set(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %11, align 4
  %12 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %13 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %1
  %18 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %263

21:                                               ; preds = %1
  %22 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %23 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %21
  %28 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %29 = call i32 @si_disable_interrupts(%struct.radeon_device* %28)
  %30 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %31 = call i32 @si_disable_interrupt_state(%struct.radeon_device* %30)
  store i32 0, i32* %2, align 4
  br label %263

32:                                               ; preds = %21
  %33 = load i64, i64* @CP_INT_CNTL_RING0, align 8
  %34 = call i32 @RREG32(i64 %33)
  %35 = load i32, i32* @CNTX_BUSY_INT_ENABLE, align 4
  %36 = load i32, i32* @CNTX_EMPTY_INT_ENABLE, align 4
  %37 = or i32 %35, %36
  %38 = and i32 %34, %37
  store i32 %38, i32* %5, align 4
  %39 = load i64, i64* @DMA_CNTL, align 8
  %40 = load i64, i64* @DMA0_REGISTER_OFFSET, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i32 @RREG32(i64 %41)
  %43 = load i32, i32* @TRAP_ENABLE, align 4
  %44 = xor i32 %43, -1
  %45 = and i32 %42, %44
  store i32 %45, i32* %9, align 4
  %46 = load i64, i64* @DMA_CNTL, align 8
  %47 = load i64, i64* @DMA1_REGISTER_OFFSET, align 8
  %48 = add nsw i64 %46, %47
  %49 = call i32 @RREG32(i64 %48)
  %50 = load i32, i32* @TRAP_ENABLE, align 4
  %51 = xor i32 %50, -1
  %52 = and i32 %49, %51
  store i32 %52, i32* %10, align 4
  %53 = load i64, i64* @CG_THERMAL_INT, align 8
  %54 = call i32 @RREG32(i64 %53)
  %55 = load i32, i32* @THERM_INT_MASK_HIGH, align 4
  %56 = load i32, i32* @THERM_INT_MASK_LOW, align 4
  %57 = or i32 %55, %56
  %58 = xor i32 %57, -1
  %59 = and i32 %54, %58
  store i32 %59, i32* %11, align 4
  %60 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %61 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 4
  %63 = load i32*, i32** %62, align 8
  %64 = load i64, i64* @RADEON_RING_TYPE_GFX_INDEX, align 8
  %65 = getelementptr inbounds i32, i32* %63, i64 %64
  %66 = call i64 @atomic_read(i32* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %32
  %69 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %70 = load i32, i32* @TIME_STAMP_INT_ENABLE, align 4
  %71 = load i32, i32* %5, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %5, align 4
  br label %73

73:                                               ; preds = %68, %32
  %74 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %75 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 4
  %77 = load i32*, i32** %76, align 8
  %78 = load i64, i64* @CAYMAN_RING_TYPE_CP1_INDEX, align 8
  %79 = getelementptr inbounds i32, i32* %77, i64 %78
  %80 = call i64 @atomic_read(i32* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %73
  %83 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %84 = load i32, i32* @TIME_STAMP_INT_ENABLE, align 4
  %85 = load i32, i32* %6, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %6, align 4
  br label %87

87:                                               ; preds = %82, %73
  %88 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %89 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 4
  %91 = load i32*, i32** %90, align 8
  %92 = load i64, i64* @CAYMAN_RING_TYPE_CP2_INDEX, align 8
  %93 = getelementptr inbounds i32, i32* %91, i64 %92
  %94 = call i64 @atomic_read(i32* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %87
  %97 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %98 = load i32, i32* @TIME_STAMP_INT_ENABLE, align 4
  %99 = load i32, i32* %7, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %7, align 4
  br label %101

101:                                              ; preds = %96, %87
  %102 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %103 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 4
  %105 = load i32*, i32** %104, align 8
  %106 = load i64, i64* @R600_RING_TYPE_DMA_INDEX, align 8
  %107 = getelementptr inbounds i32, i32* %105, i64 %106
  %108 = call i64 @atomic_read(i32* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %101
  %111 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %112 = load i32, i32* @TRAP_ENABLE, align 4
  %113 = load i32, i32* %9, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* %9, align 4
  br label %115

115:                                              ; preds = %110, %101
  %116 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %117 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 4
  %119 = load i32*, i32** %118, align 8
  %120 = load i64, i64* @CAYMAN_RING_TYPE_DMA1_INDEX, align 8
  %121 = getelementptr inbounds i32, i32* %119, i64 %120
  %122 = call i64 @atomic_read(i32* %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %129

124:                                              ; preds = %115
  %125 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  %126 = load i32, i32* @TRAP_ENABLE, align 4
  %127 = load i32, i32* %10, align 4
  %128 = or i32 %127, %126
  store i32 %128, i32* %10, align 4
  br label %129

129:                                              ; preds = %124, %115
  %130 = load i64, i64* @CP_INT_CNTL_RING0, align 8
  %131 = load i32, i32* %5, align 4
  %132 = call i32 @WREG32(i64 %130, i32 %131)
  %133 = load i64, i64* @CP_INT_CNTL_RING1, align 8
  %134 = load i32, i32* %6, align 4
  %135 = call i32 @WREG32(i64 %133, i32 %134)
  %136 = load i64, i64* @CP_INT_CNTL_RING2, align 8
  %137 = load i32, i32* %7, align 4
  %138 = call i32 @WREG32(i64 %136, i32 %137)
  %139 = load i64, i64* @DMA_CNTL, align 8
  %140 = load i64, i64* @DMA0_REGISTER_OFFSET, align 8
  %141 = add nsw i64 %139, %140
  %142 = load i32, i32* %9, align 4
  %143 = call i32 @WREG32(i64 %141, i32 %142)
  %144 = load i64, i64* @DMA_CNTL, align 8
  %145 = load i64, i64* @DMA1_REGISTER_OFFSET, align 8
  %146 = add nsw i64 %144, %145
  %147 = load i32, i32* %10, align 4
  %148 = call i32 @WREG32(i64 %146, i32 %147)
  %149 = load i64, i64* @GRBM_INT_CNTL, align 8
  %150 = load i32, i32* %8, align 4
  %151 = call i32 @WREG32(i64 %149, i32 %150)
  %152 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %153 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 3
  %155 = load i64, i64* %154, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %164

157:                                              ; preds = %129
  %158 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  %159 = load i32, i32* @THERM_INT_MASK_HIGH, align 4
  %160 = load i32, i32* @THERM_INT_MASK_LOW, align 4
  %161 = or i32 %159, %160
  %162 = load i32, i32* %11, align 4
  %163 = or i32 %162, %161
  store i32 %163, i32* %11, align 4
  br label %164

164:                                              ; preds = %157, %129
  store i32 0, i32* %4, align 4
  br label %165

165:                                              ; preds = %205, %164
  %166 = load i32, i32* %4, align 4
  %167 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %168 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = icmp slt i32 %166, %169
  br i1 %170, label %171, label %208

171:                                              ; preds = %165
  %172 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %173 = load i64, i64* @INT_MASK, align 8
  %174 = load i64*, i64** @crtc_offsets, align 8
  %175 = load i32, i32* %4, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i64, i64* %174, i64 %176
  %178 = load i64, i64* %177, align 8
  %179 = add nsw i64 %173, %178
  %180 = load i32, i32* @VBLANK_INT_MASK, align 4
  %181 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %182 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %181, i32 0, i32 1
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %182, i32 0, i32 2
  %184 = load i64*, i64** %183, align 8
  %185 = load i32, i32* %4, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i64, i64* %184, i64 %186
  %188 = load i64, i64* %187, align 8
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %200, label %190

190:                                              ; preds = %171
  %191 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %192 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %191, i32 0, i32 1
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %192, i32 0, i32 1
  %194 = load i32*, i32** %193, align 8
  %195 = load i32, i32* %4, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i32, i32* %194, i64 %196
  %198 = call i64 @atomic_read(i32* %197)
  %199 = icmp ne i64 %198, 0
  br label %200

200:                                              ; preds = %190, %171
  %201 = phi i1 [ true, %171 ], [ %199, %190 ]
  %202 = zext i1 %201 to i32
  %203 = load i32, i32* %4, align 4
  %204 = call i32 @radeon_irq_kms_set_irq_n_enabled(%struct.radeon_device* %172, i64 %179, i32 %180, i32 %202, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32 %203)
  br label %205

205:                                              ; preds = %200
  %206 = load i32, i32* %4, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %4, align 4
  br label %165

208:                                              ; preds = %165
  store i32 0, i32* %4, align 4
  br label %209

209:                                              ; preds = %225, %208
  %210 = load i32, i32* %4, align 4
  %211 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %212 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = icmp slt i32 %210, %213
  br i1 %214, label %215, label %228

215:                                              ; preds = %209
  %216 = load i64, i64* @GRPH_INT_CONTROL, align 8
  %217 = load i64*, i64** @crtc_offsets, align 8
  %218 = load i32, i32* %4, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i64, i64* %217, i64 %219
  %221 = load i64, i64* %220, align 8
  %222 = add nsw i64 %216, %221
  %223 = load i32, i32* @GRPH_PFLIP_INT_MASK, align 4
  %224 = call i32 @WREG32(i64 %222, i32 %223)
  br label %225

225:                                              ; preds = %215
  %226 = load i32, i32* %4, align 4
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %4, align 4
  br label %209

228:                                              ; preds = %209
  %229 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %230 = call i32 @ASIC_IS_NODCE(%struct.radeon_device* %229)
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %257, label %232

232:                                              ; preds = %228
  store i32 0, i32* %4, align 4
  br label %233

233:                                              ; preds = %253, %232
  %234 = load i32, i32* %4, align 4
  %235 = icmp slt i32 %234, 6
  br i1 %235, label %236, label %256

236:                                              ; preds = %233
  %237 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %238 = load i32, i32* %4, align 4
  %239 = call i64 @DC_HPDx_INT_CONTROL(i32 %238)
  %240 = load i32, i32* @DC_HPDx_INT_EN, align 4
  %241 = load i32, i32* @DC_HPDx_RX_INT_EN, align 4
  %242 = or i32 %240, %241
  %243 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %244 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %243, i32 0, i32 1
  %245 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %244, i32 0, i32 0
  %246 = load i32*, i32** %245, align 8
  %247 = load i32, i32* %4, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i32, i32* %246, i64 %248
  %250 = load i32, i32* %249, align 4
  %251 = load i32, i32* %4, align 4
  %252 = call i32 @radeon_irq_kms_set_irq_n_enabled(%struct.radeon_device* %237, i64 %239, i32 %242, i32 %250, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i32 %251)
  br label %253

253:                                              ; preds = %236
  %254 = load i32, i32* %4, align 4
  %255 = add nsw i32 %254, 1
  store i32 %255, i32* %4, align 4
  br label %233

256:                                              ; preds = %233
  br label %257

257:                                              ; preds = %256, %228
  %258 = load i64, i64* @CG_THERMAL_INT, align 8
  %259 = load i32, i32* %11, align 4
  %260 = call i32 @WREG32(i64 %258, i32 %259)
  %261 = load i64, i64* @SRBM_STATUS, align 8
  %262 = call i32 @RREG32(i64 %261)
  store i32 0, i32* %2, align 4
  br label %263

263:                                              ; preds = %257, %27, %17
  %264 = load i32, i32* %2, align 4
  ret i32 %264
}

declare dso_local i32 @WARN(i32, i8*) #1

declare dso_local i32 @si_disable_interrupts(%struct.radeon_device*) #1

declare dso_local i32 @si_disable_interrupt_state(%struct.radeon_device*) #1

declare dso_local i32 @RREG32(i64) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @DRM_DEBUG(i8*) #1

declare dso_local i32 @WREG32(i64, i32) #1

declare dso_local i32 @radeon_irq_kms_set_irq_n_enabled(%struct.radeon_device*, i64, i32, i32, i8*, i32) #1

declare dso_local i32 @ASIC_IS_NODCE(%struct.radeon_device*) #1

declare dso_local i64 @DC_HPDx_INT_CONTROL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
