; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun4i_crtc.c_sun4i_crtc_atomic_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun4i_crtc.c_sun4i_crtc_atomic_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { i32 }
%struct.drm_crtc_state = type { i32 }
%struct.sun4i_crtc = type { %struct.sunxi_engine* }
%struct.sunxi_engine = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.sunxi_engine*, %struct.drm_crtc_state*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_crtc*, %struct.drm_crtc_state*)* @sun4i_crtc_atomic_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun4i_crtc_atomic_check(%struct.drm_crtc* %0, %struct.drm_crtc_state* %1) #0 {
  %3 = alloca %struct.drm_crtc*, align 8
  %4 = alloca %struct.drm_crtc_state*, align 8
  %5 = alloca %struct.sun4i_crtc*, align 8
  %6 = alloca %struct.sunxi_engine*, align 8
  %7 = alloca i32, align 4
  store %struct.drm_crtc* %0, %struct.drm_crtc** %3, align 8
  store %struct.drm_crtc_state* %1, %struct.drm_crtc_state** %4, align 8
  %8 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %9 = call %struct.sun4i_crtc* @drm_crtc_to_sun4i_crtc(%struct.drm_crtc* %8)
  store %struct.sun4i_crtc* %9, %struct.sun4i_crtc** %5, align 8
  %10 = load %struct.sun4i_crtc*, %struct.sun4i_crtc** %5, align 8
  %11 = getelementptr inbounds %struct.sun4i_crtc, %struct.sun4i_crtc* %10, i32 0, i32 0
  %12 = load %struct.sunxi_engine*, %struct.sunxi_engine** %11, align 8
  store %struct.sunxi_engine* %12, %struct.sunxi_engine** %6, align 8
  store i32 0, i32* %7, align 4
  %13 = load %struct.sunxi_engine*, %struct.sunxi_engine** %6, align 8
  %14 = icmp ne %struct.sunxi_engine* %13, null
  br i1 %14, label %15, label %36

15:                                               ; preds = %2
  %16 = load %struct.sunxi_engine*, %struct.sunxi_engine** %6, align 8
  %17 = getelementptr inbounds %struct.sunxi_engine, %struct.sunxi_engine* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = icmp ne %struct.TYPE_2__* %18, null
  br i1 %19, label %20, label %36

20:                                               ; preds = %15
  %21 = load %struct.sunxi_engine*, %struct.sunxi_engine** %6, align 8
  %22 = getelementptr inbounds %struct.sunxi_engine, %struct.sunxi_engine* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32 (%struct.sunxi_engine*, %struct.drm_crtc_state*)*, i32 (%struct.sunxi_engine*, %struct.drm_crtc_state*)** %24, align 8
  %26 = icmp ne i32 (%struct.sunxi_engine*, %struct.drm_crtc_state*)* %25, null
  br i1 %26, label %27, label %36

27:                                               ; preds = %20
  %28 = load %struct.sunxi_engine*, %struct.sunxi_engine** %6, align 8
  %29 = getelementptr inbounds %struct.sunxi_engine, %struct.sunxi_engine* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32 (%struct.sunxi_engine*, %struct.drm_crtc_state*)*, i32 (%struct.sunxi_engine*, %struct.drm_crtc_state*)** %31, align 8
  %33 = load %struct.sunxi_engine*, %struct.sunxi_engine** %6, align 8
  %34 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %4, align 8
  %35 = call i32 %32(%struct.sunxi_engine* %33, %struct.drm_crtc_state* %34)
  store i32 %35, i32* %7, align 4
  br label %36

36:                                               ; preds = %27, %20, %15, %2
  %37 = load i32, i32* %7, align 4
  ret i32 %37
}

declare dso_local %struct.sun4i_crtc* @drm_crtc_to_sun4i_crtc(%struct.drm_crtc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
