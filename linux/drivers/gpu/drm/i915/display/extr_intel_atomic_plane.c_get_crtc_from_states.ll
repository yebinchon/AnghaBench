; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_atomic_plane.c_get_crtc_from_states.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_atomic_plane.c_get_crtc_from_states.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_crtc = type { i32 }
%struct.intel_plane_state = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.intel_crtc* (%struct.intel_plane_state*, %struct.intel_plane_state*)* @get_crtc_from_states to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.intel_crtc* @get_crtc_from_states(%struct.intel_plane_state* %0, %struct.intel_plane_state* %1) #0 {
  %3 = alloca %struct.intel_crtc*, align 8
  %4 = alloca %struct.intel_plane_state*, align 8
  %5 = alloca %struct.intel_plane_state*, align 8
  store %struct.intel_plane_state* %0, %struct.intel_plane_state** %4, align 8
  store %struct.intel_plane_state* %1, %struct.intel_plane_state** %5, align 8
  %6 = load %struct.intel_plane_state*, %struct.intel_plane_state** %5, align 8
  %7 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = load %struct.intel_plane_state*, %struct.intel_plane_state** %5, align 8
  %13 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = call %struct.intel_crtc* @to_intel_crtc(i64 %15)
  store %struct.intel_crtc* %16, %struct.intel_crtc** %3, align 8
  br label %30

17:                                               ; preds = %2
  %18 = load %struct.intel_plane_state*, %struct.intel_plane_state** %4, align 8
  %19 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %17
  %24 = load %struct.intel_plane_state*, %struct.intel_plane_state** %4, align 8
  %25 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call %struct.intel_crtc* @to_intel_crtc(i64 %27)
  store %struct.intel_crtc* %28, %struct.intel_crtc** %3, align 8
  br label %30

29:                                               ; preds = %17
  store %struct.intel_crtc* null, %struct.intel_crtc** %3, align 8
  br label %30

30:                                               ; preds = %29, %23, %11
  %31 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  ret %struct.intel_crtc* %31
}

declare dso_local %struct.intel_crtc* @to_intel_crtc(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
