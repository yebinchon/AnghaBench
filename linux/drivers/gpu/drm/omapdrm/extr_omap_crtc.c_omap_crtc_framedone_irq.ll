; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_crtc.c_omap_crtc_framedone_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_crtc.c_omap_crtc_framedone_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.omap_crtc = type { i32, i32, i32*, i32, i32 (i32)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @omap_crtc_framedone_irq(%struct.drm_crtc* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_crtc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.omap_crtc*, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %7 = call %struct.omap_crtc* @to_omap_crtc(%struct.drm_crtc* %6)
  store %struct.omap_crtc* %7, %struct.omap_crtc** %5, align 8
  %8 = load %struct.omap_crtc*, %struct.omap_crtc** %5, align 8
  %9 = getelementptr inbounds %struct.omap_crtc, %struct.omap_crtc* %8, i32 0, i32 4
  %10 = load i32 (i32)*, i32 (i32)** %9, align 8
  %11 = icmp ne i32 (i32)* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %49

13:                                               ; preds = %2
  %14 = load %struct.omap_crtc*, %struct.omap_crtc** %5, align 8
  %15 = getelementptr inbounds %struct.omap_crtc, %struct.omap_crtc* %14, i32 0, i32 4
  %16 = load i32 (i32)*, i32 (i32)** %15, align 8
  %17 = load %struct.omap_crtc*, %struct.omap_crtc** %5, align 8
  %18 = getelementptr inbounds %struct.omap_crtc, %struct.omap_crtc* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = call i32 %16(i32 %19)
  %21 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %22 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = call i32 @spin_lock(i32* %24)
  %26 = load %struct.omap_crtc*, %struct.omap_crtc** %5, align 8
  %27 = getelementptr inbounds %struct.omap_crtc, %struct.omap_crtc* %26, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %38

30:                                               ; preds = %13
  %31 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %32 = load %struct.omap_crtc*, %struct.omap_crtc** %5, align 8
  %33 = getelementptr inbounds %struct.omap_crtc, %struct.omap_crtc* %32, i32 0, i32 2
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 @drm_crtc_send_vblank_event(%struct.drm_crtc* %31, i32* %34)
  %36 = load %struct.omap_crtc*, %struct.omap_crtc** %5, align 8
  %37 = getelementptr inbounds %struct.omap_crtc, %struct.omap_crtc* %36, i32 0, i32 2
  store i32* null, i32** %37, align 8
  br label %38

38:                                               ; preds = %30, %13
  %39 = load %struct.omap_crtc*, %struct.omap_crtc** %5, align 8
  %40 = getelementptr inbounds %struct.omap_crtc, %struct.omap_crtc* %39, i32 0, i32 0
  store i32 0, i32* %40, align 8
  %41 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %42 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = call i32 @spin_unlock(i32* %44)
  %46 = load %struct.omap_crtc*, %struct.omap_crtc** %5, align 8
  %47 = getelementptr inbounds %struct.omap_crtc, %struct.omap_crtc* %46, i32 0, i32 1
  %48 = call i32 @wake_up(i32* %47)
  br label %49

49:                                               ; preds = %38, %12
  ret void
}

declare dso_local %struct.omap_crtc* @to_omap_crtc(%struct.drm_crtc*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @drm_crtc_send_vblank_event(%struct.drm_crtc*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
