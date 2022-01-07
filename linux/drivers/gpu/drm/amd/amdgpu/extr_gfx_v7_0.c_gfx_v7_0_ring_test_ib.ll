; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v7_0.c_gfx_v7_0_ring_test_ib.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v7_0.c_gfx_v7_0_ring_test_ib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ring = type { %struct.amdgpu_device* }
%struct.amdgpu_device = type { i32 }
%struct.amdgpu_ib = type { i32*, i32 }
%struct.dma_fence = type { i32 }

@PACKET3_SET_UCONFIG_REG = common dso_local global i32 0, align 4
@PACKET3_SET_UCONFIG_REG_START = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_ring*, i64)* @gfx_v7_0_ring_test_ib to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfx_v7_0_ring_test_ib(%struct.amdgpu_ring* %0, i64 %1) #0 {
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
  %13 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %12, i32 0, i32 0
  %14 = load %struct.amdgpu_device*, %struct.amdgpu_device** %13, align 8
  store %struct.amdgpu_device* %14, %struct.amdgpu_device** %6, align 8
  store %struct.dma_fence* null, %struct.dma_fence** %8, align 8
  store i32 0, i32* %10, align 4
  %15 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %16 = call i64 @amdgpu_gfx_scratch_get(%struct.amdgpu_device* %15, i32* %9)
  store i64 %16, i64* %11, align 8
  %17 = load i64, i64* %11, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i64, i64* %11, align 8
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %3, align 4
  br label %87

22:                                               ; preds = %2
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @WREG32(i32 %23, i32 -889266515)
  %25 = call i32 @memset(%struct.amdgpu_ib* %7, i32 0, i32 16)
  %26 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %27 = call i64 @amdgpu_ib_get(%struct.amdgpu_device* %26, i32* null, i32 256, %struct.amdgpu_ib* %7)
  store i64 %27, i64* %11, align 8
  %28 = load i64, i64* %11, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %22
  br label %81

31:                                               ; preds = %22
  %32 = load i32, i32* @PACKET3_SET_UCONFIG_REG, align 4
  %33 = call i32 @PACKET3(i32 %32, i32 1)
  %34 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %7, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  store i32 %33, i32* %36, align 4
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @PACKET3_SET_UCONFIG_REG_START, align 4
  %39 = sub nsw i32 %37, %38
  %40 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %7, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 1
  store i32 %39, i32* %42, align 4
  %43 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %7, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 2
  store i32 -559038737, i32* %45, align 4
  %46 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %7, i32 0, i32 1
  store i32 3, i32* %46, align 8
  %47 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %48 = call i64 @amdgpu_ib_schedule(%struct.amdgpu_ring* %47, i32 1, %struct.amdgpu_ib* %7, i32* null, %struct.dma_fence** %8)
  store i64 %48, i64* %11, align 8
  %49 = load i64, i64* %11, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %31
  br label %76

52:                                               ; preds = %31
  %53 = load %struct.dma_fence*, %struct.dma_fence** %8, align 8
  %54 = load i64, i64* %5, align 8
  %55 = call i64 @dma_fence_wait_timeout(%struct.dma_fence* %53, i32 0, i64 %54)
  store i64 %55, i64* %11, align 8
  %56 = load i64, i64* %11, align 8
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %52
  %59 = load i64, i64* @ETIMEDOUT, align 8
  %60 = sub nsw i64 0, %59
  store i64 %60, i64* %11, align 8
  br label %76

61:                                               ; preds = %52
  %62 = load i64, i64* %11, align 8
  %63 = icmp slt i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %61
  br label %76

65:                                               ; preds = %61
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %9, align 4
  %68 = call i32 @RREG32(i32 %67)
  store i32 %68, i32* %10, align 4
  %69 = load i32, i32* %10, align 4
  %70 = icmp eq i32 %69, -559038737
  br i1 %70, label %71, label %72

71:                                               ; preds = %66
  store i64 0, i64* %11, align 8
  br label %75

72:                                               ; preds = %66
  %73 = load i64, i64* @EINVAL, align 8
  %74 = sub nsw i64 0, %73
  store i64 %74, i64* %11, align 8
  br label %75

75:                                               ; preds = %72, %71
  br label %76

76:                                               ; preds = %75, %64, %58, %51
  %77 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %78 = call i32 @amdgpu_ib_free(%struct.amdgpu_device* %77, %struct.amdgpu_ib* %7, i32* null)
  %79 = load %struct.dma_fence*, %struct.dma_fence** %8, align 8
  %80 = call i32 @dma_fence_put(%struct.dma_fence* %79)
  br label %81

81:                                               ; preds = %76, %30
  %82 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %83 = load i32, i32* %9, align 4
  %84 = call i32 @amdgpu_gfx_scratch_free(%struct.amdgpu_device* %82, i32 %83)
  %85 = load i64, i64* %11, align 8
  %86 = trunc i64 %85 to i32
  store i32 %86, i32* %3, align 4
  br label %87

87:                                               ; preds = %81, %19
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i64 @amdgpu_gfx_scratch_get(%struct.amdgpu_device*, i32*) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @memset(%struct.amdgpu_ib*, i32, i32) #1

declare dso_local i64 @amdgpu_ib_get(%struct.amdgpu_device*, i32*, i32, %struct.amdgpu_ib*) #1

declare dso_local i32 @PACKET3(i32, i32) #1

declare dso_local i64 @amdgpu_ib_schedule(%struct.amdgpu_ring*, i32, %struct.amdgpu_ib*, i32*, %struct.dma_fence**) #1

declare dso_local i64 @dma_fence_wait_timeout(%struct.dma_fence*, i32, i64) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @amdgpu_ib_free(%struct.amdgpu_device*, %struct.amdgpu_ib*, i32*) #1

declare dso_local i32 @dma_fence_put(%struct.dma_fence*) #1

declare dso_local i32 @amdgpu_gfx_scratch_free(%struct.amdgpu_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
