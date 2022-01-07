; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_stdu.c_vmw_stdu_primary_plane_atomic_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_stdu.c_vmw_stdu_primary_plane_atomic_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64, %struct.drm_crtc* }
%struct.drm_crtc = type { %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { %struct.drm_pending_vblank_event* }
%struct.drm_pending_vblank_event = type { %struct.TYPE_9__, %struct.TYPE_12__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_12__ = type { %struct.drm_file* }
%struct.drm_file = type { i32 }
%struct.drm_plane_state = type { %struct.drm_crtc* }
%struct.vmw_plane_state = type { i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.vmw_screen_target_display_unit = type { i32, %struct.TYPE_7__*, i32, i32 }
%struct.vmw_fence_obj = type { i32 }
%struct.vmw_private = type { i32 }
%struct.vmw_framebuffer = type { i64 }

@.str = private unnamed_addr constant [33 x i8] c"Failed to bind surface to STDU.\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Failed to update STDU.\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Failed to blank STDU\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"Failed to queue event on fence.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_plane*, %struct.drm_plane_state*)* @vmw_stdu_primary_plane_atomic_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmw_stdu_primary_plane_atomic_update(%struct.drm_plane* %0, %struct.drm_plane_state* %1) #0 {
  %3 = alloca %struct.drm_plane*, align 8
  %4 = alloca %struct.drm_plane_state*, align 8
  %5 = alloca %struct.vmw_plane_state*, align 8
  %6 = alloca %struct.drm_crtc*, align 8
  %7 = alloca %struct.vmw_screen_target_display_unit*, align 8
  %8 = alloca %struct.drm_pending_vblank_event*, align 8
  %9 = alloca %struct.vmw_fence_obj*, align 8
  %10 = alloca %struct.vmw_private*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.vmw_framebuffer*, align 8
  %13 = alloca %struct.drm_file*, align 8
  store %struct.drm_plane* %0, %struct.drm_plane** %3, align 8
  store %struct.drm_plane_state* %1, %struct.drm_plane_state** %4, align 8
  %14 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %15 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %14, i32 0, i32 0
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %17 = call %struct.vmw_plane_state* @vmw_plane_state_to_vps(%struct.TYPE_11__* %16)
  store %struct.vmw_plane_state* %17, %struct.vmw_plane_state** %5, align 8
  %18 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %19 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %18, i32 0, i32 0
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 1
  %22 = load %struct.drm_crtc*, %struct.drm_crtc** %21, align 8
  store %struct.drm_crtc* %22, %struct.drm_crtc** %6, align 8
  store %struct.vmw_fence_obj* null, %struct.vmw_fence_obj** %9, align 8
  %23 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %24 = icmp ne %struct.drm_crtc* %23, null
  br i1 %24, label %25, label %94

25:                                               ; preds = %2
  %26 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %27 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %26, i32 0, i32 0
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %94

32:                                               ; preds = %25
  %33 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %34 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %33, i32 0, i32 0
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call %struct.vmw_framebuffer* @vmw_framebuffer_to_vfb(i64 %37)
  store %struct.vmw_framebuffer* %38, %struct.vmw_framebuffer** %12, align 8
  %39 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %40 = call %struct.vmw_screen_target_display_unit* @vmw_crtc_to_stdu(%struct.drm_crtc* %39)
  store %struct.vmw_screen_target_display_unit* %40, %struct.vmw_screen_target_display_unit** %7, align 8
  %41 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %42 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call %struct.vmw_private* @vmw_priv(i32 %43)
  store %struct.vmw_private* %44, %struct.vmw_private** %10, align 8
  %45 = load %struct.vmw_plane_state*, %struct.vmw_plane_state** %5, align 8
  %46 = getelementptr inbounds %struct.vmw_plane_state, %struct.vmw_plane_state* %45, i32 0, i32 2
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %46, align 8
  %48 = load %struct.vmw_screen_target_display_unit*, %struct.vmw_screen_target_display_unit** %7, align 8
  %49 = getelementptr inbounds %struct.vmw_screen_target_display_unit, %struct.vmw_screen_target_display_unit* %48, i32 0, i32 1
  store %struct.TYPE_7__* %47, %struct.TYPE_7__** %49, align 8
  %50 = load %struct.vmw_plane_state*, %struct.vmw_plane_state** %5, align 8
  %51 = getelementptr inbounds %struct.vmw_plane_state, %struct.vmw_plane_state* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.vmw_screen_target_display_unit*, %struct.vmw_screen_target_display_unit** %7, align 8
  %54 = getelementptr inbounds %struct.vmw_screen_target_display_unit, %struct.vmw_screen_target_display_unit* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 4
  %55 = load %struct.vmw_plane_state*, %struct.vmw_plane_state** %5, align 8
  %56 = getelementptr inbounds %struct.vmw_plane_state, %struct.vmw_plane_state* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.vmw_screen_target_display_unit*, %struct.vmw_screen_target_display_unit** %7, align 8
  %59 = getelementptr inbounds %struct.vmw_screen_target_display_unit, %struct.vmw_screen_target_display_unit* %58, i32 0, i32 2
  store i32 %57, i32* %59, align 8
  %60 = load %struct.vmw_private*, %struct.vmw_private** %10, align 8
  %61 = load %struct.vmw_screen_target_display_unit*, %struct.vmw_screen_target_display_unit** %7, align 8
  %62 = load %struct.vmw_screen_target_display_unit*, %struct.vmw_screen_target_display_unit** %7, align 8
  %63 = getelementptr inbounds %struct.vmw_screen_target_display_unit, %struct.vmw_screen_target_display_unit* %62, i32 0, i32 1
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = call i32 @vmw_stdu_bind_st(%struct.vmw_private* %60, %struct.vmw_screen_target_display_unit* %61, i32* %65)
  store i32 %66, i32* %11, align 4
  %67 = load i32, i32* %11, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %32
  %70 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %71

71:                                               ; preds = %69, %32
  %72 = load %struct.vmw_framebuffer*, %struct.vmw_framebuffer** %12, align 8
  %73 = getelementptr inbounds %struct.vmw_framebuffer, %struct.vmw_framebuffer* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %71
  %77 = load %struct.vmw_private*, %struct.vmw_private** %10, align 8
  %78 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %79 = load %struct.drm_plane_state*, %struct.drm_plane_state** %4, align 8
  %80 = load %struct.vmw_framebuffer*, %struct.vmw_framebuffer** %12, align 8
  %81 = call i32 @vmw_stdu_plane_update_bo(%struct.vmw_private* %77, %struct.drm_plane* %78, %struct.drm_plane_state* %79, %struct.vmw_framebuffer* %80, %struct.vmw_fence_obj** %9)
  store i32 %81, i32* %11, align 4
  br label %88

82:                                               ; preds = %71
  %83 = load %struct.vmw_private*, %struct.vmw_private** %10, align 8
  %84 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %85 = load %struct.drm_plane_state*, %struct.drm_plane_state** %4, align 8
  %86 = load %struct.vmw_framebuffer*, %struct.vmw_framebuffer** %12, align 8
  %87 = call i32 @vmw_stdu_plane_update_surface(%struct.vmw_private* %83, %struct.drm_plane* %84, %struct.drm_plane_state* %85, %struct.vmw_framebuffer* %86, %struct.vmw_fence_obj** %9)
  store i32 %87, i32* %11, align 4
  br label %88

88:                                               ; preds = %82, %76
  %89 = load i32, i32* %11, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %88
  %92 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %93

93:                                               ; preds = %91, %88
  br label %126

94:                                               ; preds = %25, %2
  %95 = load %struct.drm_plane_state*, %struct.drm_plane_state** %4, align 8
  %96 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %95, i32 0, i32 0
  %97 = load %struct.drm_crtc*, %struct.drm_crtc** %96, align 8
  store %struct.drm_crtc* %97, %struct.drm_crtc** %6, align 8
  %98 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %99 = call %struct.vmw_screen_target_display_unit* @vmw_crtc_to_stdu(%struct.drm_crtc* %98)
  store %struct.vmw_screen_target_display_unit* %99, %struct.vmw_screen_target_display_unit** %7, align 8
  %100 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %101 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = call %struct.vmw_private* @vmw_priv(i32 %102)
  store %struct.vmw_private* %103, %struct.vmw_private** %10, align 8
  %104 = load %struct.vmw_screen_target_display_unit*, %struct.vmw_screen_target_display_unit** %7, align 8
  %105 = getelementptr inbounds %struct.vmw_screen_target_display_unit, %struct.vmw_screen_target_display_unit* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %109, label %108

108:                                              ; preds = %94
  br label %170

109:                                              ; preds = %94
  %110 = load %struct.vmw_private*, %struct.vmw_private** %10, align 8
  %111 = load %struct.vmw_screen_target_display_unit*, %struct.vmw_screen_target_display_unit** %7, align 8
  %112 = call i32 @vmw_stdu_bind_st(%struct.vmw_private* %110, %struct.vmw_screen_target_display_unit* %111, i32* null)
  store i32 %112, i32* %11, align 4
  %113 = load i32, i32* %11, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %109
  %116 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %117

117:                                              ; preds = %115, %109
  %118 = load %struct.vmw_private*, %struct.vmw_private** %10, align 8
  %119 = load %struct.vmw_screen_target_display_unit*, %struct.vmw_screen_target_display_unit** %7, align 8
  %120 = call i32 @vmw_stdu_update_st(%struct.vmw_private* %118, %struct.vmw_screen_target_display_unit* %119)
  store i32 %120, i32* %11, align 4
  %121 = load i32, i32* %11, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %117
  %124 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %125

125:                                              ; preds = %123, %117
  br label %170

126:                                              ; preds = %93
  %127 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %128 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %127, i32 0, i32 0
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 0
  %131 = load %struct.drm_pending_vblank_event*, %struct.drm_pending_vblank_event** %130, align 8
  store %struct.drm_pending_vblank_event* %131, %struct.drm_pending_vblank_event** %8, align 8
  %132 = load %struct.drm_pending_vblank_event*, %struct.drm_pending_vblank_event** %8, align 8
  %133 = icmp ne %struct.drm_pending_vblank_event* %132, null
  br i1 %133, label %134, label %165

134:                                              ; preds = %126
  %135 = load %struct.vmw_fence_obj*, %struct.vmw_fence_obj** %9, align 8
  %136 = icmp ne %struct.vmw_fence_obj* %135, null
  br i1 %136, label %137, label %165

137:                                              ; preds = %134
  %138 = load %struct.drm_pending_vblank_event*, %struct.drm_pending_vblank_event** %8, align 8
  %139 = getelementptr inbounds %struct.drm_pending_vblank_event, %struct.drm_pending_vblank_event* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i32 0, i32 0
  %141 = load %struct.drm_file*, %struct.drm_file** %140, align 8
  store %struct.drm_file* %141, %struct.drm_file** %13, align 8
  %142 = load %struct.drm_file*, %struct.drm_file** %13, align 8
  %143 = load %struct.vmw_fence_obj*, %struct.vmw_fence_obj** %9, align 8
  %144 = load %struct.drm_pending_vblank_event*, %struct.drm_pending_vblank_event** %8, align 8
  %145 = getelementptr inbounds %struct.drm_pending_vblank_event, %struct.drm_pending_vblank_event* %144, i32 0, i32 1
  %146 = load %struct.drm_pending_vblank_event*, %struct.drm_pending_vblank_event** %8, align 8
  %147 = getelementptr inbounds %struct.drm_pending_vblank_event, %struct.drm_pending_vblank_event* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 1
  %150 = load %struct.drm_pending_vblank_event*, %struct.drm_pending_vblank_event** %8, align 8
  %151 = getelementptr inbounds %struct.drm_pending_vblank_event, %struct.drm_pending_vblank_event* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 0
  %154 = call i32 @vmw_event_fence_action_queue(%struct.drm_file* %142, %struct.vmw_fence_obj* %143, %struct.TYPE_12__* %145, i32* %149, i32* %153, i32 1)
  store i32 %154, i32* %11, align 4
  %155 = load i32, i32* %11, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %159

157:                                              ; preds = %137
  %158 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  br label %164

159:                                              ; preds = %137
  %160 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %161 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %160, i32 0, i32 0
  %162 = load %struct.TYPE_10__*, %struct.TYPE_10__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %162, i32 0, i32 0
  store %struct.drm_pending_vblank_event* null, %struct.drm_pending_vblank_event** %163, align 8
  br label %164

164:                                              ; preds = %159, %157
  br label %165

165:                                              ; preds = %164, %134, %126
  %166 = load %struct.vmw_fence_obj*, %struct.vmw_fence_obj** %9, align 8
  %167 = icmp ne %struct.vmw_fence_obj* %166, null
  br i1 %167, label %168, label %170

168:                                              ; preds = %165
  %169 = call i32 @vmw_fence_obj_unreference(%struct.vmw_fence_obj** %9)
  br label %170

170:                                              ; preds = %108, %125, %168, %165
  ret void
}

declare dso_local %struct.vmw_plane_state* @vmw_plane_state_to_vps(%struct.TYPE_11__*) #1

declare dso_local %struct.vmw_framebuffer* @vmw_framebuffer_to_vfb(i64) #1

declare dso_local %struct.vmw_screen_target_display_unit* @vmw_crtc_to_stdu(%struct.drm_crtc*) #1

declare dso_local %struct.vmw_private* @vmw_priv(i32) #1

declare dso_local i32 @vmw_stdu_bind_st(%struct.vmw_private*, %struct.vmw_screen_target_display_unit*, i32*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @vmw_stdu_plane_update_bo(%struct.vmw_private*, %struct.drm_plane*, %struct.drm_plane_state*, %struct.vmw_framebuffer*, %struct.vmw_fence_obj**) #1

declare dso_local i32 @vmw_stdu_plane_update_surface(%struct.vmw_private*, %struct.drm_plane*, %struct.drm_plane_state*, %struct.vmw_framebuffer*, %struct.vmw_fence_obj**) #1

declare dso_local i32 @vmw_stdu_update_st(%struct.vmw_private*, %struct.vmw_screen_target_display_unit*) #1

declare dso_local i32 @vmw_event_fence_action_queue(%struct.drm_file*, %struct.vmw_fence_obj*, %struct.TYPE_12__*, i32*, i32*, i32) #1

declare dso_local i32 @vmw_fence_obj_unreference(%struct.vmw_fence_obj**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
