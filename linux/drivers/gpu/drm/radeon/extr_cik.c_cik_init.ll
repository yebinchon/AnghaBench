; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cik.c_cik_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cik.c_cik_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32, i32, i32, i32, %struct.TYPE_4__, %struct.radeon_ring*, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_4__ = type { i32* }
%struct.radeon_ring = type { i32*, i32 }
%struct.TYPE_3__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Expecting atombios for cayman GPU\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Card not posted and no BIOS - ignoring\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"GPU not posted. posting now...\0A\00", align 1
@RADEON_IS_IGP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"Failed to load firmware!\0A\00", align 1
@RADEON_RING_TYPE_GFX_INDEX = common dso_local global i64 0, align 8
@CAYMAN_RING_TYPE_CP1_INDEX = common dso_local global i64 0, align 8
@CAYMAN_RING_TYPE_CP2_INDEX = common dso_local global i64 0, align 8
@R600_RING_TYPE_DMA_INDEX = common dso_local global i64 0, align 8
@CAYMAN_RING_TYPE_DMA1_INDEX = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [28 x i8] c"disabling GPU acceleration\0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"radeon: MC ucode required for NI+.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cik_init(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.radeon_ring*, align 8
  %5 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %6 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %7 = call i32 @radeon_get_bios(%struct.radeon_device* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %17, label %9

9:                                                ; preds = %1
  %10 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %11 = call i64 @ASIC_IS_AVIVO(%struct.radeon_device* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %9
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %319

16:                                               ; preds = %9
  br label %17

17:                                               ; preds = %16, %1
  %18 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %19 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %18, i32 0, i32 15
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %29, label %22

22:                                               ; preds = %17
  %23 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %24 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @dev_err(i32 %25, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %319

29:                                               ; preds = %17
  %30 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %31 = call i32 @radeon_atombios_init(%struct.radeon_device* %30)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i32, i32* %5, align 4
  store i32 %35, i32* %2, align 4
  br label %319

36:                                               ; preds = %29
  %37 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %38 = call i32 @radeon_card_posted(%struct.radeon_device* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %59, label %40

40:                                               ; preds = %36
  %41 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %42 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %41, i32 0, i32 14
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %52, label %45

45:                                               ; preds = %40
  %46 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %47 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @dev_err(i32 %48, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %2, align 4
  br label %319

52:                                               ; preds = %40
  %53 = call i32 @DRM_INFO(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %54 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %55 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %54, i32 0, i32 13
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @atom_asic_init(i32 %57)
  br label %59

59:                                               ; preds = %52, %36
  %60 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %61 = call i32 @cik_init_golden_registers(%struct.radeon_device* %60)
  %62 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %63 = call i32 @cik_scratch_init(%struct.radeon_device* %62)
  %64 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %65 = call i32 @radeon_surface_init(%struct.radeon_device* %64)
  %66 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %67 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %66, i32 0, i32 12
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @radeon_get_clock_info(i32 %68)
  %70 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %71 = call i32 @radeon_fence_driver_init(%struct.radeon_device* %70)
  store i32 %71, i32* %5, align 4
  %72 = load i32, i32* %5, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %59
  %75 = load i32, i32* %5, align 4
  store i32 %75, i32* %2, align 4
  br label %319

76:                                               ; preds = %59
  %77 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %78 = call i32 @cik_mc_init(%struct.radeon_device* %77)
  store i32 %78, i32* %5, align 4
  %79 = load i32, i32* %5, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %76
  %82 = load i32, i32* %5, align 4
  store i32 %82, i32* %2, align 4
  br label %319

83:                                               ; preds = %76
  %84 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %85 = call i32 @radeon_bo_init(%struct.radeon_device* %84)
  store i32 %85, i32* %5, align 4
  %86 = load i32, i32* %5, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %83
  %89 = load i32, i32* %5, align 4
  store i32 %89, i32* %2, align 4
  br label %319

90:                                               ; preds = %83
  %91 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %92 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @RADEON_IS_IGP, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %137

97:                                               ; preds = %90
  %98 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %99 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %98, i32 0, i32 11
  %100 = load i32, i32* %99, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %127

102:                                              ; preds = %97
  %103 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %104 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %103, i32 0, i32 10
  %105 = load i32, i32* %104, align 8
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %127

107:                                              ; preds = %102
  %108 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %109 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %108, i32 0, i32 9
  %110 = load i32, i32* %109, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %127

112:                                              ; preds = %107
  %113 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %114 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %113, i32 0, i32 8
  %115 = load i32, i32* %114, align 8
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %127

117:                                              ; preds = %112
  %118 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %119 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %118, i32 0, i32 7
  %120 = load i32, i32* %119, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %127

122:                                              ; preds = %117
  %123 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %124 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %123, i32 0, i32 6
  %125 = load i32, i32* %124, align 8
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %136, label %127

127:                                              ; preds = %122, %117, %112, %107, %102, %97
  %128 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %129 = call i32 @cik_init_microcode(%struct.radeon_device* %128)
  store i32 %129, i32* %5, align 4
  %130 = load i32, i32* %5, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %127
  %133 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %134 = load i32, i32* %5, align 4
  store i32 %134, i32* %2, align 4
  br label %319

135:                                              ; preds = %127
  br label %136

136:                                              ; preds = %135, %122
  br label %182

137:                                              ; preds = %90
  %138 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %139 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %138, i32 0, i32 11
  %140 = load i32, i32* %139, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %172

142:                                              ; preds = %137
  %143 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %144 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %143, i32 0, i32 10
  %145 = load i32, i32* %144, align 8
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %172

147:                                              ; preds = %142
  %148 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %149 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %148, i32 0, i32 9
  %150 = load i32, i32* %149, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %172

152:                                              ; preds = %147
  %153 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %154 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %153, i32 0, i32 8
  %155 = load i32, i32* %154, align 8
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %172

157:                                              ; preds = %152
  %158 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %159 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %158, i32 0, i32 7
  %160 = load i32, i32* %159, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %172

162:                                              ; preds = %157
  %163 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %164 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %163, i32 0, i32 6
  %165 = load i32, i32* %164, align 8
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %172

167:                                              ; preds = %162
  %168 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %169 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 8
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %181, label %172

172:                                              ; preds = %167, %162, %157, %152, %147, %142, %137
  %173 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %174 = call i32 @cik_init_microcode(%struct.radeon_device* %173)
  store i32 %174, i32* %5, align 4
  %175 = load i32, i32* %5, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %180

177:                                              ; preds = %172
  %178 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %179 = load i32, i32* %5, align 4
  store i32 %179, i32* %2, align 4
  br label %319

180:                                              ; preds = %172
  br label %181

181:                                              ; preds = %180, %167
  br label %182

182:                                              ; preds = %181, %136
  %183 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %184 = call i32 @radeon_pm_init(%struct.radeon_device* %183)
  %185 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %186 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %185, i32 0, i32 5
  %187 = load %struct.radeon_ring*, %struct.radeon_ring** %186, align 8
  %188 = load i64, i64* @RADEON_RING_TYPE_GFX_INDEX, align 8
  %189 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %187, i64 %188
  store %struct.radeon_ring* %189, %struct.radeon_ring** %4, align 8
  %190 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %191 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %190, i32 0, i32 0
  store i32* null, i32** %191, align 8
  %192 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %193 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %194 = call i32 @r600_ring_init(%struct.radeon_device* %192, %struct.radeon_ring* %193, i32 1048576)
  %195 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %196 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %195, i32 0, i32 5
  %197 = load %struct.radeon_ring*, %struct.radeon_ring** %196, align 8
  %198 = load i64, i64* @CAYMAN_RING_TYPE_CP1_INDEX, align 8
  %199 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %197, i64 %198
  store %struct.radeon_ring* %199, %struct.radeon_ring** %4, align 8
  %200 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %201 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %200, i32 0, i32 0
  store i32* null, i32** %201, align 8
  %202 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %203 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %204 = call i32 @r600_ring_init(%struct.radeon_device* %202, %struct.radeon_ring* %203, i32 1048576)
  %205 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %206 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %207 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %206, i32 0, i32 1
  %208 = call i32 @radeon_doorbell_get(%struct.radeon_device* %205, i32* %207)
  store i32 %208, i32* %5, align 4
  %209 = load i32, i32* %5, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %213

211:                                              ; preds = %182
  %212 = load i32, i32* %5, align 4
  store i32 %212, i32* %2, align 4
  br label %319

213:                                              ; preds = %182
  %214 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %215 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %214, i32 0, i32 5
  %216 = load %struct.radeon_ring*, %struct.radeon_ring** %215, align 8
  %217 = load i64, i64* @CAYMAN_RING_TYPE_CP2_INDEX, align 8
  %218 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %216, i64 %217
  store %struct.radeon_ring* %218, %struct.radeon_ring** %4, align 8
  %219 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %220 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %219, i32 0, i32 0
  store i32* null, i32** %220, align 8
  %221 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %222 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %223 = call i32 @r600_ring_init(%struct.radeon_device* %221, %struct.radeon_ring* %222, i32 1048576)
  %224 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %225 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %226 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %225, i32 0, i32 1
  %227 = call i32 @radeon_doorbell_get(%struct.radeon_device* %224, i32* %226)
  store i32 %227, i32* %5, align 4
  %228 = load i32, i32* %5, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %232

230:                                              ; preds = %213
  %231 = load i32, i32* %5, align 4
  store i32 %231, i32* %2, align 4
  br label %319

232:                                              ; preds = %213
  %233 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %234 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %233, i32 0, i32 5
  %235 = load %struct.radeon_ring*, %struct.radeon_ring** %234, align 8
  %236 = load i64, i64* @R600_RING_TYPE_DMA_INDEX, align 8
  %237 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %235, i64 %236
  store %struct.radeon_ring* %237, %struct.radeon_ring** %4, align 8
  %238 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %239 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %238, i32 0, i32 0
  store i32* null, i32** %239, align 8
  %240 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %241 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %242 = call i32 @r600_ring_init(%struct.radeon_device* %240, %struct.radeon_ring* %241, i32 262144)
  %243 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %244 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %243, i32 0, i32 5
  %245 = load %struct.radeon_ring*, %struct.radeon_ring** %244, align 8
  %246 = load i64, i64* @CAYMAN_RING_TYPE_DMA1_INDEX, align 8
  %247 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %245, i64 %246
  store %struct.radeon_ring* %247, %struct.radeon_ring** %4, align 8
  %248 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %249 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %248, i32 0, i32 0
  store i32* null, i32** %249, align 8
  %250 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %251 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %252 = call i32 @r600_ring_init(%struct.radeon_device* %250, %struct.radeon_ring* %251, i32 262144)
  %253 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %254 = call i32 @cik_uvd_init(%struct.radeon_device* %253)
  %255 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %256 = call i32 @cik_vce_init(%struct.radeon_device* %255)
  %257 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %258 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %257, i32 0, i32 4
  %259 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %258, i32 0, i32 0
  store i32* null, i32** %259, align 8
  %260 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %261 = call i32 @r600_ih_ring_init(%struct.radeon_device* %260, i32 65536)
  %262 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %263 = call i32 @r600_pcie_gart_init(%struct.radeon_device* %262)
  store i32 %263, i32* %5, align 4
  %264 = load i32, i32* %5, align 4
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %268

266:                                              ; preds = %232
  %267 = load i32, i32* %5, align 4
  store i32 %267, i32* %2, align 4
  br label %319

268:                                              ; preds = %232
  %269 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %270 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %269, i32 0, i32 1
  store i32 1, i32* %270, align 4
  %271 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %272 = call i32 @cik_startup(%struct.radeon_device* %271)
  store i32 %272, i32* %5, align 4
  %273 = load i32, i32* %5, align 4
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %302

275:                                              ; preds = %268
  %276 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %277 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %276, i32 0, i32 3
  %278 = load i32, i32* %277, align 4
  %279 = call i32 @dev_err(i32 %278, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %280 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %281 = call i32 @cik_cp_fini(%struct.radeon_device* %280)
  %282 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %283 = call i32 @cik_sdma_fini(%struct.radeon_device* %282)
  %284 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %285 = call i32 @cik_irq_fini(%struct.radeon_device* %284)
  %286 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %287 = call i32 @sumo_rlc_fini(%struct.radeon_device* %286)
  %288 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %289 = call i32 @cik_mec_fini(%struct.radeon_device* %288)
  %290 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %291 = call i32 @radeon_wb_fini(%struct.radeon_device* %290)
  %292 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %293 = call i32 @radeon_ib_pool_fini(%struct.radeon_device* %292)
  %294 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %295 = call i32 @radeon_vm_manager_fini(%struct.radeon_device* %294)
  %296 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %297 = call i32 @radeon_irq_kms_fini(%struct.radeon_device* %296)
  %298 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %299 = call i32 @cik_pcie_gart_fini(%struct.radeon_device* %298)
  %300 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %301 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %300, i32 0, i32 1
  store i32 0, i32* %301, align 4
  br label %302

302:                                              ; preds = %275, %268
  %303 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %304 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %303, i32 0, i32 2
  %305 = load i32, i32* %304, align 8
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %318, label %307

307:                                              ; preds = %302
  %308 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %309 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %308, i32 0, i32 0
  %310 = load i32, i32* %309, align 8
  %311 = load i32, i32* @RADEON_IS_IGP, align 4
  %312 = and i32 %310, %311
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %318, label %314

314:                                              ; preds = %307
  %315 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  %316 = load i32, i32* @EINVAL, align 4
  %317 = sub nsw i32 0, %316
  store i32 %317, i32* %2, align 4
  br label %319

318:                                              ; preds = %307, %302
  store i32 0, i32* %2, align 4
  br label %319

319:                                              ; preds = %318, %314, %266, %230, %211, %177, %132, %88, %81, %74, %45, %34, %22, %13
  %320 = load i32, i32* %2, align 4
  ret i32 %320
}

declare dso_local i32 @radeon_get_bios(%struct.radeon_device*) #1

declare dso_local i64 @ASIC_IS_AVIVO(%struct.radeon_device*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @radeon_atombios_init(%struct.radeon_device*) #1

declare dso_local i32 @radeon_card_posted(%struct.radeon_device*) #1

declare dso_local i32 @DRM_INFO(i8*) #1

declare dso_local i32 @atom_asic_init(i32) #1

declare dso_local i32 @cik_init_golden_registers(%struct.radeon_device*) #1

declare dso_local i32 @cik_scratch_init(%struct.radeon_device*) #1

declare dso_local i32 @radeon_surface_init(%struct.radeon_device*) #1

declare dso_local i32 @radeon_get_clock_info(i32) #1

declare dso_local i32 @radeon_fence_driver_init(%struct.radeon_device*) #1

declare dso_local i32 @cik_mc_init(%struct.radeon_device*) #1

declare dso_local i32 @radeon_bo_init(%struct.radeon_device*) #1

declare dso_local i32 @cik_init_microcode(%struct.radeon_device*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @radeon_pm_init(%struct.radeon_device*) #1

declare dso_local i32 @r600_ring_init(%struct.radeon_device*, %struct.radeon_ring*, i32) #1

declare dso_local i32 @radeon_doorbell_get(%struct.radeon_device*, i32*) #1

declare dso_local i32 @cik_uvd_init(%struct.radeon_device*) #1

declare dso_local i32 @cik_vce_init(%struct.radeon_device*) #1

declare dso_local i32 @r600_ih_ring_init(%struct.radeon_device*, i32) #1

declare dso_local i32 @r600_pcie_gart_init(%struct.radeon_device*) #1

declare dso_local i32 @cik_startup(%struct.radeon_device*) #1

declare dso_local i32 @cik_cp_fini(%struct.radeon_device*) #1

declare dso_local i32 @cik_sdma_fini(%struct.radeon_device*) #1

declare dso_local i32 @cik_irq_fini(%struct.radeon_device*) #1

declare dso_local i32 @sumo_rlc_fini(%struct.radeon_device*) #1

declare dso_local i32 @cik_mec_fini(%struct.radeon_device*) #1

declare dso_local i32 @radeon_wb_fini(%struct.radeon_device*) #1

declare dso_local i32 @radeon_ib_pool_fini(%struct.radeon_device*) #1

declare dso_local i32 @radeon_vm_manager_fini(%struct.radeon_device*) #1

declare dso_local i32 @radeon_irq_kms_fini(%struct.radeon_device*) #1

declare dso_local i32 @cik_pcie_gart_fini(%struct.radeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
