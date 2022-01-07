; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_perf.c_oa_put_render_ctx_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_perf.c_oa_put_render_ctx_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_perf_stream = type { i32, i64, i32, %struct.drm_i915_private* }
%struct.drm_i915_private = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.intel_context = type { i32 }

@INVALID_CTX_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i915_perf_stream*)* @oa_put_render_ctx_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @oa_put_render_ctx_id(%struct.i915_perf_stream* %0) #0 {
  %2 = alloca %struct.i915_perf_stream*, align 8
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca %struct.intel_context*, align 8
  store %struct.i915_perf_stream* %0, %struct.i915_perf_stream** %2, align 8
  %5 = load %struct.i915_perf_stream*, %struct.i915_perf_stream** %2, align 8
  %6 = getelementptr inbounds %struct.i915_perf_stream, %struct.i915_perf_stream* %5, i32 0, i32 3
  %7 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  store %struct.drm_i915_private* %7, %struct.drm_i915_private** %3, align 8
  %8 = load i32, i32* @INVALID_CTX_ID, align 4
  %9 = load %struct.i915_perf_stream*, %struct.i915_perf_stream** %2, align 8
  %10 = getelementptr inbounds %struct.i915_perf_stream, %struct.i915_perf_stream* %9, i32 0, i32 2
  store i32 %8, i32* %10, align 8
  %11 = load %struct.i915_perf_stream*, %struct.i915_perf_stream** %2, align 8
  %12 = getelementptr inbounds %struct.i915_perf_stream, %struct.i915_perf_stream* %11, i32 0, i32 1
  store i64 0, i64* %12, align 8
  %13 = load %struct.i915_perf_stream*, %struct.i915_perf_stream** %2, align 8
  %14 = getelementptr inbounds %struct.i915_perf_stream, %struct.i915_perf_stream* %13, i32 0, i32 0
  %15 = call %struct.intel_context* @fetch_and_zero(i32* %14)
  store %struct.intel_context* %15, %struct.intel_context** %4, align 8
  %16 = load %struct.intel_context*, %struct.intel_context** %4, align 8
  %17 = icmp ne %struct.intel_context* %16, null
  br i1 %17, label %18, label %29

18:                                               ; preds = %1
  %19 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %20 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = call i32 @mutex_lock(i32* %21)
  %23 = load %struct.intel_context*, %struct.intel_context** %4, align 8
  %24 = call i32 @intel_context_unpin(%struct.intel_context* %23)
  %25 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %26 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = call i32 @mutex_unlock(i32* %27)
  br label %29

29:                                               ; preds = %18, %1
  ret void
}

declare dso_local %struct.intel_context* @fetch_and_zero(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @intel_context_unpin(%struct.intel_context*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
