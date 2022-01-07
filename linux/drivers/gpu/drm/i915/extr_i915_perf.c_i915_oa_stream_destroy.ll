; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_perf.c_i915_oa_stream_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_perf.c_i915_oa_stream_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_perf_stream = type { i32, i64, i32, %struct.drm_i915_private* }
%struct.drm_i915_private = type { %struct.TYPE_8__, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_5__, %struct.i915_perf_stream* }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_5__ = type { i32 (%struct.i915_perf_stream*)* }
%struct.TYPE_6__ = type { i32 }

@FORCEWAKE_ALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"%d spurious OA report notices suppressed due to ratelimiting\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i915_perf_stream*)* @i915_oa_stream_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i915_oa_stream_destroy(%struct.i915_perf_stream* %0) #0 {
  %2 = alloca %struct.i915_perf_stream*, align 8
  %3 = alloca %struct.drm_i915_private*, align 8
  store %struct.i915_perf_stream* %0, %struct.i915_perf_stream** %2, align 8
  %4 = load %struct.i915_perf_stream*, %struct.i915_perf_stream** %2, align 8
  %5 = getelementptr inbounds %struct.i915_perf_stream, %struct.i915_perf_stream* %4, i32 0, i32 3
  %6 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  store %struct.drm_i915_private* %6, %struct.drm_i915_private** %3, align 8
  %7 = load %struct.i915_perf_stream*, %struct.i915_perf_stream** %2, align 8
  %8 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %9 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 2
  %11 = load %struct.i915_perf_stream*, %struct.i915_perf_stream** %10, align 8
  %12 = icmp ne %struct.i915_perf_stream* %7, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @BUG_ON(i32 %13)
  %15 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %16 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %20 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 2
  store %struct.i915_perf_stream* null, %struct.i915_perf_stream** %21, align 8
  %22 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %23 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32 (%struct.i915_perf_stream*)*, i32 (%struct.i915_perf_stream*)** %25, align 8
  %27 = load %struct.i915_perf_stream*, %struct.i915_perf_stream** %2, align 8
  %28 = call i32 %26(%struct.i915_perf_stream* %27)
  %29 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %30 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = call i32 @mutex_unlock(i32* %31)
  %33 = load %struct.i915_perf_stream*, %struct.i915_perf_stream** %2, align 8
  %34 = call i32 @free_oa_buffer(%struct.i915_perf_stream* %33)
  %35 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %36 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %35, i32 0, i32 2
  %37 = load i32, i32* @FORCEWAKE_ALL, align 4
  %38 = call i32 @intel_uncore_forcewake_put(i32* %36, i32 %37)
  %39 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %40 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %39, i32 0, i32 1
  %41 = load %struct.i915_perf_stream*, %struct.i915_perf_stream** %2, align 8
  %42 = getelementptr inbounds %struct.i915_perf_stream, %struct.i915_perf_stream* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @intel_runtime_pm_put(i32* %40, i32 %43)
  %45 = load %struct.i915_perf_stream*, %struct.i915_perf_stream** %2, align 8
  %46 = getelementptr inbounds %struct.i915_perf_stream, %struct.i915_perf_stream* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %1
  %50 = load %struct.i915_perf_stream*, %struct.i915_perf_stream** %2, align 8
  %51 = call i32 @oa_put_render_ctx_id(%struct.i915_perf_stream* %50)
  br label %52

52:                                               ; preds = %49, %1
  %53 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %54 = load %struct.i915_perf_stream*, %struct.i915_perf_stream** %2, align 8
  %55 = getelementptr inbounds %struct.i915_perf_stream, %struct.i915_perf_stream* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @put_oa_config(%struct.drm_i915_private* %53, i32 %56)
  %58 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %59 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %52
  %65 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %66 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @DRM_NOTE(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i64 %69)
  br label %71

71:                                               ; preds = %64, %52
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @free_oa_buffer(%struct.i915_perf_stream*) #1

declare dso_local i32 @intel_uncore_forcewake_put(i32*, i32) #1

declare dso_local i32 @intel_runtime_pm_put(i32*, i32) #1

declare dso_local i32 @oa_put_render_ctx_id(%struct.i915_perf_stream*) #1

declare dso_local i32 @put_oa_config(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @DRM_NOTE(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
