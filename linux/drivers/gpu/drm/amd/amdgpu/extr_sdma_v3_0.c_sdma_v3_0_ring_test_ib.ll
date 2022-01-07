; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_sdma_v3_0.c_sdma_v3_0_ring_test_ib.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_sdma_v3_0.c_sdma_v3_0_ring_test_ib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ring = type { %struct.amdgpu_device* }
%struct.amdgpu_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i64 }
%struct.amdgpu_ib = type { i32*, i32 }
%struct.dma_fence = type { i32 }

@SDMA_OP_WRITE = common dso_local global i32 0, align 4
@SDMA_SUBOP_WRITE_LINEAR = common dso_local global i32 0, align 4
@SDMA_OP_NOP = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_ring*, i64)* @sdma_v3_0_ring_test_ib to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdma_v3_0_ring_test_ib(%struct.amdgpu_ring* %0, i64 %1) #0 {
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
  br label %139

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
  br label %133

47:                                               ; preds = %23
  %48 = load i32, i32* @SDMA_OP_WRITE, align 4
  %49 = call i32 @SDMA_PKT_HEADER_OP(i32 %48)
  %50 = load i32, i32* @SDMA_SUBOP_WRITE_LINEAR, align 4
  %51 = call i32 @SDMA_PKT_HEADER_SUB_OP(i32 %50)
  %52 = or i32 %49, %51
  %53 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %7, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  store i32 %52, i32* %55, align 4
  %56 = load i64, i64* %11, align 8
  %57 = call i32 @lower_32_bits(i64 %56)
  %58 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %7, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 1
  store i32 %57, i32* %60, align 4
  %61 = load i64, i64* %11, align 8
  %62 = call i32 @upper_32_bits(i64 %61)
  %63 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %7, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 2
  store i32 %62, i32* %65, align 4
  %66 = call i32 @SDMA_PKT_WRITE_UNTILED_DW_3_COUNT(i32 1)
  %67 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %7, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 3
  store i32 %66, i32* %69, align 4
  %70 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %7, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 4
  store i32 -559038737, i32* %72, align 4
  %73 = load i32, i32* @SDMA_OP_NOP, align 4
  %74 = call i8* @SDMA_PKT_NOP_HEADER_OP(i32 %73)
  %75 = ptrtoint i8* %74 to i32
  %76 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %7, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 5
  store i32 %75, i32* %78, align 4
  %79 = load i32, i32* @SDMA_OP_NOP, align 4
  %80 = call i8* @SDMA_PKT_NOP_HEADER_OP(i32 %79)
  %81 = ptrtoint i8* %80 to i32
  %82 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %7, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 6
  store i32 %81, i32* %84, align 4
  %85 = load i32, i32* @SDMA_OP_NOP, align 4
  %86 = call i8* @SDMA_PKT_NOP_HEADER_OP(i32 %85)
  %87 = ptrtoint i8* %86 to i32
  %88 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %7, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 7
  store i32 %87, i32* %90, align 4
  %91 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %7, i32 0, i32 1
  store i32 8, i32* %91, align 8
  %92 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %93 = call i64 @amdgpu_ib_schedule(%struct.amdgpu_ring* %92, i32 1, %struct.amdgpu_ib* %7, i32* null, %struct.dma_fence** %8)
  store i64 %93, i64* %12, align 8
  %94 = load i64, i64* %12, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %47
  br label %128

97:                                               ; preds = %47
  %98 = load %struct.dma_fence*, %struct.dma_fence** %8, align 8
  %99 = load i64, i64* %5, align 8
  %100 = call i64 @dma_fence_wait_timeout(%struct.dma_fence* %98, i32 0, i64 %99)
  store i64 %100, i64* %12, align 8
  %101 = load i64, i64* %12, align 8
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %97
  %104 = load i64, i64* @ETIMEDOUT, align 8
  %105 = sub nsw i64 0, %104
  store i64 %105, i64* %12, align 8
  br label %128

106:                                              ; preds = %97
  %107 = load i64, i64* %12, align 8
  %108 = icmp slt i64 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %106
  br label %128

110:                                              ; preds = %106
  br label %111

111:                                              ; preds = %110
  %112 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %113 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = load i32, i32* %9, align 4
  %117 = zext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @le32_to_cpu(i32 %119)
  store i32 %120, i32* %10, align 4
  %121 = load i32, i32* %10, align 4
  %122 = icmp eq i32 %121, -559038737
  br i1 %122, label %123, label %124

123:                                              ; preds = %111
  store i64 0, i64* %12, align 8
  br label %127

124:                                              ; preds = %111
  %125 = load i64, i64* @EINVAL, align 8
  %126 = sub nsw i64 0, %125
  store i64 %126, i64* %12, align 8
  br label %127

127:                                              ; preds = %124, %123
  br label %128

128:                                              ; preds = %127, %109, %103, %96
  %129 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %130 = call i32 @amdgpu_ib_free(%struct.amdgpu_device* %129, %struct.amdgpu_ib* %7, i32* null)
  %131 = load %struct.dma_fence*, %struct.dma_fence** %8, align 8
  %132 = call i32 @dma_fence_put(%struct.dma_fence* %131)
  br label %133

133:                                              ; preds = %128, %46
  %134 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %135 = load i32, i32* %9, align 4
  %136 = call i32 @amdgpu_device_wb_free(%struct.amdgpu_device* %134, i32 %135)
  %137 = load i64, i64* %12, align 8
  %138 = trunc i64 %137 to i32
  store i32 %138, i32* %3, align 4
  br label %139

139:                                              ; preds = %133, %20
  %140 = load i32, i32* %3, align 4
  ret i32 %140
}

declare dso_local i64 @amdgpu_device_wb_get(%struct.amdgpu_device*, i32*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @memset(%struct.amdgpu_ib*, i32, i32) #1

declare dso_local i64 @amdgpu_ib_get(%struct.amdgpu_device*, i32*, i32, %struct.amdgpu_ib*) #1

declare dso_local i32 @SDMA_PKT_HEADER_OP(i32) #1

declare dso_local i32 @SDMA_PKT_HEADER_SUB_OP(i32) #1

declare dso_local i32 @lower_32_bits(i64) #1

declare dso_local i32 @upper_32_bits(i64) #1

declare dso_local i32 @SDMA_PKT_WRITE_UNTILED_DW_3_COUNT(i32) #1

declare dso_local i8* @SDMA_PKT_NOP_HEADER_OP(i32) #1

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
