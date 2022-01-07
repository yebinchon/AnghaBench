; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/meson/extr_meson_crtc.c_meson_g12a_crtc_atomic_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/meson/extr_meson_crtc.c_meson_g12a_crtc_atomic_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.drm_crtc_state = type { i32 }
%struct.meson_crtc = type { %struct.meson_drm* }
%struct.meson_drm = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*, %struct.drm_crtc_state*)* @meson_g12a_crtc_atomic_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @meson_g12a_crtc_atomic_disable(%struct.drm_crtc* %0, %struct.drm_crtc_state* %1) #0 {
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
  %16 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  store i32 0, i32* %17, align 4
  %18 = load %struct.meson_drm*, %struct.meson_drm** %6, align 8
  %19 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  store i32 0, i32* %20, align 4
  %21 = load %struct.meson_drm*, %struct.meson_drm** %6, align 8
  %22 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 2
  store i32 0, i32* %23, align 4
  %24 = load %struct.meson_drm*, %struct.meson_drm** %6, align 8
  %25 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 3
  store i32 0, i32* %26, align 4
  %27 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %28 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %27, i32 0, i32 0
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %62

33:                                               ; preds = %2
  %34 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %35 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %34, i32 0, i32 0
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %62, label %40

40:                                               ; preds = %33
  %41 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %42 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %41, i32 0, i32 1
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = call i32 @spin_lock_irq(i32* %44)
  %46 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %47 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %48 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %47, i32 0, i32 0
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = call i32 @drm_crtc_send_vblank_event(%struct.drm_crtc* %46, i32* %51)
  %53 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %54 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %53, i32 0, i32 1
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = call i32 @spin_unlock_irq(i32* %56)
  %58 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %59 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %58, i32 0, i32 0
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  store i32* null, i32** %61, align 8
  br label %62

62:                                               ; preds = %40, %33, %2
  ret void
}

declare dso_local %struct.meson_crtc* @to_meson_crtc(%struct.drm_crtc*) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*) #1

declare dso_local i32 @drm_crtc_vblank_off(%struct.drm_crtc*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @drm_crtc_send_vblank_event(%struct.drm_crtc*, i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
