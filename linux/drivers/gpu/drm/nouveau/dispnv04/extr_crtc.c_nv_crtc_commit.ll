; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv04/extr_crtc.c_nv_crtc_commit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv04/extr_crtc.c_nv_crtc_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { i32, i32, %struct.drm_crtc_helper_funcs*, %struct.drm_device* }
%struct.drm_crtc_helper_funcs = type { i32 (%struct.drm_crtc.0*, i32)* }
%struct.drm_crtc.0 = type opaque
%struct.drm_device = type { i32 }
%struct.nouveau_crtc = type { i32 }
%struct.TYPE_2__ = type { i32 }

@DRM_MODE_DPMS_ON = common dso_local global i32 0, align 4
@NV_CIO_CRE_RCR = common dso_local global i32 0, align 4
@NV_CIO_CRE_RCR_ENDIAN_BIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*)* @nv_crtc_commit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv_crtc_commit(%struct.drm_crtc* %0) #0 {
  %2 = alloca %struct.drm_crtc*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.drm_crtc_helper_funcs*, align 8
  %5 = alloca %struct.nouveau_crtc*, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %2, align 8
  %6 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %7 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %6, i32 0, i32 3
  %8 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  store %struct.drm_device* %8, %struct.drm_device** %3, align 8
  %9 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %10 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %9, i32 0, i32 2
  %11 = load %struct.drm_crtc_helper_funcs*, %struct.drm_crtc_helper_funcs** %10, align 8
  store %struct.drm_crtc_helper_funcs* %11, %struct.drm_crtc_helper_funcs** %4, align 8
  %12 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %13 = call %struct.nouveau_crtc* @nouveau_crtc(%struct.drm_crtc* %12)
  store %struct.nouveau_crtc* %13, %struct.nouveau_crtc** %5, align 8
  %14 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %15 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %5, align 8
  %16 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %19 = call %struct.TYPE_2__* @nv04_display(%struct.drm_device* %18)
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = call i32 @nouveau_hw_load_state(%struct.drm_device* %14, i32 %17, i32* %20)
  %22 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %23 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %24 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %27 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @nv04_crtc_mode_set_base(%struct.drm_crtc* %22, i32 %25, i32 %28, i32* null)
  %30 = load %struct.drm_crtc_helper_funcs*, %struct.drm_crtc_helper_funcs** %4, align 8
  %31 = getelementptr inbounds %struct.drm_crtc_helper_funcs, %struct.drm_crtc_helper_funcs* %30, i32 0, i32 0
  %32 = load i32 (%struct.drm_crtc.0*, i32)*, i32 (%struct.drm_crtc.0*, i32)** %31, align 8
  %33 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %34 = bitcast %struct.drm_crtc* %33 to %struct.drm_crtc.0*
  %35 = load i32, i32* @DRM_MODE_DPMS_ON, align 4
  %36 = call i32 %32(%struct.drm_crtc.0* %34, i32 %35)
  %37 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %38 = call i32 @drm_crtc_vblank_on(%struct.drm_crtc* %37)
  ret void
}

declare dso_local %struct.nouveau_crtc* @nouveau_crtc(%struct.drm_crtc*) #1

declare dso_local i32 @nouveau_hw_load_state(%struct.drm_device*, i32, i32*) #1

declare dso_local %struct.TYPE_2__* @nv04_display(%struct.drm_device*) #1

declare dso_local i32 @nv04_crtc_mode_set_base(%struct.drm_crtc*, i32, i32, i32*) #1

declare dso_local i32 @drm_crtc_vblank_on(%struct.drm_crtc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
