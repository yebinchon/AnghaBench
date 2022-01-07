; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_i9xx_plane_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_i9xx_plane_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_crtc_state = type { i32 }
%struct.intel_plane_state = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.intel_plane = type { i32 }

@DRM_PLANE_HELPER_NO_SCALING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_crtc_state*, %struct.intel_plane_state*)* @i9xx_plane_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i9xx_plane_check(%struct.intel_crtc_state* %0, %struct.intel_plane_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel_crtc_state*, align 8
  %5 = alloca %struct.intel_plane_state*, align 8
  %6 = alloca %struct.intel_plane*, align 8
  %7 = alloca i32, align 4
  store %struct.intel_crtc_state* %0, %struct.intel_crtc_state** %4, align 8
  store %struct.intel_plane_state* %1, %struct.intel_plane_state** %5, align 8
  %8 = load %struct.intel_plane_state*, %struct.intel_plane_state** %5, align 8
  %9 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.intel_plane* @to_intel_plane(i32 %11)
  store %struct.intel_plane* %12, %struct.intel_plane** %6, align 8
  %13 = load %struct.intel_plane_state*, %struct.intel_plane_state** %5, align 8
  %14 = call i32 @chv_plane_check_rotation(%struct.intel_plane_state* %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* %7, align 4
  store i32 %18, i32* %3, align 4
  br label %60

19:                                               ; preds = %2
  %20 = load %struct.intel_plane_state*, %struct.intel_plane_state** %5, align 8
  %21 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %20, i32 0, i32 1
  %22 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %23 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %22, i32 0, i32 0
  %24 = load i32, i32* @DRM_PLANE_HELPER_NO_SCALING, align 4
  %25 = load i32, i32* @DRM_PLANE_HELPER_NO_SCALING, align 4
  %26 = load %struct.intel_plane*, %struct.intel_plane** %6, align 8
  %27 = call i32 @i9xx_plane_has_windowing(%struct.intel_plane* %26)
  %28 = call i32 @drm_atomic_helper_check_plane_state(%struct.TYPE_2__* %21, i32* %23, i32 %24, i32 %25, i32 %27, i32 1)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %19
  %32 = load i32, i32* %7, align 4
  store i32 %32, i32* %3, align 4
  br label %60

33:                                               ; preds = %19
  %34 = load %struct.intel_plane_state*, %struct.intel_plane_state** %5, align 8
  %35 = call i32 @i9xx_check_plane_surface(%struct.intel_plane_state* %34)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load i32, i32* %7, align 4
  store i32 %39, i32* %3, align 4
  br label %60

40:                                               ; preds = %33
  %41 = load %struct.intel_plane_state*, %struct.intel_plane_state** %5, align 8
  %42 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %40
  store i32 0, i32* %3, align 4
  br label %60

47:                                               ; preds = %40
  %48 = load %struct.intel_plane_state*, %struct.intel_plane_state** %5, align 8
  %49 = call i32 @intel_plane_check_src_coordinates(%struct.intel_plane_state* %48)
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = load i32, i32* %7, align 4
  store i32 %53, i32* %3, align 4
  br label %60

54:                                               ; preds = %47
  %55 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %56 = load %struct.intel_plane_state*, %struct.intel_plane_state** %5, align 8
  %57 = call i32 @i9xx_plane_ctl(%struct.intel_crtc_state* %55, %struct.intel_plane_state* %56)
  %58 = load %struct.intel_plane_state*, %struct.intel_plane_state** %5, align 8
  %59 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 4
  store i32 0, i32* %3, align 4
  br label %60

60:                                               ; preds = %54, %52, %46, %38, %31, %17
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local %struct.intel_plane* @to_intel_plane(i32) #1

declare dso_local i32 @chv_plane_check_rotation(%struct.intel_plane_state*) #1

declare dso_local i32 @drm_atomic_helper_check_plane_state(%struct.TYPE_2__*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @i9xx_plane_has_windowing(%struct.intel_plane*) #1

declare dso_local i32 @i9xx_check_plane_surface(%struct.intel_plane_state*) #1

declare dso_local i32 @intel_plane_check_src_coordinates(%struct.intel_plane_state*) #1

declare dso_local i32 @i9xx_plane_ctl(%struct.intel_crtc_state*, %struct.intel_plane_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
