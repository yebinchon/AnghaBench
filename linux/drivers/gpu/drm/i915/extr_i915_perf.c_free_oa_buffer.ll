; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_perf.c_free_oa_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_perf.c_free_oa_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_perf_stream = type { %struct.TYPE_4__, %struct.drm_i915_private* }
%struct.TYPE_4__ = type { i32*, i32 }
%struct.drm_i915_private = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@I915_VMA_RELEASE_MAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i915_perf_stream*)* @free_oa_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_oa_buffer(%struct.i915_perf_stream* %0) #0 {
  %2 = alloca %struct.i915_perf_stream*, align 8
  %3 = alloca %struct.drm_i915_private*, align 8
  store %struct.i915_perf_stream* %0, %struct.i915_perf_stream** %2, align 8
  %4 = load %struct.i915_perf_stream*, %struct.i915_perf_stream** %2, align 8
  %5 = getelementptr inbounds %struct.i915_perf_stream, %struct.i915_perf_stream* %4, i32 0, i32 1
  %6 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  store %struct.drm_i915_private* %6, %struct.drm_i915_private** %3, align 8
  %7 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %8 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = call i32 @mutex_lock(i32* %9)
  %11 = load %struct.i915_perf_stream*, %struct.i915_perf_stream** %2, align 8
  %12 = getelementptr inbounds %struct.i915_perf_stream, %struct.i915_perf_stream* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %14 = load i32, i32* @I915_VMA_RELEASE_MAP, align 4
  %15 = call i32 @i915_vma_unpin_and_release(i32* %13, i32 %14)
  %16 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %17 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = call i32 @mutex_unlock(i32* %18)
  %20 = load %struct.i915_perf_stream*, %struct.i915_perf_stream** %2, align 8
  %21 = getelementptr inbounds %struct.i915_perf_stream, %struct.i915_perf_stream* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  store i32* null, i32** %22, align 8
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @i915_vma_unpin_and_release(i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
