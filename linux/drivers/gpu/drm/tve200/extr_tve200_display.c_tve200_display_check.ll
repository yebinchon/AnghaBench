; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tve200/extr_tve200_display.c_tve200_display_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tve200/extr_tve200_display.c_tve200_display_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_simple_display_pipe = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.drm_framebuffer* }
%struct.drm_framebuffer = type { i32*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32* }
%struct.drm_plane_state = type { %struct.drm_framebuffer* }
%struct.drm_crtc_state = type { i32, %struct.drm_display_mode }
%struct.drm_display_mode = type { i32, i32 }

@.str = private unnamed_addr constant [36 x i8] c"unsupported display mode (%u x %u)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"FB not 32-bit aligned\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"can't handle pitches\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_simple_display_pipe*, %struct.drm_plane_state*, %struct.drm_crtc_state*)* @tve200_display_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tve200_display_check(%struct.drm_simple_display_pipe* %0, %struct.drm_plane_state* %1, %struct.drm_crtc_state* %2) #0 {
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
  %26 = icmp eq i32 %25, 352
  br i1 %26, label %27, label %32

27:                                               ; preds = %3
  %28 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %29 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %30, 240
  br i1 %31, label %82, label %32

32:                                               ; preds = %27, %3
  %33 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %34 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %35, 352
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %39 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %40, 288
  br i1 %41, label %82, label %42

42:                                               ; preds = %37, %32
  %43 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %44 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp eq i32 %45, 640
  br i1 %46, label %47, label %52

47:                                               ; preds = %42
  %48 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %49 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp eq i32 %50, 480
  br i1 %51, label %82, label %52

52:                                               ; preds = %47, %42
  %53 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %54 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp eq i32 %55, 720
  br i1 %56, label %57, label %62

57:                                               ; preds = %52
  %58 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %59 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = icmp eq i32 %60, 480
  br i1 %61, label %82, label %62

62:                                               ; preds = %57, %52
  %63 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %64 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp eq i32 %65, 720
  br i1 %66, label %67, label %72

67:                                               ; preds = %62
  %68 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %69 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = icmp eq i32 %70, 576
  br i1 %71, label %82, label %72

72:                                               ; preds = %67, %62
  %73 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %74 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %77 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %75, i32 %78)
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %4, align 4
  br label %134

82:                                               ; preds = %67, %57, %47, %37, %27
  %83 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %10, align 8
  %84 = icmp ne %struct.drm_framebuffer* %83, null
  br i1 %84, label %85, label %133

85:                                               ; preds = %82
  %86 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %10, align 8
  %87 = load %struct.drm_plane_state*, %struct.drm_plane_state** %6, align 8
  %88 = call i32 @drm_fb_cma_get_gem_addr(%struct.drm_framebuffer* %86, %struct.drm_plane_state* %87, i32 0)
  store i32 %88, i32* %11, align 4
  %89 = load i32, i32* %11, align 4
  %90 = and i32 %89, 3
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %85
  %93 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %94 = load i32, i32* @EINVAL, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %4, align 4
  br label %134

96:                                               ; preds = %85
  %97 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %10, align 8
  %98 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 0
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %103 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %10, align 8
  %106 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %105, i32 0, i32 1
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 0
  %111 = load i32, i32* %110, align 4
  %112 = mul nsw i32 %104, %111
  %113 = icmp ne i32 %101, %112
  br i1 %113, label %114, label %118

114:                                              ; preds = %96
  %115 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %116 = load i32, i32* @EINVAL, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %4, align 4
  br label %134

118:                                              ; preds = %96
  %119 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %120 = icmp ne %struct.drm_framebuffer* %119, null
  br i1 %120, label %121, label %132

121:                                              ; preds = %118
  %122 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %123 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %122, i32 0, i32 1
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %123, align 8
  %125 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %10, align 8
  %126 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %125, i32 0, i32 1
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %126, align 8
  %128 = icmp ne %struct.TYPE_6__* %124, %127
  br i1 %128, label %129, label %132

129:                                              ; preds = %121
  %130 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %7, align 8
  %131 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %130, i32 0, i32 0
  store i32 1, i32* %131, align 4
  br label %132

132:                                              ; preds = %129, %121, %118
  br label %133

133:                                              ; preds = %132, %82
  store i32 0, i32* %4, align 4
  br label %134

134:                                              ; preds = %133, %114, %92, %72
  %135 = load i32, i32* %4, align 4
  ret i32 %135
}

declare dso_local i32 @DRM_DEBUG_KMS(i8*, ...) #1

declare dso_local i32 @drm_fb_cma_get_gem_addr(%struct.drm_framebuffer*, %struct.drm_plane_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
