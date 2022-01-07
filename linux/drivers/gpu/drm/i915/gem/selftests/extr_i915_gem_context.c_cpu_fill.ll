; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/selftests/extr_i915_gem_context.c_cpu_fill.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/selftests/extr_i915_gem_context.c_cpu_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_gem_object = type { i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@DW_PER_PAGE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@I915_GEM_DOMAIN_GTT = common dso_local global i32 0, align 4
@I915_GEM_DOMAIN_CPU = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_i915_gem_object*, i32)* @cpu_fill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpu_fill(%struct.drm_i915_gem_object* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_i915_gem_object*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store %struct.drm_i915_gem_object* %0, %struct.drm_i915_gem_object** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %13 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @to_i915(i32 %15)
  %17 = call i32 @HAS_LLC(i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %19 = call i32 @i915_gem_object_prepare_write(%struct.drm_i915_gem_object* %18, i32* %9)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* %10, align 4
  store i32 %23, i32* %3, align 4
  br label %71

24:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %25

25:                                               ; preds = %58, %24
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %28 = call i32 @real_page_count(%struct.drm_i915_gem_object* %27)
  %29 = icmp ult i32 %26, %28
  br i1 %29, label %30, label %61

30:                                               ; preds = %25
  %31 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @i915_gem_object_get_page(%struct.drm_i915_gem_object* %31, i32 %32)
  %34 = call i32* @kmap_atomic(i32 %33)
  store i32* %34, i32** %11, align 8
  store i32 0, i32* %8, align 4
  br label %35

35:                                               ; preds = %45, %30
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @DW_PER_PAGE, align 4
  %38 = icmp ult i32 %36, %37
  br i1 %38, label %39, label %48

39:                                               ; preds = %35
  %40 = load i32, i32* %5, align 4
  %41 = load i32*, i32** %11, align 8
  %42 = load i32, i32* %8, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  store i32 %40, i32* %44, align 4
  br label %45

45:                                               ; preds = %39
  %46 = load i32, i32* %8, align 4
  %47 = add i32 %46, 1
  store i32 %47, i32* %8, align 4
  br label %35

48:                                               ; preds = %35
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %48
  %52 = load i32*, i32** %11, align 8
  %53 = load i32, i32* @PAGE_SIZE, align 4
  %54 = call i32 @drm_clflush_virt_range(i32* %52, i32 %53)
  br label %55

55:                                               ; preds = %51, %48
  %56 = load i32*, i32** %11, align 8
  %57 = call i32 @kunmap_atomic(i32* %56)
  br label %58

58:                                               ; preds = %55
  %59 = load i32, i32* %7, align 4
  %60 = add i32 %59, 1
  store i32 %60, i32* %7, align 4
  br label %25

61:                                               ; preds = %25
  %62 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %63 = call i32 @i915_gem_object_finish_access(%struct.drm_i915_gem_object* %62)
  %64 = load i32, i32* @I915_GEM_DOMAIN_GTT, align 4
  %65 = load i32, i32* @I915_GEM_DOMAIN_CPU, align 4
  %66 = or i32 %64, %65
  %67 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %68 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  %69 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %70 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %69, i32 0, i32 1
  store i64 0, i64* %70, align 8
  store i32 0, i32* %3, align 4
  br label %71

71:                                               ; preds = %61, %22
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i32 @HAS_LLC(i32) #1

declare dso_local i32 @to_i915(i32) #1

declare dso_local i32 @i915_gem_object_prepare_write(%struct.drm_i915_gem_object*, i32*) #1

declare dso_local i32 @real_page_count(%struct.drm_i915_gem_object*) #1

declare dso_local i32* @kmap_atomic(i32) #1

declare dso_local i32 @i915_gem_object_get_page(%struct.drm_i915_gem_object*, i32) #1

declare dso_local i32 @drm_clflush_virt_range(i32*, i32) #1

declare dso_local i32 @kunmap_atomic(i32*) #1

declare dso_local i32 @i915_gem_object_finish_access(%struct.drm_i915_gem_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
