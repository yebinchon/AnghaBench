; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cik.c_cik_startup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cik.c_cik_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32, i64, i32, %struct.radeon_ring*, i64, %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.radeon_ring = type { i32, i32, i32, i32, i64 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32, i8*, i8* }
%struct.TYPE_4__ = type { i32 }

@RADEON_IS_IGP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Failed to load MC firmware!\0A\00", align 1
@CHIP_KAVERI = common dso_local global i64 0, align 8
@spectre_rlc_save_restore_register_list = common dso_local global i8* null, align 8
@kalindi_rlc_save_restore_register_list = common dso_local global i8* null, align 8
@ci_cs_data = common dso_local global i32 0, align 4
@CP_ME_TABLE_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Failed to init rlc BOs!\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Failed to init MEC BOs!\0A\00", align 1
@RADEON_RING_TYPE_GFX_INDEX = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [37 x i8] c"failed initializing CP fences (%d).\0A\00", align 1
@CAYMAN_RING_TYPE_CP1_INDEX = common dso_local global i64 0, align 8
@CAYMAN_RING_TYPE_CP2_INDEX = common dso_local global i64 0, align 8
@R600_RING_TYPE_DMA_INDEX = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [38 x i8] c"failed initializing DMA fences (%d).\0A\00", align 1
@CAYMAN_RING_TYPE_DMA1_INDEX = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [30 x i8] c"radeon: IH init failed (%d).\0A\00", align 1
@CHIP_HAWAII = common dso_local global i64 0, align 8
@PACKET3_NOP = common dso_local global i32 0, align 4
@RADEON_CP_PACKET2 = common dso_local global i8* null, align 8
@RADEON_WB_CP_RPTR_OFFSET = common dso_local global i32 0, align 4
@RADEON_WB_CP1_RPTR_OFFSET = common dso_local global i32 0, align 4
@CIK_WB_CP1_WPTR_OFFSET = common dso_local global i32 0, align 4
@RADEON_WB_CP2_RPTR_OFFSET = common dso_local global i32 0, align 4
@CIK_WB_CP2_WPTR_OFFSET = common dso_local global i32 0, align 4
@R600_WB_DMA_RPTR_OFFSET = common dso_local global i32 0, align 4
@SDMA_OPCODE_NOP = common dso_local global i32 0, align 4
@CAYMAN_WB_DMA1_RPTR_OFFSET = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [32 x i8] c"IB initialization failed (%d).\0A\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"vm manager initialization failed (%d).\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*)* @cik_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cik_startup(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.radeon_ring*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %7 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %8 = call i32 @cik_pcie_gen3_enable(%struct.radeon_device* %7)
  %9 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %10 = call i32 @cik_program_aspm(%struct.radeon_device* %9)
  %11 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %12 = call i32 @r600_vram_scratch_init(%struct.radeon_device* %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* %2, align 4
  br label %401

17:                                               ; preds = %1
  %18 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %19 = call i32 @cik_mc_program(%struct.radeon_device* %18)
  %20 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %21 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @RADEON_IS_IGP, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %41, label %26

26:                                               ; preds = %17
  %27 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %28 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %27, i32 0, i32 7
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %41, label %32

32:                                               ; preds = %26
  %33 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %34 = call i32 @ci_mc_load_microcode(%struct.radeon_device* %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* %6, align 4
  store i32 %39, i32* %2, align 4
  br label %401

40:                                               ; preds = %32
  br label %41

41:                                               ; preds = %40, %26, %17
  %42 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %43 = call i32 @cik_pcie_gart_enable(%struct.radeon_device* %42)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = load i32, i32* %6, align 4
  store i32 %47, i32* %2, align 4
  br label %401

48:                                               ; preds = %41
  %49 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %50 = call i32 @cik_gpu_init(%struct.radeon_device* %49)
  %51 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %52 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @RADEON_IS_IGP, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %86

57:                                               ; preds = %48
  %58 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %59 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @CHIP_KAVERI, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %74

63:                                               ; preds = %57
  %64 = load i8*, i8** @spectre_rlc_save_restore_register_list, align 8
  %65 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %66 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %65, i32 0, i32 6
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 3
  store i8* %64, i8** %67, align 8
  %68 = load i8*, i8** @spectre_rlc_save_restore_register_list, align 8
  %69 = call i64 @ARRAY_SIZE(i8* %68)
  %70 = inttoptr i64 %69 to i8*
  %71 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %72 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %71, i32 0, i32 6
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 2
  store i8* %70, i8** %73, align 8
  br label %85

74:                                               ; preds = %57
  %75 = load i8*, i8** @kalindi_rlc_save_restore_register_list, align 8
  %76 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %77 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %76, i32 0, i32 6
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 3
  store i8* %75, i8** %78, align 8
  %79 = load i8*, i8** @kalindi_rlc_save_restore_register_list, align 8
  %80 = call i64 @ARRAY_SIZE(i8* %79)
  %81 = inttoptr i64 %80 to i8*
  %82 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %83 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %82, i32 0, i32 6
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 2
  store i8* %81, i8** %84, align 8
  br label %85

85:                                               ; preds = %74, %63
  br label %86

86:                                               ; preds = %85, %48
  %87 = load i32, i32* @ci_cs_data, align 4
  %88 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %89 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %88, i32 0, i32 6
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 1
  store i32 %87, i32* %90, align 4
  %91 = load i32, i32* @CP_ME_TABLE_SIZE, align 4
  %92 = mul nsw i32 %91, 5
  %93 = mul nsw i32 %92, 4
  %94 = call i32 @ALIGN(i32 %93, i32 2048)
  %95 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %96 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %95, i32 0, i32 6
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  store i32 %94, i32* %97, align 8
  %98 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %99 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %98, i32 0, i32 6
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = add nsw i32 %101, 65536
  store i32 %102, i32* %100, align 8
  %103 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %104 = call i32 @sumo_rlc_init(%struct.radeon_device* %103)
  store i32 %104, i32* %6, align 4
  %105 = load i32, i32* %6, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %86
  %108 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %109 = load i32, i32* %6, align 4
  store i32 %109, i32* %2, align 4
  br label %401

110:                                              ; preds = %86
  %111 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %112 = call i32 @radeon_wb_init(%struct.radeon_device* %111)
  store i32 %112, i32* %6, align 4
  %113 = load i32, i32* %6, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %110
  %116 = load i32, i32* %6, align 4
  store i32 %116, i32* %2, align 4
  br label %401

117:                                              ; preds = %110
  %118 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %119 = call i32 @cik_mec_init(%struct.radeon_device* %118)
  store i32 %119, i32* %6, align 4
  %120 = load i32, i32* %6, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %117
  %123 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %124 = load i32, i32* %6, align 4
  store i32 %124, i32* %2, align 4
  br label %401

125:                                              ; preds = %117
  %126 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %127 = load i64, i64* @RADEON_RING_TYPE_GFX_INDEX, align 8
  %128 = call i32 @radeon_fence_driver_start_ring(%struct.radeon_device* %126, i64 %127)
  store i32 %128, i32* %6, align 4
  %129 = load i32, i32* %6, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %138

131:                                              ; preds = %125
  %132 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %133 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* %6, align 4
  %136 = call i32 @dev_err(i32 %134, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %135)
  %137 = load i32, i32* %6, align 4
  store i32 %137, i32* %2, align 4
  br label %401

138:                                              ; preds = %125
  %139 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %140 = load i64, i64* @CAYMAN_RING_TYPE_CP1_INDEX, align 8
  %141 = call i32 @radeon_fence_driver_start_ring(%struct.radeon_device* %139, i64 %140)
  store i32 %141, i32* %6, align 4
  %142 = load i32, i32* %6, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %151

144:                                              ; preds = %138
  %145 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %146 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* %6, align 4
  %149 = call i32 @dev_err(i32 %147, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %148)
  %150 = load i32, i32* %6, align 4
  store i32 %150, i32* %2, align 4
  br label %401

151:                                              ; preds = %138
  %152 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %153 = load i64, i64* @CAYMAN_RING_TYPE_CP2_INDEX, align 8
  %154 = call i32 @radeon_fence_driver_start_ring(%struct.radeon_device* %152, i64 %153)
  store i32 %154, i32* %6, align 4
  %155 = load i32, i32* %6, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %164

157:                                              ; preds = %151
  %158 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %159 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 8
  %161 = load i32, i32* %6, align 4
  %162 = call i32 @dev_err(i32 %160, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %161)
  %163 = load i32, i32* %6, align 4
  store i32 %163, i32* %2, align 4
  br label %401

164:                                              ; preds = %151
  %165 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %166 = load i64, i64* @R600_RING_TYPE_DMA_INDEX, align 8
  %167 = call i32 @radeon_fence_driver_start_ring(%struct.radeon_device* %165, i64 %166)
  store i32 %167, i32* %6, align 4
  %168 = load i32, i32* %6, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %177

170:                                              ; preds = %164
  %171 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %172 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 8
  %174 = load i32, i32* %6, align 4
  %175 = call i32 @dev_err(i32 %173, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i32 %174)
  %176 = load i32, i32* %6, align 4
  store i32 %176, i32* %2, align 4
  br label %401

177:                                              ; preds = %164
  %178 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %179 = load i64, i64* @CAYMAN_RING_TYPE_DMA1_INDEX, align 8
  %180 = call i32 @radeon_fence_driver_start_ring(%struct.radeon_device* %178, i64 %179)
  store i32 %180, i32* %6, align 4
  %181 = load i32, i32* %6, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %190

183:                                              ; preds = %177
  %184 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %185 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 8
  %187 = load i32, i32* %6, align 4
  %188 = call i32 @dev_err(i32 %186, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i32 %187)
  %189 = load i32, i32* %6, align 4
  store i32 %189, i32* %2, align 4
  br label %401

190:                                              ; preds = %177
  %191 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %192 = call i32 @cik_uvd_start(%struct.radeon_device* %191)
  %193 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %194 = call i32 @cik_vce_start(%struct.radeon_device* %193)
  %195 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %196 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %195, i32 0, i32 5
  %197 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %208, label %200

200:                                              ; preds = %190
  %201 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %202 = call i32 @radeon_irq_kms_init(%struct.radeon_device* %201)
  store i32 %202, i32* %6, align 4
  %203 = load i32, i32* %6, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %207

205:                                              ; preds = %200
  %206 = load i32, i32* %6, align 4
  store i32 %206, i32* %2, align 4
  br label %401

207:                                              ; preds = %200
  br label %208

208:                                              ; preds = %207, %190
  %209 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %210 = call i32 @cik_irq_init(%struct.radeon_device* %209)
  store i32 %210, i32* %6, align 4
  %211 = load i32, i32* %6, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %219

213:                                              ; preds = %208
  %214 = load i32, i32* %6, align 4
  %215 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i32 %214)
  %216 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %217 = call i32 @radeon_irq_kms_fini(%struct.radeon_device* %216)
  %218 = load i32, i32* %6, align 4
  store i32 %218, i32* %2, align 4
  br label %401

219:                                              ; preds = %208
  %220 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %221 = call i32 @cik_irq_set(%struct.radeon_device* %220)
  %222 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %223 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %222, i32 0, i32 1
  %224 = load i64, i64* %223, align 8
  %225 = load i64, i64* @CHIP_HAWAII, align 8
  %226 = icmp eq i64 %224, %225
  br i1 %226, label %227, label %238

227:                                              ; preds = %219
  %228 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %229 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %228, i32 0, i32 4
  %230 = load i64, i64* %229, align 8
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %235

232:                                              ; preds = %227
  %233 = load i32, i32* @PACKET3_NOP, align 4
  %234 = call i8* @PACKET3(i32 %233, i32 16383)
  store i8* %234, i8** %5, align 8
  br label %237

235:                                              ; preds = %227
  %236 = load i8*, i8** @RADEON_CP_PACKET2, align 8
  store i8* %236, i8** %5, align 8
  br label %237

237:                                              ; preds = %235, %232
  br label %241

238:                                              ; preds = %219
  %239 = load i32, i32* @PACKET3_NOP, align 4
  %240 = call i8* @PACKET3(i32 %239, i32 16383)
  store i8* %240, i8** %5, align 8
  br label %241

241:                                              ; preds = %238, %237
  %242 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %243 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %242, i32 0, i32 3
  %244 = load %struct.radeon_ring*, %struct.radeon_ring** %243, align 8
  %245 = load i64, i64* @RADEON_RING_TYPE_GFX_INDEX, align 8
  %246 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %244, i64 %245
  store %struct.radeon_ring* %246, %struct.radeon_ring** %4, align 8
  %247 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %248 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %249 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %250 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %249, i32 0, i32 2
  %251 = load i32, i32* %250, align 8
  %252 = load i32, i32* @RADEON_WB_CP_RPTR_OFFSET, align 4
  %253 = load i8*, i8** %5, align 8
  %254 = call i32 @radeon_ring_init(%struct.radeon_device* %247, %struct.radeon_ring* %248, i32 %251, i32 %252, i8* %253)
  store i32 %254, i32* %6, align 4
  %255 = load i32, i32* %6, align 4
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %259

257:                                              ; preds = %241
  %258 = load i32, i32* %6, align 4
  store i32 %258, i32* %2, align 4
  br label %401

259:                                              ; preds = %241
  %260 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %261 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %260, i32 0, i32 3
  %262 = load %struct.radeon_ring*, %struct.radeon_ring** %261, align 8
  %263 = load i64, i64* @CAYMAN_RING_TYPE_CP1_INDEX, align 8
  %264 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %262, i64 %263
  store %struct.radeon_ring* %264, %struct.radeon_ring** %4, align 8
  %265 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %266 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %267 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %268 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %267, i32 0, i32 2
  %269 = load i32, i32* %268, align 8
  %270 = load i32, i32* @RADEON_WB_CP1_RPTR_OFFSET, align 4
  %271 = load i8*, i8** %5, align 8
  %272 = call i32 @radeon_ring_init(%struct.radeon_device* %265, %struct.radeon_ring* %266, i32 %269, i32 %270, i8* %271)
  store i32 %272, i32* %6, align 4
  %273 = load i32, i32* %6, align 4
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %277

275:                                              ; preds = %259
  %276 = load i32, i32* %6, align 4
  store i32 %276, i32* %2, align 4
  br label %401

277:                                              ; preds = %259
  %278 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %279 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %278, i32 0, i32 0
  store i32 1, i32* %279, align 8
  %280 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %281 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %280, i32 0, i32 4
  store i64 0, i64* %281, align 8
  %282 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %283 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %282, i32 0, i32 1
  store i32 0, i32* %283, align 4
  %284 = load i32, i32* @CIK_WB_CP1_WPTR_OFFSET, align 4
  %285 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %286 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %285, i32 0, i32 3
  store i32 %284, i32* %286, align 4
  %287 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %288 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %287, i32 0, i32 3
  %289 = load %struct.radeon_ring*, %struct.radeon_ring** %288, align 8
  %290 = load i64, i64* @CAYMAN_RING_TYPE_CP2_INDEX, align 8
  %291 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %289, i64 %290
  store %struct.radeon_ring* %291, %struct.radeon_ring** %4, align 8
  %292 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %293 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %294 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %295 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %294, i32 0, i32 2
  %296 = load i32, i32* %295, align 8
  %297 = load i32, i32* @RADEON_WB_CP2_RPTR_OFFSET, align 4
  %298 = load i8*, i8** %5, align 8
  %299 = call i32 @radeon_ring_init(%struct.radeon_device* %292, %struct.radeon_ring* %293, i32 %296, i32 %297, i8* %298)
  store i32 %299, i32* %6, align 4
  %300 = load i32, i32* %6, align 4
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %302, label %304

302:                                              ; preds = %277
  %303 = load i32, i32* %6, align 4
  store i32 %303, i32* %2, align 4
  br label %401

304:                                              ; preds = %277
  %305 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %306 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %305, i32 0, i32 0
  store i32 1, i32* %306, align 8
  %307 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %308 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %307, i32 0, i32 4
  store i64 0, i64* %308, align 8
  %309 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %310 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %309, i32 0, i32 1
  store i32 1, i32* %310, align 4
  %311 = load i32, i32* @CIK_WB_CP2_WPTR_OFFSET, align 4
  %312 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %313 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %312, i32 0, i32 3
  store i32 %311, i32* %313, align 4
  %314 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %315 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %314, i32 0, i32 3
  %316 = load %struct.radeon_ring*, %struct.radeon_ring** %315, align 8
  %317 = load i64, i64* @R600_RING_TYPE_DMA_INDEX, align 8
  %318 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %316, i64 %317
  store %struct.radeon_ring* %318, %struct.radeon_ring** %4, align 8
  %319 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %320 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %321 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %322 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %321, i32 0, i32 2
  %323 = load i32, i32* %322, align 8
  %324 = load i32, i32* @R600_WB_DMA_RPTR_OFFSET, align 4
  %325 = load i32, i32* @SDMA_OPCODE_NOP, align 4
  %326 = call i8* @SDMA_PACKET(i32 %325, i32 0, i32 0)
  %327 = call i32 @radeon_ring_init(%struct.radeon_device* %319, %struct.radeon_ring* %320, i32 %323, i32 %324, i8* %326)
  store i32 %327, i32* %6, align 4
  %328 = load i32, i32* %6, align 4
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %330, label %332

330:                                              ; preds = %304
  %331 = load i32, i32* %6, align 4
  store i32 %331, i32* %2, align 4
  br label %401

332:                                              ; preds = %304
  %333 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %334 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %333, i32 0, i32 3
  %335 = load %struct.radeon_ring*, %struct.radeon_ring** %334, align 8
  %336 = load i64, i64* @CAYMAN_RING_TYPE_DMA1_INDEX, align 8
  %337 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %335, i64 %336
  store %struct.radeon_ring* %337, %struct.radeon_ring** %4, align 8
  %338 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %339 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %340 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %341 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %340, i32 0, i32 2
  %342 = load i32, i32* %341, align 8
  %343 = load i32, i32* @CAYMAN_WB_DMA1_RPTR_OFFSET, align 4
  %344 = load i32, i32* @SDMA_OPCODE_NOP, align 4
  %345 = call i8* @SDMA_PACKET(i32 %344, i32 0, i32 0)
  %346 = call i32 @radeon_ring_init(%struct.radeon_device* %338, %struct.radeon_ring* %339, i32 %342, i32 %343, i8* %345)
  store i32 %346, i32* %6, align 4
  %347 = load i32, i32* %6, align 4
  %348 = icmp ne i32 %347, 0
  br i1 %348, label %349, label %351

349:                                              ; preds = %332
  %350 = load i32, i32* %6, align 4
  store i32 %350, i32* %2, align 4
  br label %401

351:                                              ; preds = %332
  %352 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %353 = call i32 @cik_cp_resume(%struct.radeon_device* %352)
  store i32 %353, i32* %6, align 4
  %354 = load i32, i32* %6, align 4
  %355 = icmp ne i32 %354, 0
  br i1 %355, label %356, label %358

356:                                              ; preds = %351
  %357 = load i32, i32* %6, align 4
  store i32 %357, i32* %2, align 4
  br label %401

358:                                              ; preds = %351
  %359 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %360 = call i32 @cik_sdma_resume(%struct.radeon_device* %359)
  store i32 %360, i32* %6, align 4
  %361 = load i32, i32* %6, align 4
  %362 = icmp ne i32 %361, 0
  br i1 %362, label %363, label %365

363:                                              ; preds = %358
  %364 = load i32, i32* %6, align 4
  store i32 %364, i32* %2, align 4
  br label %401

365:                                              ; preds = %358
  %366 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %367 = call i32 @cik_uvd_resume(%struct.radeon_device* %366)
  %368 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %369 = call i32 @cik_vce_resume(%struct.radeon_device* %368)
  %370 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %371 = call i32 @radeon_ib_pool_init(%struct.radeon_device* %370)
  store i32 %371, i32* %6, align 4
  %372 = load i32, i32* %6, align 4
  %373 = icmp ne i32 %372, 0
  br i1 %373, label %374, label %381

374:                                              ; preds = %365
  %375 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %376 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %375, i32 0, i32 2
  %377 = load i32, i32* %376, align 8
  %378 = load i32, i32* %6, align 4
  %379 = call i32 @dev_err(i32 %377, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i32 %378)
  %380 = load i32, i32* %6, align 4
  store i32 %380, i32* %2, align 4
  br label %401

381:                                              ; preds = %365
  %382 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %383 = call i32 @radeon_vm_manager_init(%struct.radeon_device* %382)
  store i32 %383, i32* %6, align 4
  %384 = load i32, i32* %6, align 4
  %385 = icmp ne i32 %384, 0
  br i1 %385, label %386, label %393

386:                                              ; preds = %381
  %387 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %388 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %387, i32 0, i32 2
  %389 = load i32, i32* %388, align 8
  %390 = load i32, i32* %6, align 4
  %391 = call i32 @dev_err(i32 %389, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0), i32 %390)
  %392 = load i32, i32* %6, align 4
  store i32 %392, i32* %2, align 4
  br label %401

393:                                              ; preds = %381
  %394 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %395 = call i32 @radeon_audio_init(%struct.radeon_device* %394)
  store i32 %395, i32* %6, align 4
  %396 = load i32, i32* %6, align 4
  %397 = icmp ne i32 %396, 0
  br i1 %397, label %398, label %400

398:                                              ; preds = %393
  %399 = load i32, i32* %6, align 4
  store i32 %399, i32* %2, align 4
  br label %401

400:                                              ; preds = %393
  store i32 0, i32* %2, align 4
  br label %401

401:                                              ; preds = %400, %398, %386, %374, %363, %356, %349, %330, %302, %275, %257, %213, %205, %183, %170, %157, %144, %131, %122, %115, %107, %46, %37, %15
  %402 = load i32, i32* %2, align 4
  ret i32 %402
}

declare dso_local i32 @cik_pcie_gen3_enable(%struct.radeon_device*) #1

declare dso_local i32 @cik_program_aspm(%struct.radeon_device*) #1

declare dso_local i32 @r600_vram_scratch_init(%struct.radeon_device*) #1

declare dso_local i32 @cik_mc_program(%struct.radeon_device*) #1

declare dso_local i32 @ci_mc_load_microcode(%struct.radeon_device*) #1

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

declare dso_local i32 @cik_pcie_gart_enable(%struct.radeon_device*) #1

declare dso_local i32 @cik_gpu_init(%struct.radeon_device*) #1

declare dso_local i64 @ARRAY_SIZE(i8*) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @sumo_rlc_init(%struct.radeon_device*) #1

declare dso_local i32 @radeon_wb_init(%struct.radeon_device*) #1

declare dso_local i32 @cik_mec_init(%struct.radeon_device*) #1

declare dso_local i32 @radeon_fence_driver_start_ring(%struct.radeon_device*, i64) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @cik_uvd_start(%struct.radeon_device*) #1

declare dso_local i32 @cik_vce_start(%struct.radeon_device*) #1

declare dso_local i32 @radeon_irq_kms_init(%struct.radeon_device*) #1

declare dso_local i32 @cik_irq_init(%struct.radeon_device*) #1

declare dso_local i32 @radeon_irq_kms_fini(%struct.radeon_device*) #1

declare dso_local i32 @cik_irq_set(%struct.radeon_device*) #1

declare dso_local i8* @PACKET3(i32, i32) #1

declare dso_local i32 @radeon_ring_init(%struct.radeon_device*, %struct.radeon_ring*, i32, i32, i8*) #1

declare dso_local i8* @SDMA_PACKET(i32, i32, i32) #1

declare dso_local i32 @cik_cp_resume(%struct.radeon_device*) #1

declare dso_local i32 @cik_sdma_resume(%struct.radeon_device*) #1

declare dso_local i32 @cik_uvd_resume(%struct.radeon_device*) #1

declare dso_local i32 @cik_vce_resume(%struct.radeon_device*) #1

declare dso_local i32 @radeon_ib_pool_init(%struct.radeon_device*) #1

declare dso_local i32 @radeon_vm_manager_init(%struct.radeon_device*) #1

declare dso_local i32 @radeon_audio_init(%struct.radeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
