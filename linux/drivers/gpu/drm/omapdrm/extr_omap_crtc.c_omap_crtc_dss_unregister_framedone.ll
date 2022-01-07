; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_crtc.c_omap_crtc_dss_unregister_framedone.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_crtc.c_omap_crtc_dss_unregister_framedone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_drm_private = type { %struct.TYPE_3__** }
%struct.TYPE_3__ = type { %struct.drm_crtc* }
%struct.drm_crtc = type { i32 }
%struct.omap_crtc = type { void (i8*)*, i8*, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.drm_device* }
%struct.drm_device = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"unregister framedone %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.omap_drm_private*, i32, void (i8*)*, i8*)* @omap_crtc_dss_unregister_framedone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap_crtc_dss_unregister_framedone(%struct.omap_drm_private* %0, i32 %1, void (i8*)* %2, i8* %3) #0 {
  %5 = alloca %struct.omap_drm_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca void (i8*)*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.drm_crtc*, align 8
  %10 = alloca %struct.omap_crtc*, align 8
  %11 = alloca %struct.drm_device*, align 8
  store %struct.omap_drm_private* %0, %struct.omap_drm_private** %5, align 8
  store i32 %1, i32* %6, align 4
  store void (i8*)* %2, void (i8*)** %7, align 8
  store i8* %3, i8** %8, align 8
  %12 = load %struct.omap_drm_private*, %struct.omap_drm_private** %5, align 8
  %13 = getelementptr inbounds %struct.omap_drm_private, %struct.omap_drm_private* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %13, align 8
  %15 = load i32, i32* %6, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %14, i64 %16
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load %struct.drm_crtc*, %struct.drm_crtc** %19, align 8
  store %struct.drm_crtc* %20, %struct.drm_crtc** %9, align 8
  %21 = load %struct.drm_crtc*, %struct.drm_crtc** %9, align 8
  %22 = call %struct.omap_crtc* @to_omap_crtc(%struct.drm_crtc* %21)
  store %struct.omap_crtc* %22, %struct.omap_crtc** %10, align 8
  %23 = load %struct.omap_crtc*, %struct.omap_crtc** %10, align 8
  %24 = getelementptr inbounds %struct.omap_crtc, %struct.omap_crtc* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load %struct.drm_device*, %struct.drm_device** %25, align 8
  store %struct.drm_device* %26, %struct.drm_device** %11, align 8
  %27 = load %struct.drm_device*, %struct.drm_device** %11, align 8
  %28 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.omap_crtc*, %struct.omap_crtc** %10, align 8
  %31 = getelementptr inbounds %struct.omap_crtc, %struct.omap_crtc* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @dev_dbg(i32 %29, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load %struct.omap_crtc*, %struct.omap_crtc** %10, align 8
  %35 = getelementptr inbounds %struct.omap_crtc, %struct.omap_crtc* %34, i32 0, i32 0
  %36 = load void (i8*)*, void (i8*)** %35, align 8
  %37 = load void (i8*)*, void (i8*)** %7, align 8
  %38 = icmp ne void (i8*)* %36, %37
  %39 = zext i1 %38 to i32
  %40 = call i32 @WARN_ON(i32 %39)
  %41 = load %struct.omap_crtc*, %struct.omap_crtc** %10, align 8
  %42 = getelementptr inbounds %struct.omap_crtc, %struct.omap_crtc* %41, i32 0, i32 1
  %43 = load i8*, i8** %42, align 8
  %44 = load i8*, i8** %8, align 8
  %45 = icmp ne i8* %43, %44
  %46 = zext i1 %45 to i32
  %47 = call i32 @WARN_ON(i32 %46)
  %48 = load %struct.omap_crtc*, %struct.omap_crtc** %10, align 8
  %49 = getelementptr inbounds %struct.omap_crtc, %struct.omap_crtc* %48, i32 0, i32 0
  store void (i8*)* null, void (i8*)** %49, align 8
  %50 = load %struct.omap_crtc*, %struct.omap_crtc** %10, align 8
  %51 = getelementptr inbounds %struct.omap_crtc, %struct.omap_crtc* %50, i32 0, i32 1
  store i8* null, i8** %51, align 8
  ret void
}

declare dso_local %struct.omap_crtc* @to_omap_crtc(%struct.drm_crtc*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
