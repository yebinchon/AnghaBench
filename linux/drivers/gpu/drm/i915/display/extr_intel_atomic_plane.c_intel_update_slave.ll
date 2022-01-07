; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_atomic_plane.c_intel_update_slave.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_atomic_plane.c_intel_update_slave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_plane = type { i32 (%struct.intel_plane*, %struct.intel_crtc_state*, %struct.intel_plane_state*)*, i32 }
%struct.intel_crtc_state = type opaque
%struct.intel_crtc_state.0 = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.intel_plane_state = type { i32 }
%struct.intel_crtc = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_update_slave(%struct.intel_plane* %0, %struct.intel_crtc_state.0* %1, %struct.intel_plane_state* %2) #0 {
  %4 = alloca %struct.intel_plane*, align 8
  %5 = alloca %struct.intel_crtc_state.0*, align 8
  %6 = alloca %struct.intel_plane_state*, align 8
  %7 = alloca %struct.intel_crtc*, align 8
  store %struct.intel_plane* %0, %struct.intel_plane** %4, align 8
  store %struct.intel_crtc_state.0* %1, %struct.intel_crtc_state.0** %5, align 8
  store %struct.intel_plane_state* %2, %struct.intel_plane_state** %6, align 8
  %8 = load %struct.intel_crtc_state.0*, %struct.intel_crtc_state.0** %5, align 8
  %9 = getelementptr inbounds %struct.intel_crtc_state.0, %struct.intel_crtc_state.0* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.intel_crtc* @to_intel_crtc(i32 %11)
  store %struct.intel_crtc* %12, %struct.intel_crtc** %7, align 8
  %13 = load %struct.intel_plane*, %struct.intel_plane** %4, align 8
  %14 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %13, i32 0, i32 1
  %15 = load %struct.intel_crtc*, %struct.intel_crtc** %7, align 8
  %16 = call i32 @trace_intel_update_plane(i32* %14, %struct.intel_crtc* %15)
  %17 = load %struct.intel_plane*, %struct.intel_plane** %4, align 8
  %18 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %17, i32 0, i32 0
  %19 = load i32 (%struct.intel_plane*, %struct.intel_crtc_state*, %struct.intel_plane_state*)*, i32 (%struct.intel_plane*, %struct.intel_crtc_state*, %struct.intel_plane_state*)** %18, align 8
  %20 = load %struct.intel_plane*, %struct.intel_plane** %4, align 8
  %21 = load %struct.intel_crtc_state.0*, %struct.intel_crtc_state.0** %5, align 8
  %22 = bitcast %struct.intel_crtc_state.0* %21 to %struct.intel_crtc_state*
  %23 = load %struct.intel_plane_state*, %struct.intel_plane_state** %6, align 8
  %24 = call i32 %19(%struct.intel_plane* %20, %struct.intel_crtc_state* %22, %struct.intel_plane_state* %23)
  ret void
}

declare dso_local %struct.intel_crtc* @to_intel_crtc(i32) #1

declare dso_local i32 @trace_intel_update_plane(i32*, %struct.intel_crtc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
