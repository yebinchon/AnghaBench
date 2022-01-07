; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v10_0.c_gfx_v10_0_ring_test_ib.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v10_0.c_gfx_v10_0_ring_test_ib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ring = type { i32, %struct.amdgpu_device* }
%struct.amdgpu_device = type { i32 }
%struct.amdgpu_ib = type { i32*, i32 }
%struct.dma_fence = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"amdgpu: failed to get scratch reg (%ld).\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"amdgpu: failed to get ib (%ld).\0A\00", align 1
@PACKET3_SET_UCONFIG_REG = common dso_local global i32 0, align 4
@PACKET3_SET_UCONFIG_REG_START = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"amdgpu: IB test timed out.\0A\00", align 1
@ETIMEDOUT = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [34 x i8] c"amdgpu: fence wait failed (%ld).\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"ib test on ring %d succeeded\0A\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"amdgpu: ib test failed (scratch(0x%04X)=0x%08X)\0A\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_ring*, i64)* @gfx_v10_0_ring_test_ib to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfx_v10_0_ring_test_ib(%struct.amdgpu_ring* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.amdgpu_ring*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.amdgpu_device*, align 8
  %7 = alloca %struct.amdgpu_ib, align 8
  %8 = alloca %struct.dma_fence*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.amdgpu_ring* %0, %struct.amdgpu_ring** %4, align 8
  store i64 %1, i64* %5, align 8
  %12 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %13 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %12, i32 0, i32 1
  %14 = load %struct.amdgpu_device*, %struct.amdgpu_device** %13, align 8
  store %struct.amdgpu_device* %14, %struct.amdgpu_device** %6, align 8
  store %struct.dma_fence* null, %struct.dma_fence** %8, align 8
  store i32 0, i32* %10, align 4
  %15 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %16 = call i64 @amdgpu_gfx_scratch_get(%struct.amdgpu_device* %15, i32* %9)
  store i64 %16, i64* %11, align 8
  %17 = load i64, i64* %11, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %2
  %20 = load i64, i64* %11, align 8
  %21 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i64 %20)
  %22 = load i64, i64* %11, align 8
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %3, align 4
  br label %101

24:                                               ; preds = %2
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @WREG32(i32 %25, i32 -889266515)
  %27 = call i32 @memset(%struct.amdgpu_ib* %7, i32 0, i32 16)
  %28 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %29 = call i64 @amdgpu_ib_get(%struct.amdgpu_device* %28, i32* null, i32 256, %struct.amdgpu_ib* %7)
  store i64 %29, i64* %11, align 8
  %30 = load i64, i64* %11, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %24
  %33 = load i64, i64* %11, align 8
  %34 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i64 %33)
  br label %95

35:                                               ; preds = %24
  %36 = load i32, i32* @PACKET3_SET_UCONFIG_REG, align 4
  %37 = call i32 @PACKET3(i32 %36, i32 1)
  %38 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %7, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  store i32 %37, i32* %40, align 4
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* @PACKET3_SET_UCONFIG_REG_START, align 4
  %43 = sub nsw i32 %41, %42
  %44 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %7, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 1
  store i32 %43, i32* %46, align 4
  %47 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %7, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 2
  store i32 -559038737, i32* %49, align 4
  %50 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %7, i32 0, i32 1
  store i32 3, i32* %50, align 8
  %51 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %52 = call i64 @amdgpu_ib_schedule(%struct.amdgpu_ring* %51, i32 1, %struct.amdgpu_ib* %7, i32* null, %struct.dma_fence** %8)
  store i64 %52, i64* %11, align 8
  %53 = load i64, i64* %11, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %35
  br label %90

56:                                               ; preds = %35
  %57 = load %struct.dma_fence*, %struct.dma_fence** %8, align 8
  %58 = load i64, i64* %5, align 8
  %59 = call i64 @dma_fence_wait_timeout(%struct.dma_fence* %57, i32 0, i64 %58)
  store i64 %59, i64* %11, align 8
  %60 = load i64, i64* %11, align 8
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %56
  %63 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %64 = load i64, i64* @ETIMEDOUT, align 8
  %65 = sub nsw i64 0, %64
  store i64 %65, i64* %11, align 8
  br label %90

66:                                               ; preds = %56
  %67 = load i64, i64* %11, align 8
  %68 = icmp slt i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = load i64, i64* %11, align 8
  %71 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i64 %70)
  br label %90

72:                                               ; preds = %66
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %9, align 4
  %75 = call i32 @RREG32(i32 %74)
  store i32 %75, i32* %10, align 4
  %76 = load i32, i32* %10, align 4
  %77 = icmp eq i32 %76, -559038737
  br i1 %77, label %78, label %83

78:                                               ; preds = %73
  %79 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %80 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @DRM_INFO(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %81)
  store i64 0, i64* %11, align 8
  br label %89

83:                                               ; preds = %73
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* %10, align 4
  %86 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0), i32 %84, i32 %85)
  %87 = load i64, i64* @EINVAL, align 8
  %88 = sub nsw i64 0, %87
  store i64 %88, i64* %11, align 8
  br label %89

89:                                               ; preds = %83, %78
  br label %90

90:                                               ; preds = %89, %69, %62, %55
  %91 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %92 = call i32 @amdgpu_ib_free(%struct.amdgpu_device* %91, %struct.amdgpu_ib* %7, i32* null)
  %93 = load %struct.dma_fence*, %struct.dma_fence** %8, align 8
  %94 = call i32 @dma_fence_put(%struct.dma_fence* %93)
  br label %95

95:                                               ; preds = %90, %32
  %96 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %97 = load i32, i32* %9, align 4
  %98 = call i32 @amdgpu_gfx_scratch_free(%struct.amdgpu_device* %96, i32 %97)
  %99 = load i64, i64* %11, align 8
  %100 = trunc i64 %99 to i32
  store i32 %100, i32* %3, align 4
  br label %101

101:                                              ; preds = %95, %19
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local i64 @amdgpu_gfx_scratch_get(%struct.amdgpu_device*, i32*) #1

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @memset(%struct.amdgpu_ib*, i32, i32) #1

declare dso_local i64 @amdgpu_ib_get(%struct.amdgpu_device*, i32*, i32, %struct.amdgpu_ib*) #1

declare dso_local i32 @PACKET3(i32, i32) #1

declare dso_local i64 @amdgpu_ib_schedule(%struct.amdgpu_ring*, i32, %struct.amdgpu_ib*, i32*, %struct.dma_fence**) #1

declare dso_local i64 @dma_fence_wait_timeout(%struct.dma_fence*, i32, i64) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @DRM_INFO(i8*, i32) #1

declare dso_local i32 @amdgpu_ib_free(%struct.amdgpu_device*, %struct.amdgpu_ib*, i32*) #1

declare dso_local i32 @dma_fence_put(%struct.dma_fence*) #1

declare dso_local i32 @amdgpu_gfx_scratch_free(%struct.amdgpu_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
