; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/aspeed/extr_aspeed_gfx_crtc.c_aspeed_gfx_set_pixel_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/aspeed/extr_aspeed_gfx_crtc.c_aspeed_gfx_set_pixel_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aspeed_gfx = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.drm_crtc }
%struct.drm_crtc = type { %struct.TYPE_10__*, %struct.drm_device* }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.drm_device = type { i32 }

@CRT_CTRL1 = common dso_local global i64 0, align 8
@CRT_CTRL_COLOR_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Setting up RGB565 mode\0A\00", align 1
@CRT_CTRL_COLOR_RGB565 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Setting up XRGB8888 mode\0A\00", align 1
@CRT_CTRL_COLOR_XRGB8888 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"Unhandled pixel format %08x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aspeed_gfx*, i32*)* @aspeed_gfx_set_pixel_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aspeed_gfx_set_pixel_fmt(%struct.aspeed_gfx* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.aspeed_gfx*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.drm_crtc*, align 8
  %7 = alloca %struct.drm_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.aspeed_gfx* %0, %struct.aspeed_gfx** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load %struct.aspeed_gfx*, %struct.aspeed_gfx** %4, align 8
  %11 = getelementptr inbounds %struct.aspeed_gfx, %struct.aspeed_gfx* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  store %struct.drm_crtc* %12, %struct.drm_crtc** %6, align 8
  %13 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %14 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %13, i32 0, i32 1
  %15 = load %struct.drm_device*, %struct.drm_device** %14, align 8
  store %struct.drm_device* %15, %struct.drm_device** %7, align 8
  %16 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %17 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %16, i32 0, i32 0
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %8, align 4
  %27 = load %struct.aspeed_gfx*, %struct.aspeed_gfx** %4, align 8
  %28 = getelementptr inbounds %struct.aspeed_gfx, %struct.aspeed_gfx* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @CRT_CTRL1, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @readl(i64 %31)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* @CRT_CTRL_COLOR_MASK, align 4
  %34 = xor i32 %33, -1
  %35 = load i32, i32* %9, align 4
  %36 = and i32 %35, %34
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %8, align 4
  switch i32 %37, label %56 [
    i32 129, label %38
    i32 128, label %47
  ]

38:                                               ; preds = %2
  %39 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %40 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @dev_dbg(i32 %41, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %43 = load i32, i32* @CRT_CTRL_COLOR_RGB565, align 4
  %44 = load i32, i32* %9, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %9, align 4
  %46 = load i32*, i32** %5, align 8
  store i32 16, i32* %46, align 4
  br label %64

47:                                               ; preds = %2
  %48 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %49 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @dev_dbg(i32 %50, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %52 = load i32, i32* @CRT_CTRL_COLOR_XRGB8888, align 4
  %53 = load i32, i32* %9, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %9, align 4
  %55 = load i32*, i32** %5, align 8
  store i32 32, i32* %55, align 4
  br label %64

56:                                               ; preds = %2
  %57 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %58 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @dev_err(i32 %59, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %3, align 4
  br label %72

64:                                               ; preds = %47, %38
  %65 = load i32, i32* %9, align 4
  %66 = load %struct.aspeed_gfx*, %struct.aspeed_gfx** %4, align 8
  %67 = getelementptr inbounds %struct.aspeed_gfx, %struct.aspeed_gfx* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @CRT_CTRL1, align 8
  %70 = add nsw i64 %68, %69
  %71 = call i32 @writel(i32 %65, i64 %70)
  store i32 0, i32* %3, align 4
  br label %72

72:                                               ; preds = %64, %56
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
