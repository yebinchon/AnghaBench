; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dsi.c_dsi_enable_video_output.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dsi.c_dsi_enable_video_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_dss_device = type { i32 }
%struct.dsi_data = type { i32, i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@OMAP_DSS_DSI_VIDEO_MODE = common dso_local global i64 0, align 8
@MIPI_DSI_PACKED_PIXEL_STREAM_24 = common dso_local global i32 0, align 4
@MIPI_DSI_PIXEL_STREAM_3BYTE_18 = common dso_local global i32 0, align 4
@MIPI_DSI_PACKED_PIXEL_STREAM_18 = common dso_local global i32 0, align 4
@MIPI_DSI_PACKED_PIXEL_STREAM_16 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_dss_device*, i32)* @dsi_enable_video_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsi_enable_video_output(%struct.omap_dss_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.omap_dss_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dsi_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.omap_dss_device* %0, %struct.omap_dss_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %12 = call %struct.dsi_data* @to_dsi_data(%struct.omap_dss_device* %11)
  store %struct.dsi_data* %12, %struct.dsi_data** %6, align 8
  %13 = load %struct.dsi_data*, %struct.dsi_data** %6, align 8
  %14 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @dsi_get_pixel_size(i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load %struct.dsi_data*, %struct.dsi_data** %6, align 8
  %18 = call i32 @dsi_display_init_dispc(%struct.dsi_data* %17)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* %10, align 4
  store i32 %22, i32* %3, align 4
  br label %96

23:                                               ; preds = %2
  %24 = load %struct.dsi_data*, %struct.dsi_data** %6, align 8
  %25 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @OMAP_DSS_DSI_VIDEO_MODE, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %71

29:                                               ; preds = %23
  %30 = load %struct.dsi_data*, %struct.dsi_data** %6, align 8
  %31 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  switch i32 %32, label %41 [
    i32 128, label %33
    i32 130, label %35
    i32 129, label %37
    i32 131, label %39
  ]

33:                                               ; preds = %29
  %34 = load i32, i32* @MIPI_DSI_PACKED_PIXEL_STREAM_24, align 4
  store i32 %34, i32* %8, align 4
  br label %44

35:                                               ; preds = %29
  %36 = load i32, i32* @MIPI_DSI_PIXEL_STREAM_3BYTE_18, align 4
  store i32 %36, i32* %8, align 4
  br label %44

37:                                               ; preds = %29
  %38 = load i32, i32* @MIPI_DSI_PACKED_PIXEL_STREAM_18, align 4
  store i32 %38, i32* %8, align 4
  br label %44

39:                                               ; preds = %29
  %40 = load i32, i32* @MIPI_DSI_PACKED_PIXEL_STREAM_16, align 4
  store i32 %40, i32* %8, align 4
  br label %44

41:                                               ; preds = %29
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %10, align 4
  br label %92

44:                                               ; preds = %39, %37, %35, %33
  %45 = load %struct.dsi_data*, %struct.dsi_data** %6, align 8
  %46 = call i32 @dsi_if_enable(%struct.dsi_data* %45, i32 0)
  %47 = load %struct.dsi_data*, %struct.dsi_data** %6, align 8
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @dsi_vc_enable(%struct.dsi_data* %47, i32 %48, i32 0)
  %50 = load %struct.dsi_data*, %struct.dsi_data** %6, align 8
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @DSI_VC_CTRL(i32 %51)
  %53 = call i32 @REG_FLD_MOD(%struct.dsi_data* %50, i32 %52, i32 1, i32 4, i32 4)
  %54 = load %struct.dsi_data*, %struct.dsi_data** %6, align 8
  %55 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %7, align 4
  %59 = mul nsw i32 %57, %58
  %60 = call i32 @DIV_ROUND_UP(i32 %59, i32 8)
  store i32 %60, i32* %9, align 4
  %61 = load %struct.dsi_data*, %struct.dsi_data** %6, align 8
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @dsi_vc_write_long_header(%struct.dsi_data* %61, i32 %62, i32 %63, i32 %64, i32 0)
  %66 = load %struct.dsi_data*, %struct.dsi_data** %6, align 8
  %67 = load i32, i32* %5, align 4
  %68 = call i32 @dsi_vc_enable(%struct.dsi_data* %66, i32 %67, i32 1)
  %69 = load %struct.dsi_data*, %struct.dsi_data** %6, align 8
  %70 = call i32 @dsi_if_enable(%struct.dsi_data* %69, i32 1)
  br label %71

71:                                               ; preds = %44, %23
  %72 = load %struct.dsi_data*, %struct.dsi_data** %6, align 8
  %73 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %72, i32 0, i32 2
  %74 = call i32 @dss_mgr_enable(i32* %73)
  store i32 %74, i32* %10, align 4
  %75 = load i32, i32* %10, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %71
  br label %79

78:                                               ; preds = %71
  store i32 0, i32* %3, align 4
  br label %96

79:                                               ; preds = %77
  %80 = load %struct.dsi_data*, %struct.dsi_data** %6, align 8
  %81 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @OMAP_DSS_DSI_VIDEO_MODE, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %91

85:                                               ; preds = %79
  %86 = load %struct.dsi_data*, %struct.dsi_data** %6, align 8
  %87 = call i32 @dsi_if_enable(%struct.dsi_data* %86, i32 0)
  %88 = load %struct.dsi_data*, %struct.dsi_data** %6, align 8
  %89 = load i32, i32* %5, align 4
  %90 = call i32 @dsi_vc_enable(%struct.dsi_data* %88, i32 %89, i32 0)
  br label %91

91:                                               ; preds = %85, %79
  br label %92

92:                                               ; preds = %91, %41
  %93 = load %struct.dsi_data*, %struct.dsi_data** %6, align 8
  %94 = call i32 @dsi_display_uninit_dispc(%struct.dsi_data* %93)
  %95 = load i32, i32* %10, align 4
  store i32 %95, i32* %3, align 4
  br label %96

96:                                               ; preds = %92, %78, %21
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local %struct.dsi_data* @to_dsi_data(%struct.omap_dss_device*) #1

declare dso_local i32 @dsi_get_pixel_size(i32) #1

declare dso_local i32 @dsi_display_init_dispc(%struct.dsi_data*) #1

declare dso_local i32 @dsi_if_enable(%struct.dsi_data*, i32) #1

declare dso_local i32 @dsi_vc_enable(%struct.dsi_data*, i32, i32) #1

declare dso_local i32 @REG_FLD_MOD(%struct.dsi_data*, i32, i32, i32, i32) #1

declare dso_local i32 @DSI_VC_CTRL(i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @dsi_vc_write_long_header(%struct.dsi_data*, i32, i32, i32, i32) #1

declare dso_local i32 @dss_mgr_enable(i32*) #1

declare dso_local i32 @dsi_display_uninit_dispc(%struct.dsi_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
