; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mxsfb/extr_mxsfb_crtc.c_mxsfb_set_bus_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mxsfb/extr_mxsfb_crtc.c_mxsfb_set_bus_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxsfb_drm_private = type { i64, %struct.TYPE_5__, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32*, i64 }
%struct.TYPE_6__ = type { %struct.drm_crtc }
%struct.drm_crtc = type { %struct.drm_device* }
%struct.drm_device = type { i32 }

@LCDC_CTRL = common dso_local global i64 0, align 8
@CTRL_BUS_WIDTH_MASK = common dso_local global i32 0, align 4
@STMLCDIF_16BIT = common dso_local global i32 0, align 4
@STMLCDIF_18BIT = common dso_local global i32 0, align 4
@STMLCDIF_24BIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Unknown media bus format %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mxsfb_drm_private*)* @mxsfb_set_bus_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mxsfb_set_bus_fmt(%struct.mxsfb_drm_private* %0) #0 {
  %2 = alloca %struct.mxsfb_drm_private*, align 8
  %3 = alloca %struct.drm_crtc*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mxsfb_drm_private* %0, %struct.mxsfb_drm_private** %2, align 8
  %7 = load %struct.mxsfb_drm_private*, %struct.mxsfb_drm_private** %2, align 8
  %8 = getelementptr inbounds %struct.mxsfb_drm_private, %struct.mxsfb_drm_private* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  store %struct.drm_crtc* %9, %struct.drm_crtc** %3, align 8
  %10 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %11 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %10, i32 0, i32 0
  %12 = load %struct.drm_device*, %struct.drm_device** %11, align 8
  store %struct.drm_device* %12, %struct.drm_device** %4, align 8
  store i32 128, i32* %5, align 4
  %13 = load %struct.mxsfb_drm_private*, %struct.mxsfb_drm_private** %2, align 8
  %14 = getelementptr inbounds %struct.mxsfb_drm_private, %struct.mxsfb_drm_private* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @LCDC_CTRL, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @readl(i64 %17)
  store i32 %18, i32* %6, align 4
  %19 = load %struct.mxsfb_drm_private*, %struct.mxsfb_drm_private** %2, align 8
  %20 = getelementptr inbounds %struct.mxsfb_drm_private, %struct.mxsfb_drm_private* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %1
  %26 = load %struct.mxsfb_drm_private*, %struct.mxsfb_drm_private** %2, align 8
  %27 = getelementptr inbounds %struct.mxsfb_drm_private, %struct.mxsfb_drm_private* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %5, align 4
  br label %33

33:                                               ; preds = %25, %1
  %34 = load i32, i32* @CTRL_BUS_WIDTH_MASK, align 4
  %35 = xor i32 %34, -1
  %36 = load i32, i32* %6, align 4
  %37 = and i32 %36, %35
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %5, align 4
  switch i32 %38, label %54 [
    i32 130, label %39
    i32 129, label %44
    i32 128, label %49
  ]

39:                                               ; preds = %33
  %40 = load i32, i32* @STMLCDIF_16BIT, align 4
  %41 = call i32 @CTRL_SET_BUS_WIDTH(i32 %40)
  %42 = load i32, i32* %6, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %6, align 4
  br label %60

44:                                               ; preds = %33
  %45 = load i32, i32* @STMLCDIF_18BIT, align 4
  %46 = call i32 @CTRL_SET_BUS_WIDTH(i32 %45)
  %47 = load i32, i32* %6, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %6, align 4
  br label %60

49:                                               ; preds = %33
  %50 = load i32, i32* @STMLCDIF_24BIT, align 4
  %51 = call i32 @CTRL_SET_BUS_WIDTH(i32 %50)
  %52 = load i32, i32* %6, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %6, align 4
  br label %60

54:                                               ; preds = %33
  %55 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %56 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @dev_err(i32 %57, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %58)
  br label %60

60:                                               ; preds = %54, %49, %44, %39
  %61 = load i32, i32* %6, align 4
  %62 = load %struct.mxsfb_drm_private*, %struct.mxsfb_drm_private** %2, align 8
  %63 = getelementptr inbounds %struct.mxsfb_drm_private, %struct.mxsfb_drm_private* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @LCDC_CTRL, align 8
  %66 = add nsw i64 %64, %65
  %67 = call i32 @writel(i32 %61, i64 %66)
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @CTRL_SET_BUS_WIDTH(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
