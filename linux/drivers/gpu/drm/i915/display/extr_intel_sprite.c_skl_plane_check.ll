; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_sprite.c_skl_plane_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_sprite.c_skl_plane_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_crtc_state = type { i32 }
%struct.intel_plane_state = type { i32, i32, %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32, i32, %struct.drm_framebuffer*, i32 }
%struct.drm_framebuffer = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.intel_plane = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.drm_i915_private = type { i32 }

@DRM_PLANE_HELPER_NO_SCALING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_crtc_state*, %struct.intel_plane_state*)* @skl_plane_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skl_plane_check(%struct.intel_crtc_state* %0, %struct.intel_plane_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel_crtc_state*, align 8
  %5 = alloca %struct.intel_plane_state*, align 8
  %6 = alloca %struct.intel_plane*, align 8
  %7 = alloca %struct.drm_i915_private*, align 8
  %8 = alloca %struct.drm_framebuffer*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.intel_crtc_state* %0, %struct.intel_crtc_state** %4, align 8
  store %struct.intel_plane_state* %1, %struct.intel_plane_state** %5, align 8
  %12 = load %struct.intel_plane_state*, %struct.intel_plane_state** %5, align 8
  %13 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = call %struct.intel_plane* @to_intel_plane(i32 %15)
  store %struct.intel_plane* %16, %struct.intel_plane** %6, align 8
  %17 = load %struct.intel_plane*, %struct.intel_plane** %6, align 8
  %18 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.drm_i915_private* @to_i915(i32 %20)
  store %struct.drm_i915_private* %21, %struct.drm_i915_private** %7, align 8
  %22 = load %struct.intel_plane_state*, %struct.intel_plane_state** %5, align 8
  %23 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 2
  %25 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %24, align 8
  store %struct.drm_framebuffer* %25, %struct.drm_framebuffer** %8, align 8
  %26 = load i32, i32* @DRM_PLANE_HELPER_NO_SCALING, align 4
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* @DRM_PLANE_HELPER_NO_SCALING, align 4
  store i32 %27, i32* %10, align 4
  %28 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %29 = load %struct.intel_plane_state*, %struct.intel_plane_state** %5, align 8
  %30 = call i32 @skl_plane_check_fb(%struct.intel_crtc_state* %28, %struct.intel_plane_state* %29)
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %11, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %2
  %34 = load i32, i32* %11, align 4
  store i32 %34, i32* %3, align 4
  br label %132

35:                                               ; preds = %2
  %36 = load %struct.intel_plane_state*, %struct.intel_plane_state** %5, align 8
  %37 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %53, label %41

41:                                               ; preds = %35
  %42 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %43 = call i64 @intel_fb_scalable(%struct.drm_framebuffer* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %41
  store i32 1, i32* %9, align 4
  %46 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %47 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %48 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %47, i32 0, i32 0
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @skl_max_scale(%struct.intel_crtc_state* %46, i32 %51)
  store i32 %52, i32* %10, align 4
  br label %53

53:                                               ; preds = %45, %41, %35
  %54 = load %struct.intel_plane_state*, %struct.intel_plane_state** %5, align 8
  %55 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %54, i32 0, i32 2
  %56 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %57 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %56, i32 0, i32 0
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* %10, align 4
  %60 = call i32 @drm_atomic_helper_check_plane_state(%struct.TYPE_8__* %55, i32* %57, i32 %58, i32 %59, i32 1, i32 1)
  store i32 %60, i32* %11, align 4
  %61 = load i32, i32* %11, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %53
  %64 = load i32, i32* %11, align 4
  store i32 %64, i32* %3, align 4
  br label %132

65:                                               ; preds = %53
  %66 = load %struct.intel_plane_state*, %struct.intel_plane_state** %5, align 8
  %67 = call i32 @skl_check_plane_surface(%struct.intel_plane_state* %66)
  store i32 %67, i32* %11, align 4
  %68 = load i32, i32* %11, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %65
  %71 = load i32, i32* %11, align 4
  store i32 %71, i32* %3, align 4
  br label %132

72:                                               ; preds = %65
  %73 = load %struct.intel_plane_state*, %struct.intel_plane_state** %5, align 8
  %74 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %72
  store i32 0, i32* %3, align 4
  br label %132

79:                                               ; preds = %72
  %80 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %81 = load %struct.intel_plane_state*, %struct.intel_plane_state** %5, align 8
  %82 = call i32 @skl_plane_check_dst_coordinates(%struct.intel_crtc_state* %80, %struct.intel_plane_state* %81)
  store i32 %82, i32* %11, align 4
  %83 = load i32, i32* %11, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %79
  %86 = load i32, i32* %11, align 4
  store i32 %86, i32* %3, align 4
  br label %132

87:                                               ; preds = %79
  %88 = load %struct.intel_plane_state*, %struct.intel_plane_state** %5, align 8
  %89 = call i32 @intel_plane_check_src_coordinates(%struct.intel_plane_state* %88)
  store i32 %89, i32* %11, align 4
  %90 = load i32, i32* %11, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %87
  %93 = load i32, i32* %11, align 4
  store i32 %93, i32* %3, align 4
  br label %132

94:                                               ; preds = %87
  %95 = load %struct.intel_plane_state*, %struct.intel_plane_state** %5, align 8
  %96 = call i32 @skl_plane_check_nv12_rotation(%struct.intel_plane_state* %95)
  store i32 %96, i32* %11, align 4
  %97 = load i32, i32* %11, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %94
  %100 = load i32, i32* %11, align 4
  store i32 %100, i32* %3, align 4
  br label %132

101:                                              ; preds = %94
  %102 = load %struct.intel_plane_state*, %struct.intel_plane_state** %5, align 8
  %103 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = ashr i32 %105, 8
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %112, label %108

108:                                              ; preds = %101
  %109 = load %struct.intel_plane_state*, %struct.intel_plane_state** %5, align 8
  %110 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 0
  store i32 0, i32* %111, align 8
  br label %112

112:                                              ; preds = %108, %101
  %113 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %114 = load %struct.intel_plane_state*, %struct.intel_plane_state** %5, align 8
  %115 = call i32 @skl_plane_ctl(%struct.intel_crtc_state* %113, %struct.intel_plane_state* %114)
  %116 = load %struct.intel_plane_state*, %struct.intel_plane_state** %5, align 8
  %117 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %116, i32 0, i32 1
  store i32 %115, i32* %117, align 4
  %118 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %119 = call i32 @INTEL_GEN(%struct.drm_i915_private* %118)
  %120 = icmp sge i32 %119, 10
  br i1 %120, label %125, label %121

121:                                              ; preds = %112
  %122 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %123 = call i64 @IS_GEMINILAKE(%struct.drm_i915_private* %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %131

125:                                              ; preds = %121, %112
  %126 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %127 = load %struct.intel_plane_state*, %struct.intel_plane_state** %5, align 8
  %128 = call i32 @glk_plane_color_ctl(%struct.intel_crtc_state* %126, %struct.intel_plane_state* %127)
  %129 = load %struct.intel_plane_state*, %struct.intel_plane_state** %5, align 8
  %130 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %129, i32 0, i32 0
  store i32 %128, i32* %130, align 8
  br label %131

131:                                              ; preds = %125, %121
  store i32 0, i32* %3, align 4
  br label %132

132:                                              ; preds = %131, %99, %92, %85, %78, %70, %63, %33
  %133 = load i32, i32* %3, align 4
  ret i32 %133
}

declare dso_local %struct.intel_plane* @to_intel_plane(i32) #1

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i32 @skl_plane_check_fb(%struct.intel_crtc_state*, %struct.intel_plane_state*) #1

declare dso_local i64 @intel_fb_scalable(%struct.drm_framebuffer*) #1

declare dso_local i32 @skl_max_scale(%struct.intel_crtc_state*, i32) #1

declare dso_local i32 @drm_atomic_helper_check_plane_state(%struct.TYPE_8__*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @skl_check_plane_surface(%struct.intel_plane_state*) #1

declare dso_local i32 @skl_plane_check_dst_coordinates(%struct.intel_crtc_state*, %struct.intel_plane_state*) #1

declare dso_local i32 @intel_plane_check_src_coordinates(%struct.intel_plane_state*) #1

declare dso_local i32 @skl_plane_check_nv12_rotation(%struct.intel_plane_state*) #1

declare dso_local i32 @skl_plane_ctl(%struct.intel_crtc_state*, %struct.intel_plane_state*) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_GEMINILAKE(%struct.drm_i915_private*) #1

declare dso_local i32 @glk_plane_color_ctl(%struct.intel_crtc_state*, %struct.intel_plane_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
