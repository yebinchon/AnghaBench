; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ttm.c_amdgpu_move_blit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ttm.c_amdgpu_move_blit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_buffer_object = type { i64, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.ttm_mem_reg = type { i32, i64 }
%struct.amdgpu_device = type { i32 }
%struct.amdgpu_copy_mem = type { i64, %struct.ttm_mem_reg*, %struct.ttm_buffer_object* }
%struct.dma_fence = type { i32 }
%struct.TYPE_5__ = type { i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@TTM_PL_VRAM = common dso_local global i64 0, align 8
@AMDGPU_GEM_CREATE_VRAM_WIPE_ON_RELEASE = common dso_local global i32 0, align 4
@AMDGPU_POISON = common dso_local global i32 0, align 4
@ttm_bo_type_kernel = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ttm_buffer_object*, i32, i32, %struct.ttm_mem_reg*, %struct.ttm_mem_reg*)* @amdgpu_move_blit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdgpu_move_blit(%struct.ttm_buffer_object* %0, i32 %1, i32 %2, %struct.ttm_mem_reg* %3, %struct.ttm_mem_reg* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ttm_buffer_object*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ttm_mem_reg*, align 8
  %11 = alloca %struct.ttm_mem_reg*, align 8
  %12 = alloca %struct.amdgpu_device*, align 8
  %13 = alloca %struct.amdgpu_copy_mem, align 8
  %14 = alloca %struct.amdgpu_copy_mem, align 8
  %15 = alloca %struct.dma_fence*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.dma_fence*, align 8
  store %struct.ttm_buffer_object* %0, %struct.ttm_buffer_object** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.ttm_mem_reg* %3, %struct.ttm_mem_reg** %10, align 8
  store %struct.ttm_mem_reg* %4, %struct.ttm_mem_reg** %11, align 8
  %18 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %7, align 8
  %19 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.amdgpu_device* @amdgpu_ttm_adev(i32 %20)
  store %struct.amdgpu_device* %21, %struct.amdgpu_device** %12, align 8
  store %struct.dma_fence* null, %struct.dma_fence** %15, align 8
  %22 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %7, align 8
  %23 = getelementptr inbounds %struct.amdgpu_copy_mem, %struct.amdgpu_copy_mem* %13, i32 0, i32 2
  store %struct.ttm_buffer_object* %22, %struct.ttm_buffer_object** %23, align 8
  %24 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %7, align 8
  %25 = getelementptr inbounds %struct.amdgpu_copy_mem, %struct.amdgpu_copy_mem* %14, i32 0, i32 2
  store %struct.ttm_buffer_object* %24, %struct.ttm_buffer_object** %25, align 8
  %26 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %11, align 8
  %27 = getelementptr inbounds %struct.amdgpu_copy_mem, %struct.amdgpu_copy_mem* %13, i32 0, i32 1
  store %struct.ttm_mem_reg* %26, %struct.ttm_mem_reg** %27, align 8
  %28 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %10, align 8
  %29 = getelementptr inbounds %struct.amdgpu_copy_mem, %struct.amdgpu_copy_mem* %14, i32 0, i32 1
  store %struct.ttm_mem_reg* %28, %struct.ttm_mem_reg** %29, align 8
  %30 = getelementptr inbounds %struct.amdgpu_copy_mem, %struct.amdgpu_copy_mem* %13, i32 0, i32 0
  store i64 0, i64* %30, align 8
  %31 = getelementptr inbounds %struct.amdgpu_copy_mem, %struct.amdgpu_copy_mem* %14, i32 0, i32 0
  store i64 0, i64* %31, align 8
  %32 = load %struct.amdgpu_device*, %struct.amdgpu_device** %12, align 8
  %33 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %10, align 8
  %34 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @PAGE_SHIFT, align 4
  %37 = shl i32 %35, %36
  %38 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %7, align 8
  %39 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @amdgpu_ttm_copy_mem_to_mem(%struct.amdgpu_device* %32, %struct.amdgpu_copy_mem* %13, %struct.amdgpu_copy_mem* %14, i32 %37, i32 %41, %struct.dma_fence** %15)
  store i32 %42, i32* %16, align 4
  %43 = load i32, i32* %16, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %5
  br label %98

46:                                               ; preds = %5
  %47 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %11, align 8
  %48 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @TTM_PL_VRAM, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %77

52:                                               ; preds = %46
  %53 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %7, align 8
  %54 = call %struct.TYPE_5__* @ttm_to_amdgpu_bo(%struct.ttm_buffer_object* %53)
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @AMDGPU_GEM_CREATE_VRAM_WIPE_ON_RELEASE, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %77

60:                                               ; preds = %52
  store %struct.dma_fence* null, %struct.dma_fence** %17, align 8
  %61 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %7, align 8
  %62 = call %struct.TYPE_5__* @ttm_to_amdgpu_bo(%struct.ttm_buffer_object* %61)
  %63 = load i32, i32* @AMDGPU_POISON, align 4
  %64 = call i32 @amdgpu_fill_buffer(%struct.TYPE_5__* %62, i32 %63, i32* null, %struct.dma_fence** %17)
  store i32 %64, i32* %16, align 4
  %65 = load i32, i32* %16, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %60
  br label %98

68:                                               ; preds = %60
  %69 = load %struct.dma_fence*, %struct.dma_fence** %17, align 8
  %70 = icmp ne %struct.dma_fence* %69, null
  br i1 %70, label %71, label %75

71:                                               ; preds = %68
  %72 = load %struct.dma_fence*, %struct.dma_fence** %15, align 8
  %73 = call i32 @dma_fence_put(%struct.dma_fence* %72)
  %74 = load %struct.dma_fence*, %struct.dma_fence** %17, align 8
  store %struct.dma_fence* %74, %struct.dma_fence** %15, align 8
  br label %75

75:                                               ; preds = %71, %68
  br label %76

76:                                               ; preds = %75
  br label %77

77:                                               ; preds = %76, %52, %46
  %78 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %7, align 8
  %79 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @ttm_bo_type_kernel, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %88

83:                                               ; preds = %77
  %84 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %7, align 8
  %85 = load %struct.dma_fence*, %struct.dma_fence** %15, align 8
  %86 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %10, align 8
  %87 = call i32 @ttm_bo_move_accel_cleanup(%struct.ttm_buffer_object* %84, %struct.dma_fence* %85, i32 1, %struct.ttm_mem_reg* %86)
  store i32 %87, i32* %16, align 4
  br label %94

88:                                               ; preds = %77
  %89 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %7, align 8
  %90 = load %struct.dma_fence*, %struct.dma_fence** %15, align 8
  %91 = load i32, i32* %8, align 4
  %92 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %10, align 8
  %93 = call i32 @ttm_bo_pipeline_move(%struct.ttm_buffer_object* %89, %struct.dma_fence* %90, i32 %91, %struct.ttm_mem_reg* %92)
  store i32 %93, i32* %16, align 4
  br label %94

94:                                               ; preds = %88, %83
  %95 = load %struct.dma_fence*, %struct.dma_fence** %15, align 8
  %96 = call i32 @dma_fence_put(%struct.dma_fence* %95)
  %97 = load i32, i32* %16, align 4
  store i32 %97, i32* %6, align 4
  br label %108

98:                                               ; preds = %67, %45
  %99 = load %struct.dma_fence*, %struct.dma_fence** %15, align 8
  %100 = icmp ne %struct.dma_fence* %99, null
  br i1 %100, label %101, label %104

101:                                              ; preds = %98
  %102 = load %struct.dma_fence*, %struct.dma_fence** %15, align 8
  %103 = call i32 @dma_fence_wait(%struct.dma_fence* %102, i32 0)
  br label %104

104:                                              ; preds = %101, %98
  %105 = load %struct.dma_fence*, %struct.dma_fence** %15, align 8
  %106 = call i32 @dma_fence_put(%struct.dma_fence* %105)
  %107 = load i32, i32* %16, align 4
  store i32 %107, i32* %6, align 4
  br label %108

108:                                              ; preds = %104, %94
  %109 = load i32, i32* %6, align 4
  ret i32 %109
}

declare dso_local %struct.amdgpu_device* @amdgpu_ttm_adev(i32) #1

declare dso_local i32 @amdgpu_ttm_copy_mem_to_mem(%struct.amdgpu_device*, %struct.amdgpu_copy_mem*, %struct.amdgpu_copy_mem*, i32, i32, %struct.dma_fence**) #1

declare dso_local %struct.TYPE_5__* @ttm_to_amdgpu_bo(%struct.ttm_buffer_object*) #1

declare dso_local i32 @amdgpu_fill_buffer(%struct.TYPE_5__*, i32, i32*, %struct.dma_fence**) #1

declare dso_local i32 @dma_fence_put(%struct.dma_fence*) #1

declare dso_local i32 @ttm_bo_move_accel_cleanup(%struct.ttm_buffer_object*, %struct.dma_fence*, i32, %struct.ttm_mem_reg*) #1

declare dso_local i32 @ttm_bo_pipeline_move(%struct.ttm_buffer_object*, %struct.dma_fence*, i32, %struct.ttm_mem_reg*) #1

declare dso_local i32 @dma_fence_wait(%struct.dma_fence*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
