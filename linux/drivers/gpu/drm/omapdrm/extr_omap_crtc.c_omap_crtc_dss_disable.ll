; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_crtc.c_omap_crtc_dss_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_crtc.c_omap_crtc_dss_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_drm_private = type { %struct.TYPE_2__** }
%struct.TYPE_2__ = type { %struct.drm_crtc* }
%struct.drm_crtc = type { i32 }
%struct.omap_crtc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.omap_drm_private*, i32)* @omap_crtc_dss_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap_crtc_dss_disable(%struct.omap_drm_private* %0, i32 %1) #0 {
  %3 = alloca %struct.omap_drm_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_crtc*, align 8
  %6 = alloca %struct.omap_crtc*, align 8
  store %struct.omap_drm_private* %0, %struct.omap_drm_private** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.omap_drm_private*, %struct.omap_drm_private** %3, align 8
  %8 = getelementptr inbounds %struct.omap_drm_private, %struct.omap_drm_private* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %8, align 8
  %10 = load i32, i32* %4, align 4
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %9, i64 %11
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.drm_crtc*, %struct.drm_crtc** %14, align 8
  store %struct.drm_crtc* %15, %struct.drm_crtc** %5, align 8
  %16 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %17 = call %struct.omap_crtc* @to_omap_crtc(%struct.drm_crtc* %16)
  store %struct.omap_crtc* %17, %struct.omap_crtc** %6, align 8
  %18 = load %struct.omap_crtc*, %struct.omap_crtc** %6, align 8
  %19 = getelementptr inbounds %struct.omap_crtc, %struct.omap_crtc* %18, i32 0, i32 0
  %20 = call i32 @omap_crtc_set_enabled(i32* %19, i32 0)
  ret void
}

declare dso_local %struct.omap_crtc* @to_omap_crtc(%struct.drm_crtc*) #1

declare dso_local i32 @omap_crtc_set_enabled(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
