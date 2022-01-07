; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r600_dma.c_r600_dma_ib_test.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r600_dma.c_r600_dma_ib_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32*, i64 }
%struct.radeon_ring = type { i64 }
%struct.radeon_ib = type { i32*, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@R600_RING_TYPE_DMA_INDEX = common dso_local global i64 0, align 8
@R600_WB_DMA_RING_TEST_OFFSET = common dso_local global i32 0, align 4
@CAYMAN_WB_DMA1_RING_TEST_OFFSET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"radeon: failed to get ib (%d).\0A\00", align 1
@DMA_PACKET_WRITE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"radeon: failed to schedule ib (%d).\0A\00", align 1
@RADEON_USEC_IB_TEST_TIMEOUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"radeon: fence wait failed (%d).\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"radeon: fence wait timed out.\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [42 x i8] c"ib test on ring %d succeeded in %u usecs\0A\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"radeon: ib test failed (0x%08X)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @r600_dma_ib_test(%struct.radeon_device* %0, %struct.radeon_ring* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca %struct.radeon_ring*, align 8
  %6 = alloca %struct.radeon_ib, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %4, align 8
  store %struct.radeon_ring* %1, %struct.radeon_ring** %5, align 8
  store i32 0, i32* %10, align 4
  %12 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %13 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @R600_RING_TYPE_DMA_INDEX, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* @R600_WB_DMA_RING_TEST_OFFSET, align 4
  store i32 %18, i32* %8, align 4
  br label %21

19:                                               ; preds = %2
  %20 = load i32, i32* @CAYMAN_WB_DMA1_RING_TEST_OFFSET, align 4
  store i32 %20, i32* %8, align 4
  br label %21

21:                                               ; preds = %19, %17
  %22 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %23 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i32, i32* %8, align 4
  %27 = zext i32 %26 to i64
  %28 = add nsw i64 %25, %27
  store i64 %28, i64* %11, align 8
  %29 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %30 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %31 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @radeon_ib_get(%struct.radeon_device* %29, i64 %32, %struct.radeon_ib* %6, i32* null, i32 256)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %21
  %37 = load i32, i32* %9, align 4
  %38 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* %9, align 4
  store i32 %39, i32* %3, align 4
  br label %139

40:                                               ; preds = %21
  %41 = load i32, i32* @DMA_PACKET_WRITE, align 4
  %42 = call i32 @DMA_PACKET(i32 %41, i32 0, i32 0, i32 1)
  %43 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %6, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  store i32 %42, i32* %45, align 4
  %46 = load i64, i64* %11, align 8
  %47 = call i32 @lower_32_bits(i64 %46)
  %48 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %6, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 1
  store i32 %47, i32* %50, align 4
  %51 = load i64, i64* %11, align 8
  %52 = call i32 @upper_32_bits(i64 %51)
  %53 = and i32 %52, 255
  %54 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %6, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 2
  store i32 %53, i32* %56, align 4
  %57 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %6, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 3
  store i32 -559038737, i32* %59, align 4
  %60 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %6, i32 0, i32 1
  store i32 4, i32* %60, align 8
  %61 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %62 = call i32 @radeon_ib_schedule(%struct.radeon_device* %61, %struct.radeon_ib* %6, i32* null, i32 0)
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %9, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %40
  %66 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %67 = call i32 @radeon_ib_free(%struct.radeon_device* %66, %struct.radeon_ib* %6)
  %68 = load i32, i32* %9, align 4
  %69 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %68)
  %70 = load i32, i32* %9, align 4
  store i32 %70, i32* %3, align 4
  br label %139

71:                                               ; preds = %40
  %72 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %6, i32 0, i32 2
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = load i32, i32* @RADEON_USEC_IB_TEST_TIMEOUT, align 4
  %75 = call i32 @usecs_to_jiffies(i32 %74)
  %76 = call i32 @radeon_fence_wait_timeout(%struct.TYPE_4__* %73, i32 0, i32 %75)
  store i32 %76, i32* %9, align 4
  %77 = load i32, i32* %9, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %71
  %80 = load i32, i32* %9, align 4
  %81 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %80)
  %82 = load i32, i32* %9, align 4
  store i32 %82, i32* %3, align 4
  br label %139

83:                                               ; preds = %71
  %84 = load i32, i32* %9, align 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %83
  %87 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %88 = load i32, i32* @ETIMEDOUT, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %3, align 4
  br label %139

90:                                               ; preds = %83
  br label %91

91:                                               ; preds = %90
  store i32 0, i32* %9, align 4
  store i32 0, i32* %7, align 4
  br label %92

92:                                               ; preds = %114, %91
  %93 = load i32, i32* %7, align 4
  %94 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %95 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = icmp ult i32 %93, %96
  br i1 %97, label %98, label %117

98:                                               ; preds = %92
  %99 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %100 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* %8, align 4
  %104 = udiv i32 %103, 4
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %102, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @le32_to_cpu(i32 %107)
  store i32 %108, i32* %10, align 4
  %109 = load i32, i32* %10, align 4
  %110 = icmp eq i32 %109, -559038737
  br i1 %110, label %111, label %112

111:                                              ; preds = %98
  br label %117

112:                                              ; preds = %98
  %113 = call i32 @udelay(i32 1)
  br label %114

114:                                              ; preds = %112
  %115 = load i32, i32* %7, align 4
  %116 = add i32 %115, 1
  store i32 %116, i32* %7, align 4
  br label %92

117:                                              ; preds = %111, %92
  %118 = load i32, i32* %7, align 4
  %119 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %120 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = icmp ult i32 %118, %121
  br i1 %122, label %123, label %130

123:                                              ; preds = %117
  %124 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %6, i32 0, i32 2
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* %7, align 4
  %129 = call i32 @DRM_INFO(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i32 %127, i32 %128)
  br label %135

130:                                              ; preds = %117
  %131 = load i32, i32* %10, align 4
  %132 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i32 %131)
  %133 = load i32, i32* @EINVAL, align 4
  %134 = sub nsw i32 0, %133
  store i32 %134, i32* %9, align 4
  br label %135

135:                                              ; preds = %130, %123
  %136 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %137 = call i32 @radeon_ib_free(%struct.radeon_device* %136, %struct.radeon_ib* %6)
  %138 = load i32, i32* %9, align 4
  store i32 %138, i32* %3, align 4
  br label %139

139:                                              ; preds = %135, %86, %79, %65, %36
  %140 = load i32, i32* %3, align 4
  ret i32 %140
}

declare dso_local i32 @radeon_ib_get(%struct.radeon_device*, i64, %struct.radeon_ib*, i32*, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

declare dso_local i32 @DMA_PACKET(i32, i32, i32, i32) #1

declare dso_local i32 @lower_32_bits(i64) #1

declare dso_local i32 @upper_32_bits(i64) #1

declare dso_local i32 @radeon_ib_schedule(%struct.radeon_device*, %struct.radeon_ib*, i32*, i32) #1

declare dso_local i32 @radeon_ib_free(%struct.radeon_device*, %struct.radeon_ib*) #1

declare dso_local i32 @radeon_fence_wait_timeout(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @usecs_to_jiffies(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @DRM_INFO(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
