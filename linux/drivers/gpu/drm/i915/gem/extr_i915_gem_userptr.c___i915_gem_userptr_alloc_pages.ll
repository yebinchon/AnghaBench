; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_userptr.c___i915_gem_userptr_alloc_pages.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_userptr.c___i915_gem_userptr_alloc_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sg_table = type { i32 }
%struct.drm_i915_gem_object = type { i32 }
%struct.page = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sg_table* (%struct.drm_i915_gem_object*, %struct.page**, i32)* @__i915_gem_userptr_alloc_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sg_table* @__i915_gem_userptr_alloc_pages(%struct.drm_i915_gem_object* %0, %struct.page** %1, i32 %2) #0 {
  %4 = alloca %struct.sg_table*, align 8
  %5 = alloca %struct.drm_i915_gem_object*, align 8
  %6 = alloca %struct.page**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sg_table*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.drm_i915_gem_object* %0, %struct.drm_i915_gem_object** %5, align 8
  store %struct.page** %1, %struct.page*** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = call i32 (...) @i915_sg_segment_size()
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.sg_table* @kmalloc(i32 4, i32 %13)
  store %struct.sg_table* %14, %struct.sg_table** %9, align 8
  %15 = load %struct.sg_table*, %struct.sg_table** %9, align 8
  %16 = icmp ne %struct.sg_table* %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  %20 = call %struct.sg_table* @ERR_PTR(i32 %19)
  store %struct.sg_table* %20, %struct.sg_table** %4, align 8
  br label %68

21:                                               ; preds = %3
  br label %22

22:                                               ; preds = %51, %21
  %23 = load %struct.sg_table*, %struct.sg_table** %9, align 8
  %24 = load %struct.page**, %struct.page*** %6, align 8
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @PAGE_SHIFT, align 4
  %28 = shl i32 %26, %27
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call i32 @__sg_alloc_table_from_pages(%struct.sg_table* %23, %struct.page** %24, i32 %25, i32 0, i32 %28, i32 %29, i32 %30)
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %22
  %35 = load %struct.sg_table*, %struct.sg_table** %9, align 8
  %36 = call i32 @kfree(%struct.sg_table* %35)
  %37 = load i32, i32* %11, align 4
  %38 = call %struct.sg_table* @ERR_PTR(i32 %37)
  store %struct.sg_table* %38, %struct.sg_table** %4, align 8
  br label %68

39:                                               ; preds = %22
  %40 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %5, align 8
  %41 = load %struct.sg_table*, %struct.sg_table** %9, align 8
  %42 = call i32 @i915_gem_gtt_prepare_pages(%struct.drm_i915_gem_object* %40, %struct.sg_table* %41)
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %11, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %58

45:                                               ; preds = %39
  %46 = load %struct.sg_table*, %struct.sg_table** %9, align 8
  %47 = call i32 @sg_free_table(%struct.sg_table* %46)
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* @PAGE_SIZE, align 4
  %50 = icmp ugt i32 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %45
  %52 = load i32, i32* @PAGE_SIZE, align 4
  store i32 %52, i32* %8, align 4
  br label %22

53:                                               ; preds = %45
  %54 = load %struct.sg_table*, %struct.sg_table** %9, align 8
  %55 = call i32 @kfree(%struct.sg_table* %54)
  %56 = load i32, i32* %11, align 4
  %57 = call %struct.sg_table* @ERR_PTR(i32 %56)
  store %struct.sg_table* %57, %struct.sg_table** %4, align 8
  br label %68

58:                                               ; preds = %39
  %59 = load %struct.sg_table*, %struct.sg_table** %9, align 8
  %60 = getelementptr inbounds %struct.sg_table, %struct.sg_table* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @i915_sg_page_sizes(i32 %61)
  store i32 %62, i32* %10, align 4
  %63 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %5, align 8
  %64 = load %struct.sg_table*, %struct.sg_table** %9, align 8
  %65 = load i32, i32* %10, align 4
  %66 = call i32 @__i915_gem_object_set_pages(%struct.drm_i915_gem_object* %63, %struct.sg_table* %64, i32 %65)
  %67 = load %struct.sg_table*, %struct.sg_table** %9, align 8
  store %struct.sg_table* %67, %struct.sg_table** %4, align 8
  br label %68

68:                                               ; preds = %58, %53, %34, %17
  %69 = load %struct.sg_table*, %struct.sg_table** %4, align 8
  ret %struct.sg_table* %69
}

declare dso_local i32 @i915_sg_segment_size(...) #1

declare dso_local %struct.sg_table* @kmalloc(i32, i32) #1

declare dso_local %struct.sg_table* @ERR_PTR(i32) #1

declare dso_local i32 @__sg_alloc_table_from_pages(%struct.sg_table*, %struct.page**, i32, i32, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.sg_table*) #1

declare dso_local i32 @i915_gem_gtt_prepare_pages(%struct.drm_i915_gem_object*, %struct.sg_table*) #1

declare dso_local i32 @sg_free_table(%struct.sg_table*) #1

declare dso_local i32 @i915_sg_page_sizes(i32) #1

declare dso_local i32 @__i915_gem_object_set_pages(%struct.drm_i915_gem_object*, %struct.sg_table*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
