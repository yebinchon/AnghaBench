; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/extr_malidp_crtc.c_malidp_crtc_atomic_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/extr_malidp_crtc.c_malidp_crtc_atomic_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.drm_crtc_state = type { i32 }
%struct.malidp_drm = type { %struct.malidp_hw_device* }
%struct.malidp_hw_device = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.malidp_hw_device*)* }

@.str = private unnamed_addr constant [48 x i8] c"Failed to disable runtime power management: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*, %struct.drm_crtc_state*)* @malidp_crtc_atomic_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @malidp_crtc_atomic_disable(%struct.drm_crtc* %0, %struct.drm_crtc_state* %1) #0 {
  %3 = alloca %struct.drm_crtc*, align 8
  %4 = alloca %struct.drm_crtc_state*, align 8
  %5 = alloca %struct.malidp_drm*, align 8
  %6 = alloca %struct.malidp_hw_device*, align 8
  %7 = alloca i32, align 4
  store %struct.drm_crtc* %0, %struct.drm_crtc** %3, align 8
  store %struct.drm_crtc_state* %1, %struct.drm_crtc_state** %4, align 8
  %8 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %9 = call %struct.malidp_drm* @crtc_to_malidp_device(%struct.drm_crtc* %8)
  store %struct.malidp_drm* %9, %struct.malidp_drm** %5, align 8
  %10 = load %struct.malidp_drm*, %struct.malidp_drm** %5, align 8
  %11 = getelementptr inbounds %struct.malidp_drm, %struct.malidp_drm* %10, i32 0, i32 0
  %12 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %11, align 8
  store %struct.malidp_hw_device* %12, %struct.malidp_hw_device** %6, align 8
  %13 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %4, align 8
  %14 = call i32 @drm_atomic_helper_disable_planes_on_crtc(%struct.drm_crtc_state* %13, i32 0)
  %15 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %16 = call i32 @drm_crtc_vblank_off(%struct.drm_crtc* %15)
  %17 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %6, align 8
  %18 = getelementptr inbounds %struct.malidp_hw_device, %struct.malidp_hw_device* %17, i32 0, i32 1
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32 (%struct.malidp_hw_device*)*, i32 (%struct.malidp_hw_device*)** %20, align 8
  %22 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %6, align 8
  %23 = call i32 %21(%struct.malidp_hw_device* %22)
  %24 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %6, align 8
  %25 = getelementptr inbounds %struct.malidp_hw_device, %struct.malidp_hw_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @clk_disable_unprepare(i32 %26)
  %28 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %29 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @pm_runtime_put(i32 %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %2
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %37)
  br label %39

39:                                               ; preds = %36, %2
  ret void
}

declare dso_local %struct.malidp_drm* @crtc_to_malidp_device(%struct.drm_crtc*) #1

declare dso_local i32 @drm_atomic_helper_disable_planes_on_crtc(%struct.drm_crtc_state*, i32) #1

declare dso_local i32 @drm_crtc_vblank_off(%struct.drm_crtc*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @pm_runtime_put(i32) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
