; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_skl_atomic_update_crtc_wm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_skl_atomic_update_crtc_wm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_atomic_state = type { %struct.TYPE_6__, %struct.TYPE_8__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.intel_crtc_state = type { %struct.TYPE_10__, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.skl_pipe_wm }
%struct.skl_pipe_wm = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.intel_crtc = type { i32, i32 }
%struct.drm_i915_private = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_atomic_state*, %struct.intel_crtc_state*)* @skl_atomic_update_crtc_wm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @skl_atomic_update_crtc_wm(%struct.intel_atomic_state* %0, %struct.intel_crtc_state* %1) #0 {
  %3 = alloca %struct.intel_atomic_state*, align 8
  %4 = alloca %struct.intel_crtc_state*, align 8
  %5 = alloca %struct.intel_crtc*, align 8
  %6 = alloca %struct.drm_i915_private*, align 8
  %7 = alloca %struct.skl_pipe_wm*, align 8
  %8 = alloca i32, align 4
  store %struct.intel_atomic_state* %0, %struct.intel_atomic_state** %3, align 8
  store %struct.intel_crtc_state* %1, %struct.intel_crtc_state** %4, align 8
  %9 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %10 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.intel_crtc* @to_intel_crtc(i32 %12)
  store %struct.intel_crtc* %13, %struct.intel_crtc** %5, align 8
  %14 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %3, align 8
  %15 = getelementptr inbounds %struct.intel_atomic_state, %struct.intel_atomic_state* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.drm_i915_private* @to_i915(i32 %17)
  store %struct.drm_i915_private* %18, %struct.drm_i915_private** %6, align 8
  %19 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %20 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  store %struct.skl_pipe_wm* %22, %struct.skl_pipe_wm** %7, align 8
  %23 = load %struct.intel_crtc*, %struct.intel_crtc** %5, align 8
  %24 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %8, align 4
  %26 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %3, align 8
  %27 = getelementptr inbounds %struct.intel_atomic_state, %struct.intel_atomic_state* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.intel_crtc*, %struct.intel_crtc** %5, align 8
  %31 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %30, i32 0, i32 1
  %32 = call i32 @drm_crtc_mask(i32* %31)
  %33 = and i32 %29, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %2
  br label %43

36:                                               ; preds = %2
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @PIPE_WM_LINETIME(i32 %37)
  %39 = load %struct.skl_pipe_wm*, %struct.skl_pipe_wm** %7, align 8
  %40 = getelementptr inbounds %struct.skl_pipe_wm, %struct.skl_pipe_wm* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @I915_WRITE(i32 %38, i32 %41)
  br label %43

43:                                               ; preds = %36, %35
  ret void
}

declare dso_local %struct.intel_crtc* @to_intel_crtc(i32) #1

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i32 @drm_crtc_mask(i32*) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @PIPE_WM_LINETIME(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
