; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun4i_crtc.c_sun4i_crtc_atomic_begin.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun4i_crtc.c_sun4i_crtc_atomic_begin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.TYPE_3__*, %struct.drm_device* }
%struct.TYPE_3__ = type { i32* }
%struct.drm_device = type { i32 }
%struct.drm_crtc_state = type { i32 }
%struct.sun4i_crtc = type { i32*, %struct.sunxi_engine* }
%struct.sunxi_engine = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.sunxi_engine*, %struct.drm_crtc_state*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*, %struct.drm_crtc_state*)* @sun4i_crtc_atomic_begin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sun4i_crtc_atomic_begin(%struct.drm_crtc* %0, %struct.drm_crtc_state* %1) #0 {
  %3 = alloca %struct.drm_crtc*, align 8
  %4 = alloca %struct.drm_crtc_state*, align 8
  %5 = alloca %struct.sun4i_crtc*, align 8
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.sunxi_engine*, align 8
  %8 = alloca i64, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %3, align 8
  store %struct.drm_crtc_state* %1, %struct.drm_crtc_state** %4, align 8
  %9 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %10 = call %struct.sun4i_crtc* @drm_crtc_to_sun4i_crtc(%struct.drm_crtc* %9)
  store %struct.sun4i_crtc* %10, %struct.sun4i_crtc** %5, align 8
  %11 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %12 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %11, i32 0, i32 1
  %13 = load %struct.drm_device*, %struct.drm_device** %12, align 8
  store %struct.drm_device* %13, %struct.drm_device** %6, align 8
  %14 = load %struct.sun4i_crtc*, %struct.sun4i_crtc** %5, align 8
  %15 = getelementptr inbounds %struct.sun4i_crtc, %struct.sun4i_crtc* %14, i32 0, i32 1
  %16 = load %struct.sunxi_engine*, %struct.sunxi_engine** %15, align 8
  store %struct.sunxi_engine* %16, %struct.sunxi_engine** %7, align 8
  %17 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %18 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %48

23:                                               ; preds = %2
  %24 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %25 = call i64 @drm_crtc_vblank_get(%struct.drm_crtc* %24)
  %26 = icmp ne i64 %25, 0
  %27 = zext i1 %26 to i32
  %28 = call i32 @WARN_ON(i32 %27)
  %29 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %30 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %29, i32 0, i32 0
  %31 = load i64, i64* %8, align 8
  %32 = call i32 @spin_lock_irqsave(i32* %30, i64 %31)
  %33 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %34 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %33, i32 0, i32 0
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load %struct.sun4i_crtc*, %struct.sun4i_crtc** %5, align 8
  %39 = getelementptr inbounds %struct.sun4i_crtc, %struct.sun4i_crtc* %38, i32 0, i32 0
  store i32* %37, i32** %39, align 8
  %40 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %41 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %40, i32 0, i32 0
  %42 = load i64, i64* %8, align 8
  %43 = call i32 @spin_unlock_irqrestore(i32* %41, i64 %42)
  %44 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %45 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %44, i32 0, i32 0
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  store i32* null, i32** %47, align 8
  br label %48

48:                                               ; preds = %23, %2
  %49 = load %struct.sunxi_engine*, %struct.sunxi_engine** %7, align 8
  %50 = getelementptr inbounds %struct.sunxi_engine, %struct.sunxi_engine* %49, i32 0, i32 0
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32 (%struct.sunxi_engine*, %struct.drm_crtc_state*)*, i32 (%struct.sunxi_engine*, %struct.drm_crtc_state*)** %52, align 8
  %54 = icmp ne i32 (%struct.sunxi_engine*, %struct.drm_crtc_state*)* %53, null
  br i1 %54, label %55, label %64

55:                                               ; preds = %48
  %56 = load %struct.sunxi_engine*, %struct.sunxi_engine** %7, align 8
  %57 = getelementptr inbounds %struct.sunxi_engine, %struct.sunxi_engine* %56, i32 0, i32 0
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32 (%struct.sunxi_engine*, %struct.drm_crtc_state*)*, i32 (%struct.sunxi_engine*, %struct.drm_crtc_state*)** %59, align 8
  %61 = load %struct.sunxi_engine*, %struct.sunxi_engine** %7, align 8
  %62 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %4, align 8
  %63 = call i32 %60(%struct.sunxi_engine* %61, %struct.drm_crtc_state* %62)
  br label %64

64:                                               ; preds = %55, %48
  ret void
}

declare dso_local %struct.sun4i_crtc* @drm_crtc_to_sun4i_crtc(%struct.drm_crtc*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @drm_crtc_vblank_get(%struct.drm_crtc*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
