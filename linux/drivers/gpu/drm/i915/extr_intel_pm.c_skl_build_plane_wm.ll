; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_skl_build_plane_wm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_skl_build_plane_wm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_crtc_state = type { i32 }
%struct.intel_plane_state = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.drm_framebuffer*, i32 }
%struct.drm_framebuffer = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i64 }
%struct.intel_plane = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_crtc_state*, %struct.intel_plane_state*)* @skl_build_plane_wm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skl_build_plane_wm(%struct.intel_crtc_state* %0, %struct.intel_plane_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel_crtc_state*, align 8
  %5 = alloca %struct.intel_plane_state*, align 8
  %6 = alloca %struct.intel_plane*, align 8
  %7 = alloca %struct.drm_framebuffer*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.intel_crtc_state* %0, %struct.intel_crtc_state** %4, align 8
  store %struct.intel_plane_state* %1, %struct.intel_plane_state** %5, align 8
  %10 = load %struct.intel_plane_state*, %struct.intel_plane_state** %5, align 8
  %11 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call %struct.intel_plane* @to_intel_plane(i32 %13)
  store %struct.intel_plane* %14, %struct.intel_plane** %6, align 8
  %15 = load %struct.intel_plane_state*, %struct.intel_plane_state** %5, align 8
  %16 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %17, align 8
  store %struct.drm_framebuffer* %18, %struct.drm_framebuffer** %7, align 8
  %19 = load %struct.intel_plane*, %struct.intel_plane** %6, align 8
  %20 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %8, align 4
  %22 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %23 = load %struct.intel_plane_state*, %struct.intel_plane_state** %5, align 8
  %24 = call i32 @intel_wm_plane_visible(%struct.intel_crtc_state* %22, %struct.intel_plane_state* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %61

27:                                               ; preds = %2
  %28 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %29 = load %struct.intel_plane_state*, %struct.intel_plane_state** %5, align 8
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @skl_build_plane_wm_single(%struct.intel_crtc_state* %28, %struct.intel_plane_state* %29, i32 %30, i32 0)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = load i32, i32* %9, align 4
  store i32 %35, i32* %3, align 4
  br label %61

36:                                               ; preds = %27
  %37 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %7, align 8
  %38 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %37, i32 0, i32 0
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %60

43:                                               ; preds = %36
  %44 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %7, align 8
  %45 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %44, i32 0, i32 0
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp sgt i32 %48, 1
  br i1 %49, label %50, label %60

50:                                               ; preds = %43
  %51 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %52 = load %struct.intel_plane_state*, %struct.intel_plane_state** %5, align 8
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @skl_build_plane_wm_uv(%struct.intel_crtc_state* %51, %struct.intel_plane_state* %52, i32 %53)
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %9, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %50
  %58 = load i32, i32* %9, align 4
  store i32 %58, i32* %3, align 4
  br label %61

59:                                               ; preds = %50
  br label %60

60:                                               ; preds = %59, %43, %36
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %60, %57, %34, %26
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local %struct.intel_plane* @to_intel_plane(i32) #1

declare dso_local i32 @intel_wm_plane_visible(%struct.intel_crtc_state*, %struct.intel_plane_state*) #1

declare dso_local i32 @skl_build_plane_wm_single(%struct.intel_crtc_state*, %struct.intel_plane_state*, i32, i32) #1

declare dso_local i32 @skl_build_plane_wm_uv(%struct.intel_crtc_state*, %struct.intel_plane_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
