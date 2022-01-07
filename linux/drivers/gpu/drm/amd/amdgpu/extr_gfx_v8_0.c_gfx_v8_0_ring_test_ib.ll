; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v8_0.c_gfx_v8_0_ring_test_ib.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v8_0.c_gfx_v8_0_ring_test_ib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ring = type { %struct.amdgpu_device* }
%struct.amdgpu_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i64 }
%struct.amdgpu_ib = type { i32*, i32 }
%struct.dma_fence = type { i32 }

@PACKET3_WRITE_DATA = common dso_local global i32 0, align 4
@WR_CONFIRM = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_ring*, i64)* @gfx_v8_0_ring_test_ib to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfx_v8_0_ring_test_ib(%struct.amdgpu_ring* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.amdgpu_ring*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.amdgpu_device*, align 8
  %7 = alloca %struct.amdgpu_ib, align 8
  %8 = alloca %struct.dma_fence*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.amdgpu_ring* %0, %struct.amdgpu_ring** %4, align 8
  store i64 %1, i64* %5, align 8
  %13 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %14 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %13, i32 0, i32 0
  %15 = load %struct.amdgpu_device*, %struct.amdgpu_device** %14, align 8
  store %struct.amdgpu_device* %15, %struct.amdgpu_device** %6, align 8
  store %struct.dma_fence* null, %struct.dma_fence** %8, align 8
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
  store i64 %31, i64* %10, align 8
  %32 = call i32 @cpu_to_le32(i32 -889266515)
  %33 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %34 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %9, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  store i32 %32, i32* %39, align 4
  %40 = call i32 @memset(%struct.amdgpu_ib* %7, i32 0, i32 16)
  %41 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %42 = call i64 @amdgpu_ib_get(%struct.amdgpu_device* %41, i32* null, i32 16, %struct.amdgpu_ib* %7)
  store i64 %42, i64* %12, align 8
  %43 = load i64, i64* %12, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %23
  br label %112

46:                                               ; preds = %23
  %47 = load i32, i32* @PACKET3_WRITE_DATA, align 4
  %48 = call i32 @PACKET3(i32 %47, i32 3)
  %49 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %7, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  store i32 %48, i32* %51, align 4
  %52 = call i32 @WRITE_DATA_DST_SEL(i32 5)
  %53 = load i32, i32* @WR_CONFIRM, align 4
  %54 = or i32 %52, %53
  %55 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %7, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 1
  store i32 %54, i32* %57, align 4
  %58 = load i64, i64* %10, align 8
  %59 = call i32 @lower_32_bits(i64 %58)
  %60 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %7, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 2
  store i32 %59, i32* %62, align 4
  %63 = load i64, i64* %10, align 8
  %64 = call i32 @upper_32_bits(i64 %63)
  %65 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %7, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 3
  store i32 %64, i32* %67, align 4
  %68 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %7, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 4
  store i32 -559038737, i32* %70, align 4
  %71 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %7, i32 0, i32 1
  store i32 5, i32* %71, align 8
  %72 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %73 = call i64 @amdgpu_ib_schedule(%struct.amdgpu_ring* %72, i32 1, %struct.amdgpu_ib* %7, i32* null, %struct.dma_fence** %8)
  store i64 %73, i64* %12, align 8
  %74 = load i64, i64* %12, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %46
  br label %107

77:                                               ; preds = %46
  %78 = load %struct.dma_fence*, %struct.dma_fence** %8, align 8
  %79 = load i64, i64* %5, align 8
  %80 = call i64 @dma_fence_wait_timeout(%struct.dma_fence* %78, i32 0, i64 %79)
  store i64 %80, i64* %12, align 8
  %81 = load i64, i64* %12, align 8
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %77
  %84 = load i64, i64* @ETIMEDOUT, align 8
  %85 = sub nsw i64 0, %84
  store i64 %85, i64* %12, align 8
  br label %107

86:                                               ; preds = %77
  %87 = load i64, i64* %12, align 8
  %88 = icmp slt i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %86
  br label %107

90:                                               ; preds = %86
  br label %91

91:                                               ; preds = %90
  %92 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %93 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = load i32, i32* %9, align 4
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = load i32, i32* %98, align 4
  store i32 %99, i32* %11, align 4
  %100 = load i32, i32* %11, align 4
  %101 = icmp eq i32 %100, -559038737
  br i1 %101, label %102, label %103

102:                                              ; preds = %91
  store i64 0, i64* %12, align 8
  br label %106

103:                                              ; preds = %91
  %104 = load i64, i64* @EINVAL, align 8
  %105 = sub nsw i64 0, %104
  store i64 %105, i64* %12, align 8
  br label %106

106:                                              ; preds = %103, %102
  br label %107

107:                                              ; preds = %106, %89, %83, %76
  %108 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %109 = call i32 @amdgpu_ib_free(%struct.amdgpu_device* %108, %struct.amdgpu_ib* %7, i32* null)
  %110 = load %struct.dma_fence*, %struct.dma_fence** %8, align 8
  %111 = call i32 @dma_fence_put(%struct.dma_fence* %110)
  br label %112

112:                                              ; preds = %107, %45
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

declare dso_local i32 @PACKET3(i32, i32) #1

declare dso_local i32 @WRITE_DATA_DST_SEL(i32) #1

declare dso_local i32 @lower_32_bits(i64) #1

declare dso_local i32 @upper_32_bits(i64) #1

declare dso_local i64 @amdgpu_ib_schedule(%struct.amdgpu_ring*, i32, %struct.amdgpu_ib*, i32*, %struct.dma_fence**) #1

declare dso_local i64 @dma_fence_wait_timeout(%struct.dma_fence*, i32, i64) #1

declare dso_local i32 @amdgpu_ib_free(%struct.amdgpu_device*, %struct.amdgpu_ib*, i32*) #1

declare dso_local i32 @dma_fence_put(%struct.dma_fence*) #1

declare dso_local i32 @amdgpu_device_wb_free(%struct.amdgpu_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
