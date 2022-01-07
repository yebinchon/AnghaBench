; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_dpi.c_mtk_dpi_config_color_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_dpi.c_mtk_dpi_config_color_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_dpi = type { i32 }

@MTK_DPI_COLOR_FORMAT_YCBCR_444 = common dso_local global i32 0, align 4
@MTK_DPI_COLOR_FORMAT_YCBCR_444_FULL = common dso_local global i32 0, align 4
@MTK_DPI_OUT_CHANNEL_SWAP_BGR = common dso_local global i32 0, align 4
@MTK_DPI_COLOR_FORMAT_YCBCR_422 = common dso_local global i32 0, align 4
@MTK_DPI_COLOR_FORMAT_YCBCR_422_FULL = common dso_local global i32 0, align 4
@MTK_DPI_OUT_CHANNEL_SWAP_RGB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtk_dpi*, i32)* @mtk_dpi_config_color_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtk_dpi_config_color_format(%struct.mtk_dpi* %0, i32 %1) #0 {
  %3 = alloca %struct.mtk_dpi*, align 8
  %4 = alloca i32, align 4
  store %struct.mtk_dpi* %0, %struct.mtk_dpi** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @MTK_DPI_COLOR_FORMAT_YCBCR_444, align 4
  %7 = icmp eq i32 %5, %6
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @MTK_DPI_COLOR_FORMAT_YCBCR_444_FULL, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %22

12:                                               ; preds = %8, %2
  %13 = load %struct.mtk_dpi*, %struct.mtk_dpi** %3, align 8
  %14 = call i32 @mtk_dpi_config_yuv422_enable(%struct.mtk_dpi* %13, i32 0)
  %15 = load %struct.mtk_dpi*, %struct.mtk_dpi** %3, align 8
  %16 = call i32 @mtk_dpi_config_csc_enable(%struct.mtk_dpi* %15, i32 1)
  %17 = load %struct.mtk_dpi*, %struct.mtk_dpi** %3, align 8
  %18 = call i32 @mtk_dpi_config_swap_input(%struct.mtk_dpi* %17, i32 0)
  %19 = load %struct.mtk_dpi*, %struct.mtk_dpi** %3, align 8
  %20 = load i32, i32* @MTK_DPI_OUT_CHANNEL_SWAP_BGR, align 4
  %21 = call i32 @mtk_dpi_config_channel_swap(%struct.mtk_dpi* %19, i32 %20)
  br label %51

22:                                               ; preds = %8
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @MTK_DPI_COLOR_FORMAT_YCBCR_422, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @MTK_DPI_COLOR_FORMAT_YCBCR_422_FULL, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %40

30:                                               ; preds = %26, %22
  %31 = load %struct.mtk_dpi*, %struct.mtk_dpi** %3, align 8
  %32 = call i32 @mtk_dpi_config_yuv422_enable(%struct.mtk_dpi* %31, i32 1)
  %33 = load %struct.mtk_dpi*, %struct.mtk_dpi** %3, align 8
  %34 = call i32 @mtk_dpi_config_csc_enable(%struct.mtk_dpi* %33, i32 1)
  %35 = load %struct.mtk_dpi*, %struct.mtk_dpi** %3, align 8
  %36 = call i32 @mtk_dpi_config_swap_input(%struct.mtk_dpi* %35, i32 1)
  %37 = load %struct.mtk_dpi*, %struct.mtk_dpi** %3, align 8
  %38 = load i32, i32* @MTK_DPI_OUT_CHANNEL_SWAP_RGB, align 4
  %39 = call i32 @mtk_dpi_config_channel_swap(%struct.mtk_dpi* %37, i32 %38)
  br label %50

40:                                               ; preds = %26
  %41 = load %struct.mtk_dpi*, %struct.mtk_dpi** %3, align 8
  %42 = call i32 @mtk_dpi_config_yuv422_enable(%struct.mtk_dpi* %41, i32 0)
  %43 = load %struct.mtk_dpi*, %struct.mtk_dpi** %3, align 8
  %44 = call i32 @mtk_dpi_config_csc_enable(%struct.mtk_dpi* %43, i32 0)
  %45 = load %struct.mtk_dpi*, %struct.mtk_dpi** %3, align 8
  %46 = call i32 @mtk_dpi_config_swap_input(%struct.mtk_dpi* %45, i32 0)
  %47 = load %struct.mtk_dpi*, %struct.mtk_dpi** %3, align 8
  %48 = load i32, i32* @MTK_DPI_OUT_CHANNEL_SWAP_RGB, align 4
  %49 = call i32 @mtk_dpi_config_channel_swap(%struct.mtk_dpi* %47, i32 %48)
  br label %50

50:                                               ; preds = %40, %30
  br label %51

51:                                               ; preds = %50, %12
  ret void
}

declare dso_local i32 @mtk_dpi_config_yuv422_enable(%struct.mtk_dpi*, i32) #1

declare dso_local i32 @mtk_dpi_config_csc_enable(%struct.mtk_dpi*, i32) #1

declare dso_local i32 @mtk_dpi_config_swap_input(%struct.mtk_dpi*, i32) #1

declare dso_local i32 @mtk_dpi_config_channel_swap(%struct.mtk_dpi*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
