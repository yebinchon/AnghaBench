; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_analogix_dp-rockchip.c_rockchip_dp_drm_encoder_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_analogix_dp-rockchip.c_rockchip_dp_drm_encoder_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32 }
%struct.drm_atomic_state = type { i32 }
%struct.rockchip_dp_device = type { i32 }
%struct.drm_crtc = type { i32 }
%struct.drm_crtc_state = type { i32 }

@PSR_WAIT_LINE_FLAG_TIMEOUT_MS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"line flag irq timed out\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*, %struct.drm_atomic_state*)* @rockchip_dp_drm_encoder_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rockchip_dp_drm_encoder_disable(%struct.drm_encoder* %0, %struct.drm_atomic_state* %1) #0 {
  %3 = alloca %struct.drm_encoder*, align 8
  %4 = alloca %struct.drm_atomic_state*, align 8
  %5 = alloca %struct.rockchip_dp_device*, align 8
  %6 = alloca %struct.drm_crtc*, align 8
  %7 = alloca %struct.drm_crtc_state*, align 8
  %8 = alloca i32, align 4
  store %struct.drm_encoder* %0, %struct.drm_encoder** %3, align 8
  store %struct.drm_atomic_state* %1, %struct.drm_atomic_state** %4, align 8
  %9 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %10 = call %struct.rockchip_dp_device* @to_dp(%struct.drm_encoder* %9)
  store %struct.rockchip_dp_device* %10, %struct.rockchip_dp_device** %5, align 8
  store %struct.drm_crtc_state* null, %struct.drm_crtc_state** %7, align 8
  %11 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %12 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %4, align 8
  %13 = call %struct.drm_crtc* @rockchip_dp_drm_get_new_crtc(%struct.drm_encoder* %11, %struct.drm_atomic_state* %12)
  store %struct.drm_crtc* %13, %struct.drm_crtc** %6, align 8
  %14 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %15 = icmp ne %struct.drm_crtc* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  br label %40

17:                                               ; preds = %2
  %18 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %4, align 8
  %19 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %20 = call %struct.drm_crtc_state* @drm_atomic_get_new_crtc_state(%struct.drm_atomic_state* %18, %struct.drm_crtc* %19)
  store %struct.drm_crtc_state* %20, %struct.drm_crtc_state** %7, align 8
  %21 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %7, align 8
  %22 = icmp ne %struct.drm_crtc_state* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %17
  %24 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %7, align 8
  %25 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %23, %17
  br label %40

29:                                               ; preds = %23
  %30 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %31 = load i32, i32* @PSR_WAIT_LINE_FLAG_TIMEOUT_MS, align 4
  %32 = call i32 @rockchip_drm_wait_vact_end(%struct.drm_crtc* %30, i32 %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %29
  %36 = load %struct.rockchip_dp_device*, %struct.rockchip_dp_device** %5, align 8
  %37 = getelementptr inbounds %struct.rockchip_dp_device, %struct.rockchip_dp_device* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @DRM_DEV_ERROR(i32 %38, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %40

40:                                               ; preds = %16, %28, %35, %29
  ret void
}

declare dso_local %struct.rockchip_dp_device* @to_dp(%struct.drm_encoder*) #1

declare dso_local %struct.drm_crtc* @rockchip_dp_drm_get_new_crtc(%struct.drm_encoder*, %struct.drm_atomic_state*) #1

declare dso_local %struct.drm_crtc_state* @drm_atomic_get_new_crtc_state(%struct.drm_atomic_state*, %struct.drm_crtc*) #1

declare dso_local i32 @rockchip_drm_wait_vact_end(%struct.drm_crtc*, i32) #1

declare dso_local i32 @DRM_DEV_ERROR(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
