; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_skl_compute_plane_wm_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_skl_compute_plane_wm_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_crtc_state = type { i32 }
%struct.intel_plane_state = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, %struct.drm_framebuffer*, i32 }
%struct.drm_framebuffer = type { i32, i32 }
%struct.skl_wm_params = type { i32 }
%struct.intel_plane = type { i64 }

@PLANE_CURSOR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_crtc_state*, %struct.intel_plane_state*, %struct.skl_wm_params*, i32)* @skl_compute_plane_wm_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skl_compute_plane_wm_params(%struct.intel_crtc_state* %0, %struct.intel_plane_state* %1, %struct.skl_wm_params* %2, i32 %3) #0 {
  %5 = alloca %struct.intel_crtc_state*, align 8
  %6 = alloca %struct.intel_plane_state*, align 8
  %7 = alloca %struct.skl_wm_params*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.intel_plane*, align 8
  %10 = alloca %struct.drm_framebuffer*, align 8
  %11 = alloca i32, align 4
  store %struct.intel_crtc_state* %0, %struct.intel_crtc_state** %5, align 8
  store %struct.intel_plane_state* %1, %struct.intel_plane_state** %6, align 8
  store %struct.skl_wm_params* %2, %struct.skl_wm_params** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load %struct.intel_plane_state*, %struct.intel_plane_state** %6, align 8
  %13 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 8
  %16 = call %struct.intel_plane* @to_intel_plane(i32 %15)
  store %struct.intel_plane* %16, %struct.intel_plane** %9, align 8
  %17 = load %struct.intel_plane_state*, %struct.intel_plane_state** %6, align 8
  %18 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 3
  %20 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %19, align 8
  store %struct.drm_framebuffer* %20, %struct.drm_framebuffer** %10, align 8
  %21 = load %struct.intel_plane*, %struct.intel_plane** %9, align 8
  %22 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @PLANE_CURSOR, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %4
  %27 = load %struct.intel_plane_state*, %struct.intel_plane_state** %6, align 8
  %28 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %11, align 4
  br label %37

31:                                               ; preds = %4
  %32 = load %struct.intel_plane_state*, %struct.intel_plane_state** %6, align 8
  %33 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 2
  %35 = call i32 @drm_rect_width(i32* %34)
  %36 = ashr i32 %35, 16
  store i32 %36, i32* %11, align 4
  br label %37

37:                                               ; preds = %31, %26
  %38 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %39 = load i32, i32* %11, align 4
  %40 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %10, align 8
  %41 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %10, align 8
  %44 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.intel_plane_state*, %struct.intel_plane_state** %6, align 8
  %47 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %51 = load %struct.intel_plane_state*, %struct.intel_plane_state** %6, align 8
  %52 = call i32 @skl_adjusted_plane_pixel_rate(%struct.intel_crtc_state* %50, %struct.intel_plane_state* %51)
  %53 = load %struct.skl_wm_params*, %struct.skl_wm_params** %7, align 8
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @skl_compute_wm_params(%struct.intel_crtc_state* %38, i32 %39, i32 %42, i32 %45, i32 %49, i32 %52, %struct.skl_wm_params* %53, i32 %54)
  ret i32 %55
}

declare dso_local %struct.intel_plane* @to_intel_plane(i32) #1

declare dso_local i32 @drm_rect_width(i32*) #1

declare dso_local i32 @skl_compute_wm_params(%struct.intel_crtc_state*, i32, i32, i32, i32, i32, %struct.skl_wm_params*, i32) #1

declare dso_local i32 @skl_adjusted_plane_pixel_rate(%struct.intel_crtc_state*, %struct.intel_plane_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
