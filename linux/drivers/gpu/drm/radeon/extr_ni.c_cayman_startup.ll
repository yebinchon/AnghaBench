; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ni.c_cayman_startup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ni.c_cayman_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32, i32, %struct.radeon_ring*, %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.radeon_ring = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i64, i32 }
%struct.TYPE_4__ = type { i32 }

@RADEON_RING_TYPE_GFX_INDEX = common dso_local global i64 0, align 8
@RADEON_IS_IGP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Failed to load MC firmware!\0A\00", align 1
@tn_rlc_save_restore_register_list = common dso_local global i32 0, align 4
@cayman_cs_data = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Failed to init rlc BOs!\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"failed initializing CP fences (%d).\0A\00", align 1
@CAYMAN_RING_TYPE_CP1_INDEX = common dso_local global i64 0, align 8
@CAYMAN_RING_TYPE_CP2_INDEX = common dso_local global i64 0, align 8
@R600_RING_TYPE_DMA_INDEX = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [38 x i8] c"failed initializing DMA fences (%d).\0A\00", align 1
@CAYMAN_RING_TYPE_DMA1_INDEX = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [30 x i8] c"radeon: IH init failed (%d).\0A\00", align 1
@RADEON_WB_CP_RPTR_OFFSET = common dso_local global i32 0, align 4
@RADEON_CP_PACKET2 = common dso_local global i32 0, align 4
@R600_WB_DMA_RPTR_OFFSET = common dso_local global i32 0, align 4
@DMA_PACKET_NOP = common dso_local global i32 0, align 4
@CAYMAN_WB_DMA1_RPTR_OFFSET = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [32 x i8] c"IB initialization failed (%d).\0A\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"vm manager initialization failed (%d).\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*)* @cayman_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cayman_startup(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.radeon_ring*, align 8
  %5 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %6 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %7 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %6, i32 0, i32 2
  %8 = load %struct.radeon_ring*, %struct.radeon_ring** %7, align 8
  %9 = load i64, i64* @RADEON_RING_TYPE_GFX_INDEX, align 8
  %10 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %8, i64 %9
  store %struct.radeon_ring* %10, %struct.radeon_ring** %4, align 8
  %11 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %12 = call i32 @evergreen_pcie_gen2_enable(%struct.radeon_device* %11)
  %13 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %14 = call i32 @evergreen_program_aspm(%struct.radeon_device* %13)
  %15 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %16 = call i32 @r600_vram_scratch_init(%struct.radeon_device* %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* %5, align 4
  store i32 %20, i32* %2, align 4
  br label %294

21:                                               ; preds = %1
  %22 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %23 = call i32 @evergreen_mc_program(%struct.radeon_device* %22)
  %24 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %25 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @RADEON_IS_IGP, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %45, label %30

30:                                               ; preds = %21
  %31 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %32 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %31, i32 0, i32 5
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %45, label %36

36:                                               ; preds = %30
  %37 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %38 = call i32 @ni_mc_load_microcode(%struct.radeon_device* %37)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %43 = load i32, i32* %5, align 4
  store i32 %43, i32* %2, align 4
  br label %294

44:                                               ; preds = %36
  br label %45

45:                                               ; preds = %44, %30, %21
  %46 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %47 = call i32 @cayman_pcie_gart_enable(%struct.radeon_device* %46)
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = load i32, i32* %5, align 4
  store i32 %51, i32* %2, align 4
  br label %294

52:                                               ; preds = %45
  %53 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %54 = call i32 @cayman_gpu_init(%struct.radeon_device* %53)
  %55 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %56 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @RADEON_IS_IGP, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %83

61:                                               ; preds = %52
  %62 = load i32, i32* @tn_rlc_save_restore_register_list, align 4
  %63 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %64 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %63, i32 0, i32 4
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 2
  store i32 %62, i32* %65, align 8
  %66 = load i32, i32* @tn_rlc_save_restore_register_list, align 4
  %67 = call i64 @ARRAY_SIZE(i32 %66)
  %68 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %69 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %68, i32 0, i32 4
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 1
  store i64 %67, i64* %70, align 8
  %71 = load i32, i32* @cayman_cs_data, align 4
  %72 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %73 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %72, i32 0, i32 4
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  store i32 %71, i32* %74, align 8
  %75 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %76 = call i32 @sumo_rlc_init(%struct.radeon_device* %75)
  store i32 %76, i32* %5, align 4
  %77 = load i32, i32* %5, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %61
  %80 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %81 = load i32, i32* %5, align 4
  store i32 %81, i32* %2, align 4
  br label %294

82:                                               ; preds = %61
  br label %83

83:                                               ; preds = %82, %52
  %84 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %85 = call i32 @radeon_wb_init(%struct.radeon_device* %84)
  store i32 %85, i32* %5, align 4
  %86 = load i32, i32* %5, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %83
  %89 = load i32, i32* %5, align 4
  store i32 %89, i32* %2, align 4
  br label %294

90:                                               ; preds = %83
  %91 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %92 = load i64, i64* @RADEON_RING_TYPE_GFX_INDEX, align 8
  %93 = call i32 @radeon_fence_driver_start_ring(%struct.radeon_device* %91, i64 %92)
  store i32 %93, i32* %5, align 4
  %94 = load i32, i32* %5, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %103

96:                                               ; preds = %90
  %97 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %98 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %5, align 4
  %101 = call i32 @dev_err(i32 %99, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %100)
  %102 = load i32, i32* %5, align 4
  store i32 %102, i32* %2, align 4
  br label %294

103:                                              ; preds = %90
  %104 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %105 = call i32 @cayman_uvd_start(%struct.radeon_device* %104)
  %106 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %107 = call i32 @cayman_vce_start(%struct.radeon_device* %106)
  %108 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %109 = load i64, i64* @CAYMAN_RING_TYPE_CP1_INDEX, align 8
  %110 = call i32 @radeon_fence_driver_start_ring(%struct.radeon_device* %108, i64 %109)
  store i32 %110, i32* %5, align 4
  %111 = load i32, i32* %5, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %120

113:                                              ; preds = %103
  %114 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %115 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* %5, align 4
  %118 = call i32 @dev_err(i32 %116, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %117)
  %119 = load i32, i32* %5, align 4
  store i32 %119, i32* %2, align 4
  br label %294

120:                                              ; preds = %103
  %121 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %122 = load i64, i64* @CAYMAN_RING_TYPE_CP2_INDEX, align 8
  %123 = call i32 @radeon_fence_driver_start_ring(%struct.radeon_device* %121, i64 %122)
  store i32 %123, i32* %5, align 4
  %124 = load i32, i32* %5, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %133

126:                                              ; preds = %120
  %127 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %128 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* %5, align 4
  %131 = call i32 @dev_err(i32 %129, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %130)
  %132 = load i32, i32* %5, align 4
  store i32 %132, i32* %2, align 4
  br label %294

133:                                              ; preds = %120
  %134 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %135 = load i64, i64* @R600_RING_TYPE_DMA_INDEX, align 8
  %136 = call i32 @radeon_fence_driver_start_ring(%struct.radeon_device* %134, i64 %135)
  store i32 %136, i32* %5, align 4
  %137 = load i32, i32* %5, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %146

139:                                              ; preds = %133
  %140 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %141 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* %5, align 4
  %144 = call i32 @dev_err(i32 %142, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %143)
  %145 = load i32, i32* %5, align 4
  store i32 %145, i32* %2, align 4
  br label %294

146:                                              ; preds = %133
  %147 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %148 = load i64, i64* @CAYMAN_RING_TYPE_DMA1_INDEX, align 8
  %149 = call i32 @radeon_fence_driver_start_ring(%struct.radeon_device* %147, i64 %148)
  store i32 %149, i32* %5, align 4
  %150 = load i32, i32* %5, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %159

152:                                              ; preds = %146
  %153 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %154 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* %5, align 4
  %157 = call i32 @dev_err(i32 %155, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %156)
  %158 = load i32, i32* %5, align 4
  store i32 %158, i32* %2, align 4
  br label %294

159:                                              ; preds = %146
  %160 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %161 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %160, i32 0, i32 3
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %173, label %165

165:                                              ; preds = %159
  %166 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %167 = call i32 @radeon_irq_kms_init(%struct.radeon_device* %166)
  store i32 %167, i32* %5, align 4
  %168 = load i32, i32* %5, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %172

170:                                              ; preds = %165
  %171 = load i32, i32* %5, align 4
  store i32 %171, i32* %2, align 4
  br label %294

172:                                              ; preds = %165
  br label %173

173:                                              ; preds = %172, %159
  %174 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %175 = call i32 @r600_irq_init(%struct.radeon_device* %174)
  store i32 %175, i32* %5, align 4
  %176 = load i32, i32* %5, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %184

178:                                              ; preds = %173
  %179 = load i32, i32* %5, align 4
  %180 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %179)
  %181 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %182 = call i32 @radeon_irq_kms_fini(%struct.radeon_device* %181)
  %183 = load i32, i32* %5, align 4
  store i32 %183, i32* %2, align 4
  br label %294

184:                                              ; preds = %173
  %185 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %186 = call i32 @evergreen_irq_set(%struct.radeon_device* %185)
  %187 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %188 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %189 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %190 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* @RADEON_WB_CP_RPTR_OFFSET, align 4
  %193 = load i32, i32* @RADEON_CP_PACKET2, align 4
  %194 = call i32 @radeon_ring_init(%struct.radeon_device* %187, %struct.radeon_ring* %188, i32 %191, i32 %192, i32 %193)
  store i32 %194, i32* %5, align 4
  %195 = load i32, i32* %5, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %199

197:                                              ; preds = %184
  %198 = load i32, i32* %5, align 4
  store i32 %198, i32* %2, align 4
  br label %294

199:                                              ; preds = %184
  %200 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %201 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %200, i32 0, i32 2
  %202 = load %struct.radeon_ring*, %struct.radeon_ring** %201, align 8
  %203 = load i64, i64* @R600_RING_TYPE_DMA_INDEX, align 8
  %204 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %202, i64 %203
  store %struct.radeon_ring* %204, %struct.radeon_ring** %4, align 8
  %205 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %206 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %207 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %208 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = load i32, i32* @R600_WB_DMA_RPTR_OFFSET, align 4
  %211 = load i32, i32* @DMA_PACKET_NOP, align 4
  %212 = call i32 @DMA_PACKET(i32 %211, i32 0, i32 0, i32 0)
  %213 = call i32 @radeon_ring_init(%struct.radeon_device* %205, %struct.radeon_ring* %206, i32 %209, i32 %210, i32 %212)
  store i32 %213, i32* %5, align 4
  %214 = load i32, i32* %5, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %218

216:                                              ; preds = %199
  %217 = load i32, i32* %5, align 4
  store i32 %217, i32* %2, align 4
  br label %294

218:                                              ; preds = %199
  %219 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %220 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %219, i32 0, i32 2
  %221 = load %struct.radeon_ring*, %struct.radeon_ring** %220, align 8
  %222 = load i64, i64* @CAYMAN_RING_TYPE_DMA1_INDEX, align 8
  %223 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %221, i64 %222
  store %struct.radeon_ring* %223, %struct.radeon_ring** %4, align 8
  %224 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %225 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %226 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %227 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 4
  %229 = load i32, i32* @CAYMAN_WB_DMA1_RPTR_OFFSET, align 4
  %230 = load i32, i32* @DMA_PACKET_NOP, align 4
  %231 = call i32 @DMA_PACKET(i32 %230, i32 0, i32 0, i32 0)
  %232 = call i32 @radeon_ring_init(%struct.radeon_device* %224, %struct.radeon_ring* %225, i32 %228, i32 %229, i32 %231)
  store i32 %232, i32* %5, align 4
  %233 = load i32, i32* %5, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %237

235:                                              ; preds = %218
  %236 = load i32, i32* %5, align 4
  store i32 %236, i32* %2, align 4
  br label %294

237:                                              ; preds = %218
  %238 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %239 = call i32 @cayman_cp_load_microcode(%struct.radeon_device* %238)
  store i32 %239, i32* %5, align 4
  %240 = load i32, i32* %5, align 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %244

242:                                              ; preds = %237
  %243 = load i32, i32* %5, align 4
  store i32 %243, i32* %2, align 4
  br label %294

244:                                              ; preds = %237
  %245 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %246 = call i32 @cayman_cp_resume(%struct.radeon_device* %245)
  store i32 %246, i32* %5, align 4
  %247 = load i32, i32* %5, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %251

249:                                              ; preds = %244
  %250 = load i32, i32* %5, align 4
  store i32 %250, i32* %2, align 4
  br label %294

251:                                              ; preds = %244
  %252 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %253 = call i32 @cayman_dma_resume(%struct.radeon_device* %252)
  store i32 %253, i32* %5, align 4
  %254 = load i32, i32* %5, align 4
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %258

256:                                              ; preds = %251
  %257 = load i32, i32* %5, align 4
  store i32 %257, i32* %2, align 4
  br label %294

258:                                              ; preds = %251
  %259 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %260 = call i32 @cayman_uvd_resume(%struct.radeon_device* %259)
  %261 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %262 = call i32 @cayman_vce_resume(%struct.radeon_device* %261)
  %263 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %264 = call i32 @radeon_ib_pool_init(%struct.radeon_device* %263)
  store i32 %264, i32* %5, align 4
  %265 = load i32, i32* %5, align 4
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %274

267:                                              ; preds = %258
  %268 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %269 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %268, i32 0, i32 1
  %270 = load i32, i32* %269, align 4
  %271 = load i32, i32* %5, align 4
  %272 = call i32 @dev_err(i32 %270, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 %271)
  %273 = load i32, i32* %5, align 4
  store i32 %273, i32* %2, align 4
  br label %294

274:                                              ; preds = %258
  %275 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %276 = call i32 @radeon_vm_manager_init(%struct.radeon_device* %275)
  store i32 %276, i32* %5, align 4
  %277 = load i32, i32* %5, align 4
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %286

279:                                              ; preds = %274
  %280 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %281 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %280, i32 0, i32 1
  %282 = load i32, i32* %281, align 4
  %283 = load i32, i32* %5, align 4
  %284 = call i32 @dev_err(i32 %282, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0), i32 %283)
  %285 = load i32, i32* %5, align 4
  store i32 %285, i32* %2, align 4
  br label %294

286:                                              ; preds = %274
  %287 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %288 = call i32 @radeon_audio_init(%struct.radeon_device* %287)
  store i32 %288, i32* %5, align 4
  %289 = load i32, i32* %5, align 4
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %291, label %293

291:                                              ; preds = %286
  %292 = load i32, i32* %5, align 4
  store i32 %292, i32* %2, align 4
  br label %294

293:                                              ; preds = %286
  store i32 0, i32* %2, align 4
  br label %294

294:                                              ; preds = %293, %291, %279, %267, %256, %249, %242, %235, %216, %197, %178, %170, %152, %139, %126, %113, %96, %88, %79, %50, %41, %19
  %295 = load i32, i32* %2, align 4
  ret i32 %295
}

declare dso_local i32 @evergreen_pcie_gen2_enable(%struct.radeon_device*) #1

declare dso_local i32 @evergreen_program_aspm(%struct.radeon_device*) #1

declare dso_local i32 @r600_vram_scratch_init(%struct.radeon_device*) #1

declare dso_local i32 @evergreen_mc_program(%struct.radeon_device*) #1

declare dso_local i32 @ni_mc_load_microcode(%struct.radeon_device*) #1

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

declare dso_local i32 @cayman_pcie_gart_enable(%struct.radeon_device*) #1

declare dso_local i32 @cayman_gpu_init(%struct.radeon_device*) #1

declare dso_local i64 @ARRAY_SIZE(i32) #1

declare dso_local i32 @sumo_rlc_init(%struct.radeon_device*) #1

declare dso_local i32 @radeon_wb_init(%struct.radeon_device*) #1

declare dso_local i32 @radeon_fence_driver_start_ring(%struct.radeon_device*, i64) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @cayman_uvd_start(%struct.radeon_device*) #1

declare dso_local i32 @cayman_vce_start(%struct.radeon_device*) #1

declare dso_local i32 @radeon_irq_kms_init(%struct.radeon_device*) #1

declare dso_local i32 @r600_irq_init(%struct.radeon_device*) #1

declare dso_local i32 @radeon_irq_kms_fini(%struct.radeon_device*) #1

declare dso_local i32 @evergreen_irq_set(%struct.radeon_device*) #1

declare dso_local i32 @radeon_ring_init(%struct.radeon_device*, %struct.radeon_ring*, i32, i32, i32) #1

declare dso_local i32 @DMA_PACKET(i32, i32, i32, i32) #1

declare dso_local i32 @cayman_cp_load_microcode(%struct.radeon_device*) #1

declare dso_local i32 @cayman_cp_resume(%struct.radeon_device*) #1

declare dso_local i32 @cayman_dma_resume(%struct.radeon_device*) #1

declare dso_local i32 @cayman_uvd_resume(%struct.radeon_device*) #1

declare dso_local i32 @cayman_vce_resume(%struct.radeon_device*) #1

declare dso_local i32 @radeon_ib_pool_init(%struct.radeon_device*) #1

declare dso_local i32 @radeon_vm_manager_init(%struct.radeon_device*) #1

declare dso_local i32 @radeon_audio_init(%struct.radeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
