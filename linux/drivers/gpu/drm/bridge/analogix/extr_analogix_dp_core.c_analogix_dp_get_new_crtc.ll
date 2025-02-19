; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/analogix/extr_analogix_dp_core.c_analogix_dp_get_new_crtc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/analogix/extr_analogix_dp_core.c_analogix_dp_get_new_crtc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { i32 }
%struct.analogix_dp_device = type { %struct.drm_encoder* }
%struct.drm_encoder = type { i32 }
%struct.drm_atomic_state = type { i32 }
%struct.drm_connector = type { i32 }
%struct.drm_connector_state = type { %struct.drm_crtc* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.drm_crtc* (%struct.analogix_dp_device*, %struct.drm_atomic_state*)* @analogix_dp_get_new_crtc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.drm_crtc* @analogix_dp_get_new_crtc(%struct.analogix_dp_device* %0, %struct.drm_atomic_state* %1) #0 {
  %3 = alloca %struct.drm_crtc*, align 8
  %4 = alloca %struct.analogix_dp_device*, align 8
  %5 = alloca %struct.drm_atomic_state*, align 8
  %6 = alloca %struct.drm_encoder*, align 8
  %7 = alloca %struct.drm_connector*, align 8
  %8 = alloca %struct.drm_connector_state*, align 8
  store %struct.analogix_dp_device* %0, %struct.analogix_dp_device** %4, align 8
  store %struct.drm_atomic_state* %1, %struct.drm_atomic_state** %5, align 8
  %9 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %4, align 8
  %10 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %9, i32 0, i32 0
  %11 = load %struct.drm_encoder*, %struct.drm_encoder** %10, align 8
  store %struct.drm_encoder* %11, %struct.drm_encoder** %6, align 8
  %12 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %5, align 8
  %13 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %14 = call %struct.drm_connector* @drm_atomic_get_new_connector_for_encoder(%struct.drm_atomic_state* %12, %struct.drm_encoder* %13)
  store %struct.drm_connector* %14, %struct.drm_connector** %7, align 8
  %15 = load %struct.drm_connector*, %struct.drm_connector** %7, align 8
  %16 = icmp ne %struct.drm_connector* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  store %struct.drm_crtc* null, %struct.drm_crtc** %3, align 8
  br label %29

18:                                               ; preds = %2
  %19 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %5, align 8
  %20 = load %struct.drm_connector*, %struct.drm_connector** %7, align 8
  %21 = call %struct.drm_connector_state* @drm_atomic_get_new_connector_state(%struct.drm_atomic_state* %19, %struct.drm_connector* %20)
  store %struct.drm_connector_state* %21, %struct.drm_connector_state** %8, align 8
  %22 = load %struct.drm_connector_state*, %struct.drm_connector_state** %8, align 8
  %23 = icmp ne %struct.drm_connector_state* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %18
  store %struct.drm_crtc* null, %struct.drm_crtc** %3, align 8
  br label %29

25:                                               ; preds = %18
  %26 = load %struct.drm_connector_state*, %struct.drm_connector_state** %8, align 8
  %27 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %26, i32 0, i32 0
  %28 = load %struct.drm_crtc*, %struct.drm_crtc** %27, align 8
  store %struct.drm_crtc* %28, %struct.drm_crtc** %3, align 8
  br label %29

29:                                               ; preds = %25, %24, %17
  %30 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  ret %struct.drm_crtc* %30
}

declare dso_local %struct.drm_connector* @drm_atomic_get_new_connector_for_encoder(%struct.drm_atomic_state*, %struct.drm_encoder*) #1

declare dso_local %struct.drm_connector_state* @drm_atomic_get_new_connector_state(%struct.drm_atomic_state*, %struct.drm_connector*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
