; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/selftests/extr_huge_pages.c_huge_pages_object.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/selftests/extr_huge_pages.c_huge_pages_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_gem_object = type { %struct.TYPE_3__, i32, i8*, i8*, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.drm_i915_private = type { i32 }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@INT_MAX = common dso_local global i64 0, align 8
@E2BIG = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@huge_page_ops = common dso_local global i32 0, align 4
@I915_GEM_DOMAIN_CPU = common dso_local global i8* null, align 8
@I915_CACHE_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.drm_i915_gem_object* (%struct.drm_i915_private*, i32, i32)* @huge_pages_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.drm_i915_gem_object* @huge_pages_object(%struct.drm_i915_private* %0, i32 %1, i32 %2) #0 {
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
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @__ffs(i32 %15)
  %17 = call i32 @BIT(i32 %16)
  %18 = call i32 @IS_ALIGNED(i32 %14, i32 %17)
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i32 @GEM_BUG_ON(i32 %21)
  %23 = load i32, i32* %6, align 4
  %24 = load i64, i64* @PAGE_SHIFT, align 8
  %25 = trunc i64 %24 to i32
  %26 = ashr i32 %23, %25
  %27 = sext i32 %26 to i64
  %28 = load i64, i64* @INT_MAX, align 8
  %29 = icmp sgt i64 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %3
  %31 = load i32, i32* @E2BIG, align 4
  %32 = sub nsw i32 0, %31
  %33 = call %struct.drm_i915_gem_object* @ERR_PTR(i32 %32)
  store %struct.drm_i915_gem_object* %33, %struct.drm_i915_gem_object** %4, align 8
  br label %77

34:                                               ; preds = %3
  %35 = load i32, i32* %6, align 4
  %36 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %8, align 8
  %37 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %36, i32 0, i32 4
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i64 @overflows_type(i32 %35, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %34
  %43 = load i32, i32* @E2BIG, align 4
  %44 = sub nsw i32 0, %43
  %45 = call %struct.drm_i915_gem_object* @ERR_PTR(i32 %44)
  store %struct.drm_i915_gem_object* %45, %struct.drm_i915_gem_object** %4, align 8
  br label %77

46:                                               ; preds = %34
  %47 = call %struct.drm_i915_gem_object* (...) @i915_gem_object_alloc()
  store %struct.drm_i915_gem_object* %47, %struct.drm_i915_gem_object** %8, align 8
  %48 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %8, align 8
  %49 = icmp ne %struct.drm_i915_gem_object* %48, null
  br i1 %49, label %54, label %50

50:                                               ; preds = %46
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  %53 = call %struct.drm_i915_gem_object* @ERR_PTR(i32 %52)
  store %struct.drm_i915_gem_object* %53, %struct.drm_i915_gem_object** %4, align 8
  br label %77

54:                                               ; preds = %46
  %55 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %56 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %55, i32 0, i32 0
  %57 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %8, align 8
  %58 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %57, i32 0, i32 4
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @drm_gem_private_object_init(i32* %56, %struct.TYPE_4__* %58, i32 %59)
  %61 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %8, align 8
  %62 = call i32 @i915_gem_object_init(%struct.drm_i915_gem_object* %61, i32* @huge_page_ops)
  %63 = load i8*, i8** @I915_GEM_DOMAIN_CPU, align 8
  %64 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %8, align 8
  %65 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %64, i32 0, i32 3
  store i8* %63, i8** %65, align 8
  %66 = load i8*, i8** @I915_GEM_DOMAIN_CPU, align 8
  %67 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %8, align 8
  %68 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %67, i32 0, i32 2
  store i8* %66, i8** %68, align 8
  %69 = load i32, i32* @I915_CACHE_NONE, align 4
  %70 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %8, align 8
  %71 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  %72 = load i32, i32* %7, align 4
  %73 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %8, align 8
  %74 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  store i32 %72, i32* %75, align 8
  %76 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %8, align 8
  store %struct.drm_i915_gem_object* %76, %struct.drm_i915_gem_object** %4, align 8
  br label %77

77:                                               ; preds = %54, %50, %42, %30
  %78 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  ret %struct.drm_i915_gem_object* %78
}

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local i32 @IS_ALIGNED(i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @__ffs(i32) #1

declare dso_local %struct.drm_i915_gem_object* @ERR_PTR(i32) #1

declare dso_local i64 @overflows_type(i32, i32) #1

declare dso_local %struct.drm_i915_gem_object* @i915_gem_object_alloc(...) #1

declare dso_local i32 @drm_gem_private_object_init(i32*, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @i915_gem_object_init(%struct.drm_i915_gem_object*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
