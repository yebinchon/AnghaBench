; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/selftests/extr_i915_gem_coherency.c_cpu_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/selftests/extr_i915_gem_coherency.c_cpu_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_gem_object = type { i32 }
%struct.page = type { i32 }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@CLFLUSH_BEFORE = common dso_local global i32 0, align 4
@CLFLUSH_AFTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_i915_gem_object*, i64, i32)* @cpu_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpu_set(%struct.drm_i915_gem_object* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_i915_gem_object*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.page*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.drm_i915_gem_object* %0, %struct.drm_i915_gem_object** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %5, align 8
  %14 = call i32 @i915_gem_object_prepare_write(%struct.drm_i915_gem_object* %13, i32* %8)
  store i32 %14, i32* %12, align 4
  %15 = load i32, i32* %12, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* %12, align 4
  store i32 %18, i32* %4, align 4
  br label %55

19:                                               ; preds = %3
  %20 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %5, align 8
  %21 = load i64, i64* %6, align 8
  %22 = load i64, i64* @PAGE_SHIFT, align 8
  %23 = lshr i64 %21, %22
  %24 = call %struct.page* @i915_gem_object_get_page(%struct.drm_i915_gem_object* %20, i64 %23)
  store %struct.page* %24, %struct.page** %9, align 8
  %25 = load %struct.page*, %struct.page** %9, align 8
  %26 = call i8* @kmap_atomic(%struct.page* %25)
  store i8* %26, i8** %10, align 8
  %27 = load i8*, i8** %10, align 8
  %28 = load i64, i64* %6, align 8
  %29 = call i32 @offset_in_page(i64 %28)
  %30 = sext i32 %29 to i64
  %31 = getelementptr i8, i8* %27, i64 %30
  %32 = bitcast i8* %31 to i32*
  store i32* %32, i32** %11, align 8
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @CLFLUSH_BEFORE, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %19
  %38 = load i32*, i32** %11, align 8
  %39 = call i32 @drm_clflush_virt_range(i32* %38, i32 4)
  br label %40

40:                                               ; preds = %37, %19
  %41 = load i32, i32* %7, align 4
  %42 = load i32*, i32** %11, align 8
  store i32 %41, i32* %42, align 4
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @CLFLUSH_AFTER, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %40
  %48 = load i32*, i32** %11, align 8
  %49 = call i32 @drm_clflush_virt_range(i32* %48, i32 4)
  br label %50

50:                                               ; preds = %47, %40
  %51 = load i8*, i8** %10, align 8
  %52 = call i32 @kunmap_atomic(i8* %51)
  %53 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %5, align 8
  %54 = call i32 @i915_gem_object_finish_access(%struct.drm_i915_gem_object* %53)
  store i32 0, i32* %4, align 4
  br label %55

55:                                               ; preds = %50, %17
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i32 @i915_gem_object_prepare_write(%struct.drm_i915_gem_object*, i32*) #1

declare dso_local %struct.page* @i915_gem_object_get_page(%struct.drm_i915_gem_object*, i64) #1

declare dso_local i8* @kmap_atomic(%struct.page*) #1

declare dso_local i32 @offset_in_page(i64) #1

declare dso_local i32 @drm_clflush_virt_range(i32*, i32) #1

declare dso_local i32 @kunmap_atomic(i8*) #1

declare dso_local i32 @i915_gem_object_finish_access(%struct.drm_i915_gem_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
