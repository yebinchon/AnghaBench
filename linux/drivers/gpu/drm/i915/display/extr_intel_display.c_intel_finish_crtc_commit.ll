; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_intel_finish_crtc_commit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_intel_finish_crtc_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_atomic_state = type { i32 }
%struct.intel_crtc = type { i32 }
%struct.intel_crtc_state = type { %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@I915_MODE_FLAG_INHERITED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_atomic_state*, %struct.intel_crtc*)* @intel_finish_crtc_commit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_finish_crtc_commit(%struct.intel_atomic_state* %0, %struct.intel_crtc* %1) #0 {
  %3 = alloca %struct.intel_atomic_state*, align 8
  %4 = alloca %struct.intel_crtc*, align 8
  %5 = alloca %struct.intel_crtc_state*, align 8
  %6 = alloca %struct.intel_crtc_state*, align 8
  store %struct.intel_atomic_state* %0, %struct.intel_atomic_state** %3, align 8
  store %struct.intel_crtc* %1, %struct.intel_crtc** %4, align 8
  %7 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %3, align 8
  %8 = load %struct.intel_crtc*, %struct.intel_crtc** %4, align 8
  %9 = call %struct.intel_crtc_state* @intel_atomic_get_old_crtc_state(%struct.intel_atomic_state* %7, %struct.intel_crtc* %8)
  store %struct.intel_crtc_state* %9, %struct.intel_crtc_state** %5, align 8
  %10 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %3, align 8
  %11 = load %struct.intel_crtc*, %struct.intel_crtc** %4, align 8
  %12 = call %struct.intel_crtc_state* @intel_atomic_get_new_crtc_state(%struct.intel_atomic_state* %10, %struct.intel_crtc* %11)
  store %struct.intel_crtc_state* %12, %struct.intel_crtc_state** %6, align 8
  %13 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %14 = call i32 @intel_pipe_update_end(%struct.intel_crtc_state* %13)
  %15 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %16 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %36

19:                                               ; preds = %2
  %20 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %21 = call i32 @needs_modeset(%struct.intel_crtc_state* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %36, label %23

23:                                               ; preds = %19
  %24 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %25 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @I915_MODE_FLAG_INHERITED, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %23
  %33 = load %struct.intel_crtc*, %struct.intel_crtc** %4, align 8
  %34 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %35 = call i32 @intel_crtc_arm_fifo_underrun(%struct.intel_crtc* %33, %struct.intel_crtc_state* %34)
  br label %36

36:                                               ; preds = %32, %23, %19, %2
  ret void
}

declare dso_local %struct.intel_crtc_state* @intel_atomic_get_old_crtc_state(%struct.intel_atomic_state*, %struct.intel_crtc*) #1

declare dso_local %struct.intel_crtc_state* @intel_atomic_get_new_crtc_state(%struct.intel_atomic_state*, %struct.intel_crtc*) #1

declare dso_local i32 @intel_pipe_update_end(%struct.intel_crtc_state*) #1

declare dso_local i32 @needs_modeset(%struct.intel_crtc_state*) #1

declare dso_local i32 @intel_crtc_arm_fifo_underrun(%struct.intel_crtc*, %struct.intel_crtc_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
