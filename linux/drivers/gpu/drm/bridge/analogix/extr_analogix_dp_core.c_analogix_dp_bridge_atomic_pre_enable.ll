; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/analogix/extr_analogix_dp_core.c_analogix_dp_bridge_atomic_pre_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/analogix/extr_analogix_dp_core.c_analogix_dp_bridge_atomic_pre_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_bridge = type { %struct.analogix_dp_device* }
%struct.analogix_dp_device = type { i32 }
%struct.drm_atomic_state = type { i32 }
%struct.drm_crtc = type { i32 }
%struct.drm_crtc_state = type { i64 }

@.str = private unnamed_addr constant [36 x i8] c"failed to setup the panel ret = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_bridge*, %struct.drm_atomic_state*)* @analogix_dp_bridge_atomic_pre_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @analogix_dp_bridge_atomic_pre_enable(%struct.drm_bridge* %0, %struct.drm_atomic_state* %1) #0 {
  %3 = alloca %struct.drm_bridge*, align 8
  %4 = alloca %struct.drm_atomic_state*, align 8
  %5 = alloca %struct.analogix_dp_device*, align 8
  %6 = alloca %struct.drm_crtc*, align 8
  %7 = alloca %struct.drm_crtc_state*, align 8
  %8 = alloca i32, align 4
  store %struct.drm_bridge* %0, %struct.drm_bridge** %3, align 8
  store %struct.drm_atomic_state* %1, %struct.drm_atomic_state** %4, align 8
  %9 = load %struct.drm_bridge*, %struct.drm_bridge** %3, align 8
  %10 = getelementptr inbounds %struct.drm_bridge, %struct.drm_bridge* %9, i32 0, i32 0
  %11 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %10, align 8
  store %struct.analogix_dp_device* %11, %struct.analogix_dp_device** %5, align 8
  %12 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %5, align 8
  %13 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %4, align 8
  %14 = call %struct.drm_crtc* @analogix_dp_get_new_crtc(%struct.analogix_dp_device* %12, %struct.drm_atomic_state* %13)
  store %struct.drm_crtc* %14, %struct.drm_crtc** %6, align 8
  %15 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %16 = icmp ne %struct.drm_crtc* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  br label %38

18:                                               ; preds = %2
  %19 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %4, align 8
  %20 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %21 = call %struct.drm_crtc_state* @drm_atomic_get_old_crtc_state(%struct.drm_atomic_state* %19, %struct.drm_crtc* %20)
  store %struct.drm_crtc_state* %21, %struct.drm_crtc_state** %7, align 8
  %22 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %7, align 8
  %23 = icmp ne %struct.drm_crtc_state* %22, null
  br i1 %23, label %24, label %30

24:                                               ; preds = %18
  %25 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %7, align 8
  %26 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  br label %38

30:                                               ; preds = %24, %18
  %31 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %5, align 8
  %32 = call i32 @analogix_dp_prepare_panel(%struct.analogix_dp_device* %31, i32 1, i32 1)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %36)
  br label %38

38:                                               ; preds = %17, %29, %35, %30
  ret void
}

declare dso_local %struct.drm_crtc* @analogix_dp_get_new_crtc(%struct.analogix_dp_device*, %struct.drm_atomic_state*) #1

declare dso_local %struct.drm_crtc_state* @drm_atomic_get_old_crtc_state(%struct.drm_atomic_state*, %struct.drm_crtc*) #1

declare dso_local i32 @analogix_dp_prepare_panel(%struct.analogix_dp_device*, i32, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
