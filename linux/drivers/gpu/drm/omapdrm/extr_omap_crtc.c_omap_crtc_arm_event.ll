; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_crtc.c_omap_crtc_arm_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_crtc.c_omap_crtc_arm_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }
%struct.omap_crtc = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*)* @omap_crtc_arm_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap_crtc_arm_event(%struct.drm_crtc* %0) #0 {
  %2 = alloca %struct.drm_crtc*, align 8
  %3 = alloca %struct.omap_crtc*, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %2, align 8
  %4 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %5 = call %struct.omap_crtc* @to_omap_crtc(%struct.drm_crtc* %4)
  store %struct.omap_crtc* %5, %struct.omap_crtc** %3, align 8
  %6 = load %struct.omap_crtc*, %struct.omap_crtc** %3, align 8
  %7 = getelementptr inbounds %struct.omap_crtc, %struct.omap_crtc* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @WARN_ON(i32 %8)
  %10 = load %struct.omap_crtc*, %struct.omap_crtc** %3, align 8
  %11 = getelementptr inbounds %struct.omap_crtc, %struct.omap_crtc* %10, i32 0, i32 0
  store i32 1, i32* %11, align 8
  %12 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %13 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %30

18:                                               ; preds = %1
  %19 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %20 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load %struct.omap_crtc*, %struct.omap_crtc** %3, align 8
  %25 = getelementptr inbounds %struct.omap_crtc, %struct.omap_crtc* %24, i32 0, i32 1
  store i32* %23, i32** %25, align 8
  %26 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %27 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store i32* null, i32** %29, align 8
  br label %30

30:                                               ; preds = %18, %1
  ret void
}

declare dso_local %struct.omap_crtc* @to_omap_crtc(%struct.drm_crtc*) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
