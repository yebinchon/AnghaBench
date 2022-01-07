; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/extr_malidp_crtc.c_malidp_crtc_atomic_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/extr_malidp_crtc.c_malidp_crtc_atomic_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.drm_crtc_state = type { i32 }
%struct.malidp_drm = type { %struct.malidp_hw_device* }
%struct.malidp_hw_device = type { %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i32 (%struct.malidp_hw_device*)*, i32 (%struct.malidp_hw_device*, %struct.videomode*)* }
%struct.videomode = type { i32 }

@.str = private unnamed_addr constant [47 x i8] c"Failed to enable runtime power management: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*, %struct.drm_crtc_state*)* @malidp_crtc_atomic_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @malidp_crtc_atomic_enable(%struct.drm_crtc* %0, %struct.drm_crtc_state* %1) #0 {
  %3 = alloca %struct.drm_crtc*, align 8
  %4 = alloca %struct.drm_crtc_state*, align 8
  %5 = alloca %struct.malidp_drm*, align 8
  %6 = alloca %struct.malidp_hw_device*, align 8
  %7 = alloca %struct.videomode, align 4
  %8 = alloca i32, align 4
  store %struct.drm_crtc* %0, %struct.drm_crtc** %3, align 8
  store %struct.drm_crtc_state* %1, %struct.drm_crtc_state** %4, align 8
  %9 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %10 = call %struct.malidp_drm* @crtc_to_malidp_device(%struct.drm_crtc* %9)
  store %struct.malidp_drm* %10, %struct.malidp_drm** %5, align 8
  %11 = load %struct.malidp_drm*, %struct.malidp_drm** %5, align 8
  %12 = getelementptr inbounds %struct.malidp_drm, %struct.malidp_drm* %11, i32 0, i32 0
  %13 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %12, align 8
  store %struct.malidp_hw_device* %13, %struct.malidp_hw_device** %6, align 8
  %14 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %15 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %14, i32 0, i32 1
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @pm_runtime_get_sync(i32 %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %23)
  br label %62

25:                                               ; preds = %2
  %26 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %27 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %26, i32 0, i32 0
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = call i32 @drm_display_mode_to_videomode(%struct.TYPE_8__* %29, %struct.videomode* %7)
  %31 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %6, align 8
  %32 = getelementptr inbounds %struct.malidp_hw_device, %struct.malidp_hw_device* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @clk_prepare_enable(i32 %33)
  %35 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %6, align 8
  %36 = getelementptr inbounds %struct.malidp_hw_device, %struct.malidp_hw_device* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %39 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %38, i32 0, i32 0
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = mul nsw i32 %43, 1000
  %45 = call i32 @clk_set_rate(i32 %37, i32 %44)
  %46 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %6, align 8
  %47 = getelementptr inbounds %struct.malidp_hw_device, %struct.malidp_hw_device* %46, i32 0, i32 0
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 1
  %50 = load i32 (%struct.malidp_hw_device*, %struct.videomode*)*, i32 (%struct.malidp_hw_device*, %struct.videomode*)** %49, align 8
  %51 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %6, align 8
  %52 = call i32 %50(%struct.malidp_hw_device* %51, %struct.videomode* %7)
  %53 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %6, align 8
  %54 = getelementptr inbounds %struct.malidp_hw_device, %struct.malidp_hw_device* %53, i32 0, i32 0
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load i32 (%struct.malidp_hw_device*)*, i32 (%struct.malidp_hw_device*)** %56, align 8
  %58 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %6, align 8
  %59 = call i32 %57(%struct.malidp_hw_device* %58)
  %60 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %61 = call i32 @drm_crtc_vblank_on(%struct.drm_crtc* %60)
  br label %62

62:                                               ; preds = %25, %22
  ret void
}

declare dso_local %struct.malidp_drm* @crtc_to_malidp_device(%struct.drm_crtc*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, i32) #1

declare dso_local i32 @drm_display_mode_to_videomode(%struct.TYPE_8__*, %struct.videomode*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @clk_set_rate(i32, i32) #1

declare dso_local i32 @drm_crtc_vblank_on(%struct.drm_crtc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
