; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r600.c_r600_startup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r600.c_r600_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32, i32, %struct.radeon_ring*, %struct.TYPE_2__ }
%struct.radeon_ring = type { i32 }
%struct.TYPE_2__ = type { i32 }

@RADEON_IS_AGP = common dso_local global i32 0, align 4
@RADEON_RING_TYPE_GFX_INDEX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"failed initializing CP fences (%d).\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"radeon: IH init failed (%d).\0A\00", align 1
@RADEON_WB_CP_RPTR_OFFSET = common dso_local global i32 0, align 4
@RADEON_CP_PACKET2 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"IB initialization failed (%d).\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"radeon: audio init failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*)* @r600_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r600_startup(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.radeon_ring*, align 8
  %5 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %6 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %7 = call i32 @r600_pcie_gen2_enable(%struct.radeon_device* %6)
  %8 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %9 = call i32 @r600_vram_scratch_init(%struct.radeon_device* %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %5, align 4
  store i32 %13, i32* %2, align 4
  br label %140

14:                                               ; preds = %1
  %15 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %16 = call i32 @r600_mc_program(%struct.radeon_device* %15)
  %17 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %18 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @RADEON_IS_AGP, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %14
  %24 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %25 = call i32 @r600_agp_enable(%struct.radeon_device* %24)
  br label %34

26:                                               ; preds = %14
  %27 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %28 = call i32 @r600_pcie_gart_enable(%struct.radeon_device* %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i32, i32* %5, align 4
  store i32 %32, i32* %2, align 4
  br label %140

33:                                               ; preds = %26
  br label %34

34:                                               ; preds = %33, %23
  %35 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %36 = call i32 @r600_gpu_init(%struct.radeon_device* %35)
  %37 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %38 = call i32 @radeon_wb_init(%struct.radeon_device* %37)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %34
  %42 = load i32, i32* %5, align 4
  store i32 %42, i32* %2, align 4
  br label %140

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
  br label %140

56:                                               ; preds = %43
  %57 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %58 = call i32 @r600_uvd_start(%struct.radeon_device* %57)
  %59 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %60 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %72, label %64

64:                                               ; preds = %56
  %65 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %66 = call i32 @radeon_irq_kms_init(%struct.radeon_device* %65)
  store i32 %66, i32* %5, align 4
  %67 = load i32, i32* %5, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %64
  %70 = load i32, i32* %5, align 4
  store i32 %70, i32* %2, align 4
  br label %140

71:                                               ; preds = %64
  br label %72

72:                                               ; preds = %71, %56
  %73 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %74 = call i32 @r600_irq_init(%struct.radeon_device* %73)
  store i32 %74, i32* %5, align 4
  %75 = load i32, i32* %5, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %72
  %78 = load i32, i32* %5, align 4
  %79 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %78)
  %80 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %81 = call i32 @radeon_irq_kms_fini(%struct.radeon_device* %80)
  %82 = load i32, i32* %5, align 4
  store i32 %82, i32* %2, align 4
  br label %140

83:                                               ; preds = %72
  %84 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %85 = call i32 @r600_irq_set(%struct.radeon_device* %84)
  %86 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %87 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %86, i32 0, i32 2
  %88 = load %struct.radeon_ring*, %struct.radeon_ring** %87, align 8
  %89 = load i64, i64* @RADEON_RING_TYPE_GFX_INDEX, align 8
  %90 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %88, i64 %89
  store %struct.radeon_ring* %90, %struct.radeon_ring** %4, align 8
  %91 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %92 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %93 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %94 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @RADEON_WB_CP_RPTR_OFFSET, align 4
  %97 = load i32, i32* @RADEON_CP_PACKET2, align 4
  %98 = call i32 @radeon_ring_init(%struct.radeon_device* %91, %struct.radeon_ring* %92, i32 %95, i32 %96, i32 %97)
  store i32 %98, i32* %5, align 4
  %99 = load i32, i32* %5, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %83
  %102 = load i32, i32* %5, align 4
  store i32 %102, i32* %2, align 4
  br label %140

103:                                              ; preds = %83
  %104 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %105 = call i32 @r600_cp_load_microcode(%struct.radeon_device* %104)
  store i32 %105, i32* %5, align 4
  %106 = load i32, i32* %5, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %103
  %109 = load i32, i32* %5, align 4
  store i32 %109, i32* %2, align 4
  br label %140

110:                                              ; preds = %103
  %111 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %112 = call i32 @r600_cp_resume(%struct.radeon_device* %111)
  store i32 %112, i32* %5, align 4
  %113 = load i32, i32* %5, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %110
  %116 = load i32, i32* %5, align 4
  store i32 %116, i32* %2, align 4
  br label %140

117:                                              ; preds = %110
  %118 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %119 = call i32 @r600_uvd_resume(%struct.radeon_device* %118)
  %120 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %121 = call i32 @radeon_ib_pool_init(%struct.radeon_device* %120)
  store i32 %121, i32* %5, align 4
  %122 = load i32, i32* %5, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %131

124:                                              ; preds = %117
  %125 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %126 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* %5, align 4
  %129 = call i32 @dev_err(i32 %127, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %128)
  %130 = load i32, i32* %5, align 4
  store i32 %130, i32* %2, align 4
  br label %140

131:                                              ; preds = %117
  %132 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %133 = call i32 @radeon_audio_init(%struct.radeon_device* %132)
  store i32 %133, i32* %5, align 4
  %134 = load i32, i32* %5, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %131
  %137 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %138 = load i32, i32* %5, align 4
  store i32 %138, i32* %2, align 4
  br label %140

139:                                              ; preds = %131
  store i32 0, i32* %2, align 4
  br label %140

140:                                              ; preds = %139, %136, %124, %115, %108, %101, %77, %69, %49, %41, %31, %12
  %141 = load i32, i32* %2, align 4
  ret i32 %141
}

declare dso_local i32 @r600_pcie_gen2_enable(%struct.radeon_device*) #1

declare dso_local i32 @r600_vram_scratch_init(%struct.radeon_device*) #1

declare dso_local i32 @r600_mc_program(%struct.radeon_device*) #1

declare dso_local i32 @r600_agp_enable(%struct.radeon_device*) #1

declare dso_local i32 @r600_pcie_gart_enable(%struct.radeon_device*) #1

declare dso_local i32 @r600_gpu_init(%struct.radeon_device*) #1

declare dso_local i32 @radeon_wb_init(%struct.radeon_device*) #1

declare dso_local i32 @radeon_fence_driver_start_ring(%struct.radeon_device*, i64) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @r600_uvd_start(%struct.radeon_device*) #1

declare dso_local i32 @radeon_irq_kms_init(%struct.radeon_device*) #1

declare dso_local i32 @r600_irq_init(%struct.radeon_device*) #1

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

declare dso_local i32 @radeon_irq_kms_fini(%struct.radeon_device*) #1

declare dso_local i32 @r600_irq_set(%struct.radeon_device*) #1

declare dso_local i32 @radeon_ring_init(%struct.radeon_device*, %struct.radeon_ring*, i32, i32, i32) #1

declare dso_local i32 @r600_cp_load_microcode(%struct.radeon_device*) #1

declare dso_local i32 @r600_cp_resume(%struct.radeon_device*) #1

declare dso_local i32 @r600_uvd_resume(%struct.radeon_device*) #1

declare dso_local i32 @radeon_ib_pool_init(%struct.radeon_device*) #1

declare dso_local i32 @radeon_audio_init(%struct.radeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
