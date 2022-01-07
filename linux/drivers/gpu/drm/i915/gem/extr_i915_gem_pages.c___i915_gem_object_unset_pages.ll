; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_pages.c___i915_gem_object_unset_pages.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_pages.c___i915_gem_object_unset_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sg_table = type { i32 }
%struct.drm_i915_gem_object = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32*, i32 }
%struct.TYPE_3__ = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sg_table* @__i915_gem_object_unset_pages(%struct.drm_i915_gem_object* %0) #0 {
  %2 = alloca %struct.sg_table*, align 8
  %3 = alloca %struct.drm_i915_gem_object*, align 8
  %4 = alloca %struct.sg_table*, align 8
  %5 = alloca i8*, align 8
  store %struct.drm_i915_gem_object* %0, %struct.drm_i915_gem_object** %3, align 8
  %6 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  %7 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 2
  %9 = call %struct.sg_table* @fetch_and_zero(i32* %8)
  store %struct.sg_table* %9, %struct.sg_table** %4, align 8
  %10 = load %struct.sg_table*, %struct.sg_table** %4, align 8
  %11 = call i64 @IS_ERR_OR_NULL(%struct.sg_table* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load %struct.sg_table*, %struct.sg_table** %4, align 8
  store %struct.sg_table* %14, %struct.sg_table** %2, align 8
  br label %55

15:                                               ; preds = %1
  %16 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  %17 = call i32 @i915_gem_object_make_unshrinkable(%struct.drm_i915_gem_object* %16)
  %18 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  %19 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %43

23:                                               ; preds = %15
  %24 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  %25 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = call i8* @page_mask_bits(i32* %27)
  store i8* %28, i8** %5, align 8
  %29 = load i8*, i8** %5, align 8
  %30 = call i64 @is_vmalloc_addr(i8* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %23
  %33 = load i8*, i8** %5, align 8
  %34 = call i32 @vunmap(i8* %33)
  br label %39

35:                                               ; preds = %23
  %36 = load i8*, i8** %5, align 8
  %37 = call i32 @kmap_to_page(i8* %36)
  %38 = call i32 @kunmap(i32 %37)
  br label %39

39:                                               ; preds = %35, %32
  %40 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  %41 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  store i32* null, i32** %42, align 8
  br label %43

43:                                               ; preds = %39, %15
  %44 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  %45 = call i32 @__i915_gem_object_reset_page_iter(%struct.drm_i915_gem_object* %44)
  %46 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  %47 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  store i64 0, i64* %49, align 8
  %50 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  %51 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  store i64 0, i64* %53, align 8
  %54 = load %struct.sg_table*, %struct.sg_table** %4, align 8
  store %struct.sg_table* %54, %struct.sg_table** %2, align 8
  br label %55

55:                                               ; preds = %43, %13
  %56 = load %struct.sg_table*, %struct.sg_table** %2, align 8
  ret %struct.sg_table* %56
}

declare dso_local %struct.sg_table* @fetch_and_zero(i32*) #1

declare dso_local i64 @IS_ERR_OR_NULL(%struct.sg_table*) #1

declare dso_local i32 @i915_gem_object_make_unshrinkable(%struct.drm_i915_gem_object*) #1

declare dso_local i8* @page_mask_bits(i32*) #1

declare dso_local i64 @is_vmalloc_addr(i8*) #1

declare dso_local i32 @vunmap(i8*) #1

declare dso_local i32 @kunmap(i32) #1

declare dso_local i32 @kmap_to_page(i8*) #1

declare dso_local i32 @__i915_gem_object_reset_page_iter(%struct.drm_i915_gem_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
