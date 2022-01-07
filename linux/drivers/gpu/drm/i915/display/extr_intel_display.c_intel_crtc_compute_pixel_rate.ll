; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_intel_crtc_compute_pixel_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_intel_crtc_compute_pixel_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_crtc_state = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.drm_i915_private = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_crtc_state*)* @intel_crtc_compute_pixel_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_crtc_compute_pixel_rate(%struct.intel_crtc_state* %0) #0 {
  %2 = alloca %struct.intel_crtc_state*, align 8
  %3 = alloca %struct.drm_i915_private*, align 8
  store %struct.intel_crtc_state* %0, %struct.intel_crtc_state** %2, align 8
  %4 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %5 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 1
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.drm_i915_private* @to_i915(i32 %9)
  store %struct.drm_i915_private* %10, %struct.drm_i915_private** %3, align 8
  %11 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %12 = call i64 @HAS_GMCH(%struct.drm_i915_private* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %1
  %15 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %16 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %21 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  br label %27

22:                                               ; preds = %1
  %23 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %24 = call i32 @ilk_pipe_pixel_rate(%struct.intel_crtc_state* %23)
  %25 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %26 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  br label %27

27:                                               ; preds = %22, %14
  ret void
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i64 @HAS_GMCH(%struct.drm_i915_private*) #1

declare dso_local i32 @ilk_pipe_pixel_rate(%struct.intel_crtc_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
