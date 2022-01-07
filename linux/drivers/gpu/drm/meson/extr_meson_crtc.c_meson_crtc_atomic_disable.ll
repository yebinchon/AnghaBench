; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/meson/extr_meson_crtc.c_meson_crtc_atomic_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/meson/extr_meson_crtc.c_meson_crtc_atomic_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.drm_crtc_state = type { i32 }
%struct.meson_crtc = type { %struct.meson_drm* }
%struct.meson_drm = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@VPP_OSD1_POSTBLEND = common dso_local global i32 0, align 4
@VPP_VD1_POSTBLEND = common dso_local global i32 0, align 4
@VPP_VD1_PREBLEND = common dso_local global i32 0, align 4
@VPP_POSTBLEND_ENABLE = common dso_local global i32 0, align 4
@VPP_MISC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*, %struct.drm_crtc_state*)* @meson_crtc_atomic_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @meson_crtc_atomic_disable(%struct.drm_crtc* %0, %struct.drm_crtc_state* %1) #0 {
  %3 = alloca %struct.drm_crtc*, align 8
  %4 = alloca %struct.drm_crtc_state*, align 8
  %5 = alloca %struct.meson_crtc*, align 8
  %6 = alloca %struct.meson_drm*, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %3, align 8
  store %struct.drm_crtc_state* %1, %struct.drm_crtc_state** %4, align 8
  %7 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %8 = call %struct.meson_crtc* @to_meson_crtc(%struct.drm_crtc* %7)
  store %struct.meson_crtc* %8, %struct.meson_crtc** %5, align 8
  %9 = load %struct.meson_crtc*, %struct.meson_crtc** %5, align 8
  %10 = getelementptr inbounds %struct.meson_crtc, %struct.meson_crtc* %9, i32 0, i32 0
  %11 = load %struct.meson_drm*, %struct.meson_drm** %10, align 8
  store %struct.meson_drm* %11, %struct.meson_drm** %6, align 8
  %12 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %14 = call i32 @drm_crtc_vblank_off(%struct.drm_crtc* %13)
  %15 = load %struct.meson_drm*, %struct.meson_drm** %6, align 8
  %16 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  store i32 0, i32* %17, align 8
  %18 = load %struct.meson_drm*, %struct.meson_drm** %6, align 8
  %19 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  store i32 0, i32* %20, align 4
  %21 = load %struct.meson_drm*, %struct.meson_drm** %6, align 8
  %22 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 2
  store i32 0, i32* %23, align 8
  %24 = load %struct.meson_drm*, %struct.meson_drm** %6, align 8
  %25 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 3
  store i32 0, i32* %26, align 4
  %27 = load i32, i32* @VPP_OSD1_POSTBLEND, align 4
  %28 = load i32, i32* @VPP_VD1_POSTBLEND, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @VPP_VD1_PREBLEND, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @VPP_POSTBLEND_ENABLE, align 4
  %33 = or i32 %31, %32
  %34 = load %struct.meson_drm*, %struct.meson_drm** %6, align 8
  %35 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i32, i32* @VPP_MISC, align 4
  %38 = call i64 @_REG(i32 %37)
  %39 = add nsw i64 %36, %38
  %40 = call i32 @writel_bits_relaxed(i32 %33, i32 0, i64 %39)
  %41 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %42 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %41, i32 0, i32 0
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %76

47:                                               ; preds = %2
  %48 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %49 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %48, i32 0, i32 0
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %76, label %54

54:                                               ; preds = %47
  %55 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %56 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %55, i32 0, i32 1
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = call i32 @spin_lock_irq(i32* %58)
  %60 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %61 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %62 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %61, i32 0, i32 0
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = call i32 @drm_crtc_send_vblank_event(%struct.drm_crtc* %60, i32* %65)
  %67 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %68 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %67, i32 0, i32 1
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = call i32 @spin_unlock_irq(i32* %70)
  %72 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %73 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %72, i32 0, i32 0
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  store i32* null, i32** %75, align 8
  br label %76

76:                                               ; preds = %54, %47, %2
  ret void
}

declare dso_local %struct.meson_crtc* @to_meson_crtc(%struct.drm_crtc*) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*) #1

declare dso_local i32 @drm_crtc_vblank_off(%struct.drm_crtc*) #1

declare dso_local i32 @writel_bits_relaxed(i32, i32, i64) #1

declare dso_local i64 @_REG(i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @drm_crtc_send_vblank_event(%struct.drm_crtc*, i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
