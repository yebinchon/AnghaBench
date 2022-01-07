; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_object_blt.c_move_to_gpu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_object_blt.c_move_to_gpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_vma = type { %struct.drm_i915_gem_object* }
%struct.drm_i915_gem_object = type { i32, i32 }
%struct.i915_request = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i915_vma*, %struct.i915_request*, i32)* @move_to_gpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @move_to_gpu(%struct.i915_vma* %0, %struct.i915_request* %1, i32 %2) #0 {
  %4 = alloca %struct.i915_vma*, align 8
  %5 = alloca %struct.i915_request*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.drm_i915_gem_object*, align 8
  store %struct.i915_vma* %0, %struct.i915_vma** %4, align 8
  store %struct.i915_request* %1, %struct.i915_request** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.i915_vma*, %struct.i915_vma** %4, align 8
  %9 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %8, i32 0, i32 0
  %10 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %9, align 8
  store %struct.drm_i915_gem_object* %10, %struct.drm_i915_gem_object** %7, align 8
  %11 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %7, align 8
  %12 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %7, align 8
  %15 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = xor i32 %16, -1
  %18 = and i32 %13, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %7, align 8
  %22 = call i32 @i915_gem_clflush_object(%struct.drm_i915_gem_object* %21, i32 0)
  br label %23

23:                                               ; preds = %20, %3
  %24 = load %struct.i915_request*, %struct.i915_request** %5, align 8
  %25 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %7, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @i915_request_await_object(%struct.i915_request* %24, %struct.drm_i915_gem_object* %25, i32 %26)
  ret i32 %27
}

declare dso_local i32 @i915_gem_clflush_object(%struct.drm_i915_gem_object*, i32) #1

declare dso_local i32 @i915_request_await_object(%struct.i915_request*, %struct.drm_i915_gem_object*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
