; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si.c_si_startup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si.c_si_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i64, i32, %struct.radeon_ring*, %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.radeon_ring = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i64, i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"Failed to load MC firmware!\0A\00", align 1
@CHIP_VERDE = common dso_local global i64 0, align 8
@verde_rlc_save_restore_register_list = common dso_local global i32 0, align 4
@si_cs_data = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Failed to init rlc BOs!\0A\00", align 1
@RADEON_RING_TYPE_GFX_INDEX = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [37 x i8] c"failed initializing CP fences (%d).\0A\00", align 1
@CAYMAN_RING_TYPE_CP1_INDEX = common dso_local global i64 0, align 8
@CAYMAN_RING_TYPE_CP2_INDEX = common dso_local global i64 0, align 8
@R600_RING_TYPE_DMA_INDEX = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [38 x i8] c"failed initializing DMA fences (%d).\0A\00", align 1
@CAYMAN_RING_TYPE_DMA1_INDEX = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [30 x i8] c"radeon: IH init failed (%d).\0A\00", align 1
@RADEON_WB_CP_RPTR_OFFSET = common dso_local global i32 0, align 4
@RADEON_CP_PACKET2 = common dso_local global i32 0, align 4
@RADEON_WB_CP1_RPTR_OFFSET = common dso_local global i32 0, align 4
@RADEON_WB_CP2_RPTR_OFFSET = common dso_local global i32 0, align 4
@R600_WB_DMA_RPTR_OFFSET = common dso_local global i32 0, align 4
@DMA_PACKET_NOP = common dso_local global i32 0, align 4
@CAYMAN_WB_DMA1_RPTR_OFFSET = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [32 x i8] c"IB initialization failed (%d).\0A\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"vm manager initialization failed (%d).\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*)* @si_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si_startup(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.radeon_ring*, align 8
  %5 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %6 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %7 = call i32 @si_pcie_gen3_enable(%struct.radeon_device* %6)
  %8 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %9 = call i32 @si_program_aspm(%struct.radeon_device* %8)
  %10 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %11 = call i32 @r600_vram_scratch_init(%struct.radeon_device* %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %5, align 4
  store i32 %15, i32* %2, align 4
  br label %322

16:                                               ; preds = %1
  %17 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %18 = call i32 @si_mc_program(%struct.radeon_device* %17)
  %19 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %20 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %19, i32 0, i32 5
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %33, label %24

24:                                               ; preds = %16
  %25 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %26 = call i32 @si_mc_load_microcode(%struct.radeon_device* %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* %5, align 4
  store i32 %31, i32* %2, align 4
  br label %322

32:                                               ; preds = %24
  br label %33

33:                                               ; preds = %32, %16
  %34 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %35 = call i32 @si_pcie_gart_enable(%struct.radeon_device* %34)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load i32, i32* %5, align 4
  store i32 %39, i32* %2, align 4
  br label %322

40:                                               ; preds = %33
  %41 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %42 = call i32 @si_gpu_init(%struct.radeon_device* %41)
  %43 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %44 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @CHIP_VERDE, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %58

48:                                               ; preds = %40
  %49 = load i32, i32* @verde_rlc_save_restore_register_list, align 4
  %50 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %51 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %50, i32 0, i32 4
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 2
  store i32 %49, i32* %52, align 8
  %53 = load i32, i32* @verde_rlc_save_restore_register_list, align 4
  %54 = call i64 @ARRAY_SIZE(i32 %53)
  %55 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %56 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %55, i32 0, i32 4
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 1
  store i64 %54, i64* %57, align 8
  br label %58

58:                                               ; preds = %48, %40
  %59 = load i32, i32* @si_cs_data, align 4
  %60 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %61 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %60, i32 0, i32 4
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  store i32 %59, i32* %62, align 8
  %63 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %64 = call i32 @sumo_rlc_init(%struct.radeon_device* %63)
  store i32 %64, i32* %5, align 4
  %65 = load i32, i32* %5, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %58
  %68 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %69 = load i32, i32* %5, align 4
  store i32 %69, i32* %2, align 4
  br label %322

70:                                               ; preds = %58
  %71 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %72 = call i32 @radeon_wb_init(%struct.radeon_device* %71)
  store i32 %72, i32* %5, align 4
  %73 = load i32, i32* %5, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %70
  %76 = load i32, i32* %5, align 4
  store i32 %76, i32* %2, align 4
  br label %322

77:                                               ; preds = %70
  %78 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %79 = load i64, i64* @RADEON_RING_TYPE_GFX_INDEX, align 8
  %80 = call i32 @radeon_fence_driver_start_ring(%struct.radeon_device* %78, i64 %79)
  store i32 %80, i32* %5, align 4
  %81 = load i32, i32* %5, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %77
  %84 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %85 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* %5, align 4
  %88 = call i32 @dev_err(i32 %86, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %87)
  %89 = load i32, i32* %5, align 4
  store i32 %89, i32* %2, align 4
  br label %322

90:                                               ; preds = %77
  %91 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %92 = load i64, i64* @CAYMAN_RING_TYPE_CP1_INDEX, align 8
  %93 = call i32 @radeon_fence_driver_start_ring(%struct.radeon_device* %91, i64 %92)
  store i32 %93, i32* %5, align 4
  %94 = load i32, i32* %5, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %103

96:                                               ; preds = %90
  %97 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %98 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* %5, align 4
  %101 = call i32 @dev_err(i32 %99, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %100)
  %102 = load i32, i32* %5, align 4
  store i32 %102, i32* %2, align 4
  br label %322

103:                                              ; preds = %90
  %104 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %105 = load i64, i64* @CAYMAN_RING_TYPE_CP2_INDEX, align 8
  %106 = call i32 @radeon_fence_driver_start_ring(%struct.radeon_device* %104, i64 %105)
  store i32 %106, i32* %5, align 4
  %107 = load i32, i32* %5, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %116

109:                                              ; preds = %103
  %110 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %111 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* %5, align 4
  %114 = call i32 @dev_err(i32 %112, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %113)
  %115 = load i32, i32* %5, align 4
  store i32 %115, i32* %2, align 4
  br label %322

116:                                              ; preds = %103
  %117 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %118 = load i64, i64* @R600_RING_TYPE_DMA_INDEX, align 8
  %119 = call i32 @radeon_fence_driver_start_ring(%struct.radeon_device* %117, i64 %118)
  store i32 %119, i32* %5, align 4
  %120 = load i32, i32* %5, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %129

122:                                              ; preds = %116
  %123 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %124 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* %5, align 4
  %127 = call i32 @dev_err(i32 %125, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %126)
  %128 = load i32, i32* %5, align 4
  store i32 %128, i32* %2, align 4
  br label %322

129:                                              ; preds = %116
  %130 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %131 = load i64, i64* @CAYMAN_RING_TYPE_DMA1_INDEX, align 8
  %132 = call i32 @radeon_fence_driver_start_ring(%struct.radeon_device* %130, i64 %131)
  store i32 %132, i32* %5, align 4
  %133 = load i32, i32* %5, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %142

135:                                              ; preds = %129
  %136 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %137 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* %5, align 4
  %140 = call i32 @dev_err(i32 %138, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %139)
  %141 = load i32, i32* %5, align 4
  store i32 %141, i32* %2, align 4
  br label %322

142:                                              ; preds = %129
  %143 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %144 = call i32 @si_uvd_start(%struct.radeon_device* %143)
  %145 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %146 = call i32 @si_vce_start(%struct.radeon_device* %145)
  %147 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %148 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %147, i32 0, i32 3
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %160, label %152

152:                                              ; preds = %142
  %153 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %154 = call i32 @radeon_irq_kms_init(%struct.radeon_device* %153)
  store i32 %154, i32* %5, align 4
  %155 = load i32, i32* %5, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %159

157:                                              ; preds = %152
  %158 = load i32, i32* %5, align 4
  store i32 %158, i32* %2, align 4
  br label %322

159:                                              ; preds = %152
  br label %160

160:                                              ; preds = %159, %142
  %161 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %162 = call i32 @si_irq_init(%struct.radeon_device* %161)
  store i32 %162, i32* %5, align 4
  %163 = load i32, i32* %5, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %171

165:                                              ; preds = %160
  %166 = load i32, i32* %5, align 4
  %167 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %166)
  %168 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %169 = call i32 @radeon_irq_kms_fini(%struct.radeon_device* %168)
  %170 = load i32, i32* %5, align 4
  store i32 %170, i32* %2, align 4
  br label %322

171:                                              ; preds = %160
  %172 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %173 = call i32 @si_irq_set(%struct.radeon_device* %172)
  %174 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %175 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %174, i32 0, i32 2
  %176 = load %struct.radeon_ring*, %struct.radeon_ring** %175, align 8
  %177 = load i64, i64* @RADEON_RING_TYPE_GFX_INDEX, align 8
  %178 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %176, i64 %177
  store %struct.radeon_ring* %178, %struct.radeon_ring** %4, align 8
  %179 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %180 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %181 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %182 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* @RADEON_WB_CP_RPTR_OFFSET, align 4
  %185 = load i32, i32* @RADEON_CP_PACKET2, align 4
  %186 = call i32 @radeon_ring_init(%struct.radeon_device* %179, %struct.radeon_ring* %180, i32 %183, i32 %184, i32 %185)
  store i32 %186, i32* %5, align 4
  %187 = load i32, i32* %5, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %191

189:                                              ; preds = %171
  %190 = load i32, i32* %5, align 4
  store i32 %190, i32* %2, align 4
  br label %322

191:                                              ; preds = %171
  %192 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %193 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %192, i32 0, i32 2
  %194 = load %struct.radeon_ring*, %struct.radeon_ring** %193, align 8
  %195 = load i64, i64* @CAYMAN_RING_TYPE_CP1_INDEX, align 8
  %196 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %194, i64 %195
  store %struct.radeon_ring* %196, %struct.radeon_ring** %4, align 8
  %197 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %198 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %199 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %200 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = load i32, i32* @RADEON_WB_CP1_RPTR_OFFSET, align 4
  %203 = load i32, i32* @RADEON_CP_PACKET2, align 4
  %204 = call i32 @radeon_ring_init(%struct.radeon_device* %197, %struct.radeon_ring* %198, i32 %201, i32 %202, i32 %203)
  store i32 %204, i32* %5, align 4
  %205 = load i32, i32* %5, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %209

207:                                              ; preds = %191
  %208 = load i32, i32* %5, align 4
  store i32 %208, i32* %2, align 4
  br label %322

209:                                              ; preds = %191
  %210 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %211 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %210, i32 0, i32 2
  %212 = load %struct.radeon_ring*, %struct.radeon_ring** %211, align 8
  %213 = load i64, i64* @CAYMAN_RING_TYPE_CP2_INDEX, align 8
  %214 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %212, i64 %213
  store %struct.radeon_ring* %214, %struct.radeon_ring** %4, align 8
  %215 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %216 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %217 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %218 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = load i32, i32* @RADEON_WB_CP2_RPTR_OFFSET, align 4
  %221 = load i32, i32* @RADEON_CP_PACKET2, align 4
  %222 = call i32 @radeon_ring_init(%struct.radeon_device* %215, %struct.radeon_ring* %216, i32 %219, i32 %220, i32 %221)
  store i32 %222, i32* %5, align 4
  %223 = load i32, i32* %5, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %227

225:                                              ; preds = %209
  %226 = load i32, i32* %5, align 4
  store i32 %226, i32* %2, align 4
  br label %322

227:                                              ; preds = %209
  %228 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %229 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %228, i32 0, i32 2
  %230 = load %struct.radeon_ring*, %struct.radeon_ring** %229, align 8
  %231 = load i64, i64* @R600_RING_TYPE_DMA_INDEX, align 8
  %232 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %230, i64 %231
  store %struct.radeon_ring* %232, %struct.radeon_ring** %4, align 8
  %233 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %234 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %235 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %236 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 4
  %238 = load i32, i32* @R600_WB_DMA_RPTR_OFFSET, align 4
  %239 = load i32, i32* @DMA_PACKET_NOP, align 4
  %240 = call i32 @DMA_PACKET(i32 %239, i32 0, i32 0, i32 0, i32 0)
  %241 = call i32 @radeon_ring_init(%struct.radeon_device* %233, %struct.radeon_ring* %234, i32 %237, i32 %238, i32 %240)
  store i32 %241, i32* %5, align 4
  %242 = load i32, i32* %5, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %246

244:                                              ; preds = %227
  %245 = load i32, i32* %5, align 4
  store i32 %245, i32* %2, align 4
  br label %322

246:                                              ; preds = %227
  %247 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %248 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %247, i32 0, i32 2
  %249 = load %struct.radeon_ring*, %struct.radeon_ring** %248, align 8
  %250 = load i64, i64* @CAYMAN_RING_TYPE_DMA1_INDEX, align 8
  %251 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %249, i64 %250
  store %struct.radeon_ring* %251, %struct.radeon_ring** %4, align 8
  %252 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %253 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %254 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %255 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 4
  %257 = load i32, i32* @CAYMAN_WB_DMA1_RPTR_OFFSET, align 4
  %258 = load i32, i32* @DMA_PACKET_NOP, align 4
  %259 = call i32 @DMA_PACKET(i32 %258, i32 0, i32 0, i32 0, i32 0)
  %260 = call i32 @radeon_ring_init(%struct.radeon_device* %252, %struct.radeon_ring* %253, i32 %256, i32 %257, i32 %259)
  store i32 %260, i32* %5, align 4
  %261 = load i32, i32* %5, align 4
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %265

263:                                              ; preds = %246
  %264 = load i32, i32* %5, align 4
  store i32 %264, i32* %2, align 4
  br label %322

265:                                              ; preds = %246
  %266 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %267 = call i32 @si_cp_load_microcode(%struct.radeon_device* %266)
  store i32 %267, i32* %5, align 4
  %268 = load i32, i32* %5, align 4
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %272

270:                                              ; preds = %265
  %271 = load i32, i32* %5, align 4
  store i32 %271, i32* %2, align 4
  br label %322

272:                                              ; preds = %265
  %273 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %274 = call i32 @si_cp_resume(%struct.radeon_device* %273)
  store i32 %274, i32* %5, align 4
  %275 = load i32, i32* %5, align 4
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %279

277:                                              ; preds = %272
  %278 = load i32, i32* %5, align 4
  store i32 %278, i32* %2, align 4
  br label %322

279:                                              ; preds = %272
  %280 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %281 = call i32 @cayman_dma_resume(%struct.radeon_device* %280)
  store i32 %281, i32* %5, align 4
  %282 = load i32, i32* %5, align 4
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %286

284:                                              ; preds = %279
  %285 = load i32, i32* %5, align 4
  store i32 %285, i32* %2, align 4
  br label %322

286:                                              ; preds = %279
  %287 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %288 = call i32 @si_uvd_resume(%struct.radeon_device* %287)
  %289 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %290 = call i32 @si_vce_resume(%struct.radeon_device* %289)
  %291 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %292 = call i32 @radeon_ib_pool_init(%struct.radeon_device* %291)
  store i32 %292, i32* %5, align 4
  %293 = load i32, i32* %5, align 4
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %302

295:                                              ; preds = %286
  %296 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %297 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %296, i32 0, i32 1
  %298 = load i32, i32* %297, align 8
  %299 = load i32, i32* %5, align 4
  %300 = call i32 @dev_err(i32 %298, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 %299)
  %301 = load i32, i32* %5, align 4
  store i32 %301, i32* %2, align 4
  br label %322

302:                                              ; preds = %286
  %303 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %304 = call i32 @radeon_vm_manager_init(%struct.radeon_device* %303)
  store i32 %304, i32* %5, align 4
  %305 = load i32, i32* %5, align 4
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %307, label %314

307:                                              ; preds = %302
  %308 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %309 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %308, i32 0, i32 1
  %310 = load i32, i32* %309, align 8
  %311 = load i32, i32* %5, align 4
  %312 = call i32 @dev_err(i32 %310, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0), i32 %311)
  %313 = load i32, i32* %5, align 4
  store i32 %313, i32* %2, align 4
  br label %322

314:                                              ; preds = %302
  %315 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %316 = call i32 @radeon_audio_init(%struct.radeon_device* %315)
  store i32 %316, i32* %5, align 4
  %317 = load i32, i32* %5, align 4
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %319, label %321

319:                                              ; preds = %314
  %320 = load i32, i32* %5, align 4
  store i32 %320, i32* %2, align 4
  br label %322

321:                                              ; preds = %314
  store i32 0, i32* %2, align 4
  br label %322

322:                                              ; preds = %321, %319, %307, %295, %284, %277, %270, %263, %244, %225, %207, %189, %165, %157, %135, %122, %109, %96, %83, %75, %67, %38, %29, %14
  %323 = load i32, i32* %2, align 4
  ret i32 %323
}

declare dso_local i32 @si_pcie_gen3_enable(%struct.radeon_device*) #1

declare dso_local i32 @si_program_aspm(%struct.radeon_device*) #1

declare dso_local i32 @r600_vram_scratch_init(%struct.radeon_device*) #1

declare dso_local i32 @si_mc_program(%struct.radeon_device*) #1

declare dso_local i32 @si_mc_load_microcode(%struct.radeon_device*) #1

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

declare dso_local i32 @si_pcie_gart_enable(%struct.radeon_device*) #1

declare dso_local i32 @si_gpu_init(%struct.radeon_device*) #1

declare dso_local i64 @ARRAY_SIZE(i32) #1

declare dso_local i32 @sumo_rlc_init(%struct.radeon_device*) #1

declare dso_local i32 @radeon_wb_init(%struct.radeon_device*) #1

declare dso_local i32 @radeon_fence_driver_start_ring(%struct.radeon_device*, i64) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @si_uvd_start(%struct.radeon_device*) #1

declare dso_local i32 @si_vce_start(%struct.radeon_device*) #1

declare dso_local i32 @radeon_irq_kms_init(%struct.radeon_device*) #1

declare dso_local i32 @si_irq_init(%struct.radeon_device*) #1

declare dso_local i32 @radeon_irq_kms_fini(%struct.radeon_device*) #1

declare dso_local i32 @si_irq_set(%struct.radeon_device*) #1

declare dso_local i32 @radeon_ring_init(%struct.radeon_device*, %struct.radeon_ring*, i32, i32, i32) #1

declare dso_local i32 @DMA_PACKET(i32, i32, i32, i32, i32) #1

declare dso_local i32 @si_cp_load_microcode(%struct.radeon_device*) #1

declare dso_local i32 @si_cp_resume(%struct.radeon_device*) #1

declare dso_local i32 @cayman_dma_resume(%struct.radeon_device*) #1

declare dso_local i32 @si_uvd_resume(%struct.radeon_device*) #1

declare dso_local i32 @si_vce_resume(%struct.radeon_device*) #1

declare dso_local i32 @radeon_ib_pool_init(%struct.radeon_device*) #1

declare dso_local i32 @radeon_vm_manager_init(%struct.radeon_device*) #1

declare dso_local i32 @radeon_audio_init(%struct.radeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
