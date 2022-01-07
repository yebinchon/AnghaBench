; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_atomic_plane.c_intel_plane_atomic_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_atomic_plane.c_intel_plane_atomic_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { i32 }
%struct.drm_plane_state = type { i32 }
%struct.intel_plane = type { i32 }
%struct.intel_atomic_state = type { i32 }
%struct.intel_plane_state = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.intel_crtc = type { i32 }
%struct.intel_crtc_state = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_plane*, %struct.drm_plane_state*)* @intel_plane_atomic_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_plane_atomic_check(%struct.drm_plane* %0, %struct.drm_plane_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_plane*, align 8
  %5 = alloca %struct.drm_plane_state*, align 8
  %6 = alloca %struct.intel_plane*, align 8
  %7 = alloca %struct.intel_atomic_state*, align 8
  %8 = alloca %struct.intel_plane_state*, align 8
  %9 = alloca %struct.intel_plane_state*, align 8
  %10 = alloca %struct.intel_crtc*, align 8
  %11 = alloca %struct.intel_crtc_state*, align 8
  %12 = alloca %struct.intel_crtc_state*, align 8
  store %struct.drm_plane* %0, %struct.drm_plane** %4, align 8
  store %struct.drm_plane_state* %1, %struct.drm_plane_state** %5, align 8
  %13 = load %struct.drm_plane*, %struct.drm_plane** %4, align 8
  %14 = call %struct.intel_plane* @to_intel_plane(%struct.drm_plane* %13)
  store %struct.intel_plane* %14, %struct.intel_plane** %6, align 8
  %15 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %16 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.intel_atomic_state* @to_intel_atomic_state(i32 %17)
  store %struct.intel_atomic_state* %18, %struct.intel_atomic_state** %7, align 8
  %19 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %20 = call %struct.intel_plane_state* @to_intel_plane_state(%struct.drm_plane_state* %19)
  store %struct.intel_plane_state* %20, %struct.intel_plane_state** %8, align 8
  %21 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %7, align 8
  %22 = load %struct.intel_plane*, %struct.intel_plane** %6, align 8
  %23 = call %struct.intel_plane_state* @intel_atomic_get_old_plane_state(%struct.intel_atomic_state* %21, %struct.intel_plane* %22)
  store %struct.intel_plane_state* %23, %struct.intel_plane_state** %9, align 8
  %24 = load %struct.intel_plane_state*, %struct.intel_plane_state** %9, align 8
  %25 = load %struct.intel_plane_state*, %struct.intel_plane_state** %8, align 8
  %26 = call %struct.intel_crtc* @get_crtc_from_states(%struct.intel_plane_state* %24, %struct.intel_plane_state* %25)
  store %struct.intel_crtc* %26, %struct.intel_crtc** %10, align 8
  %27 = load %struct.intel_plane_state*, %struct.intel_plane_state** %8, align 8
  %28 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store i32 0, i32* %29, align 4
  %30 = load %struct.intel_crtc*, %struct.intel_crtc** %10, align 8
  %31 = icmp ne %struct.intel_crtc* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %45

33:                                               ; preds = %2
  %34 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %7, align 8
  %35 = load %struct.intel_crtc*, %struct.intel_crtc** %10, align 8
  %36 = call %struct.intel_crtc_state* @intel_atomic_get_old_crtc_state(%struct.intel_atomic_state* %34, %struct.intel_crtc* %35)
  store %struct.intel_crtc_state* %36, %struct.intel_crtc_state** %11, align 8
  %37 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %7, align 8
  %38 = load %struct.intel_crtc*, %struct.intel_crtc** %10, align 8
  %39 = call %struct.intel_crtc_state* @intel_atomic_get_new_crtc_state(%struct.intel_atomic_state* %37, %struct.intel_crtc* %38)
  store %struct.intel_crtc_state* %39, %struct.intel_crtc_state** %12, align 8
  %40 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %11, align 8
  %41 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %12, align 8
  %42 = load %struct.intel_plane_state*, %struct.intel_plane_state** %9, align 8
  %43 = load %struct.intel_plane_state*, %struct.intel_plane_state** %8, align 8
  %44 = call i32 @intel_plane_atomic_check_with_state(%struct.intel_crtc_state* %40, %struct.intel_crtc_state* %41, %struct.intel_plane_state* %42, %struct.intel_plane_state* %43)
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %33, %32
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local %struct.intel_plane* @to_intel_plane(%struct.drm_plane*) #1

declare dso_local %struct.intel_atomic_state* @to_intel_atomic_state(i32) #1

declare dso_local %struct.intel_plane_state* @to_intel_plane_state(%struct.drm_plane_state*) #1

declare dso_local %struct.intel_plane_state* @intel_atomic_get_old_plane_state(%struct.intel_atomic_state*, %struct.intel_plane*) #1

declare dso_local %struct.intel_crtc* @get_crtc_from_states(%struct.intel_plane_state*, %struct.intel_plane_state*) #1

declare dso_local %struct.intel_crtc_state* @intel_atomic_get_old_crtc_state(%struct.intel_atomic_state*, %struct.intel_crtc*) #1

declare dso_local %struct.intel_crtc_state* @intel_atomic_get_new_crtc_state(%struct.intel_atomic_state*, %struct.intel_crtc*) #1

declare dso_local i32 @intel_plane_atomic_check_with_state(%struct.intel_crtc_state*, %struct.intel_crtc_state*, %struct.intel_plane_state*, %struct.intel_plane_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
