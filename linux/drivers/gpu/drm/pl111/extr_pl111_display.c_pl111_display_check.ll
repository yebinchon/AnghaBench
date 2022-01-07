; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/pl111/extr_pl111_display.c_pl111_display_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/pl111/extr_pl111_display.c_pl111_display_check.c"
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

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_simple_display_pipe*, %struct.drm_plane_state*, %struct.drm_crtc_state*)* @pl111_display_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pl111_display_check(%struct.drm_simple_display_pipe* %0, %struct.drm_plane_state* %1, %struct.drm_crtc_state* %2) #0 {
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
  %23 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %24 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = srem i32 %25, 16
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %3
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %81

31:                                               ; preds = %3
  %32 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %10, align 8
  %33 = icmp ne %struct.drm_framebuffer* %32, null
  br i1 %33, label %34, label %80

34:                                               ; preds = %31
  %35 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %10, align 8
  %36 = load %struct.drm_plane_state*, %struct.drm_plane_state** %6, align 8
  %37 = call i32 @drm_fb_cma_get_gem_addr(%struct.drm_framebuffer* %35, %struct.drm_plane_state* %36, i32 0)
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %11, align 4
  %39 = and i32 %38, 3
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %34
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %81

44:                                               ; preds = %34
  %45 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %10, align 8
  %46 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %51 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %10, align 8
  %54 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %53, i32 0, i32 1
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  %59 = load i32, i32* %58, align 4
  %60 = mul nsw i32 %52, %59
  %61 = icmp ne i32 %49, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %44
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %4, align 4
  br label %81

65:                                               ; preds = %44
  %66 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %67 = icmp ne %struct.drm_framebuffer* %66, null
  br i1 %67, label %68, label %79

68:                                               ; preds = %65
  %69 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %70 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %69, i32 0, i32 1
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %70, align 8
  %72 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %10, align 8
  %73 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %72, i32 0, i32 1
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %73, align 8
  %75 = icmp ne %struct.TYPE_6__* %71, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %68
  %77 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %7, align 8
  %78 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %77, i32 0, i32 0
  store i32 1, i32* %78, align 4
  br label %79

79:                                               ; preds = %76, %68, %65
  br label %80

80:                                               ; preds = %79, %31
  store i32 0, i32* %4, align 4
  br label %81

81:                                               ; preds = %80, %62, %41, %28
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local i32 @drm_fb_cma_get_gem_addr(%struct.drm_framebuffer*, %struct.drm_plane_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
