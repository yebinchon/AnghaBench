; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv770.c_rv770_startup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv770.c_rv770_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32, i32, %struct.radeon_ring*, %struct.TYPE_2__ }
%struct.radeon_ring = type { i32 }
%struct.TYPE_2__ = type { i32 }

@RADEON_IS_AGP = common dso_local global i32 0, align 4
@RADEON_RING_TYPE_GFX_INDEX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"failed initializing CP fences (%d).\0A\00", align 1
@R600_RING_TYPE_DMA_INDEX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"failed initializing DMA fences (%d).\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"radeon: IH init failed (%d).\0A\00", align 1
@RADEON_WB_CP_RPTR_OFFSET = common dso_local global i32 0, align 4
@RADEON_CP_PACKET2 = common dso_local global i32 0, align 4
@R600_WB_DMA_RPTR_OFFSET = common dso_local global i32 0, align 4
@DMA_PACKET_NOP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"IB initialization failed (%d).\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"radeon: audio init failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*)* @rv770_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rv770_startup(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.radeon_ring*, align 8
  %5 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %6 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %7 = call i32 @rv770_pcie_gen2_enable(%struct.radeon_device* %6)
  %8 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %9 = call i32 @r600_vram_scratch_init(%struct.radeon_device* %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %5, align 4
  store i32 %13, i32* %2, align 4
  br label %179

14:                                               ; preds = %1
  %15 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %16 = call i32 @rv770_mc_program(%struct.radeon_device* %15)
  %17 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %18 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @RADEON_IS_AGP, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %14
  %24 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %25 = call i32 @rv770_agp_enable(%struct.radeon_device* %24)
  br label %34

26:                                               ; preds = %14
  %27 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %28 = call i32 @rv770_pcie_gart_enable(%struct.radeon_device* %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i32, i32* %5, align 4
  store i32 %32, i32* %2, align 4
  br label %179

33:                                               ; preds = %26
  br label %34

34:                                               ; preds = %33, %23
  %35 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %36 = call i32 @rv770_gpu_init(%struct.radeon_device* %35)
  %37 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %38 = call i32 @radeon_wb_init(%struct.radeon_device* %37)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %34
  %42 = load i32, i32* %5, align 4
  store i32 %42, i32* %2, align 4
  br label %179

43:                                               ; preds = %34
  %44 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %45 = load i64, i64* @RADEON_RING_TYPE_GFX_INDEX, align 8
  %46 = call i32 @radeon_fence_driver_start_ring(%struct.radeon_device* %44, i64 %45)
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %43
  %50 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %51 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @dev_err(i32 %52, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %53)
  %55 = load i32, i32* %5, align 4
  store i32 %55, i32* %2, align 4
  br label %179

56:                                               ; preds = %43
  %57 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %58 = load i64, i64* @R600_RING_TYPE_DMA_INDEX, align 8
  %59 = call i32 @radeon_fence_driver_start_ring(%struct.radeon_device* %57, i64 %58)
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* %5, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %56
  %63 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %64 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @dev_err(i32 %65, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %66)
  %68 = load i32, i32* %5, align 4
  store i32 %68, i32* %2, align 4
  br label %179

69:                                               ; preds = %56
  %70 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %71 = call i32 @rv770_uvd_start(%struct.radeon_device* %70)
  %72 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %73 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %85, label %77

77:                                               ; preds = %69
  %78 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %79 = call i32 @radeon_irq_kms_init(%struct.radeon_device* %78)
  store i32 %79, i32* %5, align 4
  %80 = load i32, i32* %5, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %77
  %83 = load i32, i32* %5, align 4
  store i32 %83, i32* %2, align 4
  br label %179

84:                                               ; preds = %77
  br label %85

85:                                               ; preds = %84, %69
  %86 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %87 = call i32 @r600_irq_init(%struct.radeon_device* %86)
  store i32 %87, i32* %5, align 4
  %88 = load i32, i32* %5, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %85
  %91 = load i32, i32* %5, align 4
  %92 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %91)
  %93 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %94 = call i32 @radeon_irq_kms_fini(%struct.radeon_device* %93)
  %95 = load i32, i32* %5, align 4
  store i32 %95, i32* %2, align 4
  br label %179

96:                                               ; preds = %85
  %97 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %98 = call i32 @r600_irq_set(%struct.radeon_device* %97)
  %99 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %100 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %99, i32 0, i32 2
  %101 = load %struct.radeon_ring*, %struct.radeon_ring** %100, align 8
  %102 = load i64, i64* @RADEON_RING_TYPE_GFX_INDEX, align 8
  %103 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %101, i64 %102
  store %struct.radeon_ring* %103, %struct.radeon_ring** %4, align 8
  %104 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %105 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %106 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %107 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @RADEON_WB_CP_RPTR_OFFSET, align 4
  %110 = load i32, i32* @RADEON_CP_PACKET2, align 4
  %111 = call i32 @radeon_ring_init(%struct.radeon_device* %104, %struct.radeon_ring* %105, i32 %108, i32 %109, i32 %110)
  store i32 %111, i32* %5, align 4
  %112 = load i32, i32* %5, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %96
  %115 = load i32, i32* %5, align 4
  store i32 %115, i32* %2, align 4
  br label %179

116:                                              ; preds = %96
  %117 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %118 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %117, i32 0, i32 2
  %119 = load %struct.radeon_ring*, %struct.radeon_ring** %118, align 8
  %120 = load i64, i64* @R600_RING_TYPE_DMA_INDEX, align 8
  %121 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %119, i64 %120
  store %struct.radeon_ring* %121, %struct.radeon_ring** %4, align 8
  %122 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %123 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %124 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %125 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @R600_WB_DMA_RPTR_OFFSET, align 4
  %128 = load i32, i32* @DMA_PACKET_NOP, align 4
  %129 = call i32 @DMA_PACKET(i32 %128, i32 0, i32 0, i32 0)
  %130 = call i32 @radeon_ring_init(%struct.radeon_device* %122, %struct.radeon_ring* %123, i32 %126, i32 %127, i32 %129)
  store i32 %130, i32* %5, align 4
  %131 = load i32, i32* %5, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %116
  %134 = load i32, i32* %5, align 4
  store i32 %134, i32* %2, align 4
  br label %179

135:                                              ; preds = %116
  %136 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %137 = call i32 @rv770_cp_load_microcode(%struct.radeon_device* %136)
  store i32 %137, i32* %5, align 4
  %138 = load i32, i32* %5, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %135
  %141 = load i32, i32* %5, align 4
  store i32 %141, i32* %2, align 4
  br label %179

142:                                              ; preds = %135
  %143 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %144 = call i32 @r600_cp_resume(%struct.radeon_device* %143)
  store i32 %144, i32* %5, align 4
  %145 = load i32, i32* %5, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %149

147:                                              ; preds = %142
  %148 = load i32, i32* %5, align 4
  store i32 %148, i32* %2, align 4
  br label %179

149:                                              ; preds = %142
  %150 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %151 = call i32 @r600_dma_resume(%struct.radeon_device* %150)
  store i32 %151, i32* %5, align 4
  %152 = load i32, i32* %5, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %156

154:                                              ; preds = %149
  %155 = load i32, i32* %5, align 4
  store i32 %155, i32* %2, align 4
  br label %179

156:                                              ; preds = %149
  %157 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %158 = call i32 @rv770_uvd_resume(%struct.radeon_device* %157)
  %159 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %160 = call i32 @radeon_ib_pool_init(%struct.radeon_device* %159)
  store i32 %160, i32* %5, align 4
  %161 = load i32, i32* %5, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %170

163:                                              ; preds = %156
  %164 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %165 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* %5, align 4
  %168 = call i32 @dev_err(i32 %166, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %167)
  %169 = load i32, i32* %5, align 4
  store i32 %169, i32* %2, align 4
  br label %179

170:                                              ; preds = %156
  %171 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %172 = call i32 @radeon_audio_init(%struct.radeon_device* %171)
  store i32 %172, i32* %5, align 4
  %173 = load i32, i32* %5, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %178

175:                                              ; preds = %170
  %176 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %177 = load i32, i32* %5, align 4
  store i32 %177, i32* %2, align 4
  br label %179

178:                                              ; preds = %170
  store i32 0, i32* %2, align 4
  br label %179

179:                                              ; preds = %178, %175, %163, %154, %147, %140, %133, %114, %90, %82, %62, %49, %41, %31, %12
  %180 = load i32, i32* %2, align 4
  ret i32 %180
}

declare dso_local i32 @rv770_pcie_gen2_enable(%struct.radeon_device*) #1

declare dso_local i32 @r600_vram_scratch_init(%struct.radeon_device*) #1

declare dso_local i32 @rv770_mc_program(%struct.radeon_device*) #1

declare dso_local i32 @rv770_agp_enable(%struct.radeon_device*) #1

declare dso_local i32 @rv770_pcie_gart_enable(%struct.radeon_device*) #1

declare dso_local i32 @rv770_gpu_init(%struct.radeon_device*) #1

declare dso_local i32 @radeon_wb_init(%struct.radeon_device*) #1

declare dso_local i32 @radeon_fence_driver_start_ring(%struct.radeon_device*, i64) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @rv770_uvd_start(%struct.radeon_device*) #1

declare dso_local i32 @radeon_irq_kms_init(%struct.radeon_device*) #1

declare dso_local i32 @r600_irq_init(%struct.radeon_device*) #1

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

declare dso_local i32 @radeon_irq_kms_fini(%struct.radeon_device*) #1

declare dso_local i32 @r600_irq_set(%struct.radeon_device*) #1

declare dso_local i32 @radeon_ring_init(%struct.radeon_device*, %struct.radeon_ring*, i32, i32, i32) #1

declare dso_local i32 @DMA_PACKET(i32, i32, i32, i32) #1

declare dso_local i32 @rv770_cp_load_microcode(%struct.radeon_device*) #1

declare dso_local i32 @r600_cp_resume(%struct.radeon_device*) #1

declare dso_local i32 @r600_dma_resume(%struct.radeon_device*) #1

declare dso_local i32 @rv770_uvd_resume(%struct.radeon_device*) #1

declare dso_local i32 @radeon_ib_pool_init(%struct.radeon_device*) #1

declare dso_local i32 @radeon_audio_init(%struct.radeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
