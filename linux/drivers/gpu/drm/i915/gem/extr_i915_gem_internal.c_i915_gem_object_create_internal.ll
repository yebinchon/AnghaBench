; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_internal.c_i915_gem_object_create_internal.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_internal.c_i915_gem_object_create_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_gem_object = type { i8*, i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.drm_i915_private = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@E2BIG = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@i915_gem_object_internal_ops = common dso_local global i32 0, align 4
@I915_GEM_DOMAIN_CPU = common dso_local global i8* null, align 8
@I915_CACHE_LLC = common dso_local global i32 0, align 4
@I915_CACHE_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.drm_i915_gem_object* @i915_gem_object_create_internal(%struct.drm_i915_private* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_i915_gem_object*, align 8
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_i915_gem_object*, align 8
  %7 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i32 @GEM_BUG_ON(i32 %11)
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @PAGE_SIZE, align 4
  %15 = call i32 @IS_ALIGNED(i32 %13, i32 %14)
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i32 @GEM_BUG_ON(i32 %18)
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %22 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i64 @overflows_type(i32 %20, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %2
  %28 = load i32, i32* @E2BIG, align 4
  %29 = sub nsw i32 0, %28
  %30 = call %struct.drm_i915_gem_object* @ERR_PTR(i32 %29)
  store %struct.drm_i915_gem_object* %30, %struct.drm_i915_gem_object** %3, align 8
  br label %67

31:                                               ; preds = %2
  %32 = call %struct.drm_i915_gem_object* (...) @i915_gem_object_alloc()
  store %struct.drm_i915_gem_object* %32, %struct.drm_i915_gem_object** %6, align 8
  %33 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %34 = icmp ne %struct.drm_i915_gem_object* %33, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  %38 = call %struct.drm_i915_gem_object* @ERR_PTR(i32 %37)
  store %struct.drm_i915_gem_object* %38, %struct.drm_i915_gem_object** %3, align 8
  br label %67

39:                                               ; preds = %31
  %40 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %41 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %40, i32 0, i32 0
  %42 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %43 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %42, i32 0, i32 2
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @drm_gem_private_object_init(i32* %41, %struct.TYPE_2__* %43, i32 %44)
  %46 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %47 = call i32 @i915_gem_object_init(%struct.drm_i915_gem_object* %46, i32* @i915_gem_object_internal_ops)
  %48 = load i8*, i8** @I915_GEM_DOMAIN_CPU, align 8
  %49 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %50 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %49, i32 0, i32 1
  store i8* %48, i8** %50, align 8
  %51 = load i8*, i8** @I915_GEM_DOMAIN_CPU, align 8
  %52 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %53 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %52, i32 0, i32 0
  store i8* %51, i8** %53, align 8
  %54 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %55 = call i64 @HAS_LLC(%struct.drm_i915_private* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %39
  %58 = load i32, i32* @I915_CACHE_LLC, align 4
  br label %61

59:                                               ; preds = %39
  %60 = load i32, i32* @I915_CACHE_NONE, align 4
  br label %61

61:                                               ; preds = %59, %57
  %62 = phi i32 [ %58, %57 ], [ %60, %59 ]
  store i32 %62, i32* %7, align 4
  %63 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @i915_gem_object_set_cache_coherency(%struct.drm_i915_gem_object* %63, i32 %64)
  %66 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  store %struct.drm_i915_gem_object* %66, %struct.drm_i915_gem_object** %3, align 8
  br label %67

67:                                               ; preds = %61, %35, %27
  %68 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  ret %struct.drm_i915_gem_object* %68
}

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local i32 @IS_ALIGNED(i32, i32) #1

declare dso_local i64 @overflows_type(i32, i32) #1

declare dso_local %struct.drm_i915_gem_object* @ERR_PTR(i32) #1

declare dso_local %struct.drm_i915_gem_object* @i915_gem_object_alloc(...) #1

declare dso_local i32 @drm_gem_private_object_init(i32*, %struct.TYPE_2__*, i32) #1

declare dso_local i32 @i915_gem_object_init(%struct.drm_i915_gem_object*, i32*) #1

declare dso_local i64 @HAS_LLC(%struct.drm_i915_private*) #1

declare dso_local i32 @i915_gem_object_set_cache_coherency(%struct.drm_i915_gem_object*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
