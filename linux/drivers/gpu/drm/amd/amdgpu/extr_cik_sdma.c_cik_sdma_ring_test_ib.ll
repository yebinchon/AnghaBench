; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_cik_sdma.c_cik_sdma_ring_test_ib.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_cik_sdma.c_cik_sdma_ring_test_ib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ring = type { %struct.amdgpu_device* }
%struct.amdgpu_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i64 }
%struct.amdgpu_ib = type { i32*, i32 }
%struct.dma_fence = type { i32 }

@SDMA_OPCODE_WRITE = common dso_local global i32 0, align 4
@SDMA_WRITE_SUB_OPCODE_LINEAR = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_ring*, i64)* @cik_sdma_ring_test_ib to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cik_sdma_ring_test_ib(%struct.amdgpu_ring* %0, i64 %1) #0 {
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
  br label %118

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
  br label %112

47:                                               ; preds = %23
  %48 = load i32, i32* @SDMA_OPCODE_WRITE, align 4
  %49 = load i32, i32* @SDMA_WRITE_SUB_OPCODE_LINEAR, align 4
  %50 = call i32 @SDMA_PACKET(i32 %48, i32 %49, i32 0)
  %51 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %7, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  store i32 %50, i32* %53, align 4
  %54 = load i64, i64* %11, align 8
  %55 = call i32 @lower_32_bits(i64 %54)
  %56 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %7, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 1
  store i32 %55, i32* %58, align 4
  %59 = load i64, i64* %11, align 8
  %60 = call i32 @upper_32_bits(i64 %59)
  %61 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %7, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 2
  store i32 %60, i32* %63, align 4
  %64 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %7, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 3
  store i32 1, i32* %66, align 4
  %67 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %7, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 4
  store i32 -559038737, i32* %69, align 4
  %70 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %7, i32 0, i32 1
  store i32 5, i32* %70, align 8
  %71 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %72 = call i64 @amdgpu_ib_schedule(%struct.amdgpu_ring* %71, i32 1, %struct.amdgpu_ib* %7, i32* null, %struct.dma_fence** %8)
  store i64 %72, i64* %12, align 8
  %73 = load i64, i64* %12, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %47
  br label %107

76:                                               ; preds = %47
  %77 = load %struct.dma_fence*, %struct.dma_fence** %8, align 8
  %78 = load i64, i64* %5, align 8
  %79 = call i64 @dma_fence_wait_timeout(%struct.dma_fence* %77, i32 0, i64 %78)
  store i64 %79, i64* %12, align 8
  %80 = load i64, i64* %12, align 8
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %76
  %83 = load i64, i64* @ETIMEDOUT, align 8
  %84 = sub nsw i64 0, %83
  store i64 %84, i64* %12, align 8
  br label %107

85:                                               ; preds = %76
  %86 = load i64, i64* %12, align 8
  %87 = icmp slt i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %85
  br label %107

89:                                               ; preds = %85
  br label %90

90:                                               ; preds = %89
  %91 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %92 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = load i32, i32* %9, align 4
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @le32_to_cpu(i32 %98)
  store i32 %99, i32* %10, align 4
  %100 = load i32, i32* %10, align 4
  %101 = icmp eq i32 %100, -559038737
  br i1 %101, label %102, label %103

102:                                              ; preds = %90
  store i64 0, i64* %12, align 8
  br label %106

103:                                              ; preds = %90
  %104 = load i64, i64* @EINVAL, align 8
  %105 = sub nsw i64 0, %104
  store i64 %105, i64* %12, align 8
  br label %106

106:                                              ; preds = %103, %102
  br label %107

107:                                              ; preds = %106, %88, %82, %75
  %108 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %109 = call i32 @amdgpu_ib_free(%struct.amdgpu_device* %108, %struct.amdgpu_ib* %7, i32* null)
  %110 = load %struct.dma_fence*, %struct.dma_fence** %8, align 8
  %111 = call i32 @dma_fence_put(%struct.dma_fence* %110)
  br label %112

112:                                              ; preds = %107, %46
  %113 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %114 = load i32, i32* %9, align 4
  %115 = call i32 @amdgpu_device_wb_free(%struct.amdgpu_device* %113, i32 %114)
  %116 = load i64, i64* %12, align 8
  %117 = trunc i64 %116 to i32
  store i32 %117, i32* %3, align 4
  br label %118

118:                                              ; preds = %112, %20
  %119 = load i32, i32* %3, align 4
  ret i32 %119
}

declare dso_local i64 @amdgpu_device_wb_get(%struct.amdgpu_device*, i32*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @memset(%struct.amdgpu_ib*, i32, i32) #1

declare dso_local i64 @amdgpu_ib_get(%struct.amdgpu_device*, i32*, i32, %struct.amdgpu_ib*) #1

declare dso_local i32 @SDMA_PACKET(i32, i32, i32) #1

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
