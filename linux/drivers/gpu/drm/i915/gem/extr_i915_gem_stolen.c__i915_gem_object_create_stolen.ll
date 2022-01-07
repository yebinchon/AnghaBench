; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_stolen.c__i915_gem_object_create_stolen.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_stolen.c__i915_gem_object_create_stolen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_gem_object = type { i32, %struct.drm_mm_node*, i32 }
%struct.drm_i915_private = type { i32 }
%struct.drm_mm_node = type { i32 }

@i915_gem_object_stolen_ops = common dso_local global i32 0, align 4
@I915_GEM_DOMAIN_CPU = common dso_local global i32 0, align 4
@I915_GEM_DOMAIN_GTT = common dso_local global i32 0, align 4
@I915_CACHE_LLC = common dso_local global i32 0, align 4
@I915_CACHE_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.drm_i915_gem_object* (%struct.drm_i915_private*, %struct.drm_mm_node*)* @_i915_gem_object_create_stolen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.drm_i915_gem_object* @_i915_gem_object_create_stolen(%struct.drm_i915_private* %0, %struct.drm_mm_node* %1) #0 {
  %3 = alloca %struct.drm_i915_gem_object*, align 8
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca %struct.drm_mm_node*, align 8
  %6 = alloca %struct.drm_i915_gem_object*, align 8
  %7 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %4, align 8
  store %struct.drm_mm_node* %1, %struct.drm_mm_node** %5, align 8
  %8 = call %struct.drm_i915_gem_object* (...) @i915_gem_object_alloc()
  store %struct.drm_i915_gem_object* %8, %struct.drm_i915_gem_object** %6, align 8
  %9 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %10 = icmp eq %struct.drm_i915_gem_object* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store %struct.drm_i915_gem_object* null, %struct.drm_i915_gem_object** %3, align 8
  br label %52

12:                                               ; preds = %2
  %13 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %14 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %13, i32 0, i32 0
  %15 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %16 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %15, i32 0, i32 2
  %17 = load %struct.drm_mm_node*, %struct.drm_mm_node** %5, align 8
  %18 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @drm_gem_private_object_init(i32* %14, i32* %16, i32 %19)
  %21 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %22 = call i32 @i915_gem_object_init(%struct.drm_i915_gem_object* %21, i32* @i915_gem_object_stolen_ops)
  %23 = load %struct.drm_mm_node*, %struct.drm_mm_node** %5, align 8
  %24 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %25 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %24, i32 0, i32 1
  store %struct.drm_mm_node* %23, %struct.drm_mm_node** %25, align 8
  %26 = load i32, i32* @I915_GEM_DOMAIN_CPU, align 4
  %27 = load i32, i32* @I915_GEM_DOMAIN_GTT, align 4
  %28 = or i32 %26, %27
  %29 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %30 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %32 = call i64 @HAS_LLC(%struct.drm_i915_private* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %12
  %35 = load i32, i32* @I915_CACHE_LLC, align 4
  br label %38

36:                                               ; preds = %12
  %37 = load i32, i32* @I915_CACHE_NONE, align 4
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi i32 [ %35, %34 ], [ %37, %36 ]
  store i32 %39, i32* %7, align 4
  %40 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @i915_gem_object_set_cache_coherency(%struct.drm_i915_gem_object* %40, i32 %41)
  %43 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %44 = call i64 @i915_gem_object_pin_pages(%struct.drm_i915_gem_object* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %38
  br label %49

47:                                               ; preds = %38
  %48 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  store %struct.drm_i915_gem_object* %48, %struct.drm_i915_gem_object** %3, align 8
  br label %52

49:                                               ; preds = %46
  %50 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %51 = call i32 @i915_gem_object_free(%struct.drm_i915_gem_object* %50)
  store %struct.drm_i915_gem_object* null, %struct.drm_i915_gem_object** %3, align 8
  br label %52

52:                                               ; preds = %49, %47, %11
  %53 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  ret %struct.drm_i915_gem_object* %53
}

declare dso_local %struct.drm_i915_gem_object* @i915_gem_object_alloc(...) #1

declare dso_local i32 @drm_gem_private_object_init(i32*, i32*, i32) #1

declare dso_local i32 @i915_gem_object_init(%struct.drm_i915_gem_object*, i32*) #1

declare dso_local i64 @HAS_LLC(%struct.drm_i915_private*) #1

declare dso_local i32 @i915_gem_object_set_cache_coherency(%struct.drm_i915_gem_object*, i32) #1

declare dso_local i64 @i915_gem_object_pin_pages(%struct.drm_i915_gem_object*) #1

declare dso_local i32 @i915_gem_object_free(%struct.drm_i915_gem_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
