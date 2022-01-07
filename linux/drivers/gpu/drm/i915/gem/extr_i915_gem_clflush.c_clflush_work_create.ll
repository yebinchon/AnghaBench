; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_clflush.c_clflush_work_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_clflush.c_clflush_work_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clflush = type { i32, i32 }
%struct.drm_i915_gem_object = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@clflush_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.clflush* (%struct.drm_i915_gem_object*)* @clflush_work_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.clflush* @clflush_work_create(%struct.drm_i915_gem_object* %0) #0 {
  %2 = alloca %struct.clflush*, align 8
  %3 = alloca %struct.drm_i915_gem_object*, align 8
  %4 = alloca %struct.clflush*, align 8
  store %struct.drm_i915_gem_object* %0, %struct.drm_i915_gem_object** %3, align 8
  %5 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  %6 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i32 @GEM_BUG_ON(i32 %10)
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.clflush* @kmalloc(i32 8, i32 %12)
  store %struct.clflush* %13, %struct.clflush** %4, align 8
  %14 = load %struct.clflush*, %struct.clflush** %4, align 8
  %15 = icmp ne %struct.clflush* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  store %struct.clflush* null, %struct.clflush** %2, align 8
  br label %26

17:                                               ; preds = %1
  %18 = load %struct.clflush*, %struct.clflush** %4, align 8
  %19 = getelementptr inbounds %struct.clflush, %struct.clflush* %18, i32 0, i32 1
  %20 = call i32 @dma_fence_work_init(i32* %19, i32* @clflush_ops)
  %21 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  %22 = call i32 @i915_gem_object_get(%struct.drm_i915_gem_object* %21)
  %23 = load %struct.clflush*, %struct.clflush** %4, align 8
  %24 = getelementptr inbounds %struct.clflush, %struct.clflush* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load %struct.clflush*, %struct.clflush** %4, align 8
  store %struct.clflush* %25, %struct.clflush** %2, align 8
  br label %26

26:                                               ; preds = %17, %16
  %27 = load %struct.clflush*, %struct.clflush** %2, align 8
  ret %struct.clflush* %27
}

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local %struct.clflush* @kmalloc(i32, i32) #1

declare dso_local i32 @dma_fence_work_init(i32*, i32*) #1

declare dso_local i32 @i915_gem_object_get(%struct.drm_i915_gem_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
