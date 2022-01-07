; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/selftests/extr_huge_gem_object.c_huge_gem_object.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/selftests/extr_huge_gem_object.c_huge_gem_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_gem_object = type { i64, i8*, i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.drm_i915_private = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@I915_GTT_PAGE_SIZE = common dso_local global i32 0, align 4
@E2BIG = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@huge_ops = common dso_local global i32 0, align 4
@I915_GEM_DOMAIN_CPU = common dso_local global i8* null, align 8
@I915_CACHE_LLC = common dso_local global i32 0, align 4
@I915_CACHE_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.drm_i915_gem_object* @huge_gem_object(%struct.drm_i915_private* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.drm_i915_gem_object*, align 8
  %5 = alloca %struct.drm_i915_private*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.drm_i915_gem_object*, align 8
  %9 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i64, i64* %6, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %3
  %13 = load i64, i64* %6, align 8
  %14 = load i64, i64* %7, align 8
  %15 = icmp sgt i64 %13, %14
  br label %16

16:                                               ; preds = %12, %3
  %17 = phi i1 [ true, %3 ], [ %15, %12 ]
  %18 = zext i1 %17 to i32
  %19 = call i32 @GEM_BUG_ON(i32 %18)
  %20 = load i64, i64* %6, align 8
  %21 = load i32, i32* @PAGE_SIZE, align 4
  %22 = call i32 @IS_ALIGNED(i64 %20, i32 %21)
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i32 @GEM_BUG_ON(i32 %25)
  %27 = load i64, i64* %7, align 8
  %28 = load i32, i32* @I915_GTT_PAGE_SIZE, align 4
  %29 = call i32 @IS_ALIGNED(i64 %27, i32 %28)
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = call i32 @GEM_BUG_ON(i32 %32)
  %34 = load i64, i64* %7, align 8
  %35 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %8, align 8
  %36 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i64 @overflows_type(i64 %34, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %16
  %42 = load i32, i32* @E2BIG, align 4
  %43 = sub nsw i32 0, %42
  %44 = call %struct.drm_i915_gem_object* @ERR_PTR(i32 %43)
  store %struct.drm_i915_gem_object* %44, %struct.drm_i915_gem_object** %4, align 8
  br label %84

45:                                               ; preds = %16
  %46 = call %struct.drm_i915_gem_object* (...) @i915_gem_object_alloc()
  store %struct.drm_i915_gem_object* %46, %struct.drm_i915_gem_object** %8, align 8
  %47 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %8, align 8
  %48 = icmp ne %struct.drm_i915_gem_object* %47, null
  br i1 %48, label %53, label %49

49:                                               ; preds = %45
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  %52 = call %struct.drm_i915_gem_object* @ERR_PTR(i32 %51)
  store %struct.drm_i915_gem_object* %52, %struct.drm_i915_gem_object** %4, align 8
  br label %84

53:                                               ; preds = %45
  %54 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %55 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %54, i32 0, i32 0
  %56 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %8, align 8
  %57 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %56, i32 0, i32 3
  %58 = load i64, i64* %7, align 8
  %59 = call i32 @drm_gem_private_object_init(i32* %55, %struct.TYPE_2__* %57, i64 %58)
  %60 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %8, align 8
  %61 = call i32 @i915_gem_object_init(%struct.drm_i915_gem_object* %60, i32* @huge_ops)
  %62 = load i8*, i8** @I915_GEM_DOMAIN_CPU, align 8
  %63 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %8, align 8
  %64 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %63, i32 0, i32 2
  store i8* %62, i8** %64, align 8
  %65 = load i8*, i8** @I915_GEM_DOMAIN_CPU, align 8
  %66 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %8, align 8
  %67 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %66, i32 0, i32 1
  store i8* %65, i8** %67, align 8
  %68 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %69 = call i64 @HAS_LLC(%struct.drm_i915_private* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %53
  %72 = load i32, i32* @I915_CACHE_LLC, align 4
  br label %75

73:                                               ; preds = %53
  %74 = load i32, i32* @I915_CACHE_NONE, align 4
  br label %75

75:                                               ; preds = %73, %71
  %76 = phi i32 [ %72, %71 ], [ %74, %73 ]
  store i32 %76, i32* %9, align 4
  %77 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %8, align 8
  %78 = load i32, i32* %9, align 4
  %79 = call i32 @i915_gem_object_set_cache_coherency(%struct.drm_i915_gem_object* %77, i32 %78)
  %80 = load i64, i64* %6, align 8
  %81 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %8, align 8
  %82 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %81, i32 0, i32 0
  store i64 %80, i64* %82, align 8
  %83 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %8, align 8
  store %struct.drm_i915_gem_object* %83, %struct.drm_i915_gem_object** %4, align 8
  br label %84

84:                                               ; preds = %75, %49, %41
  %85 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  ret %struct.drm_i915_gem_object* %85
}

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local i32 @IS_ALIGNED(i64, i32) #1

declare dso_local i64 @overflows_type(i64, i32) #1

declare dso_local %struct.drm_i915_gem_object* @ERR_PTR(i32) #1

declare dso_local %struct.drm_i915_gem_object* @i915_gem_object_alloc(...) #1

declare dso_local i32 @drm_gem_private_object_init(i32*, %struct.TYPE_2__*, i64) #1

declare dso_local i32 @i915_gem_object_init(%struct.drm_i915_gem_object*, i32*) #1

declare dso_local i64 @HAS_LLC(%struct.drm_i915_private*) #1

declare dso_local i32 @i915_gem_object_set_cache_coherency(%struct.drm_i915_gem_object*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
