; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_sdma_v5_0.c_sdma_v5_0_ring_test_ib.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_sdma_v5_0.c_sdma_v5_0_ring_test_ib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ring = type { i32, %struct.amdgpu_device* }
%struct.amdgpu_device = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32*, i64 }
%struct.amdgpu_ib = type { i32*, i32 }
%struct.dma_fence = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"(%ld) failed to allocate wb slot\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"amdgpu: failed to get ib (%ld).\0A\00", align 1
@SDMA_OP_WRITE = common dso_local global i32 0, align 4
@SDMA_SUBOP_WRITE_LINEAR = common dso_local global i32 0, align 4
@SDMA_OP_NOP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"amdgpu: IB test timed out\0A\00", align 1
@ETIMEDOUT = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [34 x i8] c"amdgpu: fence wait failed (%ld).\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"ib test on ring %d succeeded\0A\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"amdgpu: ib test failed (0x%08X)\0A\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_ring*, i64)* @sdma_v5_0_ring_test_ib to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdma_v5_0_ring_test_ib(%struct.amdgpu_ring* %0, i64 %1) #0 {
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
  %14 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %13, i32 0, i32 1
  %15 = load %struct.amdgpu_device*, %struct.amdgpu_device** %14, align 8
  store %struct.amdgpu_device* %15, %struct.amdgpu_device** %6, align 8
  store %struct.dma_fence* null, %struct.dma_fence** %8, align 8
  store i32 0, i32* %11, align 4
  %16 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %17 = call i64 @amdgpu_device_wb_get(%struct.amdgpu_device* %16, i32* %9)
  store i64 %17, i64* %10, align 8
  %18 = load i64, i64* %10, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %2
  %21 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %22 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load i64, i64* %10, align 8
  %25 = call i32 @dev_err(i32 %23, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %24)
  %26 = load i64, i64* %10, align 8
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %3, align 4
  br label %155

28:                                               ; preds = %2
  %29 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %30 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i32, i32* %9, align 4
  %34 = mul i32 %33, 4
  %35 = zext i32 %34 to i64
  %36 = add nsw i64 %32, %35
  store i64 %36, i64* %12, align 8
  store i32 -889266515, i32* %11, align 4
  %37 = load i32, i32* %11, align 4
  %38 = call i32 @cpu_to_le32(i32 %37)
  %39 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %40 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %9, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  store i32 %38, i32* %45, align 4
  %46 = call i32 @memset(%struct.amdgpu_ib* %7, i32 0, i32 16)
  %47 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %48 = call i64 @amdgpu_ib_get(%struct.amdgpu_device* %47, i32* null, i32 256, %struct.amdgpu_ib* %7)
  store i64 %48, i64* %10, align 8
  %49 = load i64, i64* %10, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %28
  %52 = load i64, i64* %10, align 8
  %53 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i64 %52)
  br label %149

54:                                               ; preds = %28
  %55 = load i32, i32* @SDMA_OP_WRITE, align 4
  %56 = call i32 @SDMA_PKT_HEADER_OP(i32 %55)
  %57 = load i32, i32* @SDMA_SUBOP_WRITE_LINEAR, align 4
  %58 = call i32 @SDMA_PKT_HEADER_SUB_OP(i32 %57)
  %59 = or i32 %56, %58
  %60 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %7, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  store i32 %59, i32* %62, align 4
  %63 = load i64, i64* %12, align 8
  %64 = call i32 @lower_32_bits(i64 %63)
  %65 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %7, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 1
  store i32 %64, i32* %67, align 4
  %68 = load i64, i64* %12, align 8
  %69 = call i32 @upper_32_bits(i64 %68)
  %70 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %7, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 2
  store i32 %69, i32* %72, align 4
  %73 = call i32 @SDMA_PKT_WRITE_UNTILED_DW_3_COUNT(i32 0)
  %74 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %7, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 3
  store i32 %73, i32* %76, align 4
  %77 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %7, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 4
  store i32 -559038737, i32* %79, align 4
  %80 = load i32, i32* @SDMA_OP_NOP, align 4
  %81 = call i8* @SDMA_PKT_NOP_HEADER_OP(i32 %80)
  %82 = ptrtoint i8* %81 to i32
  %83 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %7, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 5
  store i32 %82, i32* %85, align 4
  %86 = load i32, i32* @SDMA_OP_NOP, align 4
  %87 = call i8* @SDMA_PKT_NOP_HEADER_OP(i32 %86)
  %88 = ptrtoint i8* %87 to i32
  %89 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %7, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 6
  store i32 %88, i32* %91, align 4
  %92 = load i32, i32* @SDMA_OP_NOP, align 4
  %93 = call i8* @SDMA_PKT_NOP_HEADER_OP(i32 %92)
  %94 = ptrtoint i8* %93 to i32
  %95 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %7, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 7
  store i32 %94, i32* %97, align 4
  %98 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %7, i32 0, i32 1
  store i32 8, i32* %98, align 8
  %99 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %100 = call i64 @amdgpu_ib_schedule(%struct.amdgpu_ring* %99, i32 1, %struct.amdgpu_ib* %7, i32* null, %struct.dma_fence** %8)
  store i64 %100, i64* %10, align 8
  %101 = load i64, i64* %10, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %54
  br label %144

104:                                              ; preds = %54
  %105 = load %struct.dma_fence*, %struct.dma_fence** %8, align 8
  %106 = load i64, i64* %5, align 8
  %107 = call i64 @dma_fence_wait_timeout(%struct.dma_fence* %105, i32 0, i64 %106)
  store i64 %107, i64* %10, align 8
  %108 = load i64, i64* %10, align 8
  %109 = icmp eq i64 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %104
  %111 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %112 = load i64, i64* @ETIMEDOUT, align 8
  %113 = sub nsw i64 0, %112
  store i64 %113, i64* %10, align 8
  br label %144

114:                                              ; preds = %104
  %115 = load i64, i64* %10, align 8
  %116 = icmp slt i64 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %114
  %118 = load i64, i64* %10, align 8
  %119 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i64 %118)
  br label %144

120:                                              ; preds = %114
  br label %121

121:                                              ; preds = %120
  %122 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %123 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 0
  %125 = load i32*, i32** %124, align 8
  %126 = load i32, i32* %9, align 4
  %127 = zext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @le32_to_cpu(i32 %129)
  store i32 %130, i32* %11, align 4
  %131 = load i32, i32* %11, align 4
  %132 = icmp eq i32 %131, -559038737
  br i1 %132, label %133, label %138

133:                                              ; preds = %121
  %134 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %135 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = call i32 @DRM_INFO(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %136)
  store i64 0, i64* %10, align 8
  br label %143

138:                                              ; preds = %121
  %139 = load i32, i32* %11, align 4
  %140 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i32 %139)
  %141 = load i64, i64* @EINVAL, align 8
  %142 = sub nsw i64 0, %141
  store i64 %142, i64* %10, align 8
  br label %143

143:                                              ; preds = %138, %133
  br label %144

144:                                              ; preds = %143, %117, %110, %103
  %145 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %146 = call i32 @amdgpu_ib_free(%struct.amdgpu_device* %145, %struct.amdgpu_ib* %7, i32* null)
  %147 = load %struct.dma_fence*, %struct.dma_fence** %8, align 8
  %148 = call i32 @dma_fence_put(%struct.dma_fence* %147)
  br label %149

149:                                              ; preds = %144, %51
  %150 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %151 = load i32, i32* %9, align 4
  %152 = call i32 @amdgpu_device_wb_free(%struct.amdgpu_device* %150, i32 %151)
  %153 = load i64, i64* %10, align 8
  %154 = trunc i64 %153 to i32
  store i32 %154, i32* %3, align 4
  br label %155

155:                                              ; preds = %149, %20
  %156 = load i32, i32* %3, align 4
  ret i32 %156
}

declare dso_local i64 @amdgpu_device_wb_get(%struct.amdgpu_device*, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i64) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @memset(%struct.amdgpu_ib*, i32, i32) #1

declare dso_local i64 @amdgpu_ib_get(%struct.amdgpu_device*, i32*, i32, %struct.amdgpu_ib*) #1

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

declare dso_local i32 @SDMA_PKT_HEADER_OP(i32) #1

declare dso_local i32 @SDMA_PKT_HEADER_SUB_OP(i32) #1

declare dso_local i32 @lower_32_bits(i64) #1

declare dso_local i32 @upper_32_bits(i64) #1

declare dso_local i32 @SDMA_PKT_WRITE_UNTILED_DW_3_COUNT(i32) #1

declare dso_local i8* @SDMA_PKT_NOP_HEADER_OP(i32) #1

declare dso_local i64 @amdgpu_ib_schedule(%struct.amdgpu_ring*, i32, %struct.amdgpu_ib*, i32*, %struct.dma_fence**) #1

declare dso_local i64 @dma_fence_wait_timeout(%struct.dma_fence*, i32, i64) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @DRM_INFO(i8*, i32) #1

declare dso_local i32 @amdgpu_ib_free(%struct.amdgpu_device*, %struct.amdgpu_ib*, i32*) #1

declare dso_local i32 @dma_fence_put(%struct.dma_fence*) #1

declare dso_local i32 @amdgpu_device_wb_free(%struct.amdgpu_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
