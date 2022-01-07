; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r600_dma.c_r600_dma_ring_test.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r600_dma.c_r600_dma_ring_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i64 }
%struct.radeon_ring = type { i64 }

@R600_RING_TYPE_DMA_INDEX = common dso_local global i64 0, align 8
@R600_WB_DMA_RING_TEST_OFFSET = common dso_local global i32 0, align 4
@CAYMAN_WB_DMA1_RING_TEST_OFFSET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"radeon: dma failed to lock ring %d (%d).\0A\00", align 1
@DMA_PACKET_WRITE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"ring test on %d succeeded in %d usecs\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"radeon: ring %d test failed (0x%08X)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @r600_dma_ring_test(%struct.radeon_device* %0, %struct.radeon_ring* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca %struct.radeon_ring*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %4, align 8
  store %struct.radeon_ring* %1, %struct.radeon_ring** %5, align 8
  %11 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %12 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @R600_RING_TYPE_DMA_INDEX, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @R600_WB_DMA_RING_TEST_OFFSET, align 4
  store i32 %17, i32* %8, align 4
  br label %20

18:                                               ; preds = %2
  %19 = load i32, i32* @CAYMAN_WB_DMA1_RING_TEST_OFFSET, align 4
  store i32 %19, i32* %8, align 4
  br label %20

20:                                               ; preds = %18, %16
  %21 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %22 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i32, i32* %8, align 4
  %26 = zext i32 %25 to i64
  %27 = add nsw i64 %24, %26
  store i64 %27, i64* %10, align 8
  store i32 -889266515, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @cpu_to_le32(i32 %28)
  %30 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %31 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %8, align 4
  %35 = udiv i32 %34, 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %33, i64 %36
  store i32 %29, i32* %37, align 4
  %38 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %39 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %40 = call i32 @radeon_ring_lock(%struct.radeon_device* %38, %struct.radeon_ring* %39, i32 4)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %20
  %44 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %45 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i64 %46, i32 %47)
  %49 = load i32, i32* %7, align 4
  store i32 %49, i32* %3, align 4
  br label %116

50:                                               ; preds = %20
  %51 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %52 = load i32, i32* @DMA_PACKET_WRITE, align 4
  %53 = call i32 @DMA_PACKET(i32 %52, i32 0, i32 0, i32 1)
  %54 = call i32 @radeon_ring_write(%struct.radeon_ring* %51, i32 %53)
  %55 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %56 = load i64, i64* %10, align 8
  %57 = call i32 @lower_32_bits(i64 %56)
  %58 = call i32 @radeon_ring_write(%struct.radeon_ring* %55, i32 %57)
  %59 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %60 = load i64, i64* %10, align 8
  %61 = call i32 @upper_32_bits(i64 %60)
  %62 = and i32 %61, 255
  %63 = call i32 @radeon_ring_write(%struct.radeon_ring* %59, i32 %62)
  %64 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %65 = call i32 @radeon_ring_write(%struct.radeon_ring* %64, i32 -559038737)
  %66 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %67 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %68 = call i32 @radeon_ring_unlock_commit(%struct.radeon_device* %66, %struct.radeon_ring* %67, i32 0)
  store i32 0, i32* %6, align 4
  br label %69

69:                                               ; preds = %91, %50
  %70 = load i32, i32* %6, align 4
  %71 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %72 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp ult i32 %70, %73
  br i1 %74, label %75, label %94

75:                                               ; preds = %69
  %76 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %77 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %8, align 4
  %81 = udiv i32 %80, 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %79, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @le32_to_cpu(i32 %84)
  store i32 %85, i32* %9, align 4
  %86 = load i32, i32* %9, align 4
  %87 = icmp eq i32 %86, -559038737
  br i1 %87, label %88, label %89

88:                                               ; preds = %75
  br label %94

89:                                               ; preds = %75
  %90 = call i32 @udelay(i32 1)
  br label %91

91:                                               ; preds = %89
  %92 = load i32, i32* %6, align 4
  %93 = add i32 %92, 1
  store i32 %93, i32* %6, align 4
  br label %69

94:                                               ; preds = %88, %69
  %95 = load i32, i32* %6, align 4
  %96 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %97 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = icmp ult i32 %95, %98
  br i1 %99, label %100, label %106

100:                                              ; preds = %94
  %101 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %102 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i32, i32* %6, align 4
  %105 = call i32 @DRM_INFO(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i64 %103, i32 %104)
  br label %114

106:                                              ; preds = %94
  %107 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %108 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i32, i32* %9, align 4
  %111 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i64 %109, i32 %110)
  %112 = load i32, i32* @EINVAL, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %7, align 4
  br label %114

114:                                              ; preds = %106, %100
  %115 = load i32, i32* %7, align 4
  store i32 %115, i32* %3, align 4
  br label %116

116:                                              ; preds = %114, %43
  %117 = load i32, i32* %3, align 4
  ret i32 %117
}

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @radeon_ring_lock(%struct.radeon_device*, %struct.radeon_ring*, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i64, i32) #1

declare dso_local i32 @radeon_ring_write(%struct.radeon_ring*, i32) #1

declare dso_local i32 @DMA_PACKET(i32, i32, i32, i32) #1

declare dso_local i32 @lower_32_bits(i64) #1

declare dso_local i32 @upper_32_bits(i64) #1

declare dso_local i32 @radeon_ring_unlock_commit(%struct.radeon_device*, %struct.radeon_ring*, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @DRM_INFO(i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
