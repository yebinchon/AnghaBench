; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_drm_plane.c_mtk_plane_atomic_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_drm_plane.c_mtk_plane_atomic_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { i32 }
%struct.drm_plane_state = type { i32, i32, %struct.drm_framebuffer* }
%struct.drm_framebuffer = type { i32 }
%struct.drm_crtc_state = type { i32 }

@DRM_PLANE_HELPER_NO_SCALING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_plane*, %struct.drm_plane_state*)* @mtk_plane_atomic_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_plane_atomic_check(%struct.drm_plane* %0, %struct.drm_plane_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_plane*, align 8
  %5 = alloca %struct.drm_plane_state*, align 8
  %6 = alloca %struct.drm_framebuffer*, align 8
  %7 = alloca %struct.drm_crtc_state*, align 8
  store %struct.drm_plane* %0, %struct.drm_plane** %4, align 8
  store %struct.drm_plane_state* %1, %struct.drm_plane_state** %5, align 8
  %8 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %9 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %8, i32 0, i32 2
  %10 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  store %struct.drm_framebuffer* %10, %struct.drm_framebuffer** %6, align 8
  %11 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %6, align 8
  %12 = icmp ne %struct.drm_framebuffer* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %40

14:                                               ; preds = %2
  %15 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %16 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %40

20:                                               ; preds = %14
  %21 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %22 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %25 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call %struct.drm_crtc_state* @drm_atomic_get_crtc_state(i32 %23, i32 %26)
  store %struct.drm_crtc_state* %27, %struct.drm_crtc_state** %7, align 8
  %28 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %7, align 8
  %29 = call i64 @IS_ERR(%struct.drm_crtc_state* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %20
  %32 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %7, align 8
  %33 = call i32 @PTR_ERR(%struct.drm_crtc_state* %32)
  store i32 %33, i32* %3, align 4
  br label %40

34:                                               ; preds = %20
  %35 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %36 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %7, align 8
  %37 = load i32, i32* @DRM_PLANE_HELPER_NO_SCALING, align 4
  %38 = load i32, i32* @DRM_PLANE_HELPER_NO_SCALING, align 4
  %39 = call i32 @drm_atomic_helper_check_plane_state(%struct.drm_plane_state* %35, %struct.drm_crtc_state* %36, i32 %37, i32 %38, i32 1, i32 1)
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %34, %31, %19, %13
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local %struct.drm_crtc_state* @drm_atomic_get_crtc_state(i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.drm_crtc_state*) #1

declare dso_local i32 @PTR_ERR(%struct.drm_crtc_state*) #1

declare dso_local i32 @drm_atomic_helper_check_plane_state(%struct.drm_plane_state*, %struct.drm_crtc_state*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
