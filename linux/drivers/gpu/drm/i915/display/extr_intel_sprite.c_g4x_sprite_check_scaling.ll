; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_sprite.c_g4x_sprite_check_scaling.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_sprite.c_g4x_sprite_check_scaling.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_crtc_state = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.drm_display_mode }
%struct.drm_display_mode = type { i32 }
%struct.intel_plane_state = type { %struct.TYPE_7__*, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_5__ = type { %struct.drm_rect, %struct.drm_rect, %struct.drm_framebuffer* }
%struct.drm_rect = type { i32 }
%struct.drm_framebuffer = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32* }

@DRM_MODE_FLAG_INTERLACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"Source height must be even with interlaced modes\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [66 x i8] c"Source dimensions (%dx%d) exceed hardware limits (%dx%d - %dx%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [57 x i8] c"Fetch width (%d) exceeds hardware max with scaling (%u)\0A\00", align 1
@.str.3 = private unnamed_addr constant [52 x i8] c"Stride (%u) exceeds hardware max with scaling (%u)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_crtc_state*, %struct.intel_plane_state*)* @g4x_sprite_check_scaling to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g4x_sprite_check_scaling(%struct.intel_crtc_state* %0, %struct.intel_plane_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel_crtc_state*, align 8
  %5 = alloca %struct.intel_plane_state*, align 8
  %6 = alloca %struct.drm_framebuffer*, align 8
  %7 = alloca %struct.drm_rect*, align 8
  %8 = alloca %struct.drm_rect*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.drm_display_mode*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.intel_crtc_state* %0, %struct.intel_crtc_state** %4, align 8
  store %struct.intel_plane_state* %1, %struct.intel_plane_state** %5, align 8
  %20 = load %struct.intel_plane_state*, %struct.intel_plane_state** %5, align 8
  %21 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 2
  %23 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %22, align 8
  store %struct.drm_framebuffer* %23, %struct.drm_framebuffer** %6, align 8
  %24 = load %struct.intel_plane_state*, %struct.intel_plane_state** %5, align 8
  %25 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  store %struct.drm_rect* %26, %struct.drm_rect** %7, align 8
  %27 = load %struct.intel_plane_state*, %struct.intel_plane_state** %5, align 8
  %28 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  store %struct.drm_rect* %29, %struct.drm_rect** %8, align 8
  %30 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %31 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  store %struct.drm_display_mode* %32, %struct.drm_display_mode** %14, align 8
  %33 = load %struct.intel_plane_state*, %struct.intel_plane_state** %5, align 8
  %34 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %33, i32 0, i32 0
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i64 0
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %15, align 4
  %39 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %6, align 8
  %40 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %39, i32 0, i32 0
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %16, align 4
  %46 = load %struct.drm_rect*, %struct.drm_rect** %8, align 8
  %47 = call i32 @drm_rect_width(%struct.drm_rect* %46)
  store i32 %47, i32* %12, align 4
  %48 = load %struct.drm_rect*, %struct.drm_rect** %8, align 8
  %49 = call i32 @drm_rect_height(%struct.drm_rect* %48)
  store i32 %49, i32* %13, align 4
  %50 = load %struct.drm_rect*, %struct.drm_rect** %7, align 8
  %51 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = ashr i32 %52, 16
  store i32 %53, i32* %9, align 4
  %54 = load %struct.drm_rect*, %struct.drm_rect** %7, align 8
  %55 = call i32 @drm_rect_width(%struct.drm_rect* %54)
  %56 = ashr i32 %55, 16
  store i32 %56, i32* %10, align 4
  %57 = load %struct.drm_rect*, %struct.drm_rect** %7, align 8
  %58 = call i32 @drm_rect_height(%struct.drm_rect* %57)
  %59 = ashr i32 %58, 16
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* %12, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %2
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* %13, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %63
  store i32 0, i32* %3, align 4
  br label %132

68:                                               ; preds = %63, %2
  store i32 3, i32* %18, align 4
  %69 = load %struct.drm_display_mode*, %struct.drm_display_mode** %14, align 8
  %70 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @DRM_MODE_FLAG_INTERLACE, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %84

75:                                               ; preds = %68
  %76 = load i32, i32* %11, align 4
  %77 = and i32 %76, 1
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %75
  %80 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %3, align 4
  br label %132

83:                                               ; preds = %75
  store i32 6, i32* %19, align 4
  br label %85

84:                                               ; preds = %68
  store i32 3, i32* %19, align 4
  br label %85

85:                                               ; preds = %84, %83
  %86 = load i32, i32* %9, align 4
  %87 = load i32, i32* %16, align 4
  %88 = mul i32 %86, %87
  %89 = and i32 %88, 63
  %90 = load i32, i32* %10, align 4
  %91 = load i32, i32* %16, align 4
  %92 = mul i32 %90, %91
  %93 = add i32 %89, %92
  store i32 %93, i32* %17, align 4
  %94 = load i32, i32* %10, align 4
  %95 = load i32, i32* %18, align 4
  %96 = icmp slt i32 %94, %95
  br i1 %96, label %107, label %97

97:                                               ; preds = %85
  %98 = load i32, i32* %11, align 4
  %99 = load i32, i32* %19, align 4
  %100 = icmp slt i32 %98, %99
  br i1 %100, label %107, label %101

101:                                              ; preds = %97
  %102 = load i32, i32* %10, align 4
  %103 = icmp sgt i32 %102, 2048
  br i1 %103, label %107, label %104

104:                                              ; preds = %101
  %105 = load i32, i32* %11, align 4
  %106 = icmp sgt i32 %105, 2048
  br i1 %106, label %107, label %115

107:                                              ; preds = %104, %101, %97, %85
  %108 = load i32, i32* %10, align 4
  %109 = load i32, i32* %11, align 4
  %110 = load i32, i32* %18, align 4
  %111 = load i32, i32* %19, align 4
  %112 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0), i32 %108, i32 %109, i32 %110, i32 %111, i32 2048, i32 2048)
  %113 = load i32, i32* @EINVAL, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %3, align 4
  br label %132

115:                                              ; preds = %104
  %116 = load i32, i32* %17, align 4
  %117 = icmp ugt i32 %116, 4096
  br i1 %117, label %118, label %123

118:                                              ; preds = %115
  %119 = load i32, i32* %17, align 4
  %120 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0), i32 %119, i32 4096)
  %121 = load i32, i32* @EINVAL, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %3, align 4
  br label %132

123:                                              ; preds = %115
  %124 = load i32, i32* %15, align 4
  %125 = icmp ugt i32 %124, 4096
  br i1 %125, label %126, label %131

126:                                              ; preds = %123
  %127 = load i32, i32* %15, align 4
  %128 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0), i32 %127, i32 4096)
  %129 = load i32, i32* @EINVAL, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %3, align 4
  br label %132

131:                                              ; preds = %123
  store i32 0, i32* %3, align 4
  br label %132

132:                                              ; preds = %131, %126, %118, %107, %79, %67
  %133 = load i32, i32* %3, align 4
  ret i32 %133
}

declare dso_local i32 @drm_rect_width(%struct.drm_rect*) #1

declare dso_local i32 @drm_rect_height(%struct.drm_rect*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
