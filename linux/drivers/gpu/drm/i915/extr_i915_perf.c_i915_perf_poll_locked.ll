; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_perf.c_i915_perf_poll_locked.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_perf.c_i915_perf_poll_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }
%struct.i915_perf_stream = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.i915_perf_stream*, %struct.file*, i32*)* }
%struct.file = type { i32 }

@EPOLLIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_i915_private*, %struct.i915_perf_stream*, %struct.file*, i32*)* @i915_perf_poll_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i915_perf_poll_locked(%struct.drm_i915_private* %0, %struct.i915_perf_stream* %1, %struct.file* %2, i32* %3) #0 {
  %5 = alloca %struct.drm_i915_private*, align 8
  %6 = alloca %struct.i915_perf_stream*, align 8
  %7 = alloca %struct.file*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %5, align 8
  store %struct.i915_perf_stream* %1, %struct.i915_perf_stream** %6, align 8
  store %struct.file* %2, %struct.file** %7, align 8
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.i915_perf_stream*, %struct.i915_perf_stream** %6, align 8
  %11 = getelementptr inbounds %struct.i915_perf_stream, %struct.i915_perf_stream* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32 (%struct.i915_perf_stream*, %struct.file*, i32*)*, i32 (%struct.i915_perf_stream*, %struct.file*, i32*)** %13, align 8
  %15 = load %struct.i915_perf_stream*, %struct.i915_perf_stream** %6, align 8
  %16 = load %struct.file*, %struct.file** %7, align 8
  %17 = load i32*, i32** %8, align 8
  %18 = call i32 %14(%struct.i915_perf_stream* %15, %struct.file* %16, i32* %17)
  %19 = load %struct.i915_perf_stream*, %struct.i915_perf_stream** %6, align 8
  %20 = getelementptr inbounds %struct.i915_perf_stream, %struct.i915_perf_stream* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %4
  %24 = load i32, i32* @EPOLLIN, align 4
  %25 = load i32, i32* %9, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %9, align 4
  br label %27

27:                                               ; preds = %23, %4
  %28 = load i32, i32* %9, align 4
  ret i32 %28
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
