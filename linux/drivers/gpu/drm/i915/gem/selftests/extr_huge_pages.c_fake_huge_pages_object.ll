; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/selftests/extr_huge_pages.c_fake_huge_pages_object.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/selftests/extr_huge_pages.c_fake_huge_pages_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_gem_object = type { i32, i8*, i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.drm_i915_private = type { i32 }

@I915_GTT_PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@UINT_MAX = common dso_local global i64 0, align 8
@E2BIG = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@fake_ops_single = common dso_local global i32 0, align 4
@fake_ops = common dso_local global i32 0, align 4
@I915_GEM_DOMAIN_CPU = common dso_local global i8* null, align 8
@I915_CACHE_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.drm_i915_gem_object* (%struct.drm_i915_private*, i32, i32)* @fake_huge_pages_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.drm_i915_gem_object* @fake_huge_pages_object(%struct.drm_i915_private* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.drm_i915_gem_object*, align 8
  %5 = alloca %struct.drm_i915_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.drm_i915_gem_object*, align 8
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i32 @GEM_BUG_ON(i32 %12)
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @I915_GTT_PAGE_SIZE, align 4
  %16 = call i32 @IS_ALIGNED(i32 %14, i32 %15)
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i32 @GEM_BUG_ON(i32 %19)
  %21 = load i32, i32* %6, align 4
  %22 = load i64, i64* @PAGE_SHIFT, align 8
  %23 = trunc i64 %22 to i32
  %24 = ashr i32 %21, %23
  %25 = sext i32 %24 to i64
  %26 = load i64, i64* @UINT_MAX, align 8
  %27 = icmp sgt i64 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %3
  %29 = load i32, i32* @E2BIG, align 4
  %30 = sub nsw i32 0, %29
  %31 = call %struct.drm_i915_gem_object* @ERR_PTR(i32 %30)
  store %struct.drm_i915_gem_object* %31, %struct.drm_i915_gem_object** %4, align 8
  br label %78

32:                                               ; preds = %3
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %8, align 8
  %35 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i64 @overflows_type(i32 %33, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %32
  %41 = load i32, i32* @E2BIG, align 4
  %42 = sub nsw i32 0, %41
  %43 = call %struct.drm_i915_gem_object* @ERR_PTR(i32 %42)
  store %struct.drm_i915_gem_object* %43, %struct.drm_i915_gem_object** %4, align 8
  br label %78

44:                                               ; preds = %32
  %45 = call %struct.drm_i915_gem_object* (...) @i915_gem_object_alloc()
  store %struct.drm_i915_gem_object* %45, %struct.drm_i915_gem_object** %8, align 8
  %46 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %8, align 8
  %47 = icmp ne %struct.drm_i915_gem_object* %46, null
  br i1 %47, label %52, label %48

48:                                               ; preds = %44
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  %51 = call %struct.drm_i915_gem_object* @ERR_PTR(i32 %50)
  store %struct.drm_i915_gem_object* %51, %struct.drm_i915_gem_object** %4, align 8
  br label %78

52:                                               ; preds = %44
  %53 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %54 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %53, i32 0, i32 0
  %55 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %8, align 8
  %56 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %55, i32 0, i32 3
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @drm_gem_private_object_init(i32* %54, %struct.TYPE_2__* %56, i32 %57)
  %59 = load i32, i32* %7, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %52
  %62 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %8, align 8
  %63 = call i32 @i915_gem_object_init(%struct.drm_i915_gem_object* %62, i32* @fake_ops_single)
  br label %67

64:                                               ; preds = %52
  %65 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %8, align 8
  %66 = call i32 @i915_gem_object_init(%struct.drm_i915_gem_object* %65, i32* @fake_ops)
  br label %67

67:                                               ; preds = %64, %61
  %68 = load i8*, i8** @I915_GEM_DOMAIN_CPU, align 8
  %69 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %8, align 8
  %70 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %69, i32 0, i32 2
  store i8* %68, i8** %70, align 8
  %71 = load i8*, i8** @I915_GEM_DOMAIN_CPU, align 8
  %72 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %8, align 8
  %73 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %72, i32 0, i32 1
  store i8* %71, i8** %73, align 8
  %74 = load i32, i32* @I915_CACHE_NONE, align 4
  %75 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %8, align 8
  %76 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  %77 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %8, align 8
  store %struct.drm_i915_gem_object* %77, %struct.drm_i915_gem_object** %4, align 8
  br label %78

78:                                               ; preds = %67, %48, %40, %28
  %79 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  ret %struct.drm_i915_gem_object* %79
}

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local i32 @IS_ALIGNED(i32, i32) #1

declare dso_local %struct.drm_i915_gem_object* @ERR_PTR(i32) #1

declare dso_local i64 @overflows_type(i32, i32) #1

declare dso_local %struct.drm_i915_gem_object* @i915_gem_object_alloc(...) #1

declare dso_local i32 @drm_gem_private_object_init(i32*, %struct.TYPE_2__*, i32) #1

declare dso_local i32 @i915_gem_object_init(%struct.drm_i915_gem_object*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
