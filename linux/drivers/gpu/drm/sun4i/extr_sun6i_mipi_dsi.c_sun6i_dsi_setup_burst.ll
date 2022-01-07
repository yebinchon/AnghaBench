; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun6i_mipi_dsi.c_sun6i_dsi_setup_burst.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun6i_mipi_dsi.c_sun6i_dsi_setup_burst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sun6i_dsi = type { i32, %struct.mipi_dsi_device* }
%struct.mipi_dsi_device = type { i32, i32 }
%struct.drm_display_mode = type { i32, i32 }

@MIPI_DSI_MODE_VIDEO_BURST = common dso_local global i32 0, align 4
@SUN6I_DSI_BURST_DRQ_REG = common dso_local global i32 0, align 4
@SUN6I_DSI_BURST_LINE_REG = common dso_local global i32 0, align 4
@SUN6I_DSI_SYNC_POINT = common dso_local global i32 0, align 4
@SUN6I_DSI_TCON_DRQ_ENABLE_MODE = common dso_local global i32 0, align 4
@SUN6I_DSI_TCON_DRQ_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sun6i_dsi*, %struct.drm_display_mode*)* @sun6i_dsi_setup_burst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sun6i_dsi_setup_burst(%struct.sun6i_dsi* %0, %struct.drm_display_mode* %1) #0 {
  %3 = alloca %struct.sun6i_dsi*, align 8
  %4 = alloca %struct.drm_display_mode*, align 8
  %5 = alloca %struct.mipi_dsi_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.sun6i_dsi* %0, %struct.sun6i_dsi** %3, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %4, align 8
  %11 = load %struct.sun6i_dsi*, %struct.sun6i_dsi** %3, align 8
  %12 = getelementptr inbounds %struct.sun6i_dsi, %struct.sun6i_dsi* %11, i32 0, i32 1
  %13 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %12, align 8
  store %struct.mipi_dsi_device* %13, %struct.mipi_dsi_device** %5, align 8
  store i32 0, i32* %6, align 4
  %14 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %5, align 8
  %15 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @MIPI_DSI_MODE_VIDEO_BURST, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %54

20:                                               ; preds = %2
  %21 = load %struct.sun6i_dsi*, %struct.sun6i_dsi** %3, align 8
  %22 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %23 = call i32 @sun6i_dsi_get_line_num(%struct.sun6i_dsi* %21, %struct.drm_display_mode* %22)
  store i32 %23, i32* %7, align 4
  %24 = load %struct.sun6i_dsi*, %struct.sun6i_dsi** %3, align 8
  %25 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @sun6i_dsi_get_drq_edge1(%struct.sun6i_dsi* %24, %struct.drm_display_mode* %25, i32 %26)
  store i32 %27, i32* %9, align 4
  %28 = load %struct.sun6i_dsi*, %struct.sun6i_dsi** %3, align 8
  %29 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @sun6i_dsi_get_drq_edge0(%struct.sun6i_dsi* %28, %struct.drm_display_mode* %29, i32 %30, i32 %31)
  store i32 %32, i32* %8, align 4
  %33 = load %struct.sun6i_dsi*, %struct.sun6i_dsi** %3, align 8
  %34 = getelementptr inbounds %struct.sun6i_dsi, %struct.sun6i_dsi* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @SUN6I_DSI_BURST_DRQ_REG, align 4
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @SUN6I_DSI_BURST_DRQ_EDGE0(i32 %37)
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @SUN6I_DSI_BURST_DRQ_EDGE1(i32 %39)
  %41 = or i32 %38, %40
  %42 = call i32 @regmap_write(i32 %35, i32 %36, i32 %41)
  %43 = load %struct.sun6i_dsi*, %struct.sun6i_dsi** %3, align 8
  %44 = getelementptr inbounds %struct.sun6i_dsi, %struct.sun6i_dsi* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @SUN6I_DSI_BURST_LINE_REG, align 4
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @SUN6I_DSI_BURST_LINE_NUM(i32 %47)
  %49 = load i32, i32* @SUN6I_DSI_SYNC_POINT, align 4
  %50 = call i32 @SUN6I_DSI_BURST_LINE_SYNC_POINT(i32 %49)
  %51 = or i32 %48, %50
  %52 = call i32 @regmap_write(i32 %45, i32 %46, i32 %51)
  %53 = load i32, i32* @SUN6I_DSI_TCON_DRQ_ENABLE_MODE, align 4
  store i32 %53, i32* %6, align 4
  br label %85

54:                                               ; preds = %2
  %55 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %56 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %59 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = sub nsw i32 %57, %60
  %62 = icmp sgt i32 %61, 20
  br i1 %62, label %63, label %84

63:                                               ; preds = %54
  %64 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %65 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %68 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = sub nsw i32 %66, %69
  %71 = sub nsw i32 %70, 20
  store i32 %71, i32* %10, align 4
  %72 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %5, align 8
  %73 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @mipi_dsi_pixel_format_to_bpp(i32 %74)
  %76 = load i32, i32* %10, align 4
  %77 = mul nsw i32 %76, %75
  store i32 %77, i32* %10, align 4
  %78 = load i32, i32* %10, align 4
  %79 = sdiv i32 %78, 32
  store i32 %79, i32* %10, align 4
  %80 = load i32, i32* @SUN6I_DSI_TCON_DRQ_ENABLE_MODE, align 4
  %81 = load i32, i32* %10, align 4
  %82 = call i32 @SUN6I_DSI_TCON_DRQ_SET(i32 %81)
  %83 = or i32 %80, %82
  store i32 %83, i32* %6, align 4
  br label %84

84:                                               ; preds = %63, %54
  br label %85

85:                                               ; preds = %84, %20
  %86 = load %struct.sun6i_dsi*, %struct.sun6i_dsi** %3, align 8
  %87 = getelementptr inbounds %struct.sun6i_dsi, %struct.sun6i_dsi* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @SUN6I_DSI_TCON_DRQ_REG, align 4
  %90 = load i32, i32* %6, align 4
  %91 = call i32 @regmap_write(i32 %88, i32 %89, i32 %90)
  ret void
}

declare dso_local i32 @sun6i_dsi_get_line_num(%struct.sun6i_dsi*, %struct.drm_display_mode*) #1

declare dso_local i32 @sun6i_dsi_get_drq_edge1(%struct.sun6i_dsi*, %struct.drm_display_mode*, i32) #1

declare dso_local i32 @sun6i_dsi_get_drq_edge0(%struct.sun6i_dsi*, %struct.drm_display_mode*, i32, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @SUN6I_DSI_BURST_DRQ_EDGE0(i32) #1

declare dso_local i32 @SUN6I_DSI_BURST_DRQ_EDGE1(i32) #1

declare dso_local i32 @SUN6I_DSI_BURST_LINE_NUM(i32) #1

declare dso_local i32 @SUN6I_DSI_BURST_LINE_SYNC_POINT(i32) #1

declare dso_local i32 @mipi_dsi_pixel_format_to_bpp(i32) #1

declare dso_local i32 @SUN6I_DSI_TCON_DRQ_SET(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
