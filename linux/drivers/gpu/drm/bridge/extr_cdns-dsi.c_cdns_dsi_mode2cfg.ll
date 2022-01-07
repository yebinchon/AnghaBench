; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_cdns-dsi.c_cdns_dsi_mode2cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_cdns-dsi.c_cdns_dsi_mode2cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdns_dsi = type { %struct.cdns_dsi_output }
%struct.cdns_dsi_output = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.drm_display_mode = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.cdns_dsi_cfg = type { i8*, i8*, i8*, i8* }

@MIPI_DSI_MODE_VIDEO_SYNC_PULSE = common dso_local global i32 0, align 4
@DSI_HBP_FRAME_OVERHEAD = common dso_local global i32 0, align 4
@DSI_HSA_FRAME_OVERHEAD = common dso_local global i32 0, align 4
@DSI_HFP_FRAME_OVERHEAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdns_dsi*, %struct.drm_display_mode*, %struct.cdns_dsi_cfg*, i32)* @cdns_dsi_mode2cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdns_dsi_mode2cfg(%struct.cdns_dsi* %0, %struct.drm_display_mode* %1, %struct.cdns_dsi_cfg* %2, i32 %3) #0 {
  %5 = alloca %struct.cdns_dsi*, align 8
  %6 = alloca %struct.drm_display_mode*, align 8
  %7 = alloca %struct.cdns_dsi_cfg*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.cdns_dsi_output*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.cdns_dsi* %0, %struct.cdns_dsi** %5, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %6, align 8
  store %struct.cdns_dsi_cfg* %2, %struct.cdns_dsi_cfg** %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = load %struct.cdns_dsi*, %struct.cdns_dsi** %5, align 8
  %15 = getelementptr inbounds %struct.cdns_dsi, %struct.cdns_dsi* %14, i32 0, i32 0
  store %struct.cdns_dsi_output* %15, %struct.cdns_dsi_output** %9, align 8
  store i32 0, i32* %11, align 4
  %16 = load %struct.cdns_dsi_cfg*, %struct.cdns_dsi_cfg** %7, align 8
  %17 = call i32 @memset(%struct.cdns_dsi_cfg* %16, i32 0, i32 32)
  %18 = load %struct.cdns_dsi_output*, %struct.cdns_dsi_output** %9, align 8
  %19 = getelementptr inbounds %struct.cdns_dsi_output, %struct.cdns_dsi_output* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @MIPI_DSI_MODE_VIDEO_SYNC_PULSE, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %4
  store i32 1, i32* %11, align 4
  br label %27

27:                                               ; preds = %26, %4
  %28 = load %struct.cdns_dsi_output*, %struct.cdns_dsi_output** %9, align 8
  %29 = getelementptr inbounds %struct.cdns_dsi_output, %struct.cdns_dsi_output* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @mipi_dsi_pixel_format_to_bpp(i32 %32)
  store i32 %33, i32* %12, align 4
  %34 = load %struct.cdns_dsi_output*, %struct.cdns_dsi_output** %9, align 8
  %35 = getelementptr inbounds %struct.cdns_dsi_output, %struct.cdns_dsi_output* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %58

41:                                               ; preds = %27
  %42 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %43 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %11, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %41
  %48 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %49 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  br label %55

51:                                               ; preds = %41
  %52 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %53 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  br label %55

55:                                               ; preds = %51, %47
  %56 = phi i32 [ %50, %47 ], [ %54, %51 ]
  %57 = sub i32 %44, %56
  store i32 %57, i32* %10, align 4
  br label %75

58:                                               ; preds = %27
  %59 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %60 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %11, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %58
  %65 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %66 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 4
  br label %72

68:                                               ; preds = %58
  %69 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %70 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %69, i32 0, i32 5
  %71 = load i32, i32* %70, align 4
  br label %72

72:                                               ; preds = %68, %64
  %73 = phi i32 [ %67, %64 ], [ %71, %68 ]
  %74 = sub i32 %61, %73
  store i32 %74, i32* %10, align 4
  br label %75

75:                                               ; preds = %72, %55
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* %12, align 4
  %78 = load i32, i32* @DSI_HBP_FRAME_OVERHEAD, align 4
  %79 = call i8* @dpi_to_dsi_timing(i32 %76, i32 %77, i32 %78)
  %80 = load %struct.cdns_dsi_cfg*, %struct.cdns_dsi_cfg** %7, align 8
  %81 = getelementptr inbounds %struct.cdns_dsi_cfg, %struct.cdns_dsi_cfg* %80, i32 0, i32 3
  store i8* %79, i8** %81, align 8
  %82 = load i32, i32* %11, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %110

84:                                               ; preds = %75
  %85 = load i32, i32* %8, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %95

87:                                               ; preds = %84
  %88 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %89 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %92 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = sub i32 %90, %93
  store i32 %94, i32* %10, align 4
  br label %103

95:                                               ; preds = %84
  %96 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %97 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %100 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %99, i32 0, i32 5
  %101 = load i32, i32* %100, align 4
  %102 = sub i32 %98, %101
  store i32 %102, i32* %10, align 4
  br label %103

103:                                              ; preds = %95, %87
  %104 = load i32, i32* %10, align 4
  %105 = load i32, i32* %12, align 4
  %106 = load i32, i32* @DSI_HSA_FRAME_OVERHEAD, align 4
  %107 = call i8* @dpi_to_dsi_timing(i32 %104, i32 %105, i32 %106)
  %108 = load %struct.cdns_dsi_cfg*, %struct.cdns_dsi_cfg** %7, align 8
  %109 = getelementptr inbounds %struct.cdns_dsi_cfg, %struct.cdns_dsi_cfg* %108, i32 0, i32 2
  store i8* %107, i8** %109, align 8
  br label %110

110:                                              ; preds = %103, %75
  %111 = load i32, i32* %8, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %110
  %114 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %115 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %114, i32 0, i32 6
  %116 = load i32, i32* %115, align 4
  br label %121

117:                                              ; preds = %110
  %118 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %119 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %118, i32 0, i32 7
  %120 = load i32, i32* %119, align 4
  br label %121

121:                                              ; preds = %117, %113
  %122 = phi i32 [ %116, %113 ], [ %120, %117 ]
  %123 = load i32, i32* %12, align 4
  %124 = call i8* @dpi_to_dsi_timing(i32 %122, i32 %123, i32 0)
  %125 = load %struct.cdns_dsi_cfg*, %struct.cdns_dsi_cfg** %7, align 8
  %126 = getelementptr inbounds %struct.cdns_dsi_cfg, %struct.cdns_dsi_cfg* %125, i32 0, i32 1
  store i8* %124, i8** %126, align 8
  %127 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %128 = load i32, i32* %8, align 4
  %129 = call i32 @mode_to_dpi_hfp(%struct.drm_display_mode* %127, i32 %128)
  %130 = load i32, i32* %12, align 4
  %131 = load i32, i32* @DSI_HFP_FRAME_OVERHEAD, align 4
  %132 = call i8* @dpi_to_dsi_timing(i32 %129, i32 %130, i32 %131)
  %133 = load %struct.cdns_dsi_cfg*, %struct.cdns_dsi_cfg** %7, align 8
  %134 = getelementptr inbounds %struct.cdns_dsi_cfg, %struct.cdns_dsi_cfg* %133, i32 0, i32 0
  store i8* %132, i8** %134, align 8
  ret i32 0
}

declare dso_local i32 @memset(%struct.cdns_dsi_cfg*, i32, i32) #1

declare dso_local i32 @mipi_dsi_pixel_format_to_bpp(i32) #1

declare dso_local i8* @dpi_to_dsi_timing(i32, i32, i32) #1

declare dso_local i32 @mode_to_dpi_hfp(%struct.drm_display_mode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
