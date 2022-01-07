; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_evergreen.c_evergreen_irq_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_evergreen.c_evergreen_irq_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i64, i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32*, i32*, i32*, i64*, i64, i32*, i32 }
%struct.TYPE_3__ = type { i32 }

@CNTX_BUSY_INT_ENABLE = common dso_local global i32 0, align 4
@CNTX_EMPTY_INT_ENABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"Can't enable IRQ/MSI because no handler is installed\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@CHIP_ARUBA = common dso_local global i64 0, align 8
@TN_CG_THERMAL_INT_CTRL = common dso_local global i64 0, align 8
@THERM_INT_MASK_HIGH = common dso_local global i32 0, align 4
@THERM_INT_MASK_LOW = common dso_local global i32 0, align 4
@CG_THERMAL_INT = common dso_local global i64 0, align 8
@DMA_CNTL = common dso_local global i64 0, align 8
@TRAP_ENABLE = common dso_local global i32 0, align 4
@CHIP_CAYMAN = common dso_local global i64 0, align 8
@RADEON_RING_TYPE_GFX_INDEX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"evergreen_irq_set: sw int gfx\0A\00", align 1
@TIME_STAMP_INT_ENABLE = common dso_local global i32 0, align 4
@CAYMAN_RING_TYPE_CP1_INDEX = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [31 x i8] c"evergreen_irq_set: sw int cp1\0A\00", align 1
@CAYMAN_RING_TYPE_CP2_INDEX = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [31 x i8] c"evergreen_irq_set: sw int cp2\0A\00", align 1
@RB_INT_ENABLE = common dso_local global i32 0, align 4
@R600_RING_TYPE_DMA_INDEX = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [26 x i8] c"r600_irq_set: sw int dma\0A\00", align 1
@CAYMAN_DMA1_CNTL = common dso_local global i64 0, align 8
@CAYMAN_RING_TYPE_DMA1_INDEX = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [27 x i8] c"r600_irq_set: sw int dma1\0A\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"dpm thermal\0A\00", align 1
@CP_INT_CNTL = common dso_local global i64 0, align 8
@GRBM_INT_CNTL = common dso_local global i64 0, align 8
@INT_MASK = common dso_local global i64 0, align 8
@crtc_offsets = common dso_local global i64* null, align 8
@VBLANK_INT_MASK = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [7 x i8] c"vblank\00", align 1
@GRPH_INT_CONTROL = common dso_local global i64 0, align 8
@GRPH_PFLIP_INT_MASK = common dso_local global i32 0, align 4
@DC_HPDx_INT_EN = common dso_local global i32 0, align 4
@DC_HPDx_RX_INT_EN = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [4 x i8] c"HPD\00", align 1
@AFMT_AUDIO_PACKET_CONTROL = common dso_local global i64 0, align 8
@AFMT_AZ_FORMAT_WTRIG_MASK = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [5 x i8] c"HDMI\00", align 1
@SRBM_STATUS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @evergreen_irq_set(%struct.radeon_device* %0) #0 {
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
  %12 = load i32, i32* @CNTX_BUSY_INT_ENABLE, align 4
  %13 = load i32, i32* @CNTX_EMPTY_INT_ENABLE, align 4
  %14 = or i32 %12, %13
  store i32 %14, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %15 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %16 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 6
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %1
  %21 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %350

24:                                               ; preds = %1
  %25 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %26 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %24
  %31 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %32 = call i32 @r600_disable_interrupts(%struct.radeon_device* %31)
  %33 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %34 = call i32 @evergreen_disable_interrupt_state(%struct.radeon_device* %33)
  store i32 0, i32* %2, align 4
  br label %350

35:                                               ; preds = %24
  %36 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %37 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @CHIP_ARUBA, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %49

41:                                               ; preds = %35
  %42 = load i64, i64* @TN_CG_THERMAL_INT_CTRL, align 8
  %43 = call i32 @RREG32(i64 %42)
  %44 = load i32, i32* @THERM_INT_MASK_HIGH, align 4
  %45 = load i32, i32* @THERM_INT_MASK_LOW, align 4
  %46 = or i32 %44, %45
  %47 = xor i32 %46, -1
  %48 = and i32 %43, %47
  store i32 %48, i32* %11, align 4
  br label %57

49:                                               ; preds = %35
  %50 = load i64, i64* @CG_THERMAL_INT, align 8
  %51 = call i32 @RREG32(i64 %50)
  %52 = load i32, i32* @THERM_INT_MASK_HIGH, align 4
  %53 = load i32, i32* @THERM_INT_MASK_LOW, align 4
  %54 = or i32 %52, %53
  %55 = xor i32 %54, -1
  %56 = and i32 %51, %55
  store i32 %56, i32* %11, align 4
  br label %57

57:                                               ; preds = %49, %41
  %58 = load i64, i64* @DMA_CNTL, align 8
  %59 = call i32 @RREG32(i64 %58)
  %60 = load i32, i32* @TRAP_ENABLE, align 4
  %61 = xor i32 %60, -1
  %62 = and i32 %59, %61
  store i32 %62, i32* %9, align 4
  %63 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %64 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @CHIP_CAYMAN, align 8
  %67 = icmp sge i64 %65, %66
  br i1 %67, label %68, label %111

68:                                               ; preds = %57
  %69 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %70 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 5
  %72 = load i32*, i32** %71, align 8
  %73 = load i64, i64* @RADEON_RING_TYPE_GFX_INDEX, align 8
  %74 = getelementptr inbounds i32, i32* %72, i64 %73
  %75 = call i64 @atomic_read(i32* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %68
  %78 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %79 = load i32, i32* @TIME_STAMP_INT_ENABLE, align 4
  %80 = load i32, i32* %5, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %5, align 4
  br label %82

82:                                               ; preds = %77, %68
  %83 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %84 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 5
  %86 = load i32*, i32** %85, align 8
  %87 = load i64, i64* @CAYMAN_RING_TYPE_CP1_INDEX, align 8
  %88 = getelementptr inbounds i32, i32* %86, i64 %87
  %89 = call i64 @atomic_read(i32* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %82
  %92 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %93 = load i32, i32* @TIME_STAMP_INT_ENABLE, align 4
  %94 = load i32, i32* %6, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %6, align 4
  br label %96

96:                                               ; preds = %91, %82
  %97 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %98 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 5
  %100 = load i32*, i32** %99, align 8
  %101 = load i64, i64* @CAYMAN_RING_TYPE_CP2_INDEX, align 8
  %102 = getelementptr inbounds i32, i32* %100, i64 %101
  %103 = call i64 @atomic_read(i32* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %96
  %106 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %107 = load i32, i32* @TIME_STAMP_INT_ENABLE, align 4
  %108 = load i32, i32* %7, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %7, align 4
  br label %110

110:                                              ; preds = %105, %96
  br label %129

111:                                              ; preds = %57
  %112 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %113 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 5
  %115 = load i32*, i32** %114, align 8
  %116 = load i64, i64* @RADEON_RING_TYPE_GFX_INDEX, align 8
  %117 = getelementptr inbounds i32, i32* %115, i64 %116
  %118 = call i64 @atomic_read(i32* %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %128

120:                                              ; preds = %111
  %121 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %122 = load i32, i32* @RB_INT_ENABLE, align 4
  %123 = load i32, i32* %5, align 4
  %124 = or i32 %123, %122
  store i32 %124, i32* %5, align 4
  %125 = load i32, i32* @TIME_STAMP_INT_ENABLE, align 4
  %126 = load i32, i32* %5, align 4
  %127 = or i32 %126, %125
  store i32 %127, i32* %5, align 4
  br label %128

128:                                              ; preds = %120, %111
  br label %129

129:                                              ; preds = %128, %110
  %130 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %131 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %130, i32 0, i32 2
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 5
  %133 = load i32*, i32** %132, align 8
  %134 = load i64, i64* @R600_RING_TYPE_DMA_INDEX, align 8
  %135 = getelementptr inbounds i32, i32* %133, i64 %134
  %136 = call i64 @atomic_read(i32* %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %143

138:                                              ; preds = %129
  %139 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %140 = load i32, i32* @TRAP_ENABLE, align 4
  %141 = load i32, i32* %9, align 4
  %142 = or i32 %141, %140
  store i32 %142, i32* %9, align 4
  br label %143

143:                                              ; preds = %138, %129
  %144 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %145 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @CHIP_CAYMAN, align 8
  %148 = icmp sge i64 %146, %147
  br i1 %148, label %149, label %169

149:                                              ; preds = %143
  %150 = load i64, i64* @CAYMAN_DMA1_CNTL, align 8
  %151 = call i32 @RREG32(i64 %150)
  %152 = load i32, i32* @TRAP_ENABLE, align 4
  %153 = xor i32 %152, -1
  %154 = and i32 %151, %153
  store i32 %154, i32* %10, align 4
  %155 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %156 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %155, i32 0, i32 2
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 5
  %158 = load i32*, i32** %157, align 8
  %159 = load i64, i64* @CAYMAN_RING_TYPE_DMA1_INDEX, align 8
  %160 = getelementptr inbounds i32, i32* %158, i64 %159
  %161 = call i64 @atomic_read(i32* %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %168

163:                                              ; preds = %149
  %164 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  %165 = load i32, i32* @TRAP_ENABLE, align 4
  %166 = load i32, i32* %10, align 4
  %167 = or i32 %166, %165
  store i32 %167, i32* %10, align 4
  br label %168

168:                                              ; preds = %163, %149
  br label %169

169:                                              ; preds = %168, %143
  %170 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %171 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %170, i32 0, i32 2
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i32 0, i32 4
  %173 = load i64, i64* %172, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %182

175:                                              ; preds = %169
  %176 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  %177 = load i32, i32* @THERM_INT_MASK_HIGH, align 4
  %178 = load i32, i32* @THERM_INT_MASK_LOW, align 4
  %179 = or i32 %177, %178
  %180 = load i32, i32* %11, align 4
  %181 = or i32 %180, %179
  store i32 %181, i32* %11, align 4
  br label %182

182:                                              ; preds = %175, %169
  %183 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %184 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = load i64, i64* @CHIP_CAYMAN, align 8
  %187 = icmp sge i64 %185, %186
  br i1 %187, label %188, label %198

188:                                              ; preds = %182
  %189 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %190 = load i32, i32* %5, align 4
  %191 = call i32 @cayman_cp_int_cntl_setup(%struct.radeon_device* %189, i32 0, i32 %190)
  %192 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %193 = load i32, i32* %6, align 4
  %194 = call i32 @cayman_cp_int_cntl_setup(%struct.radeon_device* %192, i32 1, i32 %193)
  %195 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %196 = load i32, i32* %7, align 4
  %197 = call i32 @cayman_cp_int_cntl_setup(%struct.radeon_device* %195, i32 2, i32 %196)
  br label %202

198:                                              ; preds = %182
  %199 = load i64, i64* @CP_INT_CNTL, align 8
  %200 = load i32, i32* %5, align 4
  %201 = call i32 @WREG32(i64 %199, i32 %200)
  br label %202

202:                                              ; preds = %198, %188
  %203 = load i64, i64* @DMA_CNTL, align 8
  %204 = load i32, i32* %9, align 4
  %205 = call i32 @WREG32(i64 %203, i32 %204)
  %206 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %207 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = load i64, i64* @CHIP_CAYMAN, align 8
  %210 = icmp sge i64 %208, %209
  br i1 %210, label %211, label %215

211:                                              ; preds = %202
  %212 = load i64, i64* @CAYMAN_DMA1_CNTL, align 8
  %213 = load i32, i32* %10, align 4
  %214 = call i32 @WREG32(i64 %212, i32 %213)
  br label %215

215:                                              ; preds = %211, %202
  %216 = load i64, i64* @GRBM_INT_CNTL, align 8
  %217 = load i32, i32* %8, align 4
  %218 = call i32 @WREG32(i64 %216, i32 %217)
  store i32 0, i32* %4, align 4
  br label %219

219:                                              ; preds = %259, %215
  %220 = load i32, i32* %4, align 4
  %221 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %222 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 8
  %224 = icmp slt i32 %220, %223
  br i1 %224, label %225, label %262

225:                                              ; preds = %219
  %226 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %227 = load i64, i64* @INT_MASK, align 8
  %228 = load i64*, i64** @crtc_offsets, align 8
  %229 = load i32, i32* %4, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i64, i64* %228, i64 %230
  %232 = load i64, i64* %231, align 8
  %233 = add nsw i64 %227, %232
  %234 = load i32, i32* @VBLANK_INT_MASK, align 4
  %235 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %236 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %235, i32 0, i32 2
  %237 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %236, i32 0, i32 3
  %238 = load i64*, i64** %237, align 8
  %239 = load i32, i32* %4, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i64, i64* %238, i64 %240
  %242 = load i64, i64* %241, align 8
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %254, label %244

244:                                              ; preds = %225
  %245 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %246 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %245, i32 0, i32 2
  %247 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %246, i32 0, i32 2
  %248 = load i32*, i32** %247, align 8
  %249 = load i32, i32* %4, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i32, i32* %248, i64 %250
  %252 = call i64 @atomic_read(i32* %251)
  %253 = icmp ne i64 %252, 0
  br label %254

254:                                              ; preds = %244, %225
  %255 = phi i1 [ true, %225 ], [ %253, %244 ]
  %256 = zext i1 %255 to i32
  %257 = load i32, i32* %4, align 4
  %258 = call i32 @radeon_irq_kms_set_irq_n_enabled(%struct.radeon_device* %226, i64 %233, i32 %234, i32 %256, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32 %257)
  br label %259

259:                                              ; preds = %254
  %260 = load i32, i32* %4, align 4
  %261 = add nsw i32 %260, 1
  store i32 %261, i32* %4, align 4
  br label %219

262:                                              ; preds = %219
  store i32 0, i32* %4, align 4
  br label %263

263:                                              ; preds = %279, %262
  %264 = load i32, i32* %4, align 4
  %265 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %266 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %265, i32 0, i32 1
  %267 = load i32, i32* %266, align 8
  %268 = icmp slt i32 %264, %267
  br i1 %268, label %269, label %282

269:                                              ; preds = %263
  %270 = load i64, i64* @GRPH_INT_CONTROL, align 8
  %271 = load i64*, i64** @crtc_offsets, align 8
  %272 = load i32, i32* %4, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds i64, i64* %271, i64 %273
  %275 = load i64, i64* %274, align 8
  %276 = add nsw i64 %270, %275
  %277 = load i32, i32* @GRPH_PFLIP_INT_MASK, align 4
  %278 = call i32 @WREG32(i64 %276, i32 %277)
  br label %279

279:                                              ; preds = %269
  %280 = load i32, i32* %4, align 4
  %281 = add nsw i32 %280, 1
  store i32 %281, i32* %4, align 4
  br label %263

282:                                              ; preds = %263
  store i32 0, i32* %4, align 4
  br label %283

283:                                              ; preds = %303, %282
  %284 = load i32, i32* %4, align 4
  %285 = icmp slt i32 %284, 6
  br i1 %285, label %286, label %306

286:                                              ; preds = %283
  %287 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %288 = load i32, i32* %4, align 4
  %289 = call i64 @DC_HPDx_INT_CONTROL(i32 %288)
  %290 = load i32, i32* @DC_HPDx_INT_EN, align 4
  %291 = load i32, i32* @DC_HPDx_RX_INT_EN, align 4
  %292 = or i32 %290, %291
  %293 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %294 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %293, i32 0, i32 2
  %295 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %294, i32 0, i32 0
  %296 = load i32*, i32** %295, align 8
  %297 = load i32, i32* %4, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds i32, i32* %296, i64 %298
  %300 = load i32, i32* %299, align 4
  %301 = load i32, i32* %4, align 4
  %302 = call i32 @radeon_irq_kms_set_irq_n_enabled(%struct.radeon_device* %287, i64 %289, i32 %292, i32 %300, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i32 %301)
  br label %303

303:                                              ; preds = %286
  %304 = load i32, i32* %4, align 4
  %305 = add nsw i32 %304, 1
  store i32 %305, i32* %4, align 4
  br label %283

306:                                              ; preds = %283
  %307 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %308 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %307, i32 0, i32 0
  %309 = load i64, i64* %308, align 8
  %310 = load i64, i64* @CHIP_ARUBA, align 8
  %311 = icmp eq i64 %309, %310
  br i1 %311, label %312, label %316

312:                                              ; preds = %306
  %313 = load i64, i64* @TN_CG_THERMAL_INT_CTRL, align 8
  %314 = load i32, i32* %11, align 4
  %315 = call i32 @WREG32(i64 %313, i32 %314)
  br label %320

316:                                              ; preds = %306
  %317 = load i64, i64* @CG_THERMAL_INT, align 8
  %318 = load i32, i32* %11, align 4
  %319 = call i32 @WREG32(i64 %317, i32 %318)
  br label %320

320:                                              ; preds = %316, %312
  store i32 0, i32* %4, align 4
  br label %321

321:                                              ; preds = %344, %320
  %322 = load i32, i32* %4, align 4
  %323 = icmp slt i32 %322, 6
  br i1 %323, label %324, label %347

324:                                              ; preds = %321
  %325 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %326 = load i64, i64* @AFMT_AUDIO_PACKET_CONTROL, align 8
  %327 = load i64*, i64** @crtc_offsets, align 8
  %328 = load i32, i32* %4, align 4
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds i64, i64* %327, i64 %329
  %331 = load i64, i64* %330, align 8
  %332 = add nsw i64 %326, %331
  %333 = load i32, i32* @AFMT_AZ_FORMAT_WTRIG_MASK, align 4
  %334 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %335 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %334, i32 0, i32 2
  %336 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %335, i32 0, i32 1
  %337 = load i32*, i32** %336, align 8
  %338 = load i32, i32* %4, align 4
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds i32, i32* %337, i64 %339
  %341 = load i32, i32* %340, align 4
  %342 = load i32, i32* %4, align 4
  %343 = call i32 @radeon_irq_kms_set_irq_n_enabled(%struct.radeon_device* %325, i64 %332, i32 %333, i32 %341, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i32 %342)
  br label %344

344:                                              ; preds = %324
  %345 = load i32, i32* %4, align 4
  %346 = add nsw i32 %345, 1
  store i32 %346, i32* %4, align 4
  br label %321

347:                                              ; preds = %321
  %348 = load i64, i64* @SRBM_STATUS, align 8
  %349 = call i32 @RREG32(i64 %348)
  store i32 0, i32* %2, align 4
  br label %350

350:                                              ; preds = %347, %30, %20
  %351 = load i32, i32* %2, align 4
  ret i32 %351
}

declare dso_local i32 @WARN(i32, i8*) #1

declare dso_local i32 @r600_disable_interrupts(%struct.radeon_device*) #1

declare dso_local i32 @evergreen_disable_interrupt_state(%struct.radeon_device*) #1

declare dso_local i32 @RREG32(i64) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @DRM_DEBUG(i8*) #1

declare dso_local i32 @cayman_cp_int_cntl_setup(%struct.radeon_device*, i32, i32) #1

declare dso_local i32 @WREG32(i64, i32) #1

declare dso_local i32 @radeon_irq_kms_set_irq_n_enabled(%struct.radeon_device*, i64, i32, i32, i8*, i32) #1

declare dso_local i64 @DC_HPDx_INT_CONTROL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
