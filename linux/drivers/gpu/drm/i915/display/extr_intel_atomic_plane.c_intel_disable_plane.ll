; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_atomic_plane.c_intel_disable_plane.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_atomic_plane.c_intel_disable_plane.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_plane = type { i32 (%struct.intel_plane*, %struct.intel_crtc_state*)*, i32 }
%struct.intel_crtc_state = type opaque
%struct.intel_crtc_state.0 = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.intel_crtc = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_disable_plane(%struct.intel_plane* %0, %struct.intel_crtc_state.0* %1) #0 {
  %3 = alloca %struct.intel_plane*, align 8
  %4 = alloca %struct.intel_crtc_state.0*, align 8
  %5 = alloca %struct.intel_crtc*, align 8
  store %struct.intel_plane* %0, %struct.intel_plane** %3, align 8
  store %struct.intel_crtc_state.0* %1, %struct.intel_crtc_state.0** %4, align 8
  %6 = load %struct.intel_crtc_state.0*, %struct.intel_crtc_state.0** %4, align 8
  %7 = getelementptr inbounds %struct.intel_crtc_state.0, %struct.intel_crtc_state.0* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.intel_crtc* @to_intel_crtc(i32 %9)
  store %struct.intel_crtc* %10, %struct.intel_crtc** %5, align 8
  %11 = load %struct.intel_plane*, %struct.intel_plane** %3, align 8
  %12 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %11, i32 0, i32 1
  %13 = load %struct.intel_crtc*, %struct.intel_crtc** %5, align 8
  %14 = call i32 @trace_intel_disable_plane(i32* %12, %struct.intel_crtc* %13)
  %15 = load %struct.intel_plane*, %struct.intel_plane** %3, align 8
  %16 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %15, i32 0, i32 0
  %17 = load i32 (%struct.intel_plane*, %struct.intel_crtc_state*)*, i32 (%struct.intel_plane*, %struct.intel_crtc_state*)** %16, align 8
  %18 = load %struct.intel_plane*, %struct.intel_plane** %3, align 8
  %19 = load %struct.intel_crtc_state.0*, %struct.intel_crtc_state.0** %4, align 8
  %20 = bitcast %struct.intel_crtc_state.0* %19 to %struct.intel_crtc_state*
  %21 = call i32 %17(%struct.intel_plane* %18, %struct.intel_crtc_state* %20)
  ret void
}

declare dso_local %struct.intel_crtc* @to_intel_crtc(i32) #1

declare dso_local i32 @trace_intel_disable_plane(i32*, %struct.intel_crtc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
