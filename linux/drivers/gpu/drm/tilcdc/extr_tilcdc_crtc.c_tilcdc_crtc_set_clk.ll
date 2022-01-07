; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tilcdc/extr_tilcdc_crtc.c_tilcdc_crtc_set_clk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tilcdc/extr_tilcdc_crtc.c_tilcdc_crtc_set_clk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.TYPE_2__, %struct.drm_device* }
%struct.TYPE_2__ = type { i32 }
%struct.drm_device = type { i32, %struct.tilcdc_drm_private* }
%struct.tilcdc_drm_private = type { i32, i32 }
%struct.tilcdc_crtc = type { i64 }

@.str = private unnamed_addr constant [72 x i8] c"failed to set the pixel clock - unable to read current lcdc clock rate\0A\00", align 1
@.str.1 = private unnamed_addr constant [77 x i8] c"effective pixel clock rate (%luHz) differs from the calculated rate (%luHz)\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"lcd_clk=%u, mode clock=%d, div=%u\00", align 1
@LCDC_CTRL_REG = common dso_local global i32 0, align 4
@LCDC_RASTER_MODE = common dso_local global i32 0, align 4
@LCDC_CLK_ENABLE_REG = common dso_local global i32 0, align 4
@LCDC_V2_DMA_CLK_EN = common dso_local global i32 0, align 4
@LCDC_V2_LIDD_CLK_EN = common dso_local global i32 0, align 4
@LCDC_V2_CORE_CLK_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*)* @tilcdc_crtc_set_clk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tilcdc_crtc_set_clk(%struct.drm_crtc* %0) #0 {
  %2 = alloca %struct.drm_crtc*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.tilcdc_drm_private*, align 8
  %5 = alloca %struct.tilcdc_crtc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.drm_crtc* %0, %struct.drm_crtc** %2, align 8
  %11 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %12 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %11, i32 0, i32 1
  %13 = load %struct.drm_device*, %struct.drm_device** %12, align 8
  store %struct.drm_device* %13, %struct.drm_device** %3, align 8
  %14 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %15 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %14, i32 0, i32 1
  %16 = load %struct.tilcdc_drm_private*, %struct.tilcdc_drm_private** %15, align 8
  store %struct.tilcdc_drm_private* %16, %struct.tilcdc_drm_private** %4, align 8
  %17 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %18 = call %struct.tilcdc_crtc* @to_tilcdc_crtc(%struct.drm_crtc* %17)
  store %struct.tilcdc_crtc* %18, %struct.tilcdc_crtc** %5, align 8
  store i32 2, i32* %9, align 4
  %19 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %20 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = mul nsw i32 %22, 1000
  %24 = sext i32 %23 to i64
  store i64 %24, i64* %8, align 8
  %25 = load %struct.tilcdc_drm_private*, %struct.tilcdc_drm_private** %4, align 8
  %26 = getelementptr inbounds %struct.tilcdc_drm_private, %struct.tilcdc_drm_private* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i64, i64* %8, align 8
  %29 = load i32, i32* %9, align 4
  %30 = zext i32 %29 to i64
  %31 = mul i64 %28, %30
  %32 = call i32 @clk_set_rate(i32 %27, i64 %31)
  store i32 %32, i32* %10, align 4
  %33 = load %struct.tilcdc_drm_private*, %struct.tilcdc_drm_private** %4, align 8
  %34 = getelementptr inbounds %struct.tilcdc_drm_private, %struct.tilcdc_drm_private* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @clk_get_rate(i32 %35)
  store i64 %36, i64* %6, align 8
  %37 = load i32, i32* %10, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %1
  %40 = load i64, i64* %8, align 8
  %41 = load i64, i64* %6, align 8
  %42 = call i32 @tilcdc_pclk_diff(i64 %40, i64 %41)
  %43 = icmp sgt i32 %42, 5
  br i1 %43, label %44, label %72

44:                                               ; preds = %39, %1
  %45 = load i64, i64* %6, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %44
  %48 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %49 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @dev_err(i32 %50, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0))
  br label %105

52:                                               ; preds = %44
  %53 = load i64, i64* %6, align 8
  %54 = load i64, i64* %8, align 8
  %55 = call i32 @DIV_ROUND_CLOSEST(i64 %53, i64 %54)
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %9, align 4
  %57 = zext i32 %56 to i64
  %58 = load i64, i64* %8, align 8
  %59 = mul i64 %57, %58
  store i64 %59, i64* %7, align 8
  %60 = load i64, i64* %6, align 8
  %61 = load i64, i64* %7, align 8
  %62 = call i32 @tilcdc_pclk_diff(i64 %60, i64 %61)
  %63 = icmp sgt i32 %62, 5
  br i1 %63, label %64, label %71

64:                                               ; preds = %52
  %65 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %66 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i64, i64* %6, align 8
  %69 = load i64, i64* %7, align 8
  %70 = call i32 @dev_warn(i32 %67, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.1, i64 0, i64 0), i64 %68, i64 %69)
  br label %71

71:                                               ; preds = %64, %52
  br label %72

72:                                               ; preds = %71, %39
  %73 = load i64, i64* %6, align 8
  %74 = load %struct.tilcdc_crtc*, %struct.tilcdc_crtc** %5, align 8
  %75 = getelementptr inbounds %struct.tilcdc_crtc, %struct.tilcdc_crtc* %74, i32 0, i32 0
  store i64 %73, i64* %75, align 8
  %76 = load %struct.tilcdc_crtc*, %struct.tilcdc_crtc** %5, align 8
  %77 = getelementptr inbounds %struct.tilcdc_crtc, %struct.tilcdc_crtc* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %80 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* %9, align 4
  %84 = call i32 @DBG(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i64 %78, i32 %82, i32 %83)
  %85 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %86 = load i32, i32* @LCDC_CTRL_REG, align 4
  %87 = load i32, i32* %9, align 4
  %88 = call i32 @LCDC_CLK_DIVISOR(i32 %87)
  %89 = load i32, i32* @LCDC_RASTER_MODE, align 4
  %90 = or i32 %88, %89
  %91 = call i32 @tilcdc_write(%struct.drm_device* %85, i32 %86, i32 %90)
  %92 = load %struct.tilcdc_drm_private*, %struct.tilcdc_drm_private** %4, align 8
  %93 = getelementptr inbounds %struct.tilcdc_drm_private, %struct.tilcdc_drm_private* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = icmp eq i32 %94, 2
  br i1 %95, label %96, label %105

96:                                               ; preds = %72
  %97 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %98 = load i32, i32* @LCDC_CLK_ENABLE_REG, align 4
  %99 = load i32, i32* @LCDC_V2_DMA_CLK_EN, align 4
  %100 = load i32, i32* @LCDC_V2_LIDD_CLK_EN, align 4
  %101 = or i32 %99, %100
  %102 = load i32, i32* @LCDC_V2_CORE_CLK_EN, align 4
  %103 = or i32 %101, %102
  %104 = call i32 @tilcdc_set(%struct.drm_device* %97, i32 %98, i32 %103)
  br label %105

105:                                              ; preds = %47, %96, %72
  ret void
}

declare dso_local %struct.tilcdc_crtc* @to_tilcdc_crtc(%struct.drm_crtc*) #1

declare dso_local i32 @clk_set_rate(i32, i64) #1

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i32 @tilcdc_pclk_diff(i64, i64) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @DIV_ROUND_CLOSEST(i64, i64) #1

declare dso_local i32 @dev_warn(i32, i8*, i64, i64) #1

declare dso_local i32 @DBG(i8*, i64, i32, i32) #1

declare dso_local i32 @tilcdc_write(%struct.drm_device*, i32, i32) #1

declare dso_local i32 @LCDC_CLK_DIVISOR(i32) #1

declare dso_local i32 @tilcdc_set(%struct.drm_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
