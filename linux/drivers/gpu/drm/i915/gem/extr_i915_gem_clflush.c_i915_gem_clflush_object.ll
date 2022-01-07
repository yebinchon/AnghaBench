; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_clflush.c_i915_gem_clflush_object.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_clflush.c_i915_gem_clflush_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_gem_object = type { i32, i32, i64, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32 }
%struct.clflush = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }

@I915_CLFLUSH_FORCE = common dso_local global i32 0, align 4
@I915_BO_CACHE_COHERENT_FOR_READ = common dso_local global i32 0, align 4
@I915_CLFLUSH_SYNC = common dso_local global i32 0, align 4
@I915_FENCE_TIMEOUT = common dso_local global i32 0, align 4
@I915_FENCE_GFP = common dso_local global i32 0, align 4
@I915_GEM_DOMAIN_CPU = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i915_gem_clflush_object(%struct.drm_i915_gem_object* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_i915_gem_object*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.clflush*, align 8
  store %struct.drm_i915_gem_object* %0, %struct.drm_i915_gem_object** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %8 = call i32 @assert_object_held(%struct.drm_i915_gem_object* %7)
  %9 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %10 = call i32 @i915_gem_object_has_struct_page(%struct.drm_i915_gem_object* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %14 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %13, i32 0, i32 0
  store i32 0, i32* %14, align 8
  store i32 0, i32* %3, align 4
  br label %84

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @I915_CLFLUSH_FORCE, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %28, label %20

20:                                               ; preds = %15
  %21 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %22 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @I915_BO_CACHE_COHERENT_FOR_READ, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %84

28:                                               ; preds = %20, %15
  %29 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %30 = call i32 @trace_i915_gem_object_clflush(%struct.drm_i915_gem_object* %29)
  store %struct.clflush* null, %struct.clflush** %6, align 8
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @I915_CLFLUSH_SYNC, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %28
  %36 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %37 = call %struct.clflush* @clflush_work_create(%struct.drm_i915_gem_object* %36)
  store %struct.clflush* %37, %struct.clflush** %6, align 8
  br label %38

38:                                               ; preds = %35, %28
  %39 = load %struct.clflush*, %struct.clflush** %6, align 8
  %40 = icmp ne %struct.clflush* %39, null
  br i1 %40, label %41, label %63

41:                                               ; preds = %38
  %42 = load %struct.clflush*, %struct.clflush** %6, align 8
  %43 = getelementptr inbounds %struct.clflush, %struct.clflush* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %46 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %45, i32 0, i32 4
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @I915_FENCE_TIMEOUT, align 4
  %50 = load i32, i32* @I915_FENCE_GFP, align 4
  %51 = call i32 @i915_sw_fence_await_reservation(i32* %44, i32 %48, i32* null, i32 1, i32 %49, i32 %50)
  %52 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %53 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %52, i32 0, i32 4
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.clflush*, %struct.clflush** %6, align 8
  %57 = getelementptr inbounds %struct.clflush, %struct.clflush* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = call i32 @dma_resv_add_excl_fence(i32 %55, i32* %58)
  %60 = load %struct.clflush*, %struct.clflush** %6, align 8
  %61 = getelementptr inbounds %struct.clflush, %struct.clflush* %60, i32 0, i32 0
  %62 = call i32 @dma_fence_work_commit(%struct.TYPE_6__* %61)
  br label %81

63:                                               ; preds = %38
  %64 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %65 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %64, i32 0, i32 3
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %63
  %70 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %71 = call i32 @__do_clflush(%struct.drm_i915_gem_object* %70)
  br label %80

72:                                               ; preds = %63
  %73 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %74 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @I915_GEM_DOMAIN_CPU, align 8
  %77 = icmp ne i64 %75, %76
  %78 = zext i1 %77 to i32
  %79 = call i32 @GEM_BUG_ON(i32 %78)
  br label %80

80:                                               ; preds = %72, %69
  br label %81

81:                                               ; preds = %80, %41
  %82 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %83 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %82, i32 0, i32 0
  store i32 0, i32* %83, align 8
  store i32 1, i32* %3, align 4
  br label %84

84:                                               ; preds = %81, %27, %12
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local i32 @assert_object_held(%struct.drm_i915_gem_object*) #1

declare dso_local i32 @i915_gem_object_has_struct_page(%struct.drm_i915_gem_object*) #1

declare dso_local i32 @trace_i915_gem_object_clflush(%struct.drm_i915_gem_object*) #1

declare dso_local %struct.clflush* @clflush_work_create(%struct.drm_i915_gem_object*) #1

declare dso_local i32 @i915_sw_fence_await_reservation(i32*, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @dma_resv_add_excl_fence(i32, i32*) #1

declare dso_local i32 @dma_fence_work_commit(%struct.TYPE_6__*) #1

declare dso_local i32 @__do_clflush(%struct.drm_i915_gem_object*) #1

declare dso_local i32 @GEM_BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
