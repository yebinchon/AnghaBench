; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_atomic_helper.c_drm_atomic_helper_plane_changed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_atomic_helper.c_drm_atomic_helper_plane_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_atomic_state = type { i32 }
%struct.drm_plane_state = type { i64 }
%struct.drm_plane = type { i32 }
%struct.drm_crtc_state = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_atomic_state*, %struct.drm_plane_state*, %struct.drm_plane_state*, %struct.drm_plane*)* @drm_atomic_helper_plane_changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drm_atomic_helper_plane_changed(%struct.drm_atomic_state* %0, %struct.drm_plane_state* %1, %struct.drm_plane_state* %2, %struct.drm_plane* %3) #0 {
  %5 = alloca %struct.drm_atomic_state*, align 8
  %6 = alloca %struct.drm_plane_state*, align 8
  %7 = alloca %struct.drm_plane_state*, align 8
  %8 = alloca %struct.drm_plane*, align 8
  %9 = alloca %struct.drm_crtc_state*, align 8
  store %struct.drm_atomic_state* %0, %struct.drm_atomic_state** %5, align 8
  store %struct.drm_plane_state* %1, %struct.drm_plane_state** %6, align 8
  store %struct.drm_plane_state* %2, %struct.drm_plane_state** %7, align 8
  store %struct.drm_plane* %3, %struct.drm_plane** %8, align 8
  %10 = load %struct.drm_plane_state*, %struct.drm_plane_state** %6, align 8
  %11 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %30

14:                                               ; preds = %4
  %15 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %5, align 8
  %16 = load %struct.drm_plane_state*, %struct.drm_plane_state** %6, align 8
  %17 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call %struct.drm_crtc_state* @drm_atomic_get_new_crtc_state(%struct.drm_atomic_state* %15, i64 %18)
  store %struct.drm_crtc_state* %19, %struct.drm_crtc_state** %9, align 8
  %20 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %9, align 8
  %21 = icmp ne %struct.drm_crtc_state* %20, null
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i64 @WARN_ON(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %14
  br label %51

27:                                               ; preds = %14
  %28 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %9, align 8
  %29 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %28, i32 0, i32 0
  store i32 1, i32* %29, align 4
  br label %30

30:                                               ; preds = %27, %4
  %31 = load %struct.drm_plane_state*, %struct.drm_plane_state** %7, align 8
  %32 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %51

35:                                               ; preds = %30
  %36 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %5, align 8
  %37 = load %struct.drm_plane_state*, %struct.drm_plane_state** %7, align 8
  %38 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call %struct.drm_crtc_state* @drm_atomic_get_new_crtc_state(%struct.drm_atomic_state* %36, i64 %39)
  store %struct.drm_crtc_state* %40, %struct.drm_crtc_state** %9, align 8
  %41 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %9, align 8
  %42 = icmp ne %struct.drm_crtc_state* %41, null
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = call i64 @WARN_ON(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %35
  br label %51

48:                                               ; preds = %35
  %49 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %9, align 8
  %50 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %49, i32 0, i32 0
  store i32 1, i32* %50, align 4
  br label %51

51:                                               ; preds = %26, %47, %48, %30
  ret void
}

declare dso_local %struct.drm_crtc_state* @drm_atomic_get_new_crtc_state(%struct.drm_atomic_state*, i64) #1

declare dso_local i64 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
