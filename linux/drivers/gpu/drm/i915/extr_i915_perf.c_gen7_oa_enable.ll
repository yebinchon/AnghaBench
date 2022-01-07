; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_perf.c_gen7_oa_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_perf.c_gen7_oa_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_perf_stream = type { i32, i32, i32, %struct.TYPE_2__, %struct.i915_gem_context*, %struct.drm_i915_private* }
%struct.TYPE_2__ = type { i32 }
%struct.i915_gem_context = type { i32 }
%struct.drm_i915_private = type { i32 }

@GEN7_OACONTROL = common dso_local global i32 0, align 4
@GEN7_OACONTROL_CTX_MASK = common dso_local global i32 0, align 4
@GEN7_OACONTROL_TIMER_PERIOD_SHIFT = common dso_local global i32 0, align 4
@GEN7_OACONTROL_TIMER_ENABLE = common dso_local global i32 0, align 4
@GEN7_OACONTROL_FORMAT_SHIFT = common dso_local global i32 0, align 4
@GEN7_OACONTROL_PER_CTX_ENABLE = common dso_local global i32 0, align 4
@GEN7_OACONTROL_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i915_perf_stream*)* @gen7_oa_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gen7_oa_enable(%struct.i915_perf_stream* %0) #0 {
  %2 = alloca %struct.i915_perf_stream*, align 8
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca %struct.i915_gem_context*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.i915_perf_stream* %0, %struct.i915_perf_stream** %2, align 8
  %9 = load %struct.i915_perf_stream*, %struct.i915_perf_stream** %2, align 8
  %10 = getelementptr inbounds %struct.i915_perf_stream, %struct.i915_perf_stream* %9, i32 0, i32 5
  %11 = load %struct.drm_i915_private*, %struct.drm_i915_private** %10, align 8
  store %struct.drm_i915_private* %11, %struct.drm_i915_private** %3, align 8
  %12 = load %struct.i915_perf_stream*, %struct.i915_perf_stream** %2, align 8
  %13 = getelementptr inbounds %struct.i915_perf_stream, %struct.i915_perf_stream* %12, i32 0, i32 4
  %14 = load %struct.i915_gem_context*, %struct.i915_gem_context** %13, align 8
  store %struct.i915_gem_context* %14, %struct.i915_gem_context** %4, align 8
  %15 = load %struct.i915_perf_stream*, %struct.i915_perf_stream** %2, align 8
  %16 = getelementptr inbounds %struct.i915_perf_stream, %struct.i915_perf_stream* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %5, align 4
  %18 = load %struct.i915_perf_stream*, %struct.i915_perf_stream** %2, align 8
  %19 = getelementptr inbounds %struct.i915_perf_stream, %struct.i915_perf_stream* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %6, align 4
  %21 = load %struct.i915_perf_stream*, %struct.i915_perf_stream** %2, align 8
  %22 = getelementptr inbounds %struct.i915_perf_stream, %struct.i915_perf_stream* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %7, align 4
  %24 = load %struct.i915_perf_stream*, %struct.i915_perf_stream** %2, align 8
  %25 = getelementptr inbounds %struct.i915_perf_stream, %struct.i915_perf_stream* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %8, align 4
  %28 = load %struct.i915_perf_stream*, %struct.i915_perf_stream** %2, align 8
  %29 = call i32 @gen7_init_oa_buffer(%struct.i915_perf_stream* %28)
  %30 = load i32, i32* @GEN7_OACONTROL, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @GEN7_OACONTROL_CTX_MASK, align 4
  %33 = and i32 %31, %32
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @GEN7_OACONTROL_TIMER_PERIOD_SHIFT, align 4
  %36 = shl i32 %34, %35
  %37 = or i32 %33, %36
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %1
  %41 = load i32, i32* @GEN7_OACONTROL_TIMER_ENABLE, align 4
  br label %43

42:                                               ; preds = %1
  br label %43

43:                                               ; preds = %42, %40
  %44 = phi i32 [ %41, %40 ], [ 0, %42 ]
  %45 = or i32 %37, %44
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* @GEN7_OACONTROL_FORMAT_SHIFT, align 4
  %48 = shl i32 %46, %47
  %49 = or i32 %45, %48
  %50 = load %struct.i915_gem_context*, %struct.i915_gem_context** %4, align 8
  %51 = icmp ne %struct.i915_gem_context* %50, null
  br i1 %51, label %52, label %54

52:                                               ; preds = %43
  %53 = load i32, i32* @GEN7_OACONTROL_PER_CTX_ENABLE, align 4
  br label %55

54:                                               ; preds = %43
  br label %55

55:                                               ; preds = %54, %52
  %56 = phi i32 [ %53, %52 ], [ 0, %54 ]
  %57 = or i32 %49, %56
  %58 = load i32, i32* @GEN7_OACONTROL_ENABLE, align 4
  %59 = or i32 %57, %58
  %60 = call i32 @I915_WRITE(i32 %30, i32 %59)
  ret void
}

declare dso_local i32 @gen7_init_oa_buffer(%struct.i915_perf_stream*) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
