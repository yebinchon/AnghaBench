; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_execbuffer.c_use_cpu_reloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_execbuffer.c_use_cpu_reloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reloc_cache = type { i64 }
%struct.drm_i915_gem_object = type { i64, i64 }

@DBG_FORCE_RELOC = common dso_local global i64 0, align 8
@FORCE_CPU_RELOC = common dso_local global i64 0, align 8
@FORCE_GTT_RELOC = common dso_local global i64 0, align 8
@I915_CACHE_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.reloc_cache*, %struct.drm_i915_gem_object*)* @use_cpu_reloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @use_cpu_reloc(%struct.reloc_cache* %0, %struct.drm_i915_gem_object* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.reloc_cache*, align 8
  %5 = alloca %struct.drm_i915_gem_object*, align 8
  store %struct.reloc_cache* %0, %struct.reloc_cache** %4, align 8
  store %struct.drm_i915_gem_object* %1, %struct.drm_i915_gem_object** %5, align 8
  %6 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %5, align 8
  %7 = call i32 @i915_gem_object_has_struct_page(%struct.drm_i915_gem_object* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %39

10:                                               ; preds = %2
  %11 = load i64, i64* @DBG_FORCE_RELOC, align 8
  %12 = load i64, i64* @FORCE_CPU_RELOC, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  store i32 1, i32* %3, align 4
  br label %39

15:                                               ; preds = %10
  %16 = load i64, i64* @DBG_FORCE_RELOC, align 8
  %17 = load i64, i64* @FORCE_GTT_RELOC, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %39

20:                                               ; preds = %15
  %21 = load %struct.reloc_cache*, %struct.reloc_cache** %4, align 8
  %22 = getelementptr inbounds %struct.reloc_cache, %struct.reloc_cache* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %36, label %25

25:                                               ; preds = %20
  %26 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %5, align 8
  %27 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %25
  %31 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %5, align 8
  %32 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @I915_CACHE_NONE, align 8
  %35 = icmp ne i64 %33, %34
  br label %36

36:                                               ; preds = %30, %25, %20
  %37 = phi i1 [ true, %25 ], [ true, %20 ], [ %35, %30 ]
  %38 = zext i1 %37 to i32
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %36, %19, %14, %9
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @i915_gem_object_has_struct_page(%struct.drm_i915_gem_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
