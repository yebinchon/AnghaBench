; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_gma_display.c_gma_crtc_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_gma_display.c_gma_crtc_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.drm_crtc_helper_funcs* }
%struct.drm_crtc_helper_funcs = type { i32 (%struct.drm_crtc.0*, i32)* }
%struct.drm_crtc.0 = type opaque

@DRM_MODE_DPMS_OFF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gma_crtc_prepare(%struct.drm_crtc* %0) #0 {
  %2 = alloca %struct.drm_crtc*, align 8
  %3 = alloca %struct.drm_crtc_helper_funcs*, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %2, align 8
  %4 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %5 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %4, i32 0, i32 0
  %6 = load %struct.drm_crtc_helper_funcs*, %struct.drm_crtc_helper_funcs** %5, align 8
  store %struct.drm_crtc_helper_funcs* %6, %struct.drm_crtc_helper_funcs** %3, align 8
  %7 = load %struct.drm_crtc_helper_funcs*, %struct.drm_crtc_helper_funcs** %3, align 8
  %8 = getelementptr inbounds %struct.drm_crtc_helper_funcs, %struct.drm_crtc_helper_funcs* %7, i32 0, i32 0
  %9 = load i32 (%struct.drm_crtc.0*, i32)*, i32 (%struct.drm_crtc.0*, i32)** %8, align 8
  %10 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %11 = bitcast %struct.drm_crtc* %10 to %struct.drm_crtc.0*
  %12 = load i32, i32* @DRM_MODE_DPMS_OFF, align 4
  %13 = call i32 %9(%struct.drm_crtc.0* %11, i32 %12)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
