; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_i9xx_plane_ctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_i9xx_plane_ctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_crtc_state = type { i32 }
%struct.intel_plane_state = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, %struct.drm_framebuffer*, %struct.TYPE_4__* }
%struct.drm_framebuffer = type { i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.drm_i915_private = type { i32 }

@DISPLAY_PLANE_ENABLE = common dso_local global i32 0, align 4
@DISPPLANE_TRICKLE_FEED_DISABLE = common dso_local global i32 0, align 4
@DISPPLANE_8BPP = common dso_local global i32 0, align 4
@DISPPLANE_BGRX555 = common dso_local global i32 0, align 4
@DISPPLANE_BGRX565 = common dso_local global i32 0, align 4
@DISPPLANE_BGRX888 = common dso_local global i32 0, align 4
@DISPPLANE_RGBX888 = common dso_local global i32 0, align 4
@DISPPLANE_BGRX101010 = common dso_local global i32 0, align 4
@DISPPLANE_RGBX101010 = common dso_local global i32 0, align 4
@I915_FORMAT_MOD_X_TILED = common dso_local global i64 0, align 8
@DISPPLANE_TILED = common dso_local global i32 0, align 4
@DRM_MODE_ROTATE_180 = common dso_local global i32 0, align 4
@DISPPLANE_ROTATE_180 = common dso_local global i32 0, align 4
@DRM_MODE_REFLECT_X = common dso_local global i32 0, align 4
@DISPPLANE_MIRROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_crtc_state*, %struct.intel_plane_state*)* @i9xx_plane_ctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i9xx_plane_ctl(%struct.intel_crtc_state* %0, %struct.intel_plane_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel_crtc_state*, align 8
  %5 = alloca %struct.intel_plane_state*, align 8
  %6 = alloca %struct.drm_i915_private*, align 8
  %7 = alloca %struct.drm_framebuffer*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.intel_crtc_state* %0, %struct.intel_crtc_state** %4, align 8
  store %struct.intel_plane_state* %1, %struct.intel_plane_state** %5, align 8
  %10 = load %struct.intel_plane_state*, %struct.intel_plane_state** %5, align 8
  %11 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 2
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.drm_i915_private* @to_i915(i32 %15)
  store %struct.drm_i915_private* %16, %struct.drm_i915_private** %6, align 8
  %17 = load %struct.intel_plane_state*, %struct.intel_plane_state** %5, align 8
  %18 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %20 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %19, align 8
  store %struct.drm_framebuffer* %20, %struct.drm_framebuffer** %7, align 8
  %21 = load %struct.intel_plane_state*, %struct.intel_plane_state** %5, align 8
  %22 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* @DISPLAY_PLANE_ENABLE, align 4
  store i32 %25, i32* %9, align 4
  %26 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %27 = call i64 @IS_G4X(%struct.drm_i915_private* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %41, label %29

29:                                               ; preds = %2
  %30 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %31 = call i64 @IS_GEN(%struct.drm_i915_private* %30, i32 5)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %41, label %33

33:                                               ; preds = %29
  %34 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %35 = call i64 @IS_GEN(%struct.drm_i915_private* %34, i32 6)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %33
  %38 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %39 = call i64 @IS_IVYBRIDGE(%struct.drm_i915_private* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %37, %33, %29, %2
  %42 = load i32, i32* @DISPPLANE_TRICKLE_FEED_DISABLE, align 4
  %43 = load i32, i32* %9, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %9, align 4
  br label %45

45:                                               ; preds = %41, %37
  %46 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %7, align 8
  %47 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %46, i32 0, i32 1
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  switch i32 %50, label %79 [
    i32 134, label %51
    i32 130, label %55
    i32 133, label %59
    i32 128, label %63
    i32 131, label %67
    i32 129, label %71
    i32 132, label %75
  ]

51:                                               ; preds = %45
  %52 = load i32, i32* @DISPPLANE_8BPP, align 4
  %53 = load i32, i32* %9, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %9, align 4
  br label %86

55:                                               ; preds = %45
  %56 = load i32, i32* @DISPPLANE_BGRX555, align 4
  %57 = load i32, i32* %9, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %9, align 4
  br label %86

59:                                               ; preds = %45
  %60 = load i32, i32* @DISPPLANE_BGRX565, align 4
  %61 = load i32, i32* %9, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %9, align 4
  br label %86

63:                                               ; preds = %45
  %64 = load i32, i32* @DISPPLANE_BGRX888, align 4
  %65 = load i32, i32* %9, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %9, align 4
  br label %86

67:                                               ; preds = %45
  %68 = load i32, i32* @DISPPLANE_RGBX888, align 4
  %69 = load i32, i32* %9, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %9, align 4
  br label %86

71:                                               ; preds = %45
  %72 = load i32, i32* @DISPPLANE_BGRX101010, align 4
  %73 = load i32, i32* %9, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %9, align 4
  br label %86

75:                                               ; preds = %45
  %76 = load i32, i32* @DISPPLANE_RGBX101010, align 4
  %77 = load i32, i32* %9, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %9, align 4
  br label %86

79:                                               ; preds = %45
  %80 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %7, align 8
  %81 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %80, i32 0, i32 1
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @MISSING_CASE(i32 %84)
  store i32 0, i32* %3, align 4
  br label %120

86:                                               ; preds = %75, %71, %67, %63, %59, %55, %51
  %87 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %88 = call i32 @INTEL_GEN(%struct.drm_i915_private* %87)
  %89 = icmp sge i32 %88, 4
  br i1 %89, label %90, label %100

90:                                               ; preds = %86
  %91 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %7, align 8
  %92 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @I915_FORMAT_MOD_X_TILED, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %100

96:                                               ; preds = %90
  %97 = load i32, i32* @DISPPLANE_TILED, align 4
  %98 = load i32, i32* %9, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %9, align 4
  br label %100

100:                                              ; preds = %96, %90, %86
  %101 = load i32, i32* %8, align 4
  %102 = load i32, i32* @DRM_MODE_ROTATE_180, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %100
  %106 = load i32, i32* @DISPPLANE_ROTATE_180, align 4
  %107 = load i32, i32* %9, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %9, align 4
  br label %109

109:                                              ; preds = %105, %100
  %110 = load i32, i32* %8, align 4
  %111 = load i32, i32* @DRM_MODE_REFLECT_X, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %109
  %115 = load i32, i32* @DISPPLANE_MIRROR, align 4
  %116 = load i32, i32* %9, align 4
  %117 = or i32 %116, %115
  store i32 %117, i32* %9, align 4
  br label %118

118:                                              ; preds = %114, %109
  %119 = load i32, i32* %9, align 4
  store i32 %119, i32* %3, align 4
  br label %120

120:                                              ; preds = %118, %79
  %121 = load i32, i32* %3, align 4
  ret i32 %121
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i64 @IS_G4X(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_GEN(%struct.drm_i915_private*, i32) #1

declare dso_local i64 @IS_IVYBRIDGE(%struct.drm_i915_private*) #1

declare dso_local i32 @MISSING_CASE(i32) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
