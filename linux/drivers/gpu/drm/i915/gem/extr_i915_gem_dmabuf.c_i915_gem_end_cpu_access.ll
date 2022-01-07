; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_dmabuf.c_i915_gem_end_cpu_access.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_dmabuf.c_i915_gem_end_cpu_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_buf = type { i32 }
%struct.drm_i915_gem_object = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_buf*, i32)* @i915_gem_end_cpu_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i915_gem_end_cpu_access(%struct.dma_buf* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dma_buf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_i915_gem_object*, align 8
  %7 = alloca i32, align 4
  store %struct.dma_buf* %0, %struct.dma_buf** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.dma_buf*, %struct.dma_buf** %4, align 8
  %9 = call %struct.drm_i915_gem_object* @dma_buf_to_obj(%struct.dma_buf* %8)
  store %struct.drm_i915_gem_object* %9, %struct.drm_i915_gem_object** %6, align 8
  %10 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %11 = call i32 @i915_gem_object_pin_pages(%struct.drm_i915_gem_object* %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %7, align 4
  store i32 %15, i32* %3, align 4
  br label %31

16:                                               ; preds = %2
  %17 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %18 = call i32 @i915_gem_object_lock_interruptible(%struct.drm_i915_gem_object* %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  br label %27

22:                                               ; preds = %16
  %23 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %24 = call i32 @i915_gem_object_set_to_gtt_domain(%struct.drm_i915_gem_object* %23, i32 0)
  store i32 %24, i32* %7, align 4
  %25 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %26 = call i32 @i915_gem_object_unlock(%struct.drm_i915_gem_object* %25)
  br label %27

27:                                               ; preds = %22, %21
  %28 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %29 = call i32 @i915_gem_object_unpin_pages(%struct.drm_i915_gem_object* %28)
  %30 = load i32, i32* %7, align 4
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %27, %14
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local %struct.drm_i915_gem_object* @dma_buf_to_obj(%struct.dma_buf*) #1

declare dso_local i32 @i915_gem_object_pin_pages(%struct.drm_i915_gem_object*) #1

declare dso_local i32 @i915_gem_object_lock_interruptible(%struct.drm_i915_gem_object*) #1

declare dso_local i32 @i915_gem_object_set_to_gtt_domain(%struct.drm_i915_gem_object*, i32) #1

declare dso_local i32 @i915_gem_object_unlock(%struct.drm_i915_gem_object*) #1

declare dso_local i32 @i915_gem_object_unpin_pages(%struct.drm_i915_gem_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
