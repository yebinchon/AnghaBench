; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_dmabuf.c_i915_gem_begin_cpu_access.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_dmabuf.c_i915_gem_begin_cpu_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_buf = type { i32 }
%struct.drm_i915_gem_object = type { i32 }

@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_buf*, i32)* @i915_gem_begin_cpu_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i915_gem_begin_cpu_access(%struct.dma_buf* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dma_buf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_i915_gem_object*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dma_buf* %0, %struct.dma_buf** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.dma_buf*, %struct.dma_buf** %4, align 8
  %10 = call %struct.drm_i915_gem_object* @dma_buf_to_obj(%struct.dma_buf* %9)
  store %struct.drm_i915_gem_object* %10, %struct.drm_i915_gem_object** %6, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %18, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @DMA_TO_DEVICE, align 4
  %17 = icmp eq i32 %15, %16
  br label %18

18:                                               ; preds = %14, %2
  %19 = phi i1 [ true, %2 ], [ %17, %14 ]
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %7, align 4
  %21 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %22 = call i32 @i915_gem_object_pin_pages(%struct.drm_i915_gem_object* %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = load i32, i32* %8, align 4
  store i32 %26, i32* %3, align 4
  br label %43

27:                                               ; preds = %18
  %28 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %29 = call i32 @i915_gem_object_lock_interruptible(%struct.drm_i915_gem_object* %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  br label %39

33:                                               ; preds = %27
  %34 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @i915_gem_object_set_to_cpu_domain(%struct.drm_i915_gem_object* %34, i32 %35)
  store i32 %36, i32* %8, align 4
  %37 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %38 = call i32 @i915_gem_object_unlock(%struct.drm_i915_gem_object* %37)
  br label %39

39:                                               ; preds = %33, %32
  %40 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %41 = call i32 @i915_gem_object_unpin_pages(%struct.drm_i915_gem_object* %40)
  %42 = load i32, i32* %8, align 4
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %39, %25
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local %struct.drm_i915_gem_object* @dma_buf_to_obj(%struct.dma_buf*) #1

declare dso_local i32 @i915_gem_object_pin_pages(%struct.drm_i915_gem_object*) #1

declare dso_local i32 @i915_gem_object_lock_interruptible(%struct.drm_i915_gem_object*) #1

declare dso_local i32 @i915_gem_object_set_to_cpu_domain(%struct.drm_i915_gem_object*, i32) #1

declare dso_local i32 @i915_gem_object_unlock(%struct.drm_i915_gem_object*) #1

declare dso_local i32 @i915_gem_object_unpin_pages(%struct.drm_i915_gem_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
