; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/meson/extr_meson_overlay.c_meson_overlay_atomic_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/meson/extr_meson_overlay.c_meson_overlay_atomic_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { i32 }
%struct.drm_plane_state = type { i32, i32 }
%struct.drm_crtc_state = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_plane*, %struct.drm_plane_state*)* @meson_overlay_atomic_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @meson_overlay_atomic_check(%struct.drm_plane* %0, %struct.drm_plane_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_plane*, align 8
  %5 = alloca %struct.drm_plane_state*, align 8
  %6 = alloca %struct.drm_crtc_state*, align 8
  store %struct.drm_plane* %0, %struct.drm_plane** %4, align 8
  store %struct.drm_plane_state* %1, %struct.drm_plane_state** %5, align 8
  %7 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %8 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %32

12:                                               ; preds = %2
  %13 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %14 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %17 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.drm_crtc_state* @drm_atomic_get_crtc_state(i32 %15, i32 %18)
  store %struct.drm_crtc_state* %19, %struct.drm_crtc_state** %6, align 8
  %20 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %6, align 8
  %21 = call i64 @IS_ERR(%struct.drm_crtc_state* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %12
  %24 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %6, align 8
  %25 = call i32 @PTR_ERR(%struct.drm_crtc_state* %24)
  store i32 %25, i32* %3, align 4
  br label %32

26:                                               ; preds = %12
  %27 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %28 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %6, align 8
  %29 = call i32 @FRAC_16_16(i32 1, i32 5)
  %30 = call i32 @FRAC_16_16(i32 5, i32 1)
  %31 = call i32 @drm_atomic_helper_check_plane_state(%struct.drm_plane_state* %27, %struct.drm_crtc_state* %28, i32 %29, i32 %30, i32 1, i32 1)
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %26, %23, %11
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local %struct.drm_crtc_state* @drm_atomic_get_crtc_state(i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.drm_crtc_state*) #1

declare dso_local i32 @PTR_ERR(%struct.drm_crtc_state*) #1

declare dso_local i32 @drm_atomic_helper_check_plane_state(%struct.drm_plane_state*, %struct.drm_crtc_state*, i32, i32, i32, i32) #1

declare dso_local i32 @FRAC_16_16(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
