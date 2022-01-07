; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mcde/extr_mcde_display.c_mcde_display_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mcde/extr_mcde_display.c_mcde_display_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_simple_display_pipe = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.drm_framebuffer* }
%struct.drm_framebuffer = type { i32*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32* }
%struct.drm_plane_state = type { %struct.drm_framebuffer* }
%struct.drm_crtc_state = type { i32, %struct.drm_display_mode }
%struct.drm_display_mode = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"FB not 32-bit aligned\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"can't handle pitches\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_simple_display_pipe*, %struct.drm_plane_state*, %struct.drm_crtc_state*)* @mcde_display_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mcde_display_check(%struct.drm_simple_display_pipe* %0, %struct.drm_plane_state* %1, %struct.drm_crtc_state* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_simple_display_pipe*, align 8
  %6 = alloca %struct.drm_plane_state*, align 8
  %7 = alloca %struct.drm_crtc_state*, align 8
  %8 = alloca %struct.drm_display_mode*, align 8
  %9 = alloca %struct.drm_framebuffer*, align 8
  %10 = alloca %struct.drm_framebuffer*, align 8
  %11 = alloca i32, align 4
  store %struct.drm_simple_display_pipe* %0, %struct.drm_simple_display_pipe** %5, align 8
  store %struct.drm_plane_state* %1, %struct.drm_plane_state** %6, align 8
  store %struct.drm_crtc_state* %2, %struct.drm_crtc_state** %7, align 8
  %12 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %7, align 8
  %13 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %12, i32 0, i32 1
  store %struct.drm_display_mode* %13, %struct.drm_display_mode** %8, align 8
  %14 = load %struct.drm_simple_display_pipe*, %struct.drm_simple_display_pipe** %5, align 8
  %15 = getelementptr inbounds %struct.drm_simple_display_pipe, %struct.drm_simple_display_pipe* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %18, align 8
  store %struct.drm_framebuffer* %19, %struct.drm_framebuffer** %9, align 8
  %20 = load %struct.drm_plane_state*, %struct.drm_plane_state** %6, align 8
  %21 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %20, i32 0, i32 0
  %22 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %21, align 8
  store %struct.drm_framebuffer* %22, %struct.drm_framebuffer** %10, align 8
  %23 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %10, align 8
  %24 = icmp ne %struct.drm_framebuffer* %23, null
  br i1 %24, label %25, label %73

25:                                               ; preds = %3
  %26 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %10, align 8
  %27 = load %struct.drm_plane_state*, %struct.drm_plane_state** %6, align 8
  %28 = call i32 @drm_fb_cma_get_gem_addr(%struct.drm_framebuffer* %26, %struct.drm_plane_state* %27, i32 0)
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %11, align 4
  %30 = and i32 %29, 3
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %25
  %33 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %74

36:                                               ; preds = %25
  %37 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %10, align 8
  %38 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %43 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %10, align 8
  %46 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %45, i32 0, i32 1
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = load i32, i32* %50, align 4
  %52 = mul nsw i32 %44, %51
  %53 = icmp ne i32 %41, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %36
  %55 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %4, align 4
  br label %74

58:                                               ; preds = %36
  %59 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %60 = icmp ne %struct.drm_framebuffer* %59, null
  br i1 %60, label %61, label %72

61:                                               ; preds = %58
  %62 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %63 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %62, i32 0, i32 1
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %63, align 8
  %65 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %10, align 8
  %66 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %65, i32 0, i32 1
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  %68 = icmp ne %struct.TYPE_6__* %64, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %61
  %70 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %7, align 8
  %71 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %70, i32 0, i32 0
  store i32 1, i32* %71, align 4
  br label %72

72:                                               ; preds = %69, %61, %58
  br label %73

73:                                               ; preds = %72, %3
  store i32 0, i32* %4, align 4
  br label %74

74:                                               ; preds = %73, %54, %32
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local i32 @drm_fb_cma_get_gem_addr(%struct.drm_framebuffer*, %struct.drm_plane_state*, i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
