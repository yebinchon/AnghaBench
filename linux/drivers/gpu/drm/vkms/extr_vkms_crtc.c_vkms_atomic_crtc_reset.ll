; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vkms/extr_vkms_crtc.c_vkms_atomic_crtc_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vkms/extr_vkms_crtc.c_vkms_atomic_crtc_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { i64 }
%struct.vkms_crtc_state = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@vkms_composer_worker = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*)* @vkms_atomic_crtc_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vkms_atomic_crtc_reset(%struct.drm_crtc* %0) #0 {
  %2 = alloca %struct.drm_crtc*, align 8
  %3 = alloca %struct.vkms_crtc_state*, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %2, align 8
  %4 = load i32, i32* @GFP_KERNEL, align 4
  %5 = call %struct.vkms_crtc_state* @kzalloc(i32 8, i32 %4)
  store %struct.vkms_crtc_state* %5, %struct.vkms_crtc_state** %3, align 8
  %6 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %7 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %12 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %13 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @vkms_atomic_crtc_destroy_state(%struct.drm_crtc* %11, i64 %14)
  br label %16

16:                                               ; preds = %10, %1
  %17 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %18 = load %struct.vkms_crtc_state*, %struct.vkms_crtc_state** %3, align 8
  %19 = getelementptr inbounds %struct.vkms_crtc_state, %struct.vkms_crtc_state* %18, i32 0, i32 1
  %20 = call i32 @__drm_atomic_helper_crtc_reset(%struct.drm_crtc* %17, i32* %19)
  %21 = load %struct.vkms_crtc_state*, %struct.vkms_crtc_state** %3, align 8
  %22 = icmp ne %struct.vkms_crtc_state* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %16
  %24 = load %struct.vkms_crtc_state*, %struct.vkms_crtc_state** %3, align 8
  %25 = getelementptr inbounds %struct.vkms_crtc_state, %struct.vkms_crtc_state* %24, i32 0, i32 0
  %26 = load i32, i32* @vkms_composer_worker, align 4
  %27 = call i32 @INIT_WORK(i32* %25, i32 %26)
  br label %28

28:                                               ; preds = %23, %16
  ret void
}

declare dso_local %struct.vkms_crtc_state* @kzalloc(i32, i32) #1

declare dso_local i32 @vkms_atomic_crtc_destroy_state(%struct.drm_crtc*, i64) #1

declare dso_local i32 @__drm_atomic_helper_crtc_reset(%struct.drm_crtc*, i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
