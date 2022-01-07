; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_perf.c_i915_oa_init_reg_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_perf.c_i915_oa_init_reg_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_engine_cs = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.i915_perf_stream* }
%struct.i915_perf_stream = type { i32 }
%struct.intel_context = type { i32 }

@RENDER_CLASS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i915_oa_init_reg_state(%struct.intel_engine_cs* %0, %struct.intel_context* %1, i32* %2) #0 {
  %4 = alloca %struct.intel_engine_cs*, align 8
  %5 = alloca %struct.intel_context*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.i915_perf_stream*, align 8
  store %struct.intel_engine_cs* %0, %struct.intel_engine_cs** %4, align 8
  store %struct.intel_context* %1, %struct.intel_context** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %4, align 8
  %9 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @RENDER_CLASS, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  br label %31

14:                                               ; preds = %3
  %15 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %4, align 8
  %16 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %15, i32 0, i32 1
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load %struct.i915_perf_stream*, %struct.i915_perf_stream** %19, align 8
  store %struct.i915_perf_stream* %20, %struct.i915_perf_stream** %7, align 8
  %21 = load %struct.i915_perf_stream*, %struct.i915_perf_stream** %7, align 8
  %22 = icmp ne %struct.i915_perf_stream* %21, null
  br i1 %22, label %23, label %31

23:                                               ; preds = %14
  %24 = load %struct.i915_perf_stream*, %struct.i915_perf_stream** %7, align 8
  %25 = load %struct.intel_context*, %struct.intel_context** %5, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = load %struct.i915_perf_stream*, %struct.i915_perf_stream** %7, align 8
  %28 = getelementptr inbounds %struct.i915_perf_stream, %struct.i915_perf_stream* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @gen8_update_reg_state_unlocked(%struct.i915_perf_stream* %24, %struct.intel_context* %25, i32* %26, i32 %29)
  br label %31

31:                                               ; preds = %13, %23, %14
  ret void
}

declare dso_local i32 @gen8_update_reg_state_unlocked(%struct.i915_perf_stream*, %struct.intel_context*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
