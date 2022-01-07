; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_dmabuf.c_i915_gem_dmabuf_kmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_dmabuf.c_i915_gem_dmabuf_kmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_buf = type { i32 }
%struct.drm_i915_gem_object = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.page = type { i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.dma_buf*, i64)* @i915_gem_dmabuf_kmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @i915_gem_dmabuf_kmap(%struct.dma_buf* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.dma_buf*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.drm_i915_gem_object*, align 8
  %7 = alloca %struct.page*, align 8
  store %struct.dma_buf* %0, %struct.dma_buf** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.dma_buf*, %struct.dma_buf** %4, align 8
  %9 = call %struct.drm_i915_gem_object* @dma_buf_to_obj(%struct.dma_buf* %8)
  store %struct.drm_i915_gem_object* %9, %struct.drm_i915_gem_object** %6, align 8
  %10 = load i64, i64* %5, align 8
  %11 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %12 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i32, i32* @PAGE_SHIFT, align 4
  %16 = zext i32 %15 to i64
  %17 = lshr i64 %14, %16
  %18 = icmp uge i64 %10, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %44

20:                                               ; preds = %2
  %21 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %22 = call i32 @i915_gem_object_has_struct_page(%struct.drm_i915_gem_object* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  store i8* null, i8** %3, align 8
  br label %44

25:                                               ; preds = %20
  %26 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %27 = call i64 @i915_gem_object_pin_pages(%struct.drm_i915_gem_object* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  store i8* null, i8** %3, align 8
  br label %44

30:                                               ; preds = %25
  %31 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %32 = load i64, i64* %5, align 8
  %33 = call %struct.page* @i915_gem_object_get_page(%struct.drm_i915_gem_object* %31, i64 %32)
  store %struct.page* %33, %struct.page** %7, align 8
  %34 = load %struct.page*, %struct.page** %7, align 8
  %35 = call i64 @IS_ERR(%struct.page* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  br label %41

38:                                               ; preds = %30
  %39 = load %struct.page*, %struct.page** %7, align 8
  %40 = call i8* @kmap(%struct.page* %39)
  store i8* %40, i8** %3, align 8
  br label %44

41:                                               ; preds = %37
  %42 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %43 = call i32 @i915_gem_object_unpin_pages(%struct.drm_i915_gem_object* %42)
  store i8* null, i8** %3, align 8
  br label %44

44:                                               ; preds = %41, %38, %29, %24, %19
  %45 = load i8*, i8** %3, align 8
  ret i8* %45
}

declare dso_local %struct.drm_i915_gem_object* @dma_buf_to_obj(%struct.dma_buf*) #1

declare dso_local i32 @i915_gem_object_has_struct_page(%struct.drm_i915_gem_object*) #1

declare dso_local i64 @i915_gem_object_pin_pages(%struct.drm_i915_gem_object*) #1

declare dso_local %struct.page* @i915_gem_object_get_page(%struct.drm_i915_gem_object*, i64) #1

declare dso_local i64 @IS_ERR(%struct.page*) #1

declare dso_local i8* @kmap(%struct.page*) #1

declare dso_local i32 @i915_gem_object_unpin_pages(%struct.drm_i915_gem_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
