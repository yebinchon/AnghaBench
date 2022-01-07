; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_si_dma.c_si_dma_ring_test_ib.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_si_dma.c_si_dma_ring_test_ib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ring = type { %struct.amdgpu_device* }
%struct.amdgpu_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i64 }
%struct.amdgpu_ib = type { i32*, i32 }
%struct.dma_fence = type { i32 }

@DMA_PACKET_WRITE = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_ring*, i64)* @si_dma_ring_test_ib to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si_dma_ring_test_ib(%struct.amdgpu_ring* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.amdgpu_ring*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.amdgpu_device*, align 8
  %7 = alloca %struct.amdgpu_ib, align 8
  %8 = alloca %struct.dma_fence*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.amdgpu_ring* %0, %struct.amdgpu_ring** %4, align 8
  store i64 %1, i64* %5, align 8
  %13 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %14 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %13, i32 0, i32 0
  %15 = load %struct.amdgpu_device*, %struct.amdgpu_device** %14, align 8
  store %struct.amdgpu_device* %15, %struct.amdgpu_device** %6, align 8
  store %struct.dma_fence* null, %struct.dma_fence** %8, align 8
  store i32 0, i32* %10, align 4
  %16 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %17 = call i64 @amdgpu_device_wb_get(%struct.amdgpu_device* %16, i32* %9)
  store i64 %17, i64* %12, align 8
  %18 = load i64, i64* %12, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i64, i64* %12, align 8
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %3, align 4
  br label %115

23:                                               ; preds = %2
  %24 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %25 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i32, i32* %9, align 4
  %29 = mul i32 %28, 4
  %30 = zext i32 %29 to i64
  %31 = add nsw i64 %27, %30
  store i64 %31, i64* %11, align 8
  store i32 -889266515, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = call i32 @cpu_to_le32(i32 %32)
  %34 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %35 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %9, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  store i32 %33, i32* %40, align 4
  %41 = call i32 @memset(%struct.amdgpu_ib* %7, i32 0, i32 16)
  %42 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %43 = call i64 @amdgpu_ib_get(%struct.amdgpu_device* %42, i32* null, i32 256, %struct.amdgpu_ib* %7)
  store i64 %43, i64* %12, align 8
  %44 = load i64, i64* %12, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %23
  br label %109

47:                                               ; preds = %23
  %48 = load i32, i32* @DMA_PACKET_WRITE, align 4
  %49 = call i32 @DMA_PACKET(i32 %48, i32 0, i32 0, i32 0, i32 1)
  %50 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %7, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  store i32 %49, i32* %52, align 4
  %53 = load i64, i64* %11, align 8
  %54 = call i32 @lower_32_bits(i64 %53)
  %55 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %7, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 1
  store i32 %54, i32* %57, align 4
  %58 = load i64, i64* %11, align 8
  %59 = call i32 @upper_32_bits(i64 %58)
  %60 = and i32 %59, 255
  %61 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %7, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 2
  store i32 %60, i32* %63, align 4
  %64 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %7, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 3
  store i32 -559038737, i32* %66, align 4
  %67 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %7, i32 0, i32 1
  store i32 4, i32* %67, align 8
  %68 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %69 = call i64 @amdgpu_ib_schedule(%struct.amdgpu_ring* %68, i32 1, %struct.amdgpu_ib* %7, i32* null, %struct.dma_fence** %8)
  store i64 %69, i64* %12, align 8
  %70 = load i64, i64* %12, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %47
  br label %104

73:                                               ; preds = %47
  %74 = load %struct.dma_fence*, %struct.dma_fence** %8, align 8
  %75 = load i64, i64* %5, align 8
  %76 = call i64 @dma_fence_wait_timeout(%struct.dma_fence* %74, i32 0, i64 %75)
  store i64 %76, i64* %12, align 8
  %77 = load i64, i64* %12, align 8
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %73
  %80 = load i64, i64* @ETIMEDOUT, align 8
  %81 = sub nsw i64 0, %80
  store i64 %81, i64* %12, align 8
  br label %104

82:                                               ; preds = %73
  %83 = load i64, i64* %12, align 8
  %84 = icmp slt i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %82
  br label %104

86:                                               ; preds = %82
  br label %87

87:                                               ; preds = %86
  %88 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %89 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* %9, align 4
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @le32_to_cpu(i32 %95)
  store i32 %96, i32* %10, align 4
  %97 = load i32, i32* %10, align 4
  %98 = icmp eq i32 %97, -559038737
  br i1 %98, label %99, label %100

99:                                               ; preds = %87
  store i64 0, i64* %12, align 8
  br label %103

100:                                              ; preds = %87
  %101 = load i64, i64* @EINVAL, align 8
  %102 = sub nsw i64 0, %101
  store i64 %102, i64* %12, align 8
  br label %103

103:                                              ; preds = %100, %99
  br label %104

104:                                              ; preds = %103, %85, %79, %72
  %105 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %106 = call i32 @amdgpu_ib_free(%struct.amdgpu_device* %105, %struct.amdgpu_ib* %7, i32* null)
  %107 = load %struct.dma_fence*, %struct.dma_fence** %8, align 8
  %108 = call i32 @dma_fence_put(%struct.dma_fence* %107)
  br label %109

109:                                              ; preds = %104, %46
  %110 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %111 = load i32, i32* %9, align 4
  %112 = call i32 @amdgpu_device_wb_free(%struct.amdgpu_device* %110, i32 %111)
  %113 = load i64, i64* %12, align 8
  %114 = trunc i64 %113 to i32
  store i32 %114, i32* %3, align 4
  br label %115

115:                                              ; preds = %109, %20
  %116 = load i32, i32* %3, align 4
  ret i32 %116
}

declare dso_local i64 @amdgpu_device_wb_get(%struct.amdgpu_device*, i32*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @memset(%struct.amdgpu_ib*, i32, i32) #1

declare dso_local i64 @amdgpu_ib_get(%struct.amdgpu_device*, i32*, i32, %struct.amdgpu_ib*) #1

declare dso_local i32 @DMA_PACKET(i32, i32, i32, i32, i32) #1

declare dso_local i32 @lower_32_bits(i64) #1

declare dso_local i32 @upper_32_bits(i64) #1

declare dso_local i64 @amdgpu_ib_schedule(%struct.amdgpu_ring*, i32, %struct.amdgpu_ib*, i32*, %struct.dma_fence**) #1

declare dso_local i64 @dma_fence_wait_timeout(%struct.dma_fence*, i32, i64) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @amdgpu_ib_free(%struct.amdgpu_device*, %struct.amdgpu_ib*, i32*) #1

declare dso_local i32 @dma_fence_put(%struct.dma_fence*) #1

declare dso_local i32 @amdgpu_device_wb_free(%struct.amdgpu_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
