; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_engine_cs.c_init_status_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_engine_cs.c_init_status_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_engine_cs = type { i32, %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i8*, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.drm_i915_gem_object = type opaque
%struct.i915_vma = type opaque

@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Failed to allocate status page\0A\00", align 1
@I915_CACHE_LLC = common dso_local global i32 0, align 4
@I915_MAP_WB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_engine_cs*)* @init_status_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_status_page(%struct.intel_engine_cs* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_engine_cs*, align 8
  %4 = alloca %struct.drm_i915_gem_object*, align 8
  %5 = alloca %struct.i915_vma*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.intel_engine_cs* %0, %struct.intel_engine_cs** %3, align 8
  %8 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %9 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @PAGE_SIZE, align 4
  %12 = call i8* @i915_gem_object_create_internal(i32 %10, i32 %11)
  %13 = bitcast i8* %12 to %struct.drm_i915_gem_object*
  store %struct.drm_i915_gem_object* %13, %struct.drm_i915_gem_object** %4, align 8
  %14 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %15 = bitcast %struct.drm_i915_gem_object* %14 to i8*
  %16 = call i64 @IS_ERR(i8* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %1
  %19 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %21 = bitcast %struct.drm_i915_gem_object* %20 to i8*
  %22 = call i32 @PTR_ERR(i8* %21)
  store i32 %22, i32* %2, align 4
  br label %93

23:                                               ; preds = %1
  %24 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %25 = bitcast %struct.drm_i915_gem_object* %24 to i8*
  %26 = load i32, i32* @I915_CACHE_LLC, align 4
  %27 = call i32 @i915_gem_object_set_cache_coherency(i8* %25, i32 %26)
  %28 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %29 = bitcast %struct.drm_i915_gem_object* %28 to i8*
  %30 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %31 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %30, i32 0, i32 2
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = call i8* @i915_vma_instance(i8* %29, i32* %35, i32* null)
  %37 = bitcast i8* %36 to %struct.i915_vma*
  store %struct.i915_vma* %37, %struct.i915_vma** %5, align 8
  %38 = load %struct.i915_vma*, %struct.i915_vma** %5, align 8
  %39 = bitcast %struct.i915_vma* %38 to i8*
  %40 = call i64 @IS_ERR(i8* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %23
  %43 = load %struct.i915_vma*, %struct.i915_vma** %5, align 8
  %44 = bitcast %struct.i915_vma* %43 to i8*
  %45 = call i32 @PTR_ERR(i8* %44)
  store i32 %45, i32* %7, align 4
  br label %88

46:                                               ; preds = %23
  %47 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %48 = bitcast %struct.drm_i915_gem_object* %47 to i8*
  %49 = load i32, i32* @I915_MAP_WB, align 4
  %50 = call i8* @i915_gem_object_pin_map(i8* %48, i32 %49)
  store i8* %50, i8** %6, align 8
  %51 = load i8*, i8** %6, align 8
  %52 = call i64 @IS_ERR(i8* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %46
  %55 = load i8*, i8** %6, align 8
  %56 = call i32 @PTR_ERR(i8* %55)
  store i32 %56, i32* %7, align 4
  br label %88

57:                                               ; preds = %46
  %58 = load i8*, i8** %6, align 8
  %59 = load i32, i32* @PAGE_SIZE, align 4
  %60 = call i32 @memset(i8* %58, i32 0, i32 %59)
  %61 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %62 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  store i32 %60, i32* %63, align 8
  %64 = load %struct.i915_vma*, %struct.i915_vma** %5, align 8
  %65 = bitcast %struct.i915_vma* %64 to i8*
  %66 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %67 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  store i8* %65, i8** %68, align 8
  %69 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %70 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @HWS_NEEDS_PHYSICAL(i32 %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %83, label %74

74:                                               ; preds = %57
  %75 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %76 = load %struct.i915_vma*, %struct.i915_vma** %5, align 8
  %77 = bitcast %struct.i915_vma* %76 to i8*
  %78 = call i32 @pin_ggtt_status_page(%struct.intel_engine_cs* %75, i8* %77)
  store i32 %78, i32* %7, align 4
  %79 = load i32, i32* %7, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %74
  br label %84

82:                                               ; preds = %74
  br label %83

83:                                               ; preds = %82, %57
  store i32 0, i32* %2, align 4
  br label %93

84:                                               ; preds = %81
  %85 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %86 = bitcast %struct.drm_i915_gem_object* %85 to i8*
  %87 = call i32 @i915_gem_object_unpin_map(i8* %86)
  br label %88

88:                                               ; preds = %84, %54, %42
  %89 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %90 = bitcast %struct.drm_i915_gem_object* %89 to i8*
  %91 = call i32 @i915_gem_object_put(i8* %90)
  %92 = load i32, i32* %7, align 4
  store i32 %92, i32* %2, align 4
  br label %93

93:                                               ; preds = %88, %83, %18
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local i8* @i915_gem_object_create_internal(i32, i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @i915_gem_object_set_cache_coherency(i8*, i32) #1

declare dso_local i8* @i915_vma_instance(i8*, i32*, i32*) #1

declare dso_local i8* @i915_gem_object_pin_map(i8*, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @HWS_NEEDS_PHYSICAL(i32) #1

declare dso_local i32 @pin_ggtt_status_page(%struct.intel_engine_cs*, i8*) #1

declare dso_local i32 @i915_gem_object_unpin_map(i8*) #1

declare dso_local i32 @i915_gem_object_put(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
