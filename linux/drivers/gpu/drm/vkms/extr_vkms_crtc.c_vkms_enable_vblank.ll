; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vkms/extr_vkms_crtc.c_vkms_enable_vblank.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vkms/extr_vkms_crtc.c_vkms_enable_vblank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { i32, %struct.drm_device* }
%struct.drm_device = type { %struct.drm_vblank_crtc* }
%struct.drm_vblank_crtc = type { i32 }
%struct.vkms_output = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }

@CLOCK_MONOTONIC = common dso_local global i32 0, align 4
@HRTIMER_MODE_REL = common dso_local global i32 0, align 4
@vkms_vblank_simulate = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_crtc*)* @vkms_enable_vblank to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vkms_enable_vblank(%struct.drm_crtc* %0) #0 {
  %2 = alloca %struct.drm_crtc*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_vblank_crtc*, align 8
  %6 = alloca %struct.vkms_output*, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %2, align 8
  %7 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %8 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %7, i32 0, i32 1
  %9 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  store %struct.drm_device* %9, %struct.drm_device** %3, align 8
  %10 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %11 = call i32 @drm_crtc_index(%struct.drm_crtc* %10)
  store i32 %11, i32* %4, align 4
  %12 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %13 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %12, i32 0, i32 0
  %14 = load %struct.drm_vblank_crtc*, %struct.drm_vblank_crtc** %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.drm_vblank_crtc, %struct.drm_vblank_crtc* %14, i64 %16
  store %struct.drm_vblank_crtc* %17, %struct.drm_vblank_crtc** %5, align 8
  %18 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %19 = call %struct.vkms_output* @drm_crtc_to_vkms_output(%struct.drm_crtc* %18)
  store %struct.vkms_output* %19, %struct.vkms_output** %6, align 8
  %20 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %21 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %22 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %21, i32 0, i32 0
  %23 = call i32 @drm_calc_timestamping_constants(%struct.drm_crtc* %20, i32* %22)
  %24 = load %struct.vkms_output*, %struct.vkms_output** %6, align 8
  %25 = getelementptr inbounds %struct.vkms_output, %struct.vkms_output* %24, i32 0, i32 1
  %26 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %27 = load i32, i32* @HRTIMER_MODE_REL, align 4
  %28 = call i32 @hrtimer_init(%struct.TYPE_3__* %25, i32 %26, i32 %27)
  %29 = load %struct.vkms_output*, %struct.vkms_output** %6, align 8
  %30 = getelementptr inbounds %struct.vkms_output, %struct.vkms_output* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  store i32* @vkms_vblank_simulate, i32** %31, align 8
  %32 = load %struct.drm_vblank_crtc*, %struct.drm_vblank_crtc** %5, align 8
  %33 = getelementptr inbounds %struct.drm_vblank_crtc, %struct.drm_vblank_crtc* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @ktime_set(i32 0, i32 %34)
  %36 = load %struct.vkms_output*, %struct.vkms_output** %6, align 8
  %37 = getelementptr inbounds %struct.vkms_output, %struct.vkms_output* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load %struct.vkms_output*, %struct.vkms_output** %6, align 8
  %39 = getelementptr inbounds %struct.vkms_output, %struct.vkms_output* %38, i32 0, i32 1
  %40 = load %struct.vkms_output*, %struct.vkms_output** %6, align 8
  %41 = getelementptr inbounds %struct.vkms_output, %struct.vkms_output* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @HRTIMER_MODE_REL, align 4
  %44 = call i32 @hrtimer_start(%struct.TYPE_3__* %39, i32 %42, i32 %43)
  ret i32 0
}

declare dso_local i32 @drm_crtc_index(%struct.drm_crtc*) #1

declare dso_local %struct.vkms_output* @drm_crtc_to_vkms_output(%struct.drm_crtc*) #1

declare dso_local i32 @drm_calc_timestamping_constants(%struct.drm_crtc*, i32*) #1

declare dso_local i32 @hrtimer_init(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @ktime_set(i32, i32) #1

declare dso_local i32 @hrtimer_start(%struct.TYPE_3__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
