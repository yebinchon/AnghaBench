; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_phys.c_i915_gem_object_put_pages_phys.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_phys.c_i915_gem_object_put_pages_phys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_gem_object = type { %struct.TYPE_8__*, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i8* }
%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.address_space* }
%struct.address_space = type { i32 }
%struct.TYPE_6__ = type { i32, i64 }
%struct.sg_table = type { i32 }
%struct.page = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@I915_MADV_WILLNEED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_gem_object*, %struct.sg_table*)* @i915_gem_object_put_pages_phys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i915_gem_object_put_pages_phys(%struct.drm_i915_gem_object* %0, %struct.sg_table* %1) #0 {
  %3 = alloca %struct.drm_i915_gem_object*, align 8
  %4 = alloca %struct.sg_table*, align 8
  %5 = alloca %struct.address_space*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.page*, align 8
  %9 = alloca i8*, align 8
  store %struct.drm_i915_gem_object* %0, %struct.drm_i915_gem_object** %3, align 8
  store %struct.sg_table* %1, %struct.sg_table** %4, align 8
  %10 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  %11 = load %struct.sg_table*, %struct.sg_table** %4, align 8
  %12 = call i32 @__i915_gem_object_release_shmem(%struct.drm_i915_gem_object* %10, %struct.sg_table* %11, i32 0)
  %13 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  %14 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %84

18:                                               ; preds = %2
  %19 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  %20 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 2
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load %struct.address_space*, %struct.address_space** %23, align 8
  store %struct.address_space* %24, %struct.address_space** %5, align 8
  %25 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  %26 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %25, i32 0, i32 0
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  store i8* %29, i8** %6, align 8
  store i32 0, i32* %7, align 4
  br label %30

30:                                               ; preds = %77, %18
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  %33 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @PAGE_SIZE, align 4
  %37 = sdiv i32 %35, %36
  %38 = icmp slt i32 %31, %37
  br i1 %38, label %39, label %80

39:                                               ; preds = %30
  %40 = load %struct.address_space*, %struct.address_space** %5, align 8
  %41 = load i32, i32* %7, align 4
  %42 = call %struct.page* @shmem_read_mapping_page(%struct.address_space* %40, i32 %41)
  store %struct.page* %42, %struct.page** %8, align 8
  %43 = load %struct.page*, %struct.page** %8, align 8
  %44 = call i64 @IS_ERR(%struct.page* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %39
  br label %77

47:                                               ; preds = %39
  %48 = load %struct.page*, %struct.page** %8, align 8
  %49 = call i8* @kmap_atomic(%struct.page* %48)
  store i8* %49, i8** %9, align 8
  %50 = load i8*, i8** %6, align 8
  %51 = load i32, i32* @PAGE_SIZE, align 4
  %52 = call i32 @drm_clflush_virt_range(i8* %50, i32 %51)
  %53 = load i8*, i8** %9, align 8
  %54 = load i8*, i8** %6, align 8
  %55 = load i32, i32* @PAGE_SIZE, align 4
  %56 = call i32 @memcpy(i8* %53, i8* %54, i32 %55)
  %57 = load i8*, i8** %9, align 8
  %58 = call i32 @kunmap_atomic(i8* %57)
  %59 = load %struct.page*, %struct.page** %8, align 8
  %60 = call i32 @set_page_dirty(%struct.page* %59)
  %61 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  %62 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @I915_MADV_WILLNEED, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %47
  %68 = load %struct.page*, %struct.page** %8, align 8
  %69 = call i32 @mark_page_accessed(%struct.page* %68)
  br label %70

70:                                               ; preds = %67, %47
  %71 = load %struct.page*, %struct.page** %8, align 8
  %72 = call i32 @put_page(%struct.page* %71)
  %73 = load i32, i32* @PAGE_SIZE, align 4
  %74 = load i8*, i8** %6, align 8
  %75 = sext i32 %73 to i64
  %76 = getelementptr inbounds i8, i8* %74, i64 %75
  store i8* %76, i8** %6, align 8
  br label %77

77:                                               ; preds = %70, %46
  %78 = load i32, i32* %7, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %7, align 4
  br label %30

80:                                               ; preds = %30
  %81 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  %82 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  store i32 0, i32* %83, align 8
  br label %84

84:                                               ; preds = %80, %2
  %85 = load %struct.sg_table*, %struct.sg_table** %4, align 8
  %86 = call i32 @sg_free_table(%struct.sg_table* %85)
  %87 = load %struct.sg_table*, %struct.sg_table** %4, align 8
  %88 = call i32 @kfree(%struct.sg_table* %87)
  %89 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  %90 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  %94 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %93, i32 0, i32 0
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %94, align 8
  %96 = call i32 @drm_pci_free(i32 %92, %struct.TYPE_8__* %95)
  ret void
}

declare dso_local i32 @__i915_gem_object_release_shmem(%struct.drm_i915_gem_object*, %struct.sg_table*, i32) #1

declare dso_local %struct.page* @shmem_read_mapping_page(%struct.address_space*, i32) #1

declare dso_local i64 @IS_ERR(%struct.page*) #1

declare dso_local i8* @kmap_atomic(%struct.page*) #1

declare dso_local i32 @drm_clflush_virt_range(i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @kunmap_atomic(i8*) #1

declare dso_local i32 @set_page_dirty(%struct.page*) #1

declare dso_local i32 @mark_page_accessed(%struct.page*) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local i32 @sg_free_table(%struct.sg_table*) #1

declare dso_local i32 @kfree(%struct.sg_table*) #1

declare dso_local i32 @drm_pci_free(i32, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
