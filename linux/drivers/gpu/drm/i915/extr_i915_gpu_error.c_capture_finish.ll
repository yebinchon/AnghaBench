; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gpu_error.c_capture_finish.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gpu_error.c_capture_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_gpu_state = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.i915_ggtt }
%struct.i915_ggtt = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 (%struct.TYPE_6__*, i32, i32)* }
%struct.TYPE_5__ = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i915_gpu_state*)* @capture_finish to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @capture_finish(%struct.i915_gpu_state* %0) #0 {
  %2 = alloca %struct.i915_gpu_state*, align 8
  %3 = alloca %struct.i915_ggtt*, align 8
  %4 = alloca i32, align 4
  store %struct.i915_gpu_state* %0, %struct.i915_gpu_state** %2, align 8
  %5 = load %struct.i915_gpu_state*, %struct.i915_gpu_state** %2, align 8
  %6 = getelementptr inbounds %struct.i915_gpu_state, %struct.i915_gpu_state* %5, i32 0, i32 0
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  store %struct.i915_ggtt* %8, %struct.i915_ggtt** %3, align 8
  %9 = load %struct.i915_ggtt*, %struct.i915_ggtt** %3, align 8
  %10 = getelementptr inbounds %struct.i915_ggtt, %struct.i915_ggtt* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %4, align 4
  %13 = load %struct.i915_ggtt*, %struct.i915_ggtt** %3, align 8
  %14 = getelementptr inbounds %struct.i915_ggtt, %struct.i915_ggtt* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32 (%struct.TYPE_6__*, i32, i32)*, i32 (%struct.TYPE_6__*, i32, i32)** %15, align 8
  %17 = load %struct.i915_ggtt*, %struct.i915_ggtt** %3, align 8
  %18 = getelementptr inbounds %struct.i915_ggtt, %struct.i915_ggtt* %17, i32 0, i32 0
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @PAGE_SIZE, align 4
  %21 = call i32 %16(%struct.TYPE_6__* %18, i32 %19, i32 %20)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
