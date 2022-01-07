; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_damage_helper.c_drm_atomic_helper_check_plane_damage.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_damage_helper.c_drm_atomic_helper_check_plane_damage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_atomic_state = type { i32 }
%struct.drm_plane_state = type { i32*, i64 }
%struct.drm_crtc_state = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drm_atomic_helper_check_plane_damage(%struct.drm_atomic_state* %0, %struct.drm_plane_state* %1) #0 {
  %3 = alloca %struct.drm_atomic_state*, align 8
  %4 = alloca %struct.drm_plane_state*, align 8
  %5 = alloca %struct.drm_crtc_state*, align 8
  store %struct.drm_atomic_state* %0, %struct.drm_atomic_state** %3, align 8
  store %struct.drm_plane_state* %1, %struct.drm_plane_state** %4, align 8
  %6 = load %struct.drm_plane_state*, %struct.drm_plane_state** %4, align 8
  %7 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %35

10:                                               ; preds = %2
  %11 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %3, align 8
  %12 = load %struct.drm_plane_state*, %struct.drm_plane_state** %4, align 8
  %13 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = call %struct.drm_crtc_state* @drm_atomic_get_new_crtc_state(%struct.drm_atomic_state* %11, i64 %14)
  store %struct.drm_crtc_state* %15, %struct.drm_crtc_state** %5, align 8
  %16 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %5, align 8
  %17 = icmp ne %struct.drm_crtc_state* %16, null
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i64 @WARN_ON(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %10
  br label %35

23:                                               ; preds = %10
  %24 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %5, align 8
  %25 = call i64 @drm_atomic_crtc_needs_modeset(%struct.drm_crtc_state* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %23
  %28 = load %struct.drm_plane_state*, %struct.drm_plane_state** %4, align 8
  %29 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = call i32 @drm_property_blob_put(i32* %30)
  %32 = load %struct.drm_plane_state*, %struct.drm_plane_state** %4, align 8
  %33 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %32, i32 0, i32 0
  store i32* null, i32** %33, align 8
  br label %34

34:                                               ; preds = %27, %23
  br label %35

35:                                               ; preds = %22, %34, %2
  ret void
}

declare dso_local %struct.drm_crtc_state* @drm_atomic_get_new_crtc_state(%struct.drm_atomic_state*, i64) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i64 @drm_atomic_crtc_needs_modeset(%struct.drm_crtc_state*) #1

declare dso_local i32 @drm_property_blob_put(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
