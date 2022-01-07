; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_execbuffer.c_reloc_kmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_execbuffer.c_reloc_kmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_gem_object = type { i32 }
%struct.reloc_cache = type { i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8* }

@KMAP = common dso_local global i32 0, align 4
@CLFLUSH_FLAGS = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.drm_i915_gem_object*, %struct.reloc_cache*, i64)* @reloc_kmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @reloc_kmap(%struct.drm_i915_gem_object* %0, %struct.reloc_cache* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.drm_i915_gem_object*, align 8
  %6 = alloca %struct.reloc_cache*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.drm_i915_gem_object* %0, %struct.drm_i915_gem_object** %5, align 8
  store %struct.reloc_cache* %1, %struct.reloc_cache** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.reloc_cache*, %struct.reloc_cache** %6, align 8
  %12 = getelementptr inbounds %struct.reloc_cache, %struct.reloc_cache* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %3
  %16 = load %struct.reloc_cache*, %struct.reloc_cache** %6, align 8
  %17 = getelementptr inbounds %struct.reloc_cache, %struct.reloc_cache* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @unmask_page(i64 %18)
  %20 = call i32 @kunmap_atomic(i32 %19)
  br label %56

21:                                               ; preds = %3
  %22 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %5, align 8
  %23 = call i32 @i915_gem_object_prepare_write(%struct.drm_i915_gem_object* %22, i32* %9)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i32, i32* %10, align 4
  %28 = call i8* @ERR_PTR(i32 %27)
  store i8* %28, i8** %4, align 8
  br label %74

29:                                               ; preds = %21
  %30 = load i32, i32* @KMAP, align 4
  %31 = load i32, i32* @CLFLUSH_FLAGS, align 4
  %32 = and i32 %30, %31
  %33 = call i32 @BUILD_BUG_ON(i32 %32)
  %34 = load i32, i32* @KMAP, align 4
  %35 = load i32, i32* @CLFLUSH_FLAGS, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @PAGE_MASK, align 4
  %38 = and i32 %36, %37
  %39 = call i32 @BUILD_BUG_ON(i32 %38)
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* @KMAP, align 4
  %42 = or i32 %40, %41
  %43 = zext i32 %42 to i64
  %44 = load %struct.reloc_cache*, %struct.reloc_cache** %6, align 8
  %45 = getelementptr inbounds %struct.reloc_cache, %struct.reloc_cache* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  %46 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %5, align 8
  %47 = bitcast %struct.drm_i915_gem_object* %46 to i8*
  %48 = load %struct.reloc_cache*, %struct.reloc_cache** %6, align 8
  %49 = getelementptr inbounds %struct.reloc_cache, %struct.reloc_cache* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  store i8* %47, i8** %50, align 8
  %51 = load i32, i32* %9, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %29
  %54 = call i32 (...) @mb()
  br label %55

55:                                               ; preds = %53, %29
  br label %56

56:                                               ; preds = %55, %15
  %57 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %5, align 8
  %58 = load i64, i64* %7, align 8
  %59 = call i32 @i915_gem_object_get_dirty_page(%struct.drm_i915_gem_object* %57, i64 %58)
  %60 = call i8* @kmap_atomic(i32 %59)
  store i8* %60, i8** %8, align 8
  %61 = load %struct.reloc_cache*, %struct.reloc_cache** %6, align 8
  %62 = getelementptr inbounds %struct.reloc_cache, %struct.reloc_cache* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = call i64 @unmask_flags(i64 %63)
  %65 = load i8*, i8** %8, align 8
  %66 = ptrtoint i8* %65 to i64
  %67 = or i64 %64, %66
  %68 = load %struct.reloc_cache*, %struct.reloc_cache** %6, align 8
  %69 = getelementptr inbounds %struct.reloc_cache, %struct.reloc_cache* %68, i32 0, i32 0
  store i64 %67, i64* %69, align 8
  %70 = load i64, i64* %7, align 8
  %71 = load %struct.reloc_cache*, %struct.reloc_cache** %6, align 8
  %72 = getelementptr inbounds %struct.reloc_cache, %struct.reloc_cache* %71, i32 0, i32 1
  store i64 %70, i64* %72, align 8
  %73 = load i8*, i8** %8, align 8
  store i8* %73, i8** %4, align 8
  br label %74

74:                                               ; preds = %56, %26
  %75 = load i8*, i8** %4, align 8
  ret i8* %75
}

declare dso_local i32 @kunmap_atomic(i32) #1

declare dso_local i32 @unmask_page(i64) #1

declare dso_local i32 @i915_gem_object_prepare_write(%struct.drm_i915_gem_object*, i32*) #1

declare dso_local i8* @ERR_PTR(i32) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @mb(...) #1

declare dso_local i8* @kmap_atomic(i32) #1

declare dso_local i32 @i915_gem_object_get_dirty_page(%struct.drm_i915_gem_object*, i64) #1

declare dso_local i64 @unmask_flags(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
