; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_dmabuf.c_i915_gem_dmabuf_mmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_dmabuf.c_i915_gem_dmabuf_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_buf = type { i32 }
%struct.vm_area_struct = type { i64, i64, i32 }
%struct.drm_i915_gem_object = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_buf*, %struct.vm_area_struct*)* @i915_gem_dmabuf_mmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i915_gem_dmabuf_mmap(%struct.dma_buf* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dma_buf*, align 8
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca %struct.drm_i915_gem_object*, align 8
  %7 = alloca i32, align 4
  store %struct.dma_buf* %0, %struct.dma_buf** %4, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %5, align 8
  %8 = load %struct.dma_buf*, %struct.dma_buf** %4, align 8
  %9 = call %struct.drm_i915_gem_object* @dma_buf_to_obj(%struct.dma_buf* %8)
  store %struct.drm_i915_gem_object* %9, %struct.drm_i915_gem_object** %6, align 8
  %10 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %11 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %15 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %18 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = sub nsw i64 %16, %19
  %21 = icmp slt i64 %13, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %57

25:                                               ; preds = %2
  %26 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %27 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %25
  %32 = load i32, i32* @ENODEV, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %57

34:                                               ; preds = %25
  %35 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %36 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %40 = call i32 @call_mmap(i32 %38, %struct.vm_area_struct* %39)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %34
  %44 = load i32, i32* %7, align 4
  store i32 %44, i32* %3, align 4
  br label %57

45:                                               ; preds = %34
  %46 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %47 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @fput(i32 %48)
  %50 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %51 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @get_file(i32 %53)
  %55 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %56 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 8
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %45, %43, %31, %22
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local %struct.drm_i915_gem_object* @dma_buf_to_obj(%struct.dma_buf*) #1

declare dso_local i32 @call_mmap(i32, %struct.vm_area_struct*) #1

declare dso_local i32 @fput(i32) #1

declare dso_local i32 @get_file(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
