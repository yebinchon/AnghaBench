; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv04/extr_crtc.c_nv_crtc_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv04/extr_crtc.c_nv_crtc_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.drm_crtc_helper_funcs*, %struct.drm_device* }
%struct.drm_crtc_helper_funcs = type { i32 (%struct.drm_crtc.0*, i32)* }
%struct.drm_crtc.0 = type opaque
%struct.drm_device = type { i32 }
%struct.nouveau_drm = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.nouveau_crtc = type { i32 }

@DRM_MODE_DPMS_OFF = common dso_local global i32 0, align 4
@NV_PCRTC_CONFIG = common dso_local global i32 0, align 4
@NV_PCRTC_CONFIG_START_ADDRESS_NON_VGA = common dso_local global i32 0, align 4
@NV_DEVICE_INFO_V0_CURIE = common dso_local global i64 0, align 8
@NV_PRAMDAC_900 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*)* @nv_crtc_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv_crtc_prepare(%struct.drm_crtc* %0) #0 {
  %2 = alloca %struct.drm_crtc*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.nouveau_drm*, align 8
  %5 = alloca %struct.nouveau_crtc*, align 8
  %6 = alloca %struct.drm_crtc_helper_funcs*, align 8
  %7 = alloca i32, align 4
  store %struct.drm_crtc* %0, %struct.drm_crtc** %2, align 8
  %8 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %9 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %8, i32 0, i32 1
  %10 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  store %struct.drm_device* %10, %struct.drm_device** %3, align 8
  %11 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %12 = call %struct.nouveau_drm* @nouveau_drm(%struct.drm_device* %11)
  store %struct.nouveau_drm* %12, %struct.nouveau_drm** %4, align 8
  %13 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %14 = call %struct.nouveau_crtc* @nouveau_crtc(%struct.drm_crtc* %13)
  store %struct.nouveau_crtc* %14, %struct.nouveau_crtc** %5, align 8
  %15 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %16 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %15, i32 0, i32 0
  %17 = load %struct.drm_crtc_helper_funcs*, %struct.drm_crtc_helper_funcs** %16, align 8
  store %struct.drm_crtc_helper_funcs* %17, %struct.drm_crtc_helper_funcs** %6, align 8
  %18 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %19 = call i64 @nv_two_heads(%struct.drm_device* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %1
  %22 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %23 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %5, align 8
  %24 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @NVSetOwner(%struct.drm_device* %22, i32 %25)
  br label %27

27:                                               ; preds = %21, %1
  %28 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %29 = call i32 @drm_crtc_vblank_off(%struct.drm_crtc* %28)
  %30 = load %struct.drm_crtc_helper_funcs*, %struct.drm_crtc_helper_funcs** %6, align 8
  %31 = getelementptr inbounds %struct.drm_crtc_helper_funcs, %struct.drm_crtc_helper_funcs* %30, i32 0, i32 0
  %32 = load i32 (%struct.drm_crtc.0*, i32)*, i32 (%struct.drm_crtc.0*, i32)** %31, align 8
  %33 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %34 = bitcast %struct.drm_crtc* %33 to %struct.drm_crtc.0*
  %35 = load i32, i32* @DRM_MODE_DPMS_OFF, align 4
  %36 = call i32 %32(%struct.drm_crtc.0* %34, i32 %35)
  %37 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %38 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %5, align 8
  %39 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @NVBlankScreen(%struct.drm_device* %37, i32 %40, i32 1)
  %42 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %43 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %5, align 8
  %44 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @NV_PCRTC_CONFIG, align 4
  %47 = load i32, i32* @NV_PCRTC_CONFIG_START_ADDRESS_NON_VGA, align 4
  %48 = call i32 @NVWriteCRTC(%struct.drm_device* %42, i32 %45, i32 %46, i32 %47)
  %49 = load %struct.nouveau_drm*, %struct.nouveau_drm** %4, align 8
  %50 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @NV_DEVICE_INFO_V0_CURIE, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %72

57:                                               ; preds = %27
  %58 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %59 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %5, align 8
  %60 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @NV_PRAMDAC_900, align 4
  %63 = call i32 @NVReadRAMDAC(%struct.drm_device* %58, i32 %61, i32 %62)
  store i32 %63, i32* %7, align 4
  %64 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %65 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %5, align 8
  %66 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @NV_PRAMDAC_900, align 4
  %69 = load i32, i32* %7, align 4
  %70 = and i32 %69, -65537
  %71 = call i32 @NVWriteRAMDAC(%struct.drm_device* %64, i32 %67, i32 %68, i32 %70)
  br label %72

72:                                               ; preds = %57, %27
  ret void
}

declare dso_local %struct.nouveau_drm* @nouveau_drm(%struct.drm_device*) #1

declare dso_local %struct.nouveau_crtc* @nouveau_crtc(%struct.drm_crtc*) #1

declare dso_local i64 @nv_two_heads(%struct.drm_device*) #1

declare dso_local i32 @NVSetOwner(%struct.drm_device*, i32) #1

declare dso_local i32 @drm_crtc_vblank_off(%struct.drm_crtc*) #1

declare dso_local i32 @NVBlankScreen(%struct.drm_device*, i32, i32) #1

declare dso_local i32 @NVWriteCRTC(%struct.drm_device*, i32, i32, i32) #1

declare dso_local i32 @NVReadRAMDAC(%struct.drm_device*, i32, i32) #1

declare dso_local i32 @NVWriteRAMDAC(%struct.drm_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
