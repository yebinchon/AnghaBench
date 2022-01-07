; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_crtc.c_omap_crtc_dss_register_framedone.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_crtc.c_omap_crtc_dss_register_framedone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_drm_private = type { %struct.TYPE_3__** }
%struct.TYPE_3__ = type { %struct.drm_crtc* }
%struct.drm_crtc = type { i32 }
%struct.omap_crtc = type { void (i8*)*, i8*, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.drm_device* }
%struct.drm_device = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"register framedone %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_drm_private*, i32, void (i8*)*, i8*)* @omap_crtc_dss_register_framedone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_crtc_dss_register_framedone(%struct.omap_drm_private* %0, i32 %1, void (i8*)* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.omap_drm_private*, align 8
  %7 = alloca i32, align 4
  %8 = alloca void (i8*)*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.drm_crtc*, align 8
  %11 = alloca %struct.omap_crtc*, align 8
  %12 = alloca %struct.drm_device*, align 8
  store %struct.omap_drm_private* %0, %struct.omap_drm_private** %6, align 8
  store i32 %1, i32* %7, align 4
  store void (i8*)* %2, void (i8*)** %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load %struct.omap_drm_private*, %struct.omap_drm_private** %6, align 8
  %14 = getelementptr inbounds %struct.omap_drm_private, %struct.omap_drm_private* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %14, align 8
  %16 = load i32, i32* %7, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %15, i64 %17
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load %struct.drm_crtc*, %struct.drm_crtc** %20, align 8
  store %struct.drm_crtc* %21, %struct.drm_crtc** %10, align 8
  %22 = load %struct.drm_crtc*, %struct.drm_crtc** %10, align 8
  %23 = call %struct.omap_crtc* @to_omap_crtc(%struct.drm_crtc* %22)
  store %struct.omap_crtc* %23, %struct.omap_crtc** %11, align 8
  %24 = load %struct.omap_crtc*, %struct.omap_crtc** %11, align 8
  %25 = getelementptr inbounds %struct.omap_crtc, %struct.omap_crtc* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load %struct.drm_device*, %struct.drm_device** %26, align 8
  store %struct.drm_device* %27, %struct.drm_device** %12, align 8
  %28 = load %struct.omap_crtc*, %struct.omap_crtc** %11, align 8
  %29 = getelementptr inbounds %struct.omap_crtc, %struct.omap_crtc* %28, i32 0, i32 0
  %30 = load void (i8*)*, void (i8*)** %29, align 8
  %31 = icmp ne void (i8*)* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %4
  %33 = load i32, i32* @EBUSY, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %5, align 4
  br label %49

35:                                               ; preds = %4
  %36 = load %struct.drm_device*, %struct.drm_device** %12, align 8
  %37 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.omap_crtc*, %struct.omap_crtc** %11, align 8
  %40 = getelementptr inbounds %struct.omap_crtc, %struct.omap_crtc* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @dev_dbg(i32 %38, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %41)
  %43 = load void (i8*)*, void (i8*)** %8, align 8
  %44 = load %struct.omap_crtc*, %struct.omap_crtc** %11, align 8
  %45 = getelementptr inbounds %struct.omap_crtc, %struct.omap_crtc* %44, i32 0, i32 0
  store void (i8*)* %43, void (i8*)** %45, align 8
  %46 = load i8*, i8** %9, align 8
  %47 = load %struct.omap_crtc*, %struct.omap_crtc** %11, align 8
  %48 = getelementptr inbounds %struct.omap_crtc, %struct.omap_crtc* %47, i32 0, i32 1
  store i8* %46, i8** %48, align 8
  store i32 0, i32* %5, align 4
  br label %49

49:                                               ; preds = %35, %32
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

declare dso_local %struct.omap_crtc* @to_omap_crtc(%struct.drm_crtc*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
