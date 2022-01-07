; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_skl_build_plane_wm_single.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_skl_build_plane_wm_single.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_crtc_state = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.skl_plane_wm* }
%struct.skl_plane_wm = type { i32 }
%struct.intel_plane_state = type { i32 }
%struct.skl_wm_params = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_crtc_state*, %struct.intel_plane_state*, i32, i32)* @skl_build_plane_wm_single to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skl_build_plane_wm_single(%struct.intel_crtc_state* %0, %struct.intel_plane_state* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.intel_crtc_state*, align 8
  %7 = alloca %struct.intel_plane_state*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.skl_plane_wm*, align 8
  %11 = alloca %struct.skl_wm_params, align 4
  %12 = alloca i32, align 4
  store %struct.intel_crtc_state* %0, %struct.intel_crtc_state** %6, align 8
  store %struct.intel_plane_state* %1, %struct.intel_plane_state** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %14 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.skl_plane_wm*, %struct.skl_plane_wm** %17, align 8
  %19 = load i32, i32* %8, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.skl_plane_wm, %struct.skl_plane_wm* %18, i64 %20
  store %struct.skl_plane_wm* %21, %struct.skl_plane_wm** %10, align 8
  %22 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %23 = load %struct.intel_plane_state*, %struct.intel_plane_state** %7, align 8
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @skl_compute_plane_wm_params(%struct.intel_crtc_state* %22, %struct.intel_plane_state* %23, %struct.skl_wm_params* %11, i32 %24)
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* %12, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %4
  %29 = load i32, i32* %12, align 4
  store i32 %29, i32* %5, align 4
  br label %39

30:                                               ; preds = %4
  %31 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %32 = load %struct.skl_plane_wm*, %struct.skl_plane_wm** %10, align 8
  %33 = getelementptr inbounds %struct.skl_plane_wm, %struct.skl_plane_wm* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @skl_compute_wm_levels(%struct.intel_crtc_state* %31, %struct.skl_wm_params* %11, i32 %34)
  %36 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %37 = load %struct.skl_plane_wm*, %struct.skl_plane_wm** %10, align 8
  %38 = call i32 @skl_compute_transition_wm(%struct.intel_crtc_state* %36, %struct.skl_wm_params* %11, %struct.skl_plane_wm* %37)
  store i32 0, i32* %5, align 4
  br label %39

39:                                               ; preds = %30, %28
  %40 = load i32, i32* %5, align 4
  ret i32 %40
}

declare dso_local i32 @skl_compute_plane_wm_params(%struct.intel_crtc_state*, %struct.intel_plane_state*, %struct.skl_wm_params*, i32) #1

declare dso_local i32 @skl_compute_wm_levels(%struct.intel_crtc_state*, %struct.skl_wm_params*, i32) #1

declare dso_local i32 @skl_compute_transition_wm(%struct.intel_crtc_state*, %struct.skl_wm_params*, %struct.skl_plane_wm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
