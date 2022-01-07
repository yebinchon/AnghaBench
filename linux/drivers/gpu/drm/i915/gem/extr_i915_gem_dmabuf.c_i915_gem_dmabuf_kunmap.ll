; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_dmabuf.c_i915_gem_dmabuf_kunmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_dmabuf.c_i915_gem_dmabuf_kunmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_buf = type { i32 }
%struct.drm_i915_gem_object = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dma_buf*, i64, i8*)* @i915_gem_dmabuf_kunmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i915_gem_dmabuf_kunmap(%struct.dma_buf* %0, i64 %1, i8* %2) #0 {
  %4 = alloca %struct.dma_buf*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_i915_gem_object*, align 8
  store %struct.dma_buf* %0, %struct.dma_buf** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load %struct.dma_buf*, %struct.dma_buf** %4, align 8
  %9 = call %struct.drm_i915_gem_object* @dma_buf_to_obj(%struct.dma_buf* %8)
  store %struct.drm_i915_gem_object* %9, %struct.drm_i915_gem_object** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = call i32 @virt_to_page(i8* %10)
  %12 = call i32 @kunmap(i32 %11)
  %13 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %7, align 8
  %14 = call i32 @i915_gem_object_unpin_pages(%struct.drm_i915_gem_object* %13)
  ret void
}

declare dso_local %struct.drm_i915_gem_object* @dma_buf_to_obj(%struct.dma_buf*) #1

declare dso_local i32 @kunmap(i32) #1

declare dso_local i32 @virt_to_page(i8*) #1

declare dso_local i32 @i915_gem_object_unpin_pages(%struct.drm_i915_gem_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
