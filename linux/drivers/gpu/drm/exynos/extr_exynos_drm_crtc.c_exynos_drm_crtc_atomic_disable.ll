; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_crtc.c_exynos_drm_crtc_atomic_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_crtc.c_exynos_drm_crtc_atomic_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.drm_crtc_state = type { i32 }
%struct.exynos_drm_crtc = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.exynos_drm_crtc*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*, %struct.drm_crtc_state*)* @exynos_drm_crtc_atomic_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exynos_drm_crtc_atomic_disable(%struct.drm_crtc* %0, %struct.drm_crtc_state* %1) #0 {
  %3 = alloca %struct.drm_crtc*, align 8
  %4 = alloca %struct.drm_crtc_state*, align 8
  %5 = alloca %struct.exynos_drm_crtc*, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %3, align 8
  store %struct.drm_crtc_state* %1, %struct.drm_crtc_state** %4, align 8
  %6 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %7 = call %struct.exynos_drm_crtc* @to_exynos_crtc(%struct.drm_crtc* %6)
  store %struct.exynos_drm_crtc* %7, %struct.exynos_drm_crtc** %5, align 8
  %8 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %9 = call i32 @drm_crtc_vblank_off(%struct.drm_crtc* %8)
  %10 = load %struct.exynos_drm_crtc*, %struct.exynos_drm_crtc** %5, align 8
  %11 = getelementptr inbounds %struct.exynos_drm_crtc, %struct.exynos_drm_crtc* %10, i32 0, i32 0
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i32 (%struct.exynos_drm_crtc*)*, i32 (%struct.exynos_drm_crtc*)** %13, align 8
  %15 = icmp ne i32 (%struct.exynos_drm_crtc*)* %14, null
  br i1 %15, label %16, label %24

16:                                               ; preds = %2
  %17 = load %struct.exynos_drm_crtc*, %struct.exynos_drm_crtc** %5, align 8
  %18 = getelementptr inbounds %struct.exynos_drm_crtc, %struct.exynos_drm_crtc* %17, i32 0, i32 0
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32 (%struct.exynos_drm_crtc*)*, i32 (%struct.exynos_drm_crtc*)** %20, align 8
  %22 = load %struct.exynos_drm_crtc*, %struct.exynos_drm_crtc** %5, align 8
  %23 = call i32 %21(%struct.exynos_drm_crtc* %22)
  br label %24

24:                                               ; preds = %16, %2
  %25 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %26 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %25, i32 0, i32 0
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %60

31:                                               ; preds = %24
  %32 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %33 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %32, i32 0, i32 0
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %60, label %38

38:                                               ; preds = %31
  %39 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %40 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %39, i32 0, i32 1
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = call i32 @spin_lock_irq(i32* %42)
  %44 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %45 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %46 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %45, i32 0, i32 0
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = call i32 @drm_crtc_send_vblank_event(%struct.drm_crtc* %44, i32* %49)
  %51 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %52 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %51, i32 0, i32 1
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = call i32 @spin_unlock_irq(i32* %54)
  %56 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %57 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %56, i32 0, i32 0
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  store i32* null, i32** %59, align 8
  br label %60

60:                                               ; preds = %38, %31, %24
  ret void
}

declare dso_local %struct.exynos_drm_crtc* @to_exynos_crtc(%struct.drm_crtc*) #1

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
