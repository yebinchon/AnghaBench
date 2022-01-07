; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_evergreen.c_evergreen_startup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_evergreen.c_evergreen_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32, i32, %struct.radeon_ring*, %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.radeon_ring = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i64, i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"Failed to load MC firmware!\0A\00", align 1
@RADEON_IS_AGP = common dso_local global i32 0, align 4
@RADEON_IS_IGP = common dso_local global i32 0, align 4
@sumo_rlc_save_restore_register_list = common dso_local global i32 0, align 4
@evergreen_cs_data = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Failed to init rlc BOs!\0A\00", align 1
@RADEON_RING_TYPE_GFX_INDEX = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [37 x i8] c"failed initializing CP fences (%d).\0A\00", align 1
@R600_RING_TYPE_DMA_INDEX = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [38 x i8] c"failed initializing DMA fences (%d).\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"radeon: IH init failed (%d).\0A\00", align 1
@RADEON_WB_CP_RPTR_OFFSET = common dso_local global i32 0, align 4
@RADEON_CP_PACKET2 = common dso_local global i32 0, align 4
@R600_WB_DMA_RPTR_OFFSET = common dso_local global i32 0, align 4
@DMA_PACKET_NOP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [32 x i8] c"IB initialization failed (%d).\0A\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"radeon: audio init failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*)* @evergreen_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @evergreen_startup(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.radeon_ring*, align 8
  %5 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %6 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %7 = call i32 @evergreen_pcie_gen2_enable(%struct.radeon_device* %6)
  %8 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %9 = call i32 @evergreen_program_aspm(%struct.radeon_device* %8)
  %10 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %11 = call i32 @r600_vram_scratch_init(%struct.radeon_device* %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %5, align 4
  store i32 %15, i32* %2, align 4
  br label %229

16:                                               ; preds = %1
  %17 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %18 = call i32 @evergreen_mc_program(%struct.radeon_device* %17)
  %19 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %20 = call i64 @ASIC_IS_DCE5(%struct.radeon_device* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %37

22:                                               ; preds = %16
  %23 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %24 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %23, i32 0, i32 5
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %37, label %28

28:                                               ; preds = %22
  %29 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %30 = call i32 @ni_mc_load_microcode(%struct.radeon_device* %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* %5, align 4
  store i32 %35, i32* %2, align 4
  br label %229

36:                                               ; preds = %28
  br label %37

37:                                               ; preds = %36, %22, %16
  %38 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %39 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @RADEON_IS_AGP, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %37
  %45 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %46 = call i32 @evergreen_agp_enable(%struct.radeon_device* %45)
  br label %55

47:                                               ; preds = %37
  %48 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %49 = call i32 @evergreen_pcie_gart_enable(%struct.radeon_device* %48)
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %5, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = load i32, i32* %5, align 4
  store i32 %53, i32* %2, align 4
  br label %229

54:                                               ; preds = %47
  br label %55

55:                                               ; preds = %54, %44
  %56 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %57 = call i32 @evergreen_gpu_init(%struct.radeon_device* %56)
  %58 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %59 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @RADEON_IS_IGP, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %86

64:                                               ; preds = %55
  %65 = load i32, i32* @sumo_rlc_save_restore_register_list, align 4
  %66 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %67 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %66, i32 0, i32 4
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 2
  store i32 %65, i32* %68, align 8
  %69 = load i32, i32* @sumo_rlc_save_restore_register_list, align 4
  %70 = call i64 @ARRAY_SIZE(i32 %69)
  %71 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %72 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %71, i32 0, i32 4
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 1
  store i64 %70, i64* %73, align 8
  %74 = load i32, i32* @evergreen_cs_data, align 4
  %75 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %76 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %75, i32 0, i32 4
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  store i32 %74, i32* %77, align 8
  %78 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %79 = call i32 @sumo_rlc_init(%struct.radeon_device* %78)
  store i32 %79, i32* %5, align 4
  %80 = load i32, i32* %5, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %64
  %83 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %84 = load i32, i32* %5, align 4
  store i32 %84, i32* %2, align 4
  br label %229

85:                                               ; preds = %64
  br label %86

86:                                               ; preds = %85, %55
  %87 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %88 = call i32 @radeon_wb_init(%struct.radeon_device* %87)
  store i32 %88, i32* %5, align 4
  %89 = load i32, i32* %5, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %86
  %92 = load i32, i32* %5, align 4
  store i32 %92, i32* %2, align 4
  br label %229

93:                                               ; preds = %86
  %94 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %95 = load i64, i64* @RADEON_RING_TYPE_GFX_INDEX, align 8
  %96 = call i32 @radeon_fence_driver_start_ring(%struct.radeon_device* %94, i64 %95)
  store i32 %96, i32* %5, align 4
  %97 = load i32, i32* %5, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %106

99:                                               ; preds = %93
  %100 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %101 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %5, align 4
  %104 = call i32 @dev_err(i32 %102, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %103)
  %105 = load i32, i32* %5, align 4
  store i32 %105, i32* %2, align 4
  br label %229

106:                                              ; preds = %93
  %107 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %108 = load i64, i64* @R600_RING_TYPE_DMA_INDEX, align 8
  %109 = call i32 @radeon_fence_driver_start_ring(%struct.radeon_device* %107, i64 %108)
  store i32 %109, i32* %5, align 4
  %110 = load i32, i32* %5, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %119

112:                                              ; preds = %106
  %113 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %114 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* %5, align 4
  %117 = call i32 @dev_err(i32 %115, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %116)
  %118 = load i32, i32* %5, align 4
  store i32 %118, i32* %2, align 4
  br label %229

119:                                              ; preds = %106
  %120 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %121 = call i32 @evergreen_uvd_start(%struct.radeon_device* %120)
  %122 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %123 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %122, i32 0, i32 3
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %135, label %127

127:                                              ; preds = %119
  %128 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %129 = call i32 @radeon_irq_kms_init(%struct.radeon_device* %128)
  store i32 %129, i32* %5, align 4
  %130 = load i32, i32* %5, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %127
  %133 = load i32, i32* %5, align 4
  store i32 %133, i32* %2, align 4
  br label %229

134:                                              ; preds = %127
  br label %135

135:                                              ; preds = %134, %119
  %136 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %137 = call i32 @r600_irq_init(%struct.radeon_device* %136)
  store i32 %137, i32* %5, align 4
  %138 = load i32, i32* %5, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %146

140:                                              ; preds = %135
  %141 = load i32, i32* %5, align 4
  %142 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %141)
  %143 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %144 = call i32 @radeon_irq_kms_fini(%struct.radeon_device* %143)
  %145 = load i32, i32* %5, align 4
  store i32 %145, i32* %2, align 4
  br label %229

146:                                              ; preds = %135
  %147 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %148 = call i32 @evergreen_irq_set(%struct.radeon_device* %147)
  %149 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %150 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %149, i32 0, i32 2
  %151 = load %struct.radeon_ring*, %struct.radeon_ring** %150, align 8
  %152 = load i64, i64* @RADEON_RING_TYPE_GFX_INDEX, align 8
  %153 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %151, i64 %152
  store %struct.radeon_ring* %153, %struct.radeon_ring** %4, align 8
  %154 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %155 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %156 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %157 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* @RADEON_WB_CP_RPTR_OFFSET, align 4
  %160 = load i32, i32* @RADEON_CP_PACKET2, align 4
  %161 = call i32 @radeon_ring_init(%struct.radeon_device* %154, %struct.radeon_ring* %155, i32 %158, i32 %159, i32 %160)
  store i32 %161, i32* %5, align 4
  %162 = load i32, i32* %5, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %166

164:                                              ; preds = %146
  %165 = load i32, i32* %5, align 4
  store i32 %165, i32* %2, align 4
  br label %229

166:                                              ; preds = %146
  %167 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %168 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %167, i32 0, i32 2
  %169 = load %struct.radeon_ring*, %struct.radeon_ring** %168, align 8
  %170 = load i64, i64* @R600_RING_TYPE_DMA_INDEX, align 8
  %171 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %169, i64 %170
  store %struct.radeon_ring* %171, %struct.radeon_ring** %4, align 8
  %172 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %173 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %174 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %175 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* @R600_WB_DMA_RPTR_OFFSET, align 4
  %178 = load i32, i32* @DMA_PACKET_NOP, align 4
  %179 = call i32 @DMA_PACKET(i32 %178, i32 0, i32 0)
  %180 = call i32 @radeon_ring_init(%struct.radeon_device* %172, %struct.radeon_ring* %173, i32 %176, i32 %177, i32 %179)
  store i32 %180, i32* %5, align 4
  %181 = load i32, i32* %5, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %185

183:                                              ; preds = %166
  %184 = load i32, i32* %5, align 4
  store i32 %184, i32* %2, align 4
  br label %229

185:                                              ; preds = %166
  %186 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %187 = call i32 @evergreen_cp_load_microcode(%struct.radeon_device* %186)
  store i32 %187, i32* %5, align 4
  %188 = load i32, i32* %5, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %192

190:                                              ; preds = %185
  %191 = load i32, i32* %5, align 4
  store i32 %191, i32* %2, align 4
  br label %229

192:                                              ; preds = %185
  %193 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %194 = call i32 @evergreen_cp_resume(%struct.radeon_device* %193)
  store i32 %194, i32* %5, align 4
  %195 = load i32, i32* %5, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %199

197:                                              ; preds = %192
  %198 = load i32, i32* %5, align 4
  store i32 %198, i32* %2, align 4
  br label %229

199:                                              ; preds = %192
  %200 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %201 = call i32 @r600_dma_resume(%struct.radeon_device* %200)
  store i32 %201, i32* %5, align 4
  %202 = load i32, i32* %5, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %206

204:                                              ; preds = %199
  %205 = load i32, i32* %5, align 4
  store i32 %205, i32* %2, align 4
  br label %229

206:                                              ; preds = %199
  %207 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %208 = call i32 @evergreen_uvd_resume(%struct.radeon_device* %207)
  %209 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %210 = call i32 @radeon_ib_pool_init(%struct.radeon_device* %209)
  store i32 %210, i32* %5, align 4
  %211 = load i32, i32* %5, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %220

213:                                              ; preds = %206
  %214 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %215 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = load i32, i32* %5, align 4
  %218 = call i32 @dev_err(i32 %216, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 %217)
  %219 = load i32, i32* %5, align 4
  store i32 %219, i32* %2, align 4
  br label %229

220:                                              ; preds = %206
  %221 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %222 = call i32 @radeon_audio_init(%struct.radeon_device* %221)
  store i32 %222, i32* %5, align 4
  %223 = load i32, i32* %5, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %228

225:                                              ; preds = %220
  %226 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0))
  %227 = load i32, i32* %5, align 4
  store i32 %227, i32* %2, align 4
  br label %229

228:                                              ; preds = %220
  store i32 0, i32* %2, align 4
  br label %229

229:                                              ; preds = %228, %225, %213, %204, %197, %190, %183, %164, %140, %132, %112, %99, %91, %82, %52, %33, %14
  %230 = load i32, i32* %2, align 4
  ret i32 %230
}

declare dso_local i32 @evergreen_pcie_gen2_enable(%struct.radeon_device*) #1

declare dso_local i32 @evergreen_program_aspm(%struct.radeon_device*) #1

declare dso_local i32 @r600_vram_scratch_init(%struct.radeon_device*) #1

declare dso_local i32 @evergreen_mc_program(%struct.radeon_device*) #1

declare dso_local i64 @ASIC_IS_DCE5(%struct.radeon_device*) #1

declare dso_local i32 @ni_mc_load_microcode(%struct.radeon_device*) #1

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

declare dso_local i32 @evergreen_agp_enable(%struct.radeon_device*) #1

declare dso_local i32 @evergreen_pcie_gart_enable(%struct.radeon_device*) #1

declare dso_local i32 @evergreen_gpu_init(%struct.radeon_device*) #1

declare dso_local i64 @ARRAY_SIZE(i32) #1

declare dso_local i32 @sumo_rlc_init(%struct.radeon_device*) #1

declare dso_local i32 @radeon_wb_init(%struct.radeon_device*) #1

declare dso_local i32 @radeon_fence_driver_start_ring(%struct.radeon_device*, i64) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @evergreen_uvd_start(%struct.radeon_device*) #1

declare dso_local i32 @radeon_irq_kms_init(%struct.radeon_device*) #1

declare dso_local i32 @r600_irq_init(%struct.radeon_device*) #1

declare dso_local i32 @radeon_irq_kms_fini(%struct.radeon_device*) #1

declare dso_local i32 @evergreen_irq_set(%struct.radeon_device*) #1

declare dso_local i32 @radeon_ring_init(%struct.radeon_device*, %struct.radeon_ring*, i32, i32, i32) #1

declare dso_local i32 @DMA_PACKET(i32, i32, i32) #1

declare dso_local i32 @evergreen_cp_load_microcode(%struct.radeon_device*) #1

declare dso_local i32 @evergreen_cp_resume(%struct.radeon_device*) #1

declare dso_local i32 @r600_dma_resume(%struct.radeon_device*) #1

declare dso_local i32 @evergreen_uvd_resume(%struct.radeon_device*) #1

declare dso_local i32 @radeon_ib_pool_init(%struct.radeon_device*) #1

declare dso_local i32 @radeon_audio_init(%struct.radeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
