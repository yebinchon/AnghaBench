; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_skl_build_plane_wm_uv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_skl_build_plane_wm_uv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_crtc_state = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.skl_plane_wm* }
%struct.skl_plane_wm = type { i32, i32 }
%struct.intel_plane_state = type { i32 }
%struct.skl_wm_params = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_crtc_state*, %struct.intel_plane_state*, i32)* @skl_build_plane_wm_uv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skl_build_plane_wm_uv(%struct.intel_crtc_state* %0, %struct.intel_plane_state* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.intel_crtc_state*, align 8
  %6 = alloca %struct.intel_plane_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.skl_plane_wm*, align 8
  %9 = alloca %struct.skl_wm_params, align 4
  %10 = alloca i32, align 4
  store %struct.intel_crtc_state* %0, %struct.intel_crtc_state** %5, align 8
  store %struct.intel_plane_state* %1, %struct.intel_plane_state** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %12 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.skl_plane_wm*, %struct.skl_plane_wm** %15, align 8
  %17 = load i32, i32* %7, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.skl_plane_wm, %struct.skl_plane_wm* %16, i64 %18
  store %struct.skl_plane_wm* %19, %struct.skl_plane_wm** %8, align 8
  %20 = load %struct.skl_plane_wm*, %struct.skl_plane_wm** %8, align 8
  %21 = getelementptr inbounds %struct.skl_plane_wm, %struct.skl_plane_wm* %20, i32 0, i32 0
  store i32 1, i32* %21, align 4
  %22 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %23 = load %struct.intel_plane_state*, %struct.intel_plane_state** %6, align 8
  %24 = call i32 @skl_compute_plane_wm_params(%struct.intel_crtc_state* %22, %struct.intel_plane_state* %23, %struct.skl_wm_params* %9, i32 1)
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %3
  %28 = load i32, i32* %10, align 4
  store i32 %28, i32* %4, align 4
  br label %35

29:                                               ; preds = %3
  %30 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %31 = load %struct.skl_plane_wm*, %struct.skl_plane_wm** %8, align 8
  %32 = getelementptr inbounds %struct.skl_plane_wm, %struct.skl_plane_wm* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @skl_compute_wm_levels(%struct.intel_crtc_state* %30, %struct.skl_wm_params* %9, i32 %33)
  store i32 0, i32* %4, align 4
  br label %35

35:                                               ; preds = %29, %27
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local i32 @skl_compute_plane_wm_params(%struct.intel_crtc_state*, %struct.intel_plane_state*, %struct.skl_wm_params*, i32) #1

declare dso_local i32 @skl_compute_wm_levels(%struct.intel_crtc_state*, %struct.skl_wm_params*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
