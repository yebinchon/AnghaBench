; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_ringbuffer.c_alloc_context_vma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_ringbuffer.c_alloc_context_vma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_vma = type opaque
%struct.intel_engine_cs = type { i8*, %struct.TYPE_4__*, i32, %struct.drm_i915_private* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.drm_i915_private = type { i32 }
%struct.drm_i915_gem_object = type opaque

@I915_CACHE_L3_LLC = common dso_local global i32 0, align 4
@I915_MAP_WB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.i915_vma* (%struct.intel_engine_cs*)* @alloc_context_vma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.i915_vma* @alloc_context_vma(%struct.intel_engine_cs* %0) #0 {
  %2 = alloca %struct.i915_vma*, align 8
  %3 = alloca %struct.intel_engine_cs*, align 8
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca %struct.drm_i915_gem_object*, align 8
  %6 = alloca %struct.i915_vma*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct.intel_engine_cs* %0, %struct.intel_engine_cs** %3, align 8
  %10 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %11 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %10, i32 0, i32 3
  %12 = load %struct.drm_i915_private*, %struct.drm_i915_private** %11, align 8
  store %struct.drm_i915_private* %12, %struct.drm_i915_private** %4, align 8
  %13 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %14 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %15 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = call i8* @i915_gem_object_create_shmem(%struct.drm_i915_private* %13, i32 %16)
  %18 = bitcast i8* %17 to %struct.drm_i915_gem_object*
  store %struct.drm_i915_gem_object* %18, %struct.drm_i915_gem_object** %5, align 8
  %19 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %5, align 8
  %20 = bitcast %struct.drm_i915_gem_object* %19 to i8*
  %21 = call i64 @IS_ERR(i8* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %1
  %24 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %5, align 8
  %25 = bitcast %struct.drm_i915_gem_object* %24 to i8*
  %26 = call i8* @ERR_CAST(i8* %25)
  %27 = bitcast i8* %26 to %struct.i915_vma*
  store %struct.i915_vma* %27, %struct.i915_vma** %2, align 8
  br label %114

28:                                               ; preds = %1
  %29 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %30 = call i64 @IS_IVYBRIDGE(%struct.drm_i915_private* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %28
  %33 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %5, align 8
  %34 = bitcast %struct.drm_i915_gem_object* %33 to i8*
  %35 = load i32, i32* @I915_CACHE_L3_LLC, align 4
  %36 = call i32 @i915_gem_object_set_cache_coherency(i8* %34, i32 %35)
  br label %37

37:                                               ; preds = %32, %28
  %38 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %39 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %82

42:                                               ; preds = %37
  %43 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %5, align 8
  %44 = bitcast %struct.drm_i915_gem_object* %43 to i8*
  %45 = load i32, i32* @I915_MAP_WB, align 4
  %46 = call i8* @i915_gem_object_pin_map(i8* %44, i32 %45)
  store i8* %46, i8** %9, align 8
  %47 = load i8*, i8** %9, align 8
  %48 = call i64 @IS_ERR(i8* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %42
  %51 = load i8*, i8** %9, align 8
  %52 = call i32 @PTR_ERR(i8* %51)
  store i32 %52, i32* %7, align 4
  br label %107

53:                                               ; preds = %42
  %54 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %55 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = load i32, i32* @I915_MAP_WB, align 4
  %58 = call i8* @i915_gem_object_pin_map(i8* %56, i32 %57)
  store i8* %58, i8** %8, align 8
  %59 = load i8*, i8** %8, align 8
  %60 = call i64 @IS_ERR(i8* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %53
  %63 = load i8*, i8** %8, align 8
  %64 = call i32 @PTR_ERR(i8* %63)
  store i32 %64, i32* %7, align 4
  br label %103

65:                                               ; preds = %53
  %66 = load i8*, i8** %9, align 8
  %67 = load i8*, i8** %8, align 8
  %68 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %69 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @memcpy(i8* %66, i8* %67, i32 %70)
  %72 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %73 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = call i32 @i915_gem_object_unpin_map(i8* %74)
  %76 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %5, align 8
  %77 = bitcast %struct.drm_i915_gem_object* %76 to i8*
  %78 = call i32 @i915_gem_object_flush_map(i8* %77)
  %79 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %5, align 8
  %80 = bitcast %struct.drm_i915_gem_object* %79 to i8*
  %81 = call i32 @i915_gem_object_unpin_map(i8* %80)
  br label %82

82:                                               ; preds = %65, %37
  %83 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %5, align 8
  %84 = bitcast %struct.drm_i915_gem_object* %83 to i8*
  %85 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %86 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %85, i32 0, i32 1
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  %91 = call i8* @i915_vma_instance(i8* %84, i32* %90, i32* null)
  %92 = bitcast i8* %91 to %struct.i915_vma*
  store %struct.i915_vma* %92, %struct.i915_vma** %6, align 8
  %93 = load %struct.i915_vma*, %struct.i915_vma** %6, align 8
  %94 = bitcast %struct.i915_vma* %93 to i8*
  %95 = call i64 @IS_ERR(i8* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %82
  %98 = load %struct.i915_vma*, %struct.i915_vma** %6, align 8
  %99 = bitcast %struct.i915_vma* %98 to i8*
  %100 = call i32 @PTR_ERR(i8* %99)
  store i32 %100, i32* %7, align 4
  br label %107

101:                                              ; preds = %82
  %102 = load %struct.i915_vma*, %struct.i915_vma** %6, align 8
  store %struct.i915_vma* %102, %struct.i915_vma** %2, align 8
  br label %114

103:                                              ; preds = %62
  %104 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %5, align 8
  %105 = bitcast %struct.drm_i915_gem_object* %104 to i8*
  %106 = call i32 @i915_gem_object_unpin_map(i8* %105)
  br label %107

107:                                              ; preds = %103, %97, %50
  %108 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %5, align 8
  %109 = bitcast %struct.drm_i915_gem_object* %108 to i8*
  %110 = call i32 @i915_gem_object_put(i8* %109)
  %111 = load i32, i32* %7, align 4
  %112 = call i8* @ERR_PTR(i32 %111)
  %113 = bitcast i8* %112 to %struct.i915_vma*
  store %struct.i915_vma* %113, %struct.i915_vma** %2, align 8
  br label %114

114:                                              ; preds = %107, %101, %23
  %115 = load %struct.i915_vma*, %struct.i915_vma** %2, align 8
  ret %struct.i915_vma* %115
}

declare dso_local i8* @i915_gem_object_create_shmem(%struct.drm_i915_private*, i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i8* @ERR_CAST(i8*) #1

declare dso_local i64 @IS_IVYBRIDGE(%struct.drm_i915_private*) #1

declare dso_local i32 @i915_gem_object_set_cache_coherency(i8*, i32) #1

declare dso_local i8* @i915_gem_object_pin_map(i8*, i32) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @i915_gem_object_unpin_map(i8*) #1

declare dso_local i32 @i915_gem_object_flush_map(i8*) #1

declare dso_local i8* @i915_vma_instance(i8*, i32*, i32*) #1

declare dso_local i32 @i915_gem_object_put(i8*) #1

declare dso_local i8* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
