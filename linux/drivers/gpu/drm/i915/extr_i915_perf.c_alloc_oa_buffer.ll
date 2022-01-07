; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_perf.c_alloc_oa_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_perf.c_alloc_oa_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_perf_stream = type { %struct.TYPE_3__, %struct.drm_i915_private* }
%struct.TYPE_3__ = type { %struct.i915_vma*, %struct.i915_vma* }
%struct.i915_vma = type { i32 }
%struct.drm_i915_private = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.drm_i915_gem_object = type opaque

@ENODEV = common dso_local global i32 0, align 4
@OA_BUFFER_SIZE = common dso_local global i64 0, align 8
@SZ_128K = common dso_local global i64 0, align 8
@SZ_16M = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"Failed to allocate OA buffer\0A\00", align 1
@I915_CACHE_LLC = common dso_local global i32 0, align 4
@I915_MAP_WB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"OA Buffer initialized, gtt offset = 0x%x, vaddr = %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i915_perf_stream*)* @alloc_oa_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_oa_buffer(%struct.i915_perf_stream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i915_perf_stream*, align 8
  %4 = alloca %struct.drm_i915_gem_object*, align 8
  %5 = alloca %struct.drm_i915_private*, align 8
  %6 = alloca %struct.i915_vma*, align 8
  %7 = alloca i32, align 4
  store %struct.i915_perf_stream* %0, %struct.i915_perf_stream** %3, align 8
  %8 = load %struct.i915_perf_stream*, %struct.i915_perf_stream** %3, align 8
  %9 = getelementptr inbounds %struct.i915_perf_stream, %struct.i915_perf_stream* %8, i32 0, i32 1
  %10 = load %struct.drm_i915_private*, %struct.drm_i915_private** %9, align 8
  store %struct.drm_i915_private* %10, %struct.drm_i915_private** %5, align 8
  %11 = load %struct.i915_perf_stream*, %struct.i915_perf_stream** %3, align 8
  %12 = getelementptr inbounds %struct.i915_perf_stream, %struct.i915_perf_stream* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load %struct.i915_vma*, %struct.i915_vma** %13, align 8
  %15 = call i64 @WARN_ON(%struct.i915_vma* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %124

20:                                               ; preds = %1
  %21 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %22 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %21, i32 0, i32 0
  %23 = call i32 @i915_mutex_lock_interruptible(%struct.TYPE_4__* %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load i32, i32* %7, align 4
  store i32 %27, i32* %2, align 4
  br label %124

28:                                               ; preds = %20
  %29 = load i64, i64* @OA_BUFFER_SIZE, align 8
  %30 = call i32 @BUILD_BUG_ON_NOT_POWER_OF_2(i64 %29)
  %31 = load i64, i64* @OA_BUFFER_SIZE, align 8
  %32 = load i64, i64* @SZ_128K, align 8
  %33 = icmp slt i64 %31, %32
  br i1 %33, label %38, label %34

34:                                               ; preds = %28
  %35 = load i64, i64* @OA_BUFFER_SIZE, align 8
  %36 = load i64, i64* @SZ_16M, align 8
  %37 = icmp sgt i64 %35, %36
  br label %38

38:                                               ; preds = %34, %28
  %39 = phi i1 [ true, %28 ], [ %37, %34 ]
  %40 = zext i1 %39 to i32
  %41 = call i32 @BUILD_BUG_ON(i32 %40)
  %42 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %43 = load i64, i64* @OA_BUFFER_SIZE, align 8
  %44 = call %struct.i915_vma* @i915_gem_object_create_shmem(%struct.drm_i915_private* %42, i64 %43)
  %45 = bitcast %struct.i915_vma* %44 to %struct.drm_i915_gem_object*
  store %struct.drm_i915_gem_object* %45, %struct.drm_i915_gem_object** %4, align 8
  %46 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %47 = bitcast %struct.drm_i915_gem_object* %46 to %struct.i915_vma*
  %48 = call i64 @IS_ERR(%struct.i915_vma* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %38
  %51 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %52 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %53 = bitcast %struct.drm_i915_gem_object* %52 to %struct.i915_vma*
  %54 = call i32 @PTR_ERR(%struct.i915_vma* %53)
  store i32 %54, i32* %7, align 4
  br label %118

55:                                               ; preds = %38
  %56 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %57 = bitcast %struct.drm_i915_gem_object* %56 to %struct.i915_vma*
  %58 = load i32, i32* @I915_CACHE_LLC, align 4
  %59 = call i32 @i915_gem_object_set_cache_coherency(%struct.i915_vma* %57, i32 %58)
  %60 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %61 = bitcast %struct.drm_i915_gem_object* %60 to %struct.i915_vma*
  %62 = load i64, i64* @SZ_16M, align 8
  %63 = call %struct.i915_vma* @i915_gem_object_ggtt_pin(%struct.i915_vma* %61, i32* null, i32 0, i64 %62, i32 0)
  store %struct.i915_vma* %63, %struct.i915_vma** %6, align 8
  %64 = load %struct.i915_vma*, %struct.i915_vma** %6, align 8
  %65 = call i64 @IS_ERR(%struct.i915_vma* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %55
  %68 = load %struct.i915_vma*, %struct.i915_vma** %6, align 8
  %69 = call i32 @PTR_ERR(%struct.i915_vma* %68)
  store i32 %69, i32* %7, align 4
  br label %108

70:                                               ; preds = %55
  %71 = load %struct.i915_vma*, %struct.i915_vma** %6, align 8
  %72 = load %struct.i915_perf_stream*, %struct.i915_perf_stream** %3, align 8
  %73 = getelementptr inbounds %struct.i915_perf_stream, %struct.i915_perf_stream* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  store %struct.i915_vma* %71, %struct.i915_vma** %74, align 8
  %75 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %76 = bitcast %struct.drm_i915_gem_object* %75 to %struct.i915_vma*
  %77 = load i32, i32* @I915_MAP_WB, align 4
  %78 = call %struct.i915_vma* @i915_gem_object_pin_map(%struct.i915_vma* %76, i32 %77)
  %79 = load %struct.i915_perf_stream*, %struct.i915_perf_stream** %3, align 8
  %80 = getelementptr inbounds %struct.i915_perf_stream, %struct.i915_perf_stream* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 1
  store %struct.i915_vma* %78, %struct.i915_vma** %81, align 8
  %82 = load %struct.i915_perf_stream*, %struct.i915_perf_stream** %3, align 8
  %83 = getelementptr inbounds %struct.i915_perf_stream, %struct.i915_perf_stream* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 1
  %85 = load %struct.i915_vma*, %struct.i915_vma** %84, align 8
  %86 = call i64 @IS_ERR(%struct.i915_vma* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %70
  %89 = load %struct.i915_perf_stream*, %struct.i915_perf_stream** %3, align 8
  %90 = getelementptr inbounds %struct.i915_perf_stream, %struct.i915_perf_stream* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 1
  %92 = load %struct.i915_vma*, %struct.i915_vma** %91, align 8
  %93 = call i32 @PTR_ERR(%struct.i915_vma* %92)
  store i32 %93, i32* %7, align 4
  br label %105

94:                                               ; preds = %70
  %95 = load %struct.i915_perf_stream*, %struct.i915_perf_stream** %3, align 8
  %96 = getelementptr inbounds %struct.i915_perf_stream, %struct.i915_perf_stream* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 0
  %98 = load %struct.i915_vma*, %struct.i915_vma** %97, align 8
  %99 = call i32 @i915_ggtt_offset(%struct.i915_vma* %98)
  %100 = load %struct.i915_perf_stream*, %struct.i915_perf_stream** %3, align 8
  %101 = getelementptr inbounds %struct.i915_perf_stream, %struct.i915_perf_stream* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 1
  %103 = load %struct.i915_vma*, %struct.i915_vma** %102, align 8
  %104 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %99, %struct.i915_vma* %103)
  br label %118

105:                                              ; preds = %88
  %106 = load %struct.i915_vma*, %struct.i915_vma** %6, align 8
  %107 = call i32 @__i915_vma_unpin(%struct.i915_vma* %106)
  br label %108

108:                                              ; preds = %105, %67
  %109 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %110 = bitcast %struct.drm_i915_gem_object* %109 to %struct.i915_vma*
  %111 = call i32 @i915_gem_object_put(%struct.i915_vma* %110)
  %112 = load %struct.i915_perf_stream*, %struct.i915_perf_stream** %3, align 8
  %113 = getelementptr inbounds %struct.i915_perf_stream, %struct.i915_perf_stream* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 1
  store %struct.i915_vma* null, %struct.i915_vma** %114, align 8
  %115 = load %struct.i915_perf_stream*, %struct.i915_perf_stream** %3, align 8
  %116 = getelementptr inbounds %struct.i915_perf_stream, %struct.i915_perf_stream* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 0
  store %struct.i915_vma* null, %struct.i915_vma** %117, align 8
  br label %118

118:                                              ; preds = %108, %94, %50
  %119 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %120 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  %122 = call i32 @mutex_unlock(i32* %121)
  %123 = load i32, i32* %7, align 4
  store i32 %123, i32* %2, align 4
  br label %124

124:                                              ; preds = %118, %26, %17
  %125 = load i32, i32* %2, align 4
  ret i32 %125
}

declare dso_local i64 @WARN_ON(%struct.i915_vma*) #1

declare dso_local i32 @i915_mutex_lock_interruptible(%struct.TYPE_4__*) #1

declare dso_local i32 @BUILD_BUG_ON_NOT_POWER_OF_2(i64) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local %struct.i915_vma* @i915_gem_object_create_shmem(%struct.drm_i915_private*, i64) #1

declare dso_local i64 @IS_ERR(%struct.i915_vma*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @PTR_ERR(%struct.i915_vma*) #1

declare dso_local i32 @i915_gem_object_set_cache_coherency(%struct.i915_vma*, i32) #1

declare dso_local %struct.i915_vma* @i915_gem_object_ggtt_pin(%struct.i915_vma*, i32*, i32, i64, i32) #1

declare dso_local %struct.i915_vma* @i915_gem_object_pin_map(%struct.i915_vma*, i32) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, i32, %struct.i915_vma*) #1

declare dso_local i32 @i915_ggtt_offset(%struct.i915_vma*) #1

declare dso_local i32 @__i915_vma_unpin(%struct.i915_vma*) #1

declare dso_local i32 @i915_gem_object_put(%struct.i915_vma*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
