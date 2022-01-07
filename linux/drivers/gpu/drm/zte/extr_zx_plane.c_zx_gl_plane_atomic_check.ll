; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/zte/extr_zx_plane.c_zx_gl_plane_atomic_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/zte/extr_zx_plane.c_zx_gl_plane_atomic_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { i32 }
%struct.drm_plane_state = type { %struct.drm_crtc*, i32, %struct.drm_framebuffer* }
%struct.drm_crtc = type { i32 }
%struct.drm_framebuffer = type { i32 }
%struct.drm_crtc_state = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@DRM_PLANE_HELPER_NO_SCALING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_plane*, %struct.drm_plane_state*)* @zx_gl_plane_atomic_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zx_gl_plane_atomic_check(%struct.drm_plane* %0, %struct.drm_plane_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_plane*, align 8
  %5 = alloca %struct.drm_plane_state*, align 8
  %6 = alloca %struct.drm_framebuffer*, align 8
  %7 = alloca %struct.drm_crtc*, align 8
  %8 = alloca %struct.drm_crtc_state*, align 8
  store %struct.drm_plane* %0, %struct.drm_plane** %4, align 8
  store %struct.drm_plane_state* %1, %struct.drm_plane_state** %5, align 8
  %9 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %10 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %9, i32 0, i32 2
  %11 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %10, align 8
  store %struct.drm_framebuffer* %11, %struct.drm_framebuffer** %6, align 8
  %12 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %13 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %12, i32 0, i32 0
  %14 = load %struct.drm_crtc*, %struct.drm_crtc** %13, align 8
  store %struct.drm_crtc* %14, %struct.drm_crtc** %7, align 8
  %15 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %16 = icmp ne %struct.drm_crtc* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %6, align 8
  %19 = icmp ne %struct.drm_framebuffer* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %17, %2
  store i32 0, i32* %3, align 4
  br label %56

21:                                               ; preds = %17
  %22 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %23 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %26 = call %struct.drm_crtc_state* @drm_atomic_get_existing_crtc_state(i32 %24, %struct.drm_crtc* %25)
  store %struct.drm_crtc_state* %26, %struct.drm_crtc_state** %8, align 8
  %27 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %8, align 8
  %28 = icmp ne %struct.drm_crtc_state* %27, null
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = call i64 @WARN_ON(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %21
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %56

36:                                               ; preds = %21
  %37 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %8, align 8
  %38 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %36
  store i32 0, i32* %3, align 4
  br label %56

42:                                               ; preds = %36
  %43 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %44 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %43, i32 0, i32 0
  %45 = load %struct.drm_crtc*, %struct.drm_crtc** %44, align 8
  %46 = icmp ne %struct.drm_crtc* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %42
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %56

50:                                               ; preds = %42
  %51 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %52 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %8, align 8
  %53 = load i32, i32* @DRM_PLANE_HELPER_NO_SCALING, align 4
  %54 = load i32, i32* @DRM_PLANE_HELPER_NO_SCALING, align 4
  %55 = call i32 @drm_atomic_helper_check_plane_state(%struct.drm_plane_state* %51, %struct.drm_crtc_state* %52, i32 %53, i32 %54, i32 0, i32 1)
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %50, %47, %41, %33, %20
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local %struct.drm_crtc_state* @drm_atomic_get_existing_crtc_state(i32, %struct.drm_crtc*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @drm_atomic_helper_check_plane_state(%struct.drm_plane_state*, %struct.drm_crtc_state*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
