; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_sii902x.c_sii902x_bridge_mode_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_sii902x.c_sii902x_bridge_mode_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_bridge = type { i32 }
%struct.drm_display_mode = type { i32, i32, i32, i32 }
%struct.sii902x = type { i32, i32, %struct.regmap* }
%struct.regmap = type { i32 }
%struct.hdmi_avi_infoframe = type { i32 }

@AVI = common dso_local global i32 0, align 4
@SII902X_TPI_CLK_RATIO_1X = common dso_local global i32 0, align 4
@SII902X_TPI_AVI_PIXEL_REP_NONE = common dso_local global i32 0, align 4
@SII902X_TPI_AVI_PIXEL_REP_BUS_24BIT = common dso_local global i32 0, align 4
@SII902X_TPI_AVI_INPUT_RANGE_AUTO = common dso_local global i32 0, align 4
@SII902X_TPI_AVI_INPUT_COLORSPACE_RGB = common dso_local global i32 0, align 4
@SII902X_TPI_VIDEO_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"couldn't fill AVI infoframe\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"failed to pack AVI infoframe: %d\0A\00", align 1
@SII902X_TPI_AVI_INFOFRAME = common dso_local global i32 0, align 4
@HDMI_INFOFRAME_HEADER_SIZE = common dso_local global i32 0, align 4
@HDMI_AVI_INFOFRAME_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_bridge*, %struct.drm_display_mode*, %struct.drm_display_mode*)* @sii902x_bridge_mode_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sii902x_bridge_mode_set(%struct.drm_bridge* %0, %struct.drm_display_mode* %1, %struct.drm_display_mode* %2) #0 {
  %4 = alloca %struct.drm_bridge*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca %struct.drm_display_mode*, align 8
  %7 = alloca %struct.sii902x*, align 8
  %8 = alloca %struct.regmap*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.hdmi_avi_infoframe, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.drm_bridge* %0, %struct.drm_bridge** %4, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %5, align 8
  store %struct.drm_display_mode* %2, %struct.drm_display_mode** %6, align 8
  %14 = load %struct.drm_bridge*, %struct.drm_bridge** %4, align 8
  %15 = call %struct.sii902x* @bridge_to_sii902x(%struct.drm_bridge* %14)
  store %struct.sii902x* %15, %struct.sii902x** %7, align 8
  %16 = load %struct.sii902x*, %struct.sii902x** %7, align 8
  %17 = getelementptr inbounds %struct.sii902x, %struct.sii902x* %16, i32 0, i32 2
  %18 = load %struct.regmap*, %struct.regmap** %17, align 8
  store %struct.regmap* %18, %struct.regmap** %8, align 8
  %19 = load i32, i32* @AVI, align 4
  %20 = call i32 @HDMI_INFOFRAME_SIZE(i32 %19)
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %9, align 8
  %23 = alloca i32, i64 %21, align 16
  store i64 %21, i64* %10, align 8
  %24 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %25 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = sdiv i32 %26, 10
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* %12, align 4
  %29 = and i32 %28, 255
  %30 = getelementptr inbounds i32, i32* %23, i64 0
  store i32 %29, i32* %30, align 16
  %31 = load i32, i32* %12, align 4
  %32 = ashr i32 %31, 8
  %33 = getelementptr inbounds i32, i32* %23, i64 1
  store i32 %32, i32* %33, align 4
  %34 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %35 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds i32, i32* %23, i64 2
  store i32 %36, i32* %37, align 8
  %38 = getelementptr inbounds i32, i32* %23, i64 3
  store i32 0, i32* %38, align 4
  %39 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %40 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds i32, i32* %23, i64 4
  store i32 %41, i32* %42, align 16
  %43 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %44 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = ashr i32 %45, 8
  %47 = getelementptr inbounds i32, i32* %23, i64 5
  store i32 %46, i32* %47, align 4
  %48 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %49 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = getelementptr inbounds i32, i32* %23, i64 6
  store i32 %50, i32* %51, align 8
  %52 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %53 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = ashr i32 %54, 8
  %56 = getelementptr inbounds i32, i32* %23, i64 7
  store i32 %55, i32* %56, align 4
  %57 = load i32, i32* @SII902X_TPI_CLK_RATIO_1X, align 4
  %58 = load i32, i32* @SII902X_TPI_AVI_PIXEL_REP_NONE, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @SII902X_TPI_AVI_PIXEL_REP_BUS_24BIT, align 4
  %61 = or i32 %59, %60
  %62 = getelementptr inbounds i32, i32* %23, i64 8
  store i32 %61, i32* %62, align 16
  %63 = load i32, i32* @SII902X_TPI_AVI_INPUT_RANGE_AUTO, align 4
  %64 = load i32, i32* @SII902X_TPI_AVI_INPUT_COLORSPACE_RGB, align 4
  %65 = or i32 %63, %64
  %66 = getelementptr inbounds i32, i32* %23, i64 9
  store i32 %65, i32* %66, align 4
  %67 = load %struct.sii902x*, %struct.sii902x** %7, align 8
  %68 = getelementptr inbounds %struct.sii902x, %struct.sii902x* %67, i32 0, i32 0
  %69 = call i32 @mutex_lock(i32* %68)
  %70 = load %struct.regmap*, %struct.regmap** %8, align 8
  %71 = load i32, i32* @SII902X_TPI_VIDEO_DATA, align 4
  %72 = call i32 @regmap_bulk_write(%struct.regmap* %70, i32 %71, i32* %23, i32 10)
  store i32 %72, i32* %13, align 4
  %73 = load i32, i32* %13, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %3
  br label %104

76:                                               ; preds = %3
  %77 = load %struct.sii902x*, %struct.sii902x** %7, align 8
  %78 = getelementptr inbounds %struct.sii902x, %struct.sii902x* %77, i32 0, i32 1
  %79 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %80 = call i32 @drm_hdmi_avi_infoframe_from_display_mode(%struct.hdmi_avi_infoframe* %11, i32* %78, %struct.drm_display_mode* %79)
  store i32 %80, i32* %13, align 4
  %81 = load i32, i32* %13, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %76
  %84 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %104

85:                                               ; preds = %76
  %86 = mul nuw i64 4, %21
  %87 = trunc i64 %86 to i32
  %88 = call i32 @hdmi_avi_infoframe_pack(%struct.hdmi_avi_infoframe* %11, i32* %23, i32 %87)
  store i32 %88, i32* %13, align 4
  %89 = load i32, i32* %13, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %85
  %92 = load i32, i32* %13, align 4
  %93 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %92)
  br label %104

94:                                               ; preds = %85
  %95 = load %struct.regmap*, %struct.regmap** %8, align 8
  %96 = load i32, i32* @SII902X_TPI_AVI_INFOFRAME, align 4
  %97 = load i32, i32* @HDMI_INFOFRAME_HEADER_SIZE, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %23, i64 %98
  %100 = getelementptr inbounds i32, i32* %99, i64 -1
  %101 = load i32, i32* @HDMI_AVI_INFOFRAME_SIZE, align 4
  %102 = add nsw i32 %101, 1
  %103 = call i32 @regmap_bulk_write(%struct.regmap* %95, i32 %96, i32* %100, i32 %102)
  br label %104

104:                                              ; preds = %94, %91, %83, %75
  %105 = load %struct.sii902x*, %struct.sii902x** %7, align 8
  %106 = getelementptr inbounds %struct.sii902x, %struct.sii902x* %105, i32 0, i32 0
  %107 = call i32 @mutex_unlock(i32* %106)
  %108 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %108)
  ret void
}

declare dso_local %struct.sii902x* @bridge_to_sii902x(%struct.drm_bridge*) #1

declare dso_local i32 @HDMI_INFOFRAME_SIZE(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @regmap_bulk_write(%struct.regmap*, i32, i32*, i32) #1

declare dso_local i32 @drm_hdmi_avi_infoframe_from_display_mode(%struct.hdmi_avi_infoframe*, i32*, %struct.drm_display_mode*) #1

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

declare dso_local i32 @hdmi_avi_infoframe_pack(%struct.hdmi_avi_infoframe*, i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
