; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_evergreen.c_evergreen_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_evergreen.c_evergreen_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32, i32, i32, i32, %struct.TYPE_5__, %struct.TYPE_6__*, i32, i32, i32, i32, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_4__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Expecting atombios for evergreen GPU\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"GPU reset failed !\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"Card not posted and no BIOS - ignoring\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"GPU not posted. posting now...\0A\00", align 1
@RADEON_IS_AGP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"Failed to load firmware!\0A\00", align 1
@RADEON_RING_TYPE_GFX_INDEX = common dso_local global i64 0, align 8
@R600_RING_TYPE_DMA_INDEX = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [28 x i8] c"disabling GPU acceleration\0A\00", align 1
@RADEON_IS_IGP = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [36 x i8] c"radeon: MC ucode required for NI+.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @evergreen_init(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %5 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %6 = call i32 @radeon_get_bios(%struct.radeon_device* %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %16, label %8

8:                                                ; preds = %1
  %9 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %10 = call i64 @ASIC_IS_AVIVO(%struct.radeon_device* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %8
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %275

15:                                               ; preds = %8
  br label %16

16:                                               ; preds = %15, %1
  %17 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %18 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %17, i32 0, i32 12
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %16
  %22 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %23 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @dev_err(i32 %24, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %275

28:                                               ; preds = %16
  %29 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %30 = call i32 @radeon_atombios_init(%struct.radeon_device* %29)
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, i32* %4, align 4
  store i32 %34, i32* %2, align 4
  br label %275

35:                                               ; preds = %28
  %36 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %37 = call i64 @radeon_asic_reset(%struct.radeon_device* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %35
  %40 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %41 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @dev_warn(i32 %42, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %44

44:                                               ; preds = %39, %35
  %45 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %46 = call i32 @radeon_card_posted(%struct.radeon_device* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %67, label %48

48:                                               ; preds = %44
  %49 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %50 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %49, i32 0, i32 11
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %60, label %53

53:                                               ; preds = %48
  %54 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %55 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @dev_err(i32 %56, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %2, align 4
  br label %275

60:                                               ; preds = %48
  %61 = call i32 @DRM_INFO(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %62 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %63 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %62, i32 0, i32 10
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @atom_asic_init(i32 %65)
  br label %67

67:                                               ; preds = %60, %44
  %68 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %69 = call i32 @evergreen_init_golden_registers(%struct.radeon_device* %68)
  %70 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %71 = call i32 @r600_scratch_init(%struct.radeon_device* %70)
  %72 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %73 = call i32 @radeon_surface_init(%struct.radeon_device* %72)
  %74 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %75 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %74, i32 0, i32 9
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @radeon_get_clock_info(i32 %76)
  %78 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %79 = call i32 @radeon_fence_driver_init(%struct.radeon_device* %78)
  store i32 %79, i32* %4, align 4
  %80 = load i32, i32* %4, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %67
  %83 = load i32, i32* %4, align 4
  store i32 %83, i32* %2, align 4
  br label %275

84:                                               ; preds = %67
  %85 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %86 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @RADEON_IS_AGP, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %100

91:                                               ; preds = %84
  %92 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %93 = call i32 @radeon_agp_init(%struct.radeon_device* %92)
  store i32 %93, i32* %4, align 4
  %94 = load i32, i32* %4, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %91
  %97 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %98 = call i32 @radeon_agp_disable(%struct.radeon_device* %97)
  br label %99

99:                                               ; preds = %96, %91
  br label %100

100:                                              ; preds = %99, %84
  %101 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %102 = call i32 @evergreen_mc_init(%struct.radeon_device* %101)
  store i32 %102, i32* %4, align 4
  %103 = load i32, i32* %4, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %100
  %106 = load i32, i32* %4, align 4
  store i32 %106, i32* %2, align 4
  br label %275

107:                                              ; preds = %100
  %108 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %109 = call i32 @radeon_bo_init(%struct.radeon_device* %108)
  store i32 %109, i32* %4, align 4
  %110 = load i32, i32* %4, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %107
  %113 = load i32, i32* %4, align 4
  store i32 %113, i32* %2, align 4
  br label %275

114:                                              ; preds = %107
  %115 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %116 = call i64 @ASIC_IS_DCE5(%struct.radeon_device* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %148

118:                                              ; preds = %114
  %119 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %120 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %119, i32 0, i32 8
  %121 = load i32, i32* %120, align 8
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %138

123:                                              ; preds = %118
  %124 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %125 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %124, i32 0, i32 7
  %126 = load i32, i32* %125, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %138

128:                                              ; preds = %123
  %129 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %130 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %129, i32 0, i32 6
  %131 = load i32, i32* %130, align 8
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %138

133:                                              ; preds = %128
  %134 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %135 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %147, label %138

138:                                              ; preds = %133, %128, %123, %118
  %139 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %140 = call i32 @ni_init_microcode(%struct.radeon_device* %139)
  store i32 %140, i32* %4, align 4
  %141 = load i32, i32* %4, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %138
  %144 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %145 = load i32, i32* %4, align 4
  store i32 %145, i32* %2, align 4
  br label %275

146:                                              ; preds = %138
  br label %147

147:                                              ; preds = %146, %133
  br label %173

148:                                              ; preds = %114
  %149 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %150 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %149, i32 0, i32 8
  %151 = load i32, i32* %150, align 8
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %163

153:                                              ; preds = %148
  %154 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %155 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %154, i32 0, i32 7
  %156 = load i32, i32* %155, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %163

158:                                              ; preds = %153
  %159 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %160 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %159, i32 0, i32 6
  %161 = load i32, i32* %160, align 8
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %172, label %163

163:                                              ; preds = %158, %153, %148
  %164 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %165 = call i32 @r600_init_microcode(%struct.radeon_device* %164)
  store i32 %165, i32* %4, align 4
  %166 = load i32, i32* %4, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %171

168:                                              ; preds = %163
  %169 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %170 = load i32, i32* %4, align 4
  store i32 %170, i32* %2, align 4
  br label %275

171:                                              ; preds = %163
  br label %172

172:                                              ; preds = %171, %158
  br label %173

173:                                              ; preds = %172, %147
  %174 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %175 = call i32 @radeon_pm_init(%struct.radeon_device* %174)
  %176 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %177 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %176, i32 0, i32 5
  %178 = load %struct.TYPE_6__*, %struct.TYPE_6__** %177, align 8
  %179 = load i64, i64* @RADEON_RING_TYPE_GFX_INDEX, align 8
  %180 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i64 %179
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 0
  store i32* null, i32** %181, align 8
  %182 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %183 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %184 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %183, i32 0, i32 5
  %185 = load %struct.TYPE_6__*, %struct.TYPE_6__** %184, align 8
  %186 = load i64, i64* @RADEON_RING_TYPE_GFX_INDEX, align 8
  %187 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %185, i64 %186
  %188 = call i32 @r600_ring_init(%struct.radeon_device* %182, %struct.TYPE_6__* %187, i32 1048576)
  %189 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %190 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %189, i32 0, i32 5
  %191 = load %struct.TYPE_6__*, %struct.TYPE_6__** %190, align 8
  %192 = load i64, i64* @R600_RING_TYPE_DMA_INDEX, align 8
  %193 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %191, i64 %192
  %194 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %193, i32 0, i32 0
  store i32* null, i32** %194, align 8
  %195 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %196 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %197 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %196, i32 0, i32 5
  %198 = load %struct.TYPE_6__*, %struct.TYPE_6__** %197, align 8
  %199 = load i64, i64* @R600_RING_TYPE_DMA_INDEX, align 8
  %200 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %198, i64 %199
  %201 = call i32 @r600_ring_init(%struct.radeon_device* %195, %struct.TYPE_6__* %200, i32 65536)
  %202 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %203 = call i32 @evergreen_uvd_init(%struct.radeon_device* %202)
  %204 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %205 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %204, i32 0, i32 4
  %206 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %205, i32 0, i32 0
  store i32* null, i32** %206, align 8
  %207 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %208 = call i32 @r600_ih_ring_init(%struct.radeon_device* %207, i32 65536)
  %209 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %210 = call i32 @r600_pcie_gart_init(%struct.radeon_device* %209)
  store i32 %210, i32* %4, align 4
  %211 = load i32, i32* %4, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %215

213:                                              ; preds = %173
  %214 = load i32, i32* %4, align 4
  store i32 %214, i32* %2, align 4
  br label %275

215:                                              ; preds = %173
  %216 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %217 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %216, i32 0, i32 1
  store i32 1, i32* %217, align 4
  %218 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %219 = call i32 @evergreen_startup(%struct.radeon_device* %218)
  store i32 %219, i32* %4, align 4
  %220 = load i32, i32* %4, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %253

222:                                              ; preds = %215
  %223 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %224 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %223, i32 0, i32 3
  %225 = load i32, i32* %224, align 4
  %226 = call i32 @dev_err(i32 %225, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  %227 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %228 = call i32 @r700_cp_fini(%struct.radeon_device* %227)
  %229 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %230 = call i32 @r600_dma_fini(%struct.radeon_device* %229)
  %231 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %232 = call i32 @r600_irq_fini(%struct.radeon_device* %231)
  %233 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %234 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  %236 = load i32, i32* @RADEON_IS_IGP, align 4
  %237 = and i32 %235, %236
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %242

239:                                              ; preds = %222
  %240 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %241 = call i32 @sumo_rlc_fini(%struct.radeon_device* %240)
  br label %242

242:                                              ; preds = %239, %222
  %243 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %244 = call i32 @radeon_wb_fini(%struct.radeon_device* %243)
  %245 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %246 = call i32 @radeon_ib_pool_fini(%struct.radeon_device* %245)
  %247 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %248 = call i32 @radeon_irq_kms_fini(%struct.radeon_device* %247)
  %249 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %250 = call i32 @evergreen_pcie_gart_fini(%struct.radeon_device* %249)
  %251 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %252 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %251, i32 0, i32 1
  store i32 0, i32* %252, align 4
  br label %253

253:                                              ; preds = %242, %215
  %254 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %255 = call i64 @ASIC_IS_DCE5(%struct.radeon_device* %254)
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %257, label %274

257:                                              ; preds = %253
  %258 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %259 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %258, i32 0, i32 2
  %260 = load i32, i32* %259, align 8
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %273, label %262

262:                                              ; preds = %257
  %263 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %264 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 8
  %266 = load i32, i32* @RADEON_IS_IGP, align 4
  %267 = and i32 %265, %266
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %273, label %269

269:                                              ; preds = %262
  %270 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0))
  %271 = load i32, i32* @EINVAL, align 4
  %272 = sub nsw i32 0, %271
  store i32 %272, i32* %2, align 4
  br label %275

273:                                              ; preds = %262, %257
  br label %274

274:                                              ; preds = %273, %253
  store i32 0, i32* %2, align 4
  br label %275

275:                                              ; preds = %274, %269, %213, %168, %143, %112, %105, %82, %53, %33, %21, %12
  %276 = load i32, i32* %2, align 4
  ret i32 %276
}

declare dso_local i32 @radeon_get_bios(%struct.radeon_device*) #1

declare dso_local i64 @ASIC_IS_AVIVO(%struct.radeon_device*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @radeon_atombios_init(%struct.radeon_device*) #1

declare dso_local i64 @radeon_asic_reset(%struct.radeon_device*) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @radeon_card_posted(%struct.radeon_device*) #1

declare dso_local i32 @DRM_INFO(i8*) #1

declare dso_local i32 @atom_asic_init(i32) #1

declare dso_local i32 @evergreen_init_golden_registers(%struct.radeon_device*) #1

declare dso_local i32 @r600_scratch_init(%struct.radeon_device*) #1

declare dso_local i32 @radeon_surface_init(%struct.radeon_device*) #1

declare dso_local i32 @radeon_get_clock_info(i32) #1

declare dso_local i32 @radeon_fence_driver_init(%struct.radeon_device*) #1

declare dso_local i32 @radeon_agp_init(%struct.radeon_device*) #1

declare dso_local i32 @radeon_agp_disable(%struct.radeon_device*) #1

declare dso_local i32 @evergreen_mc_init(%struct.radeon_device*) #1

declare dso_local i32 @radeon_bo_init(%struct.radeon_device*) #1

declare dso_local i64 @ASIC_IS_DCE5(%struct.radeon_device*) #1

declare dso_local i32 @ni_init_microcode(%struct.radeon_device*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @r600_init_microcode(%struct.radeon_device*) #1

declare dso_local i32 @radeon_pm_init(%struct.radeon_device*) #1

declare dso_local i32 @r600_ring_init(%struct.radeon_device*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @evergreen_uvd_init(%struct.radeon_device*) #1

declare dso_local i32 @r600_ih_ring_init(%struct.radeon_device*, i32) #1

declare dso_local i32 @r600_pcie_gart_init(%struct.radeon_device*) #1

declare dso_local i32 @evergreen_startup(%struct.radeon_device*) #1

declare dso_local i32 @r700_cp_fini(%struct.radeon_device*) #1

declare dso_local i32 @r600_dma_fini(%struct.radeon_device*) #1

declare dso_local i32 @r600_irq_fini(%struct.radeon_device*) #1

declare dso_local i32 @sumo_rlc_fini(%struct.radeon_device*) #1

declare dso_local i32 @radeon_wb_fini(%struct.radeon_device*) #1

declare dso_local i32 @radeon_ib_pool_fini(%struct.radeon_device*) #1

declare dso_local i32 @radeon_irq_kms_fini(%struct.radeon_device*) #1

declare dso_local i32 @evergreen_pcie_gart_fini(%struct.radeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
