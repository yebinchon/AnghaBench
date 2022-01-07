; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si.c_si_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si.c_si_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32, i32, i32, %struct.TYPE_4__, %struct.radeon_ring*, i32, i32, i32, i32, i32, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_4__ = type { i32* }
%struct.radeon_ring = type { i32* }
%struct.TYPE_3__ = type { i32 }

@RADEON_RING_TYPE_GFX_INDEX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Expecting atombios for cayman GPU\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Card not posted and no BIOS - ignoring\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"GPU not posted. posting now...\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Failed to load firmware!\0A\00", align 1
@CAYMAN_RING_TYPE_CP1_INDEX = common dso_local global i64 0, align 8
@CAYMAN_RING_TYPE_CP2_INDEX = common dso_local global i64 0, align 8
@R600_RING_TYPE_DMA_INDEX = common dso_local global i64 0, align 8
@CAYMAN_RING_TYPE_DMA1_INDEX = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [28 x i8] c"disabling GPU acceleration\0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"radeon: MC ucode required for NI+.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @si_init(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.radeon_ring*, align 8
  %5 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %6 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %7 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %6, i32 0, i32 4
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
  br label %239

21:                                               ; preds = %14
  br label %22

22:                                               ; preds = %21, %1
  %23 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %24 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %23, i32 0, i32 12
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %22
  %28 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %29 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @dev_err(i32 %30, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %239

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
  br label %239

41:                                               ; preds = %34
  %42 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %43 = call i32 @radeon_card_posted(%struct.radeon_device* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %64, label %45

45:                                               ; preds = %41
  %46 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %47 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %46, i32 0, i32 11
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %57, label %50

50:                                               ; preds = %45
  %51 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %52 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @dev_err(i32 %53, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %2, align 4
  br label %239

57:                                               ; preds = %45
  %58 = call i32 @DRM_INFO(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %59 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %60 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %59, i32 0, i32 10
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @atom_asic_init(i32 %62)
  br label %64

64:                                               ; preds = %57, %41
  %65 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %66 = call i32 @si_init_golden_registers(%struct.radeon_device* %65)
  %67 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %68 = call i32 @si_scratch_init(%struct.radeon_device* %67)
  %69 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %70 = call i32 @radeon_surface_init(%struct.radeon_device* %69)
  %71 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %72 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %71, i32 0, i32 9
  %73 = load i32, i32* %72, align 8
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
  br label %239

81:                                               ; preds = %64
  %82 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %83 = call i32 @si_mc_init(%struct.radeon_device* %82)
  store i32 %83, i32* %5, align 4
  %84 = load i32, i32* %5, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %81
  %87 = load i32, i32* %5, align 4
  store i32 %87, i32* %2, align 4
  br label %239

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
  br label %239

95:                                               ; preds = %88
  %96 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %97 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %96, i32 0, i32 8
  %98 = load i32, i32* %97, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %120

100:                                              ; preds = %95
  %101 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %102 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %101, i32 0, i32 7
  %103 = load i32, i32* %102, align 8
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %120

105:                                              ; preds = %100
  %106 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %107 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %106, i32 0, i32 6
  %108 = load i32, i32* %107, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %120

110:                                              ; preds = %105
  %111 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %112 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %111, i32 0, i32 5
  %113 = load i32, i32* %112, align 8
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %120

115:                                              ; preds = %110
  %116 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %117 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %129, label %120

120:                                              ; preds = %115, %110, %105, %100, %95
  %121 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %122 = call i32 @si_init_microcode(%struct.radeon_device* %121)
  store i32 %122, i32* %5, align 4
  %123 = load i32, i32* %5, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %120
  %126 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %127 = load i32, i32* %5, align 4
  store i32 %127, i32* %2, align 4
  br label %239

128:                                              ; preds = %120
  br label %129

129:                                              ; preds = %128, %115
  %130 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %131 = call i32 @radeon_pm_init(%struct.radeon_device* %130)
  %132 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %133 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %132, i32 0, i32 4
  %134 = load %struct.radeon_ring*, %struct.radeon_ring** %133, align 8
  %135 = load i64, i64* @RADEON_RING_TYPE_GFX_INDEX, align 8
  %136 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %134, i64 %135
  store %struct.radeon_ring* %136, %struct.radeon_ring** %4, align 8
  %137 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %138 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %137, i32 0, i32 0
  store i32* null, i32** %138, align 8
  %139 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %140 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %141 = call i32 @r600_ring_init(%struct.radeon_device* %139, %struct.radeon_ring* %140, i32 1048576)
  %142 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %143 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %142, i32 0, i32 4
  %144 = load %struct.radeon_ring*, %struct.radeon_ring** %143, align 8
  %145 = load i64, i64* @CAYMAN_RING_TYPE_CP1_INDEX, align 8
  %146 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %144, i64 %145
  store %struct.radeon_ring* %146, %struct.radeon_ring** %4, align 8
  %147 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %148 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %147, i32 0, i32 0
  store i32* null, i32** %148, align 8
  %149 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %150 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %151 = call i32 @r600_ring_init(%struct.radeon_device* %149, %struct.radeon_ring* %150, i32 1048576)
  %152 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %153 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %152, i32 0, i32 4
  %154 = load %struct.radeon_ring*, %struct.radeon_ring** %153, align 8
  %155 = load i64, i64* @CAYMAN_RING_TYPE_CP2_INDEX, align 8
  %156 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %154, i64 %155
  store %struct.radeon_ring* %156, %struct.radeon_ring** %4, align 8
  %157 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %158 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %157, i32 0, i32 0
  store i32* null, i32** %158, align 8
  %159 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %160 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %161 = call i32 @r600_ring_init(%struct.radeon_device* %159, %struct.radeon_ring* %160, i32 1048576)
  %162 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %163 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %162, i32 0, i32 4
  %164 = load %struct.radeon_ring*, %struct.radeon_ring** %163, align 8
  %165 = load i64, i64* @R600_RING_TYPE_DMA_INDEX, align 8
  %166 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %164, i64 %165
  store %struct.radeon_ring* %166, %struct.radeon_ring** %4, align 8
  %167 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %168 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %167, i32 0, i32 0
  store i32* null, i32** %168, align 8
  %169 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %170 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %171 = call i32 @r600_ring_init(%struct.radeon_device* %169, %struct.radeon_ring* %170, i32 65536)
  %172 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %173 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %172, i32 0, i32 4
  %174 = load %struct.radeon_ring*, %struct.radeon_ring** %173, align 8
  %175 = load i64, i64* @CAYMAN_RING_TYPE_DMA1_INDEX, align 8
  %176 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %174, i64 %175
  store %struct.radeon_ring* %176, %struct.radeon_ring** %4, align 8
  %177 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %178 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %177, i32 0, i32 0
  store i32* null, i32** %178, align 8
  %179 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %180 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %181 = call i32 @r600_ring_init(%struct.radeon_device* %179, %struct.radeon_ring* %180, i32 65536)
  %182 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %183 = call i32 @si_uvd_init(%struct.radeon_device* %182)
  %184 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %185 = call i32 @si_vce_init(%struct.radeon_device* %184)
  %186 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %187 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %186, i32 0, i32 3
  %188 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %187, i32 0, i32 0
  store i32* null, i32** %188, align 8
  %189 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %190 = call i32 @r600_ih_ring_init(%struct.radeon_device* %189, i32 65536)
  %191 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %192 = call i32 @r600_pcie_gart_init(%struct.radeon_device* %191)
  store i32 %192, i32* %5, align 4
  %193 = load i32, i32* %5, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %197

195:                                              ; preds = %129
  %196 = load i32, i32* %5, align 4
  store i32 %196, i32* %2, align 4
  br label %239

197:                                              ; preds = %129
  %198 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %199 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %198, i32 0, i32 0
  store i32 1, i32* %199, align 8
  %200 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %201 = call i32 @si_startup(%struct.radeon_device* %200)
  store i32 %201, i32* %5, align 4
  %202 = load i32, i32* %5, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %229

204:                                              ; preds = %197
  %205 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %206 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %205, i32 0, i32 2
  %207 = load i32, i32* %206, align 8
  %208 = call i32 @dev_err(i32 %207, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %209 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %210 = call i32 @si_cp_fini(%struct.radeon_device* %209)
  %211 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %212 = call i32 @cayman_dma_fini(%struct.radeon_device* %211)
  %213 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %214 = call i32 @si_irq_fini(%struct.radeon_device* %213)
  %215 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %216 = call i32 @sumo_rlc_fini(%struct.radeon_device* %215)
  %217 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %218 = call i32 @radeon_wb_fini(%struct.radeon_device* %217)
  %219 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %220 = call i32 @radeon_ib_pool_fini(%struct.radeon_device* %219)
  %221 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %222 = call i32 @radeon_vm_manager_fini(%struct.radeon_device* %221)
  %223 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %224 = call i32 @radeon_irq_kms_fini(%struct.radeon_device* %223)
  %225 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %226 = call i32 @si_pcie_gart_fini(%struct.radeon_device* %225)
  %227 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %228 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %227, i32 0, i32 0
  store i32 0, i32* %228, align 8
  br label %229

229:                                              ; preds = %204, %197
  %230 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %231 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %238, label %234

234:                                              ; preds = %229
  %235 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  %236 = load i32, i32* @EINVAL, align 4
  %237 = sub nsw i32 0, %236
  store i32 %237, i32* %2, align 4
  br label %239

238:                                              ; preds = %229
  store i32 0, i32* %2, align 4
  br label %239

239:                                              ; preds = %238, %234, %195, %125, %93, %86, %79, %50, %39, %27, %18
  %240 = load i32, i32* %2, align 4
  ret i32 %240
}

declare dso_local i32 @radeon_get_bios(%struct.radeon_device*) #1

declare dso_local i64 @ASIC_IS_AVIVO(%struct.radeon_device*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @radeon_atombios_init(%struct.radeon_device*) #1

declare dso_local i32 @radeon_card_posted(%struct.radeon_device*) #1

declare dso_local i32 @DRM_INFO(i8*) #1

declare dso_local i32 @atom_asic_init(i32) #1

declare dso_local i32 @si_init_golden_registers(%struct.radeon_device*) #1

declare dso_local i32 @si_scratch_init(%struct.radeon_device*) #1

declare dso_local i32 @radeon_surface_init(%struct.radeon_device*) #1

declare dso_local i32 @radeon_get_clock_info(i32) #1

declare dso_local i32 @radeon_fence_driver_init(%struct.radeon_device*) #1

declare dso_local i32 @si_mc_init(%struct.radeon_device*) #1

declare dso_local i32 @radeon_bo_init(%struct.radeon_device*) #1

declare dso_local i32 @si_init_microcode(%struct.radeon_device*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @radeon_pm_init(%struct.radeon_device*) #1

declare dso_local i32 @r600_ring_init(%struct.radeon_device*, %struct.radeon_ring*, i32) #1

declare dso_local i32 @si_uvd_init(%struct.radeon_device*) #1

declare dso_local i32 @si_vce_init(%struct.radeon_device*) #1

declare dso_local i32 @r600_ih_ring_init(%struct.radeon_device*, i32) #1

declare dso_local i32 @r600_pcie_gart_init(%struct.radeon_device*) #1

declare dso_local i32 @si_startup(%struct.radeon_device*) #1

declare dso_local i32 @si_cp_fini(%struct.radeon_device*) #1

declare dso_local i32 @cayman_dma_fini(%struct.radeon_device*) #1

declare dso_local i32 @si_irq_fini(%struct.radeon_device*) #1

declare dso_local i32 @sumo_rlc_fini(%struct.radeon_device*) #1

declare dso_local i32 @radeon_wb_fini(%struct.radeon_device*) #1

declare dso_local i32 @radeon_ib_pool_fini(%struct.radeon_device*) #1

declare dso_local i32 @radeon_vm_manager_fini(%struct.radeon_device*) #1

declare dso_local i32 @radeon_irq_kms_fini(%struct.radeon_device*) #1

declare dso_local i32 @si_pcie_gart_fini(%struct.radeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
