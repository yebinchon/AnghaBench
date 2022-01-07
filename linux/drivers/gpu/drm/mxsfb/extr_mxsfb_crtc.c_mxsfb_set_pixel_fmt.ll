; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mxsfb/extr_mxsfb_crtc.c_mxsfb_set_pixel_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mxsfb/extr_mxsfb_crtc.c_mxsfb_set_pixel_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxsfb_drm_private = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.drm_crtc }
%struct.drm_crtc = type { %struct.TYPE_10__*, %struct.drm_device* }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.drm_device = type { i32 }

@CTRL_BYPASS_COUNT = common dso_local global i32 0, align 4
@CTRL_MASTER = common dso_local global i32 0, align 4
@LCDC_CTRL1 = common dso_local global i64 0, align 8
@CTRL1_CUR_FRAME_DONE_IRQ_EN = common dso_local global i32 0, align 4
@CTRL1_CUR_FRAME_DONE_IRQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Setting up RGB565 mode\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Setting up XRGB8888 mode\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Unhandled pixel format %08x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@LCDC_CTRL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mxsfb_drm_private*)* @mxsfb_set_pixel_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxsfb_set_pixel_fmt(%struct.mxsfb_drm_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mxsfb_drm_private*, align 8
  %4 = alloca %struct.drm_crtc*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mxsfb_drm_private* %0, %struct.mxsfb_drm_private** %3, align 8
  %9 = load %struct.mxsfb_drm_private*, %struct.mxsfb_drm_private** %3, align 8
  %10 = getelementptr inbounds %struct.mxsfb_drm_private, %struct.mxsfb_drm_private* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  store %struct.drm_crtc* %11, %struct.drm_crtc** %4, align 8
  %12 = load %struct.drm_crtc*, %struct.drm_crtc** %4, align 8
  %13 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %12, i32 0, i32 1
  %14 = load %struct.drm_device*, %struct.drm_device** %13, align 8
  store %struct.drm_device* %14, %struct.drm_device** %5, align 8
  %15 = load %struct.drm_crtc*, %struct.drm_crtc** %4, align 8
  %16 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %15, i32 0, i32 0
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* @CTRL_BYPASS_COUNT, align 4
  %27 = load i32, i32* @CTRL_MASTER, align 4
  %28 = or i32 %26, %27
  store i32 %28, i32* %7, align 4
  %29 = load %struct.mxsfb_drm_private*, %struct.mxsfb_drm_private** %3, align 8
  %30 = getelementptr inbounds %struct.mxsfb_drm_private, %struct.mxsfb_drm_private* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @LCDC_CTRL1, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @readl(i64 %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* @CTRL1_CUR_FRAME_DONE_IRQ_EN, align 4
  %36 = load i32, i32* @CTRL1_CUR_FRAME_DONE_IRQ, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* %8, align 4
  %39 = and i32 %38, %37
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %6, align 4
  switch i32 %40, label %63 [
    i32 129, label %41
    i32 128, label %52
  ]

41:                                               ; preds = %1
  %42 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %43 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @dev_dbg(i32 %44, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %46 = call i32 @CTRL_SET_WORD_LENGTH(i32 0)
  %47 = load i32, i32* %7, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %7, align 4
  %49 = call i32 @CTRL1_SET_BYTE_PACKAGING(i32 15)
  %50 = load i32, i32* %8, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %8, align 4
  br label %71

52:                                               ; preds = %1
  %53 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %54 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @dev_dbg(i32 %55, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %57 = call i32 @CTRL_SET_WORD_LENGTH(i32 3)
  %58 = load i32, i32* %7, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %7, align 4
  %60 = call i32 @CTRL1_SET_BYTE_PACKAGING(i32 7)
  %61 = load i32, i32* %8, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %8, align 4
  br label %71

63:                                               ; preds = %1
  %64 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %65 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @dev_err(i32 %66, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %67)
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %2, align 4
  br label %86

71:                                               ; preds = %52, %41
  %72 = load i32, i32* %8, align 4
  %73 = load %struct.mxsfb_drm_private*, %struct.mxsfb_drm_private** %3, align 8
  %74 = getelementptr inbounds %struct.mxsfb_drm_private, %struct.mxsfb_drm_private* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @LCDC_CTRL1, align 8
  %77 = add nsw i64 %75, %76
  %78 = call i32 @writel(i32 %72, i64 %77)
  %79 = load i32, i32* %7, align 4
  %80 = load %struct.mxsfb_drm_private*, %struct.mxsfb_drm_private** %3, align 8
  %81 = getelementptr inbounds %struct.mxsfb_drm_private, %struct.mxsfb_drm_private* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @LCDC_CTRL, align 8
  %84 = add nsw i64 %82, %83
  %85 = call i32 @writel(i32 %79, i64 %84)
  store i32 0, i32* %2, align 4
  br label %86

86:                                               ; preds = %71, %63
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @CTRL_SET_WORD_LENGTH(i32) #1

declare dso_local i32 @CTRL1_SET_BYTE_PACKAGING(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
