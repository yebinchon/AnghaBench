; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/hisilicon/kirin/extr_dw_drm_dsi.c_dsi_encoder_phy_mode_valid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/hisilicon/kirin/extr_dw_drm_dsi.c_dsi_encoder_phy_mode_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32 }
%struct.drm_display_mode = type { i32, i32, i32 }
%struct.dw_dsi = type { i32, i32 }
%struct.mipi_phy_params = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"Checking mode %ix%i-%i@%i clock: %i...\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"OK!\0A\00", align 1
@MODE_OK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"BAD!\0A\00", align 1
@MODE_BAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_encoder*, %struct.drm_display_mode*)* @dsi_encoder_phy_mode_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsi_encoder_phy_mode_valid(%struct.drm_encoder* %0, %struct.drm_display_mode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_encoder*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca %struct.dw_dsi*, align 8
  %7 = alloca %struct.mipi_phy_params, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.drm_encoder* %0, %struct.drm_encoder** %4, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %5, align 8
  %12 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %13 = call %struct.dw_dsi* @encoder_to_dsi(%struct.drm_encoder* %12)
  store %struct.dw_dsi* %13, %struct.dw_dsi** %6, align 8
  %14 = load %struct.dw_dsi*, %struct.dw_dsi** %6, align 8
  %15 = getelementptr inbounds %struct.dw_dsi, %struct.dw_dsi* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @mipi_dsi_pixel_format_to_bpp(i32 %16)
  store i32 %17, i32* %8, align 4
  %18 = call i32 @memset(%struct.mipi_phy_params* %7, i32 0, i32 4)
  %19 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %20 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %8, align 4
  %23 = mul nsw i32 %21, %22
  %24 = load %struct.dw_dsi*, %struct.dw_dsi** %6, align 8
  %25 = getelementptr inbounds %struct.dw_dsi, %struct.dw_dsi* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = sdiv i32 %23, %26
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @dsi_calc_phy_rate(i32 %28, %struct.mipi_phy_params* %7)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = sdiv i32 %30, 8
  store i32 %31, i32* %11, align 4
  %32 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %33 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %36 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %8, align 4
  %39 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %40 = call i32 @drm_mode_vrefresh(%struct.drm_display_mode* %39)
  %41 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %42 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 (i8*, ...) @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %37, i32 %38, i32 %40, i32 %43)
  %45 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %46 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.dw_dsi*, %struct.dw_dsi** %6, align 8
  %49 = getelementptr inbounds %struct.dw_dsi, %struct.dw_dsi* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = sdiv i32 %47, %50
  %52 = load i32, i32* %11, align 4
  %53 = sdiv i32 %52, 3
  %54 = icmp eq i32 %51, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %2
  %56 = call i32 (i8*, ...) @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %57 = load i32, i32* @MODE_OK, align 4
  store i32 %57, i32* %3, align 4
  br label %61

58:                                               ; preds = %2
  %59 = call i32 (i8*, ...) @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %60 = load i32, i32* @MODE_BAD, align 4
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %58, %55
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local %struct.dw_dsi* @encoder_to_dsi(%struct.drm_encoder*) #1

declare dso_local i32 @mipi_dsi_pixel_format_to_bpp(i32) #1

declare dso_local i32 @memset(%struct.mipi_phy_params*, i32, i32) #1

declare dso_local i32 @dsi_calc_phy_rate(i32, %struct.mipi_phy_params*) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, ...) #1

declare dso_local i32 @drm_mode_vrefresh(%struct.drm_display_mode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
