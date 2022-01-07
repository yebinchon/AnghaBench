; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/extr_komeda_crtc.c_komeda_crtc_vblank_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/extr_komeda_crtc.c_komeda_crtc_vblank_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.komeda_dev* }
%struct.komeda_dev = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.komeda_dev*, i32, i32)* }
%struct.komeda_crtc = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_crtc*)* @komeda_crtc_vblank_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @komeda_crtc_vblank_enable(%struct.drm_crtc* %0) #0 {
  %2 = alloca %struct.drm_crtc*, align 8
  %3 = alloca %struct.komeda_dev*, align 8
  %4 = alloca %struct.komeda_crtc*, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %2, align 8
  %5 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %6 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %5, i32 0, i32 0
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load %struct.komeda_dev*, %struct.komeda_dev** %8, align 8
  store %struct.komeda_dev* %9, %struct.komeda_dev** %3, align 8
  %10 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %11 = call %struct.komeda_crtc* @to_kcrtc(%struct.drm_crtc* %10)
  store %struct.komeda_crtc* %11, %struct.komeda_crtc** %4, align 8
  %12 = load %struct.komeda_dev*, %struct.komeda_dev** %3, align 8
  %13 = getelementptr inbounds %struct.komeda_dev, %struct.komeda_dev* %12, i32 0, i32 0
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32 (%struct.komeda_dev*, i32, i32)*, i32 (%struct.komeda_dev*, i32, i32)** %15, align 8
  %17 = load %struct.komeda_dev*, %struct.komeda_dev** %3, align 8
  %18 = load %struct.komeda_crtc*, %struct.komeda_crtc** %4, align 8
  %19 = getelementptr inbounds %struct.komeda_crtc, %struct.komeda_crtc* %18, i32 0, i32 0
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 %16(%struct.komeda_dev* %17, i32 %22, i32 1)
  ret i32 0
}

declare dso_local %struct.komeda_crtc* @to_kcrtc(%struct.drm_crtc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
