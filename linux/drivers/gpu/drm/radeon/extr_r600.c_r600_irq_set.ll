; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r600.c_r600_irq_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r600.c_r600_irq_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i64, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64*, i64*, i32*, i64*, i32*, i64, i32 }
%struct.TYPE_3__ = type { i32 }

@CNTX_BUSY_INT_ENABLE = common dso_local global i32 0, align 4
@CNTX_EMPTY_INT_ENABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"Can't enable IRQ/MSI because no handler is installed\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@DC_HPD1_INT_CONTROL = common dso_local global i64 0, align 8
@DC_HPDx_INT_EN = common dso_local global i32 0, align 4
@DC_HPD2_INT_CONTROL = common dso_local global i64 0, align 8
@DC_HPD3_INT_CONTROL = common dso_local global i64 0, align 8
@DC_HPD4_INT_CONTROL = common dso_local global i64 0, align 8
@DC_HPD5_INT_CONTROL = common dso_local global i64 0, align 8
@DC_HPD6_INT_CONTROL = common dso_local global i64 0, align 8
@AFMT_AUDIO_PACKET_CONTROL = common dso_local global i64 0, align 8
@DCE3_HDMI_OFFSET0 = common dso_local global i64 0, align 8
@AFMT_AZ_FORMAT_WTRIG_MASK = common dso_local global i32 0, align 4
@DCE3_HDMI_OFFSET1 = common dso_local global i64 0, align 8
@HDMI0_AUDIO_PACKET_CONTROL = common dso_local global i64 0, align 8
@HDMI0_AZ_FORMAT_WTRIG_MASK = common dso_local global i32 0, align 4
@DCE3_HDMI1_AUDIO_PACKET_CONTROL = common dso_local global i64 0, align 8
@DC_HOT_PLUG_DETECT1_INT_CONTROL = common dso_local global i64 0, align 8
@DC_HOT_PLUG_DETECT2_INT_CONTROL = common dso_local global i64 0, align 8
@DC_HOT_PLUG_DETECT3_INT_CONTROL = common dso_local global i64 0, align 8
@HDMI1_AUDIO_PACKET_CONTROL = common dso_local global i64 0, align 8
@DMA_CNTL = common dso_local global i64 0, align 8
@TRAP_ENABLE = common dso_local global i32 0, align 4
@CHIP_R600 = common dso_local global i64 0, align 8
@CHIP_RV770 = common dso_local global i64 0, align 8
@CG_THERMAL_INT = common dso_local global i64 0, align 8
@THERM_INT_MASK_HIGH = common dso_local global i32 0, align 4
@THERM_INT_MASK_LOW = common dso_local global i32 0, align 4
@RV770_CG_THERMAL_INT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"dpm thermal\0A\00", align 1
@RADEON_RING_TYPE_GFX_INDEX = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"r600_irq_set: sw int\0A\00", align 1
@RB_INT_ENABLE = common dso_local global i32 0, align 4
@TIME_STAMP_INT_ENABLE = common dso_local global i32 0, align 4
@R600_RING_TYPE_DMA_INDEX = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [26 x i8] c"r600_irq_set: sw int dma\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"r600_irq_set: vblank 0\0A\00", align 1
@D1MODE_VBLANK_INT_MASK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [24 x i8] c"r600_irq_set: vblank 1\0A\00", align 1
@D2MODE_VBLANK_INT_MASK = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [21 x i8] c"r600_irq_set: hpd 1\0A\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"r600_irq_set: hpd 2\0A\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"r600_irq_set: hpd 3\0A\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"r600_irq_set: hpd 4\0A\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"r600_irq_set: hpd 5\0A\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"r600_irq_set: hpd 6\0A\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"r600_irq_set: hdmi 0\0A\00", align 1
@CP_INT_CNTL = common dso_local global i64 0, align 8
@DxMODE_INT_MASK = common dso_local global i64 0, align 8
@D1GRPH_INTERRUPT_CONTROL = common dso_local global i64 0, align 8
@DxGRPH_PFLIP_INT_MASK = common dso_local global i32 0, align 4
@D2GRPH_INTERRUPT_CONTROL = common dso_local global i64 0, align 8
@GRBM_INT_CNTL = common dso_local global i64 0, align 8
@R_000E50_SRBM_STATUS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @r600_irq_set(%struct.radeon_device* %0) #0 {
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
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %17 = load i32, i32* @CNTX_BUSY_INT_ENABLE, align 4
  %18 = load i32, i32* @CNTX_EMPTY_INT_ENABLE, align 4
  %19 = or i32 %17, %18
  store i32 %19, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %16, align 4
  %20 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %21 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 6
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %1
  %26 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %470

29:                                               ; preds = %1
  %30 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %31 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %29
  %36 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %37 = call i32 @r600_disable_interrupts(%struct.radeon_device* %36)
  %38 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %39 = call i32 @r600_disable_interrupt_state(%struct.radeon_device* %38)
  store i32 0, i32* %2, align 4
  br label %470

40:                                               ; preds = %29
  %41 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %42 = call i64 @ASIC_IS_DCE3(%struct.radeon_device* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %105

44:                                               ; preds = %40
  %45 = load i64, i64* @DC_HPD1_INT_CONTROL, align 8
  %46 = call i32 @RREG32(i64 %45)
  %47 = load i32, i32* @DC_HPDx_INT_EN, align 4
  %48 = xor i32 %47, -1
  %49 = and i32 %46, %48
  store i32 %49, i32* %6, align 4
  %50 = load i64, i64* @DC_HPD2_INT_CONTROL, align 8
  %51 = call i32 @RREG32(i64 %50)
  %52 = load i32, i32* @DC_HPDx_INT_EN, align 4
  %53 = xor i32 %52, -1
  %54 = and i32 %51, %53
  store i32 %54, i32* %7, align 4
  %55 = load i64, i64* @DC_HPD3_INT_CONTROL, align 8
  %56 = call i32 @RREG32(i64 %55)
  %57 = load i32, i32* @DC_HPDx_INT_EN, align 4
  %58 = xor i32 %57, -1
  %59 = and i32 %56, %58
  store i32 %59, i32* %8, align 4
  %60 = load i64, i64* @DC_HPD4_INT_CONTROL, align 8
  %61 = call i32 @RREG32(i64 %60)
  %62 = load i32, i32* @DC_HPDx_INT_EN, align 4
  %63 = xor i32 %62, -1
  %64 = and i32 %61, %63
  store i32 %64, i32* %9, align 4
  %65 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %66 = call i64 @ASIC_IS_DCE32(%struct.radeon_device* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %93

68:                                               ; preds = %44
  %69 = load i64, i64* @DC_HPD5_INT_CONTROL, align 8
  %70 = call i32 @RREG32(i64 %69)
  %71 = load i32, i32* @DC_HPDx_INT_EN, align 4
  %72 = xor i32 %71, -1
  %73 = and i32 %70, %72
  store i32 %73, i32* %10, align 4
  %74 = load i64, i64* @DC_HPD6_INT_CONTROL, align 8
  %75 = call i32 @RREG32(i64 %74)
  %76 = load i32, i32* @DC_HPDx_INT_EN, align 4
  %77 = xor i32 %76, -1
  %78 = and i32 %75, %77
  store i32 %78, i32* %11, align 4
  %79 = load i64, i64* @AFMT_AUDIO_PACKET_CONTROL, align 8
  %80 = load i64, i64* @DCE3_HDMI_OFFSET0, align 8
  %81 = add nsw i64 %79, %80
  %82 = call i32 @RREG32(i64 %81)
  %83 = load i32, i32* @AFMT_AZ_FORMAT_WTRIG_MASK, align 4
  %84 = xor i32 %83, -1
  %85 = and i32 %82, %84
  store i32 %85, i32* %13, align 4
  %86 = load i64, i64* @AFMT_AUDIO_PACKET_CONTROL, align 8
  %87 = load i64, i64* @DCE3_HDMI_OFFSET1, align 8
  %88 = add nsw i64 %86, %87
  %89 = call i32 @RREG32(i64 %88)
  %90 = load i32, i32* @AFMT_AZ_FORMAT_WTRIG_MASK, align 4
  %91 = xor i32 %90, -1
  %92 = and i32 %89, %91
  store i32 %92, i32* %14, align 4
  br label %104

93:                                               ; preds = %44
  %94 = load i64, i64* @HDMI0_AUDIO_PACKET_CONTROL, align 8
  %95 = call i32 @RREG32(i64 %94)
  %96 = load i32, i32* @HDMI0_AZ_FORMAT_WTRIG_MASK, align 4
  %97 = xor i32 %96, -1
  %98 = and i32 %95, %97
  store i32 %98, i32* %13, align 4
  %99 = load i64, i64* @DCE3_HDMI1_AUDIO_PACKET_CONTROL, align 8
  %100 = call i32 @RREG32(i64 %99)
  %101 = load i32, i32* @HDMI0_AZ_FORMAT_WTRIG_MASK, align 4
  %102 = xor i32 %101, -1
  %103 = and i32 %100, %102
  store i32 %103, i32* %14, align 4
  br label %104

104:                                              ; preds = %93, %68
  br label %131

105:                                              ; preds = %40
  %106 = load i64, i64* @DC_HOT_PLUG_DETECT1_INT_CONTROL, align 8
  %107 = call i32 @RREG32(i64 %106)
  %108 = load i32, i32* @DC_HPDx_INT_EN, align 4
  %109 = xor i32 %108, -1
  %110 = and i32 %107, %109
  store i32 %110, i32* %6, align 4
  %111 = load i64, i64* @DC_HOT_PLUG_DETECT2_INT_CONTROL, align 8
  %112 = call i32 @RREG32(i64 %111)
  %113 = load i32, i32* @DC_HPDx_INT_EN, align 4
  %114 = xor i32 %113, -1
  %115 = and i32 %112, %114
  store i32 %115, i32* %7, align 4
  %116 = load i64, i64* @DC_HOT_PLUG_DETECT3_INT_CONTROL, align 8
  %117 = call i32 @RREG32(i64 %116)
  %118 = load i32, i32* @DC_HPDx_INT_EN, align 4
  %119 = xor i32 %118, -1
  %120 = and i32 %117, %119
  store i32 %120, i32* %8, align 4
  %121 = load i64, i64* @HDMI0_AUDIO_PACKET_CONTROL, align 8
  %122 = call i32 @RREG32(i64 %121)
  %123 = load i32, i32* @HDMI0_AZ_FORMAT_WTRIG_MASK, align 4
  %124 = xor i32 %123, -1
  %125 = and i32 %122, %124
  store i32 %125, i32* %13, align 4
  %126 = load i64, i64* @HDMI1_AUDIO_PACKET_CONTROL, align 8
  %127 = call i32 @RREG32(i64 %126)
  %128 = load i32, i32* @HDMI0_AZ_FORMAT_WTRIG_MASK, align 4
  %129 = xor i32 %128, -1
  %130 = and i32 %127, %129
  store i32 %130, i32* %14, align 4
  br label %131

131:                                              ; preds = %105, %104
  %132 = load i64, i64* @DMA_CNTL, align 8
  %133 = call i32 @RREG32(i64 %132)
  %134 = load i32, i32* @TRAP_ENABLE, align 4
  %135 = xor i32 %134, -1
  %136 = and i32 %133, %135
  store i32 %136, i32* %15, align 4
  %137 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %138 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @CHIP_R600, align 8
  %141 = icmp sgt i64 %139, %140
  br i1 %141, label %142, label %156

142:                                              ; preds = %131
  %143 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %144 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @CHIP_RV770, align 8
  %147 = icmp slt i64 %145, %146
  br i1 %147, label %148, label %156

148:                                              ; preds = %142
  %149 = load i64, i64* @CG_THERMAL_INT, align 8
  %150 = call i32 @RREG32(i64 %149)
  %151 = load i32, i32* @THERM_INT_MASK_HIGH, align 4
  %152 = load i32, i32* @THERM_INT_MASK_LOW, align 4
  %153 = or i32 %151, %152
  %154 = xor i32 %153, -1
  %155 = and i32 %150, %154
  store i32 %155, i32* %16, align 4
  br label %171

156:                                              ; preds = %142, %131
  %157 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %158 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* @CHIP_RV770, align 8
  %161 = icmp sge i64 %159, %160
  br i1 %161, label %162, label %170

162:                                              ; preds = %156
  %163 = load i64, i64* @RV770_CG_THERMAL_INT, align 8
  %164 = call i32 @RREG32(i64 %163)
  %165 = load i32, i32* @THERM_INT_MASK_HIGH, align 4
  %166 = load i32, i32* @THERM_INT_MASK_LOW, align 4
  %167 = or i32 %165, %166
  %168 = xor i32 %167, -1
  %169 = and i32 %164, %168
  store i32 %169, i32* %16, align 4
  br label %170

170:                                              ; preds = %162, %156
  br label %171

171:                                              ; preds = %170, %148
  %172 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %173 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %172, i32 0, i32 1
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 5
  %175 = load i64, i64* %174, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %184

177:                                              ; preds = %171
  %178 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %179 = load i32, i32* @THERM_INT_MASK_HIGH, align 4
  %180 = load i32, i32* @THERM_INT_MASK_LOW, align 4
  %181 = or i32 %179, %180
  %182 = load i32, i32* %16, align 4
  %183 = or i32 %182, %181
  store i32 %183, i32* %16, align 4
  br label %184

184:                                              ; preds = %177, %171
  %185 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %186 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %185, i32 0, i32 1
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 4
  %188 = load i32*, i32** %187, align 8
  %189 = load i64, i64* @RADEON_RING_TYPE_GFX_INDEX, align 8
  %190 = getelementptr inbounds i32, i32* %188, i64 %189
  %191 = call i64 @atomic_read(i32* %190)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %201

193:                                              ; preds = %184
  %194 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %195 = load i32, i32* @RB_INT_ENABLE, align 4
  %196 = load i32, i32* %4, align 4
  %197 = or i32 %196, %195
  store i32 %197, i32* %4, align 4
  %198 = load i32, i32* @TIME_STAMP_INT_ENABLE, align 4
  %199 = load i32, i32* %4, align 4
  %200 = or i32 %199, %198
  store i32 %200, i32* %4, align 4
  br label %201

201:                                              ; preds = %193, %184
  %202 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %203 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %202, i32 0, i32 1
  %204 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %203, i32 0, i32 4
  %205 = load i32*, i32** %204, align 8
  %206 = load i64, i64* @R600_RING_TYPE_DMA_INDEX, align 8
  %207 = getelementptr inbounds i32, i32* %205, i64 %206
  %208 = call i64 @atomic_read(i32* %207)
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %215

210:                                              ; preds = %201
  %211 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %212 = load i32, i32* @TRAP_ENABLE, align 4
  %213 = load i32, i32* %15, align 4
  %214 = or i32 %213, %212
  store i32 %214, i32* %15, align 4
  br label %215

215:                                              ; preds = %210, %201
  %216 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %217 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %216, i32 0, i32 1
  %218 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %217, i32 0, i32 3
  %219 = load i64*, i64** %218, align 8
  %220 = getelementptr inbounds i64, i64* %219, i64 0
  %221 = load i64, i64* %220, align 8
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %231, label %223

223:                                              ; preds = %215
  %224 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %225 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %224, i32 0, i32 1
  %226 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %225, i32 0, i32 2
  %227 = load i32*, i32** %226, align 8
  %228 = getelementptr inbounds i32, i32* %227, i64 0
  %229 = call i64 @atomic_read(i32* %228)
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %236

231:                                              ; preds = %223, %215
  %232 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %233 = load i32, i32* @D1MODE_VBLANK_INT_MASK, align 4
  %234 = load i32, i32* %5, align 4
  %235 = or i32 %234, %233
  store i32 %235, i32* %5, align 4
  br label %236

236:                                              ; preds = %231, %223
  %237 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %238 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %237, i32 0, i32 1
  %239 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %238, i32 0, i32 3
  %240 = load i64*, i64** %239, align 8
  %241 = getelementptr inbounds i64, i64* %240, i64 1
  %242 = load i64, i64* %241, align 8
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %252, label %244

244:                                              ; preds = %236
  %245 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %246 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %245, i32 0, i32 1
  %247 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %246, i32 0, i32 2
  %248 = load i32*, i32** %247, align 8
  %249 = getelementptr inbounds i32, i32* %248, i64 1
  %250 = call i64 @atomic_read(i32* %249)
  %251 = icmp ne i64 %250, 0
  br i1 %251, label %252, label %257

252:                                              ; preds = %244, %236
  %253 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  %254 = load i32, i32* @D2MODE_VBLANK_INT_MASK, align 4
  %255 = load i32, i32* %5, align 4
  %256 = or i32 %255, %254
  store i32 %256, i32* %5, align 4
  br label %257

257:                                              ; preds = %252, %244
  %258 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %259 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %258, i32 0, i32 1
  %260 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %259, i32 0, i32 1
  %261 = load i64*, i64** %260, align 8
  %262 = getelementptr inbounds i64, i64* %261, i64 0
  %263 = load i64, i64* %262, align 8
  %264 = icmp ne i64 %263, 0
  br i1 %264, label %265, label %270

265:                                              ; preds = %257
  %266 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  %267 = load i32, i32* @DC_HPDx_INT_EN, align 4
  %268 = load i32, i32* %6, align 4
  %269 = or i32 %268, %267
  store i32 %269, i32* %6, align 4
  br label %270

270:                                              ; preds = %265, %257
  %271 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %272 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %271, i32 0, i32 1
  %273 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %272, i32 0, i32 1
  %274 = load i64*, i64** %273, align 8
  %275 = getelementptr inbounds i64, i64* %274, i64 1
  %276 = load i64, i64* %275, align 8
  %277 = icmp ne i64 %276, 0
  br i1 %277, label %278, label %283

278:                                              ; preds = %270
  %279 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  %280 = load i32, i32* @DC_HPDx_INT_EN, align 4
  %281 = load i32, i32* %7, align 4
  %282 = or i32 %281, %280
  store i32 %282, i32* %7, align 4
  br label %283

283:                                              ; preds = %278, %270
  %284 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %285 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %284, i32 0, i32 1
  %286 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %285, i32 0, i32 1
  %287 = load i64*, i64** %286, align 8
  %288 = getelementptr inbounds i64, i64* %287, i64 2
  %289 = load i64, i64* %288, align 8
  %290 = icmp ne i64 %289, 0
  br i1 %290, label %291, label %296

291:                                              ; preds = %283
  %292 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0))
  %293 = load i32, i32* @DC_HPDx_INT_EN, align 4
  %294 = load i32, i32* %8, align 4
  %295 = or i32 %294, %293
  store i32 %295, i32* %8, align 4
  br label %296

296:                                              ; preds = %291, %283
  %297 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %298 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %297, i32 0, i32 1
  %299 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %298, i32 0, i32 1
  %300 = load i64*, i64** %299, align 8
  %301 = getelementptr inbounds i64, i64* %300, i64 3
  %302 = load i64, i64* %301, align 8
  %303 = icmp ne i64 %302, 0
  br i1 %303, label %304, label %309

304:                                              ; preds = %296
  %305 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0))
  %306 = load i32, i32* @DC_HPDx_INT_EN, align 4
  %307 = load i32, i32* %9, align 4
  %308 = or i32 %307, %306
  store i32 %308, i32* %9, align 4
  br label %309

309:                                              ; preds = %304, %296
  %310 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %311 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %310, i32 0, i32 1
  %312 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %311, i32 0, i32 1
  %313 = load i64*, i64** %312, align 8
  %314 = getelementptr inbounds i64, i64* %313, i64 4
  %315 = load i64, i64* %314, align 8
  %316 = icmp ne i64 %315, 0
  br i1 %316, label %317, label %322

317:                                              ; preds = %309
  %318 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0))
  %319 = load i32, i32* @DC_HPDx_INT_EN, align 4
  %320 = load i32, i32* %10, align 4
  %321 = or i32 %320, %319
  store i32 %321, i32* %10, align 4
  br label %322

322:                                              ; preds = %317, %309
  %323 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %324 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %323, i32 0, i32 1
  %325 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %324, i32 0, i32 1
  %326 = load i64*, i64** %325, align 8
  %327 = getelementptr inbounds i64, i64* %326, i64 5
  %328 = load i64, i64* %327, align 8
  %329 = icmp ne i64 %328, 0
  br i1 %329, label %330, label %335

330:                                              ; preds = %322
  %331 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0))
  %332 = load i32, i32* @DC_HPDx_INT_EN, align 4
  %333 = load i32, i32* %11, align 4
  %334 = or i32 %333, %332
  store i32 %334, i32* %11, align 4
  br label %335

335:                                              ; preds = %330, %322
  %336 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %337 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %336, i32 0, i32 1
  %338 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %337, i32 0, i32 0
  %339 = load i64*, i64** %338, align 8
  %340 = getelementptr inbounds i64, i64* %339, i64 0
  %341 = load i64, i64* %340, align 8
  %342 = icmp ne i64 %341, 0
  br i1 %342, label %343, label %348

343:                                              ; preds = %335
  %344 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i64 0, i64 0))
  %345 = load i32, i32* @HDMI0_AZ_FORMAT_WTRIG_MASK, align 4
  %346 = load i32, i32* %13, align 4
  %347 = or i32 %346, %345
  store i32 %347, i32* %13, align 4
  br label %348

348:                                              ; preds = %343, %335
  %349 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %350 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %349, i32 0, i32 1
  %351 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %350, i32 0, i32 0
  %352 = load i64*, i64** %351, align 8
  %353 = getelementptr inbounds i64, i64* %352, i64 1
  %354 = load i64, i64* %353, align 8
  %355 = icmp ne i64 %354, 0
  br i1 %355, label %356, label %361

356:                                              ; preds = %348
  %357 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i64 0, i64 0))
  %358 = load i32, i32* @HDMI0_AZ_FORMAT_WTRIG_MASK, align 4
  %359 = load i32, i32* %14, align 4
  %360 = or i32 %359, %358
  store i32 %360, i32* %14, align 4
  br label %361

361:                                              ; preds = %356, %348
  %362 = load i64, i64* @CP_INT_CNTL, align 8
  %363 = load i32, i32* %4, align 4
  %364 = call i32 @WREG32(i64 %362, i32 %363)
  %365 = load i64, i64* @DMA_CNTL, align 8
  %366 = load i32, i32* %15, align 4
  %367 = call i32 @WREG32(i64 %365, i32 %366)
  %368 = load i64, i64* @DxMODE_INT_MASK, align 8
  %369 = load i32, i32* %5, align 4
  %370 = call i32 @WREG32(i64 %368, i32 %369)
  %371 = load i64, i64* @D1GRPH_INTERRUPT_CONTROL, align 8
  %372 = load i32, i32* @DxGRPH_PFLIP_INT_MASK, align 4
  %373 = call i32 @WREG32(i64 %371, i32 %372)
  %374 = load i64, i64* @D2GRPH_INTERRUPT_CONTROL, align 8
  %375 = load i32, i32* @DxGRPH_PFLIP_INT_MASK, align 4
  %376 = call i32 @WREG32(i64 %374, i32 %375)
  %377 = load i64, i64* @GRBM_INT_CNTL, align 8
  %378 = load i32, i32* %12, align 4
  %379 = call i32 @WREG32(i64 %377, i32 %378)
  %380 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %381 = call i64 @ASIC_IS_DCE3(%struct.radeon_device* %380)
  %382 = icmp ne i64 %381, 0
  br i1 %382, label %383, label %424

383:                                              ; preds = %361
  %384 = load i64, i64* @DC_HPD1_INT_CONTROL, align 8
  %385 = load i32, i32* %6, align 4
  %386 = call i32 @WREG32(i64 %384, i32 %385)
  %387 = load i64, i64* @DC_HPD2_INT_CONTROL, align 8
  %388 = load i32, i32* %7, align 4
  %389 = call i32 @WREG32(i64 %387, i32 %388)
  %390 = load i64, i64* @DC_HPD3_INT_CONTROL, align 8
  %391 = load i32, i32* %8, align 4
  %392 = call i32 @WREG32(i64 %390, i32 %391)
  %393 = load i64, i64* @DC_HPD4_INT_CONTROL, align 8
  %394 = load i32, i32* %9, align 4
  %395 = call i32 @WREG32(i64 %393, i32 %394)
  %396 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %397 = call i64 @ASIC_IS_DCE32(%struct.radeon_device* %396)
  %398 = icmp ne i64 %397, 0
  br i1 %398, label %399, label %416

399:                                              ; preds = %383
  %400 = load i64, i64* @DC_HPD5_INT_CONTROL, align 8
  %401 = load i32, i32* %10, align 4
  %402 = call i32 @WREG32(i64 %400, i32 %401)
  %403 = load i64, i64* @DC_HPD6_INT_CONTROL, align 8
  %404 = load i32, i32* %11, align 4
  %405 = call i32 @WREG32(i64 %403, i32 %404)
  %406 = load i64, i64* @AFMT_AUDIO_PACKET_CONTROL, align 8
  %407 = load i64, i64* @DCE3_HDMI_OFFSET0, align 8
  %408 = add nsw i64 %406, %407
  %409 = load i32, i32* %13, align 4
  %410 = call i32 @WREG32(i64 %408, i32 %409)
  %411 = load i64, i64* @AFMT_AUDIO_PACKET_CONTROL, align 8
  %412 = load i64, i64* @DCE3_HDMI_OFFSET1, align 8
  %413 = add nsw i64 %411, %412
  %414 = load i32, i32* %14, align 4
  %415 = call i32 @WREG32(i64 %413, i32 %414)
  br label %423

416:                                              ; preds = %383
  %417 = load i64, i64* @HDMI0_AUDIO_PACKET_CONTROL, align 8
  %418 = load i32, i32* %13, align 4
  %419 = call i32 @WREG32(i64 %417, i32 %418)
  %420 = load i64, i64* @DCE3_HDMI1_AUDIO_PACKET_CONTROL, align 8
  %421 = load i32, i32* %14, align 4
  %422 = call i32 @WREG32(i64 %420, i32 %421)
  br label %423

423:                                              ; preds = %416, %399
  br label %440

424:                                              ; preds = %361
  %425 = load i64, i64* @DC_HOT_PLUG_DETECT1_INT_CONTROL, align 8
  %426 = load i32, i32* %6, align 4
  %427 = call i32 @WREG32(i64 %425, i32 %426)
  %428 = load i64, i64* @DC_HOT_PLUG_DETECT2_INT_CONTROL, align 8
  %429 = load i32, i32* %7, align 4
  %430 = call i32 @WREG32(i64 %428, i32 %429)
  %431 = load i64, i64* @DC_HOT_PLUG_DETECT3_INT_CONTROL, align 8
  %432 = load i32, i32* %8, align 4
  %433 = call i32 @WREG32(i64 %431, i32 %432)
  %434 = load i64, i64* @HDMI0_AUDIO_PACKET_CONTROL, align 8
  %435 = load i32, i32* %13, align 4
  %436 = call i32 @WREG32(i64 %434, i32 %435)
  %437 = load i64, i64* @HDMI1_AUDIO_PACKET_CONTROL, align 8
  %438 = load i32, i32* %14, align 4
  %439 = call i32 @WREG32(i64 %437, i32 %438)
  br label %440

440:                                              ; preds = %424, %423
  %441 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %442 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %441, i32 0, i32 0
  %443 = load i64, i64* %442, align 8
  %444 = load i64, i64* @CHIP_R600, align 8
  %445 = icmp sgt i64 %443, %444
  br i1 %445, label %446, label %456

446:                                              ; preds = %440
  %447 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %448 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %447, i32 0, i32 0
  %449 = load i64, i64* %448, align 8
  %450 = load i64, i64* @CHIP_RV770, align 8
  %451 = icmp slt i64 %449, %450
  br i1 %451, label %452, label %456

452:                                              ; preds = %446
  %453 = load i64, i64* @CG_THERMAL_INT, align 8
  %454 = load i32, i32* %16, align 4
  %455 = call i32 @WREG32(i64 %453, i32 %454)
  br label %467

456:                                              ; preds = %446, %440
  %457 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %458 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %457, i32 0, i32 0
  %459 = load i64, i64* %458, align 8
  %460 = load i64, i64* @CHIP_RV770, align 8
  %461 = icmp sge i64 %459, %460
  br i1 %461, label %462, label %466

462:                                              ; preds = %456
  %463 = load i64, i64* @RV770_CG_THERMAL_INT, align 8
  %464 = load i32, i32* %16, align 4
  %465 = call i32 @WREG32(i64 %463, i32 %464)
  br label %466

466:                                              ; preds = %462, %456
  br label %467

467:                                              ; preds = %466, %452
  %468 = load i64, i64* @R_000E50_SRBM_STATUS, align 8
  %469 = call i32 @RREG32(i64 %468)
  store i32 0, i32* %2, align 4
  br label %470

470:                                              ; preds = %467, %35, %25
  %471 = load i32, i32* %2, align 4
  ret i32 %471
}

declare dso_local i32 @WARN(i32, i8*) #1

declare dso_local i32 @r600_disable_interrupts(%struct.radeon_device*) #1

declare dso_local i32 @r600_disable_interrupt_state(%struct.radeon_device*) #1

declare dso_local i64 @ASIC_IS_DCE3(%struct.radeon_device*) #1

declare dso_local i32 @RREG32(i64) #1

declare dso_local i64 @ASIC_IS_DCE32(%struct.radeon_device*) #1

declare dso_local i32 @DRM_DEBUG(i8*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @WREG32(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
