; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ni.c_cayman_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ni.c_cayman_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32, i32, i32, i32, %struct.TYPE_4__, %struct.radeon_ring*, i32, i32, i32, i32, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_4__ = type { i32* }
%struct.radeon_ring = type { i32* }
%struct.TYPE_3__ = type { i32 }

@RADEON_RING_TYPE_GFX_INDEX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Expecting atombios for cayman GPU\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Card not posted and no BIOS - ignoring\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"GPU not posted. posting now...\0A\00", align 1
@RADEON_IS_IGP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"Failed to load firmware!\0A\00", align 1
@R600_RING_TYPE_DMA_INDEX = common dso_local global i64 0, align 8
@CAYMAN_RING_TYPE_DMA1_INDEX = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [28 x i8] c"disabling GPU acceleration\0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"radeon: MC ucode required for NI+.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cayman_init(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.radeon_ring*, align 8
  %5 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %6 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %7 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %6, i32 0, i32 5
  %8 = load %struct.radeon_ring*, %struct.radeon_ring** %7, align 8
  %9 = load i64, i64* @RADEON_RING_TYPE_GFX_INDEX, align 8
  %10 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %8, i64 %9
  store %struct.radeon_ring* %10, %struct.radeon_ring** %4, align 8
  %11 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %12 = call i32 @radeon_get_bios(%struct.radeon_device* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %22, label %14

14:                                               ; preds = %1
  %15 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %16 = call i64 @ASIC_IS_AVIVO(%struct.radeon_device* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %257

21:                                               ; preds = %14
  br label %22

22:                                               ; preds = %21, %1
  %23 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %24 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %23, i32 0, i32 12
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %22
  %28 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %29 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @dev_err(i32 %30, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %257

34:                                               ; preds = %22
  %35 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %36 = call i32 @radeon_atombios_init(%struct.radeon_device* %35)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i32, i32* %5, align 4
  store i32 %40, i32* %2, align 4
  br label %257

41:                                               ; preds = %34
  %42 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %43 = call i32 @radeon_card_posted(%struct.radeon_device* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %64, label %45

45:                                               ; preds = %41
  %46 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %47 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %46, i32 0, i32 11
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %57, label %50

50:                                               ; preds = %45
  %51 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %52 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @dev_err(i32 %53, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %2, align 4
  br label %257

57:                                               ; preds = %45
  %58 = call i32 @DRM_INFO(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %59 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %60 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %59, i32 0, i32 10
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @atom_asic_init(i32 %62)
  br label %64

64:                                               ; preds = %57, %41
  %65 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %66 = call i32 @ni_init_golden_registers(%struct.radeon_device* %65)
  %67 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %68 = call i32 @r600_scratch_init(%struct.radeon_device* %67)
  %69 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %70 = call i32 @radeon_surface_init(%struct.radeon_device* %69)
  %71 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %72 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %71, i32 0, i32 9
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @radeon_get_clock_info(i32 %73)
  %75 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %76 = call i32 @radeon_fence_driver_init(%struct.radeon_device* %75)
  store i32 %76, i32* %5, align 4
  %77 = load i32, i32* %5, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %64
  %80 = load i32, i32* %5, align 4
  store i32 %80, i32* %2, align 4
  br label %257

81:                                               ; preds = %64
  %82 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %83 = call i32 @evergreen_mc_init(%struct.radeon_device* %82)
  store i32 %83, i32* %5, align 4
  %84 = load i32, i32* %5, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %81
  %87 = load i32, i32* %5, align 4
  store i32 %87, i32* %2, align 4
  br label %257

88:                                               ; preds = %81
  %89 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %90 = call i32 @radeon_bo_init(%struct.radeon_device* %89)
  store i32 %90, i32* %5, align 4
  %91 = load i32, i32* %5, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %88
  %94 = load i32, i32* %5, align 4
  store i32 %94, i32* %2, align 4
  br label %257

95:                                               ; preds = %88
  %96 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %97 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @RADEON_IS_IGP, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %127

102:                                              ; preds = %95
  %103 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %104 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %103, i32 0, i32 8
  %105 = load i32, i32* %104, align 8
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %117

107:                                              ; preds = %102
  %108 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %109 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %108, i32 0, i32 7
  %110 = load i32, i32* %109, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %107
  %113 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %114 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %113, i32 0, i32 6
  %115 = load i32, i32* %114, align 8
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %126, label %117

117:                                              ; preds = %112, %107, %102
  %118 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %119 = call i32 @ni_init_microcode(%struct.radeon_device* %118)
  store i32 %119, i32* %5, align 4
  %120 = load i32, i32* %5, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %117
  %123 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %124 = load i32, i32* %5, align 4
  store i32 %124, i32* %2, align 4
  br label %257

125:                                              ; preds = %117
  br label %126

126:                                              ; preds = %125, %112
  br label %157

127:                                              ; preds = %95
  %128 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %129 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %128, i32 0, i32 8
  %130 = load i32, i32* %129, align 8
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %147

132:                                              ; preds = %127
  %133 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %134 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %133, i32 0, i32 7
  %135 = load i32, i32* %134, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %147

137:                                              ; preds = %132
  %138 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %139 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %138, i32 0, i32 6
  %140 = load i32, i32* %139, align 8
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %147

142:                                              ; preds = %137
  %143 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %144 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %156, label %147

147:                                              ; preds = %142, %137, %132, %127
  %148 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %149 = call i32 @ni_init_microcode(%struct.radeon_device* %148)
  store i32 %149, i32* %5, align 4
  %150 = load i32, i32* %5, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %147
  %153 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %154 = load i32, i32* %5, align 4
  store i32 %154, i32* %2, align 4
  br label %257

155:                                              ; preds = %147
  br label %156

156:                                              ; preds = %155, %142
  br label %157

157:                                              ; preds = %156, %126
  %158 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %159 = call i32 @radeon_pm_init(%struct.radeon_device* %158)
  %160 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %161 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %160, i32 0, i32 0
  store i32* null, i32** %161, align 8
  %162 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %163 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %164 = call i32 @r600_ring_init(%struct.radeon_device* %162, %struct.radeon_ring* %163, i32 1048576)
  %165 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %166 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %165, i32 0, i32 5
  %167 = load %struct.radeon_ring*, %struct.radeon_ring** %166, align 8
  %168 = load i64, i64* @R600_RING_TYPE_DMA_INDEX, align 8
  %169 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %167, i64 %168
  store %struct.radeon_ring* %169, %struct.radeon_ring** %4, align 8
  %170 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %171 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %170, i32 0, i32 0
  store i32* null, i32** %171, align 8
  %172 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %173 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %174 = call i32 @r600_ring_init(%struct.radeon_device* %172, %struct.radeon_ring* %173, i32 65536)
  %175 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %176 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %175, i32 0, i32 5
  %177 = load %struct.radeon_ring*, %struct.radeon_ring** %176, align 8
  %178 = load i64, i64* @CAYMAN_RING_TYPE_DMA1_INDEX, align 8
  %179 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %177, i64 %178
  store %struct.radeon_ring* %179, %struct.radeon_ring** %4, align 8
  %180 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %181 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %180, i32 0, i32 0
  store i32* null, i32** %181, align 8
  %182 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %183 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %184 = call i32 @r600_ring_init(%struct.radeon_device* %182, %struct.radeon_ring* %183, i32 65536)
  %185 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %186 = call i32 @cayman_uvd_init(%struct.radeon_device* %185)
  %187 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %188 = call i32 @cayman_vce_init(%struct.radeon_device* %187)
  %189 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %190 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %189, i32 0, i32 4
  %191 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %190, i32 0, i32 0
  store i32* null, i32** %191, align 8
  %192 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %193 = call i32 @r600_ih_ring_init(%struct.radeon_device* %192, i32 65536)
  %194 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %195 = call i32 @r600_pcie_gart_init(%struct.radeon_device* %194)
  store i32 %195, i32* %5, align 4
  %196 = load i32, i32* %5, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %200

198:                                              ; preds = %157
  %199 = load i32, i32* %5, align 4
  store i32 %199, i32* %2, align 4
  br label %257

200:                                              ; preds = %157
  %201 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %202 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %201, i32 0, i32 1
  store i32 1, i32* %202, align 4
  %203 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %204 = call i32 @cayman_startup(%struct.radeon_device* %203)
  store i32 %204, i32* %5, align 4
  %205 = load i32, i32* %5, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %240

207:                                              ; preds = %200
  %208 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %209 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %208, i32 0, i32 3
  %210 = load i32, i32* %209, align 4
  %211 = call i32 @dev_err(i32 %210, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %212 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %213 = call i32 @cayman_cp_fini(%struct.radeon_device* %212)
  %214 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %215 = call i32 @cayman_dma_fini(%struct.radeon_device* %214)
  %216 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %217 = call i32 @r600_irq_fini(%struct.radeon_device* %216)
  %218 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %219 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = load i32, i32* @RADEON_IS_IGP, align 4
  %222 = and i32 %220, %221
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %227

224:                                              ; preds = %207
  %225 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %226 = call i32 @sumo_rlc_fini(%struct.radeon_device* %225)
  br label %227

227:                                              ; preds = %224, %207
  %228 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %229 = call i32 @radeon_wb_fini(%struct.radeon_device* %228)
  %230 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %231 = call i32 @radeon_ib_pool_fini(%struct.radeon_device* %230)
  %232 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %233 = call i32 @radeon_vm_manager_fini(%struct.radeon_device* %232)
  %234 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %235 = call i32 @radeon_irq_kms_fini(%struct.radeon_device* %234)
  %236 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %237 = call i32 @cayman_pcie_gart_fini(%struct.radeon_device* %236)
  %238 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %239 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %238, i32 0, i32 1
  store i32 0, i32* %239, align 4
  br label %240

240:                                              ; preds = %227, %200
  %241 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %242 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %241, i32 0, i32 2
  %243 = load i32, i32* %242, align 8
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %256, label %245

245:                                              ; preds = %240
  %246 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %247 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 8
  %249 = load i32, i32* @RADEON_IS_IGP, align 4
  %250 = and i32 %248, %249
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %256, label %252

252:                                              ; preds = %245
  %253 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  %254 = load i32, i32* @EINVAL, align 4
  %255 = sub nsw i32 0, %254
  store i32 %255, i32* %2, align 4
  br label %257

256:                                              ; preds = %245, %240
  store i32 0, i32* %2, align 4
  br label %257

257:                                              ; preds = %256, %252, %198, %152, %122, %93, %86, %79, %50, %39, %27, %18
  %258 = load i32, i32* %2, align 4
  ret i32 %258
}

declare dso_local i32 @radeon_get_bios(%struct.radeon_device*) #1

declare dso_local i64 @ASIC_IS_AVIVO(%struct.radeon_device*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @radeon_atombios_init(%struct.radeon_device*) #1

declare dso_local i32 @radeon_card_posted(%struct.radeon_device*) #1

declare dso_local i32 @DRM_INFO(i8*) #1

declare dso_local i32 @atom_asic_init(i32) #1

declare dso_local i32 @ni_init_golden_registers(%struct.radeon_device*) #1

declare dso_local i32 @r600_scratch_init(%struct.radeon_device*) #1

declare dso_local i32 @radeon_surface_init(%struct.radeon_device*) #1

declare dso_local i32 @radeon_get_clock_info(i32) #1

declare dso_local i32 @radeon_fence_driver_init(%struct.radeon_device*) #1

declare dso_local i32 @evergreen_mc_init(%struct.radeon_device*) #1

declare dso_local i32 @radeon_bo_init(%struct.radeon_device*) #1

declare dso_local i32 @ni_init_microcode(%struct.radeon_device*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @radeon_pm_init(%struct.radeon_device*) #1

declare dso_local i32 @r600_ring_init(%struct.radeon_device*, %struct.radeon_ring*, i32) #1

declare dso_local i32 @cayman_uvd_init(%struct.radeon_device*) #1

declare dso_local i32 @cayman_vce_init(%struct.radeon_device*) #1

declare dso_local i32 @r600_ih_ring_init(%struct.radeon_device*, i32) #1

declare dso_local i32 @r600_pcie_gart_init(%struct.radeon_device*) #1

declare dso_local i32 @cayman_startup(%struct.radeon_device*) #1

declare dso_local i32 @cayman_cp_fini(%struct.radeon_device*) #1

declare dso_local i32 @cayman_dma_fini(%struct.radeon_device*) #1

declare dso_local i32 @r600_irq_fini(%struct.radeon_device*) #1

declare dso_local i32 @sumo_rlc_fini(%struct.radeon_device*) #1

declare dso_local i32 @radeon_wb_fini(%struct.radeon_device*) #1

declare dso_local i32 @radeon_ib_pool_fini(%struct.radeon_device*) #1

declare dso_local i32 @radeon_vm_manager_fini(%struct.radeon_device*) #1

declare dso_local i32 @radeon_irq_kms_fini(%struct.radeon_device*) #1

declare dso_local i32 @cayman_pcie_gart_fini(%struct.radeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
