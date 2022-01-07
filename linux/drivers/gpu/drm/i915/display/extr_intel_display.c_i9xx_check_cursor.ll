; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_i9xx_check_cursor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_i9xx_check_cursor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_crtc_state = type { i32 }
%struct.intel_plane_state = type { i32, %struct.TYPE_8__, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i32, i64, i64, i32, %struct.drm_framebuffer*, i32 }
%struct.drm_framebuffer = type { i32*, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_6__ = type { i32 }
%struct.intel_plane = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.drm_i915_private = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"Cursor dimension %dx%d not supported\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"Invalid cursor stride (%u) (cursor width %d)\0A\00", align 1
@PIPE_C = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [59 x i8] c"CHV cursor C not allowed to straddle the left screen edge\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_crtc_state*, %struct.intel_plane_state*)* @i9xx_check_cursor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i9xx_check_cursor(%struct.intel_crtc_state* %0, %struct.intel_plane_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel_crtc_state*, align 8
  %5 = alloca %struct.intel_plane_state*, align 8
  %6 = alloca %struct.intel_plane*, align 8
  %7 = alloca %struct.drm_i915_private*, align 8
  %8 = alloca %struct.drm_framebuffer*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.intel_crtc_state* %0, %struct.intel_crtc_state** %4, align 8
  store %struct.intel_plane_state* %1, %struct.intel_plane_state** %5, align 8
  %11 = load %struct.intel_plane_state*, %struct.intel_plane_state** %5, align 8
  %12 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 5
  %14 = load i32, i32* %13, align 8
  %15 = call %struct.intel_plane* @to_intel_plane(i32 %14)
  store %struct.intel_plane* %15, %struct.intel_plane** %6, align 8
  %16 = load %struct.intel_plane*, %struct.intel_plane** %6, align 8
  %17 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.drm_i915_private* @to_i915(i32 %19)
  store %struct.drm_i915_private* %20, %struct.drm_i915_private** %7, align 8
  %21 = load %struct.intel_plane_state*, %struct.intel_plane_state** %5, align 8
  %22 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 4
  %24 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %23, align 8
  store %struct.drm_framebuffer* %24, %struct.drm_framebuffer** %8, align 8
  %25 = load %struct.intel_plane*, %struct.intel_plane** %6, align 8
  %26 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %9, align 4
  %28 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %29 = load %struct.intel_plane_state*, %struct.intel_plane_state** %5, align 8
  %30 = call i32 @intel_check_cursor(%struct.intel_crtc_state* %28, %struct.intel_plane_state* %29)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %2
  %34 = load i32, i32* %10, align 4
  store i32 %34, i32* %3, align 4
  br label %139

35:                                               ; preds = %2
  %36 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %37 = icmp ne %struct.drm_framebuffer* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %35
  store i32 0, i32* %3, align 4
  br label %139

39:                                               ; preds = %35
  %40 = load %struct.intel_plane_state*, %struct.intel_plane_state** %5, align 8
  %41 = call i32 @i9xx_cursor_size_ok(%struct.intel_plane_state* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %55, label %43

43:                                               ; preds = %39
  %44 = load %struct.intel_plane_state*, %struct.intel_plane_state** %5, align 8
  %45 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.intel_plane_state*, %struct.intel_plane_state** %5, align 8
  %49 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %47, i32 %51)
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %139

55:                                               ; preds = %39
  %56 = load %struct.intel_plane_state*, %struct.intel_plane_state** %5, align 8
  %57 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %74

61:                                               ; preds = %55
  %62 = load %struct.intel_plane_state*, %struct.intel_plane_state** %5, align 8
  %63 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %62, i32 0, i32 2
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i64 0
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %69 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 0
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %67, %72
  br label %74

74:                                               ; preds = %61, %55
  %75 = phi i1 [ false, %55 ], [ %73, %61 ]
  %76 = zext i1 %75 to i32
  %77 = call i32 @WARN_ON(i32 %76)
  %78 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %79 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.intel_plane_state*, %struct.intel_plane_state** %5, align 8
  %84 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %88 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %87, i32 0, i32 1
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 0
  %93 = load i32, i32* %92, align 4
  %94 = mul nsw i32 %86, %93
  %95 = icmp ne i32 %82, %94
  br i1 %95, label %96, label %109

96:                                               ; preds = %74
  %97 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %98 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 0
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.intel_plane_state*, %struct.intel_plane_state** %5, align 8
  %103 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %101, i32 %105)
  %107 = load i32, i32* @EINVAL, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %3, align 4
  br label %139

109:                                              ; preds = %74
  %110 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %111 = call i64 @IS_CHERRYVIEW(%struct.drm_i915_private* %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %133

113:                                              ; preds = %109
  %114 = load i32, i32* %9, align 4
  %115 = load i32, i32* @PIPE_C, align 4
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %117, label %133

117:                                              ; preds = %113
  %118 = load %struct.intel_plane_state*, %struct.intel_plane_state** %5, align 8
  %119 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 2
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %133

123:                                              ; preds = %117
  %124 = load %struct.intel_plane_state*, %struct.intel_plane_state** %5, align 8
  %125 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = icmp slt i64 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %123
  %130 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0))
  %131 = load i32, i32* @EINVAL, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %3, align 4
  br label %139

133:                                              ; preds = %123, %117, %113, %109
  %134 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %135 = load %struct.intel_plane_state*, %struct.intel_plane_state** %5, align 8
  %136 = call i32 @i9xx_cursor_ctl(%struct.intel_crtc_state* %134, %struct.intel_plane_state* %135)
  %137 = load %struct.intel_plane_state*, %struct.intel_plane_state** %5, align 8
  %138 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %137, i32 0, i32 0
  store i32 %136, i32* %138, align 8
  store i32 0, i32* %3, align 4
  br label %139

139:                                              ; preds = %133, %129, %96, %43, %38, %33
  %140 = load i32, i32* %3, align 4
  ret i32 %140
}

declare dso_local %struct.intel_plane* @to_intel_plane(i32) #1

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i32 @intel_check_cursor(%struct.intel_crtc_state*, %struct.intel_plane_state*) #1

declare dso_local i32 @i9xx_cursor_size_ok(%struct.intel_plane_state*) #1

declare dso_local i32 @DRM_DEBUG(i8*, i32, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, ...) #1

declare dso_local i64 @IS_CHERRYVIEW(%struct.drm_i915_private*) #1

declare dso_local i32 @i9xx_cursor_ctl(%struct.intel_crtc_state*, %struct.intel_plane_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
