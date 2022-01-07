; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_sprite.c_vlv_sprite_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_sprite.c_vlv_sprite_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_crtc_state = type { i32 }
%struct.intel_plane_state = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@DRM_PLANE_HELPER_NO_SCALING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_crtc_state*, %struct.intel_plane_state*)* @vlv_sprite_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlv_sprite_check(%struct.intel_crtc_state* %0, %struct.intel_plane_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel_crtc_state*, align 8
  %5 = alloca %struct.intel_plane_state*, align 8
  %6 = alloca i32, align 4
  store %struct.intel_crtc_state* %0, %struct.intel_crtc_state** %4, align 8
  store %struct.intel_plane_state* %1, %struct.intel_plane_state** %5, align 8
  %7 = load %struct.intel_plane_state*, %struct.intel_plane_state** %5, align 8
  %8 = call i32 @chv_plane_check_rotation(%struct.intel_plane_state* %7)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* %6, align 4
  store i32 %12, i32* %3, align 4
  br label %52

13:                                               ; preds = %2
  %14 = load %struct.intel_plane_state*, %struct.intel_plane_state** %5, align 8
  %15 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %14, i32 0, i32 1
  %16 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %17 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %16, i32 0, i32 0
  %18 = load i32, i32* @DRM_PLANE_HELPER_NO_SCALING, align 4
  %19 = load i32, i32* @DRM_PLANE_HELPER_NO_SCALING, align 4
  %20 = call i32 @drm_atomic_helper_check_plane_state(%struct.TYPE_2__* %15, i32* %17, i32 %18, i32 %19, i32 1, i32 1)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %13
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %3, align 4
  br label %52

25:                                               ; preds = %13
  %26 = load %struct.intel_plane_state*, %struct.intel_plane_state** %5, align 8
  %27 = call i32 @i9xx_check_plane_surface(%struct.intel_plane_state* %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* %6, align 4
  store i32 %31, i32* %3, align 4
  br label %52

32:                                               ; preds = %25
  %33 = load %struct.intel_plane_state*, %struct.intel_plane_state** %5, align 8
  %34 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %32
  store i32 0, i32* %3, align 4
  br label %52

39:                                               ; preds = %32
  %40 = load %struct.intel_plane_state*, %struct.intel_plane_state** %5, align 8
  %41 = call i32 @intel_plane_check_src_coordinates(%struct.intel_plane_state* %40)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = load i32, i32* %6, align 4
  store i32 %45, i32* %3, align 4
  br label %52

46:                                               ; preds = %39
  %47 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %48 = load %struct.intel_plane_state*, %struct.intel_plane_state** %5, align 8
  %49 = call i32 @vlv_sprite_ctl(%struct.intel_crtc_state* %47, %struct.intel_plane_state* %48)
  %50 = load %struct.intel_plane_state*, %struct.intel_plane_state** %5, align 8
  %51 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %46, %44, %38, %30, %23, %11
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @chv_plane_check_rotation(%struct.intel_plane_state*) #1

declare dso_local i32 @drm_atomic_helper_check_plane_state(%struct.TYPE_2__*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @i9xx_check_plane_surface(%struct.intel_plane_state*) #1

declare dso_local i32 @intel_plane_check_src_coordinates(%struct.intel_plane_state*) #1

declare dso_local i32 @vlv_sprite_ctl(%struct.intel_crtc_state*, %struct.intel_plane_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
