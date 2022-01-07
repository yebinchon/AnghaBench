; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/selftests/extr_i915_gem_evict.c_igt_overcommit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/selftests/extr_i915_gem_evict.c_igt_overcommit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }
%struct.drm_i915_gem_object = type opaque
%struct.i915_vma = type { i32 }

@objects = common dso_local global i32 0, align 4
@I915_GTT_PAGE_SIZE = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"Failed to evict+insert, i915_gem_object_ggtt_pin returned err=%d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @igt_overcommit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @igt_overcommit(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca %struct.drm_i915_gem_object*, align 8
  %5 = alloca %struct.i915_vma*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.drm_i915_private*
  store %struct.drm_i915_private* %8, %struct.drm_i915_private** %3, align 8
  %9 = load i32, i32* @objects, align 4
  %10 = call i32 @LIST_HEAD(i32 %9)
  %11 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %12 = call i32 @populate_ggtt(%struct.drm_i915_private* %11, i32* @objects)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %52

16:                                               ; preds = %1
  %17 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %18 = load i32, i32* @I915_GTT_PAGE_SIZE, align 4
  %19 = call %struct.i915_vma* @i915_gem_object_create_internal(%struct.drm_i915_private* %17, i32 %18)
  %20 = bitcast %struct.i915_vma* %19 to %struct.drm_i915_gem_object*
  store %struct.drm_i915_gem_object* %20, %struct.drm_i915_gem_object** %4, align 8
  %21 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %22 = bitcast %struct.drm_i915_gem_object* %21 to %struct.i915_vma*
  %23 = call i64 @IS_ERR(%struct.i915_vma* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %16
  %26 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %27 = bitcast %struct.drm_i915_gem_object* %26 to %struct.i915_vma*
  %28 = call i32 @PTR_ERR(%struct.i915_vma* %27)
  store i32 %28, i32* %6, align 4
  br label %52

29:                                               ; preds = %16
  %30 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %31 = bitcast %struct.drm_i915_gem_object* %30 to %struct.i915_vma*
  %32 = call i32 @quirk_add(%struct.i915_vma* %31, i32* @objects)
  %33 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %34 = bitcast %struct.drm_i915_gem_object* %33 to %struct.i915_vma*
  %35 = call %struct.i915_vma* @i915_gem_object_ggtt_pin(%struct.i915_vma* %34, i32* null, i32 0, i32 0, i32 0)
  store %struct.i915_vma* %35, %struct.i915_vma** %5, align 8
  %36 = load %struct.i915_vma*, %struct.i915_vma** %5, align 8
  %37 = call i64 @IS_ERR(%struct.i915_vma* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %29
  %40 = load %struct.i915_vma*, %struct.i915_vma** %5, align 8
  %41 = call i32 @PTR_ERR(%struct.i915_vma* %40)
  %42 = load i32, i32* @ENOSPC, align 4
  %43 = sub nsw i32 0, %42
  %44 = icmp ne i32 %41, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %39, %29
  %46 = load %struct.i915_vma*, %struct.i915_vma** %5, align 8
  %47 = call i32 @PTR_ERR(%struct.i915_vma* %46)
  %48 = call i32 @pr_err(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %6, align 4
  br label %52

51:                                               ; preds = %39
  br label %52

52:                                               ; preds = %51, %45, %25, %15
  %53 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %54 = call i32 @cleanup_objects(%struct.drm_i915_private* %53, i32* @objects)
  %55 = load i32, i32* %6, align 4
  ret i32 %55
}

declare dso_local i32 @LIST_HEAD(i32) #1

declare dso_local i32 @populate_ggtt(%struct.drm_i915_private*, i32*) #1

declare dso_local %struct.i915_vma* @i915_gem_object_create_internal(%struct.drm_i915_private*, i32) #1

declare dso_local i64 @IS_ERR(%struct.i915_vma*) #1

declare dso_local i32 @PTR_ERR(%struct.i915_vma*) #1

declare dso_local i32 @quirk_add(%struct.i915_vma*, i32*) #1

declare dso_local %struct.i915_vma* @i915_gem_object_ggtt_pin(%struct.i915_vma*, i32*, i32, i32, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @cleanup_objects(%struct.drm_i915_private*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
