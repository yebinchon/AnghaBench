; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/imx/extr_ipuv3-crtc.c_imx_drm_crtc_duplicate_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/imx/extr_ipuv3-crtc.c_imx_drm_crtc_duplicate_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc_state = type { %struct.drm_crtc* }
%struct.drm_crtc = type { i32 }
%struct.imx_crtc_state = type { %struct.drm_crtc_state }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.drm_crtc_state* (%struct.drm_crtc*)* @imx_drm_crtc_duplicate_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.drm_crtc_state* @imx_drm_crtc_duplicate_state(%struct.drm_crtc* %0) #0 {
  %2 = alloca %struct.drm_crtc_state*, align 8
  %3 = alloca %struct.drm_crtc*, align 8
  %4 = alloca %struct.imx_crtc_state*, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.imx_crtc_state* @kzalloc(i32 8, i32 %5)
  store %struct.imx_crtc_state* %6, %struct.imx_crtc_state** %4, align 8
  %7 = load %struct.imx_crtc_state*, %struct.imx_crtc_state** %4, align 8
  %8 = icmp ne %struct.imx_crtc_state* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store %struct.drm_crtc_state* null, %struct.drm_crtc_state** %2, align 8
  br label %29

10:                                               ; preds = %1
  %11 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %12 = load %struct.imx_crtc_state*, %struct.imx_crtc_state** %4, align 8
  %13 = getelementptr inbounds %struct.imx_crtc_state, %struct.imx_crtc_state* %12, i32 0, i32 0
  %14 = call i32 @__drm_atomic_helper_crtc_duplicate_state(%struct.drm_crtc* %11, %struct.drm_crtc_state* %13)
  %15 = load %struct.imx_crtc_state*, %struct.imx_crtc_state** %4, align 8
  %16 = getelementptr inbounds %struct.imx_crtc_state, %struct.imx_crtc_state* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %16, i32 0, i32 0
  %18 = load %struct.drm_crtc*, %struct.drm_crtc** %17, align 8
  %19 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %20 = icmp ne %struct.drm_crtc* %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @WARN_ON(i32 %21)
  %23 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %24 = load %struct.imx_crtc_state*, %struct.imx_crtc_state** %4, align 8
  %25 = getelementptr inbounds %struct.imx_crtc_state, %struct.imx_crtc_state* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %25, i32 0, i32 0
  store %struct.drm_crtc* %23, %struct.drm_crtc** %26, align 8
  %27 = load %struct.imx_crtc_state*, %struct.imx_crtc_state** %4, align 8
  %28 = getelementptr inbounds %struct.imx_crtc_state, %struct.imx_crtc_state* %27, i32 0, i32 0
  store %struct.drm_crtc_state* %28, %struct.drm_crtc_state** %2, align 8
  br label %29

29:                                               ; preds = %10, %9
  %30 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %2, align 8
  ret %struct.drm_crtc_state* %30
}

declare dso_local %struct.imx_crtc_state* @kzalloc(i32, i32) #1

declare dso_local i32 @__drm_atomic_helper_crtc_duplicate_state(%struct.drm_crtc*, %struct.drm_crtc_state*) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
