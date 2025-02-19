; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_perf.c_i915_perf_ioctl_locked.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_perf.c_i915_perf_ioctl_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_perf_stream = type { i32 }

@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.i915_perf_stream*, i32, i64)* @i915_perf_ioctl_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @i915_perf_ioctl_locked(%struct.i915_perf_stream* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.i915_perf_stream*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.i915_perf_stream* %0, %struct.i915_perf_stream** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %8 = load i32, i32* %6, align 4
  switch i32 %8, label %15 [
    i32 128, label %9
    i32 129, label %12
  ]

9:                                                ; preds = %3
  %10 = load %struct.i915_perf_stream*, %struct.i915_perf_stream** %5, align 8
  %11 = call i32 @i915_perf_enable_locked(%struct.i915_perf_stream* %10)
  store i64 0, i64* %4, align 8
  br label %18

12:                                               ; preds = %3
  %13 = load %struct.i915_perf_stream*, %struct.i915_perf_stream** %5, align 8
  %14 = call i32 @i915_perf_disable_locked(%struct.i915_perf_stream* %13)
  store i64 0, i64* %4, align 8
  br label %18

15:                                               ; preds = %3
  %16 = load i64, i64* @EINVAL, align 8
  %17 = sub nsw i64 0, %16
  store i64 %17, i64* %4, align 8
  br label %18

18:                                               ; preds = %15, %12, %9
  %19 = load i64, i64* %4, align 8
  ret i64 %19
}

declare dso_local i32 @i915_perf_enable_locked(%struct.i915_perf_stream*) #1

declare dso_local i32 @i915_perf_disable_locked(%struct.i915_perf_stream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
