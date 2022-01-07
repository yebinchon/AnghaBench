; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_sprite.c_g4x_sprite_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_sprite.c_g4x_sprite_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_crtc_state = type { i32 }
%struct.intel_plane_state = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.intel_plane = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.drm_i915_private = type { i32 }

@DRM_PLANE_HELPER_NO_SCALING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_crtc_state*, %struct.intel_plane_state*)* @g4x_sprite_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g4x_sprite_check(%struct.intel_crtc_state* %0, %struct.intel_plane_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel_crtc_state*, align 8
  %5 = alloca %struct.intel_plane_state*, align 8
  %6 = alloca %struct.intel_plane*, align 8
  %7 = alloca %struct.drm_i915_private*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.intel_crtc_state* %0, %struct.intel_crtc_state** %4, align 8
  store %struct.intel_plane_state* %1, %struct.intel_plane_state** %5, align 8
  %11 = load %struct.intel_plane_state*, %struct.intel_plane_state** %5, align 8
  %12 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.intel_plane* @to_intel_plane(i32 %14)
  store %struct.intel_plane* %15, %struct.intel_plane** %6, align 8
  %16 = load %struct.intel_plane*, %struct.intel_plane** %6, align 8
  %17 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.drm_i915_private* @to_i915(i32 %19)
  store %struct.drm_i915_private* %20, %struct.drm_i915_private** %7, align 8
  %21 = load i32, i32* @DRM_PLANE_HELPER_NO_SCALING, align 4
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* @DRM_PLANE_HELPER_NO_SCALING, align 4
  store i32 %22, i32* %9, align 4
  %23 = load %struct.intel_plane_state*, %struct.intel_plane_state** %5, align 8
  %24 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @intel_fb_scalable(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %41

29:                                               ; preds = %2
  %30 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %31 = call i32 @INTEL_GEN(%struct.drm_i915_private* %30)
  %32 = icmp slt i32 %31, 7
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  store i32 1, i32* %8, align 4
  store i32 1048576, i32* %9, align 4
  br label %40

34:                                               ; preds = %29
  %35 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %36 = call i64 @IS_IVYBRIDGE(%struct.drm_i915_private* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  store i32 1, i32* %8, align 4
  store i32 131072, i32* %9, align 4
  br label %39

39:                                               ; preds = %38, %34
  br label %40

40:                                               ; preds = %39, %33
  br label %41

41:                                               ; preds = %40, %2
  %42 = load %struct.intel_plane_state*, %struct.intel_plane_state** %5, align 8
  %43 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %42, i32 0, i32 1
  %44 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %45 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %44, i32 0, i32 0
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @drm_atomic_helper_check_plane_state(%struct.TYPE_4__* %43, i32* %45, i32 %46, i32 %47, i32 1, i32 1)
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %10, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %41
  %52 = load i32, i32* %10, align 4
  store i32 %52, i32* %3, align 4
  br label %99

53:                                               ; preds = %41
  %54 = load %struct.intel_plane_state*, %struct.intel_plane_state** %5, align 8
  %55 = call i32 @i9xx_check_plane_surface(%struct.intel_plane_state* %54)
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %10, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %53
  %59 = load i32, i32* %10, align 4
  store i32 %59, i32* %3, align 4
  br label %99

60:                                               ; preds = %53
  %61 = load %struct.intel_plane_state*, %struct.intel_plane_state** %5, align 8
  %62 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %60
  store i32 0, i32* %3, align 4
  br label %99

67:                                               ; preds = %60
  %68 = load %struct.intel_plane_state*, %struct.intel_plane_state** %5, align 8
  %69 = call i32 @intel_plane_check_src_coordinates(%struct.intel_plane_state* %68)
  store i32 %69, i32* %10, align 4
  %70 = load i32, i32* %10, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %67
  %73 = load i32, i32* %10, align 4
  store i32 %73, i32* %3, align 4
  br label %99

74:                                               ; preds = %67
  %75 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %76 = load %struct.intel_plane_state*, %struct.intel_plane_state** %5, align 8
  %77 = call i32 @g4x_sprite_check_scaling(%struct.intel_crtc_state* %75, %struct.intel_plane_state* %76)
  store i32 %77, i32* %10, align 4
  %78 = load i32, i32* %10, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %74
  %81 = load i32, i32* %10, align 4
  store i32 %81, i32* %3, align 4
  br label %99

82:                                               ; preds = %74
  %83 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %84 = call i32 @INTEL_GEN(%struct.drm_i915_private* %83)
  %85 = icmp sge i32 %84, 7
  br i1 %85, label %86, label %92

86:                                               ; preds = %82
  %87 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %88 = load %struct.intel_plane_state*, %struct.intel_plane_state** %5, align 8
  %89 = call i32 @ivb_sprite_ctl(%struct.intel_crtc_state* %87, %struct.intel_plane_state* %88)
  %90 = load %struct.intel_plane_state*, %struct.intel_plane_state** %5, align 8
  %91 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 4
  br label %98

92:                                               ; preds = %82
  %93 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %94 = load %struct.intel_plane_state*, %struct.intel_plane_state** %5, align 8
  %95 = call i32 @g4x_sprite_ctl(%struct.intel_crtc_state* %93, %struct.intel_plane_state* %94)
  %96 = load %struct.intel_plane_state*, %struct.intel_plane_state** %5, align 8
  %97 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 4
  br label %98

98:                                               ; preds = %92, %86
  store i32 0, i32* %3, align 4
  br label %99

99:                                               ; preds = %98, %80, %72, %66, %58, %51
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local %struct.intel_plane* @to_intel_plane(i32) #1

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i64 @intel_fb_scalable(i32) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_IVYBRIDGE(%struct.drm_i915_private*) #1

declare dso_local i32 @drm_atomic_helper_check_plane_state(%struct.TYPE_4__*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @i9xx_check_plane_surface(%struct.intel_plane_state*) #1

declare dso_local i32 @intel_plane_check_src_coordinates(%struct.intel_plane_state*) #1

declare dso_local i32 @g4x_sprite_check_scaling(%struct.intel_crtc_state*, %struct.intel_plane_state*) #1

declare dso_local i32 @ivb_sprite_ctl(%struct.intel_crtc_state*, %struct.intel_plane_state*) #1

declare dso_local i32 @g4x_sprite_ctl(%struct.intel_crtc_state*, %struct.intel_plane_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
