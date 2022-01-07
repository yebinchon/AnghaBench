; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_edid.c_drm_hdmi_avi_infoframe_from_display_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_edid.c_drm_hdmi_avi_infoframe_from_display_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdmi_avi_infoframe = type { i32, i32, i32, i32, i32, i64, i32 }
%struct.drm_connector = type { i32 }
%struct.drm_display_mode = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_DBLCLK = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_3D_MASK = common dso_local global i32 0, align 4
@HDMI_PICTURE_ASPECT_NONE = common dso_local global i32 0, align 4
@HDMI_CONTENT_TYPE_GRAPHICS = common dso_local global i32 0, align 4
@HDMI_PICTURE_ASPECT_16_9 = common dso_local global i32 0, align 4
@HDMI_ACTIVE_ASPECT_PICTURE = common dso_local global i32 0, align 4
@HDMI_SCAN_MODE_UNDERSCAN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_hdmi_avi_infoframe_from_display_mode(%struct.hdmi_avi_infoframe* %0, %struct.drm_connector* %1, %struct.drm_display_mode* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hdmi_avi_infoframe*, align 8
  %6 = alloca %struct.drm_connector*, align 8
  %7 = alloca %struct.drm_display_mode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.hdmi_avi_infoframe* %0, %struct.hdmi_avi_infoframe** %5, align 8
  store %struct.drm_connector* %1, %struct.drm_connector** %6, align 8
  store %struct.drm_display_mode* %2, %struct.drm_display_mode** %7, align 8
  %12 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %5, align 8
  %13 = icmp ne %struct.hdmi_avi_infoframe* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %16 = icmp ne %struct.drm_display_mode* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %14, %3
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %122

20:                                               ; preds = %14
  %21 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %5, align 8
  %22 = call i32 @hdmi_avi_infoframe_init(%struct.hdmi_avi_infoframe* %21)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i32, i32* %9, align 4
  store i32 %26, i32* %4, align 4
  br label %122

27:                                               ; preds = %20
  %28 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %29 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @DRM_MODE_FLAG_DBLCLK, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %27
  %35 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %5, align 8
  %36 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %35, i32 0, i32 0
  store i32 1, i32* %36, align 8
  br label %37

37:                                               ; preds = %34, %27
  %38 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %39 = call i32 @drm_match_cea_mode(%struct.drm_display_mode* %38)
  %40 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %5, align 8
  %41 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = load %struct.drm_connector*, %struct.drm_connector** %6, align 8
  %43 = call i32 @is_hdmi2_sink(%struct.drm_connector* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %53, label %45

45:                                               ; preds = %37
  %46 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %5, align 8
  %47 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = icmp sgt i32 %48, 64
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %5, align 8
  %52 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %51, i32 0, i32 1
  store i32 0, i32* %52, align 4
  br label %53

53:                                               ; preds = %50, %45, %37
  %54 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %5, align 8
  %55 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %76

58:                                               ; preds = %53
  %59 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %60 = call i32 @drm_match_hdmi_mode(%struct.drm_display_mode* %59)
  store i32 %60, i32* %10, align 4
  %61 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %62 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @DRM_MODE_FLAG_3D_MASK, align 4
  %65 = and i32 %63, %64
  store i32 %65, i32* %11, align 4
  %66 = load i32, i32* %10, align 4
  %67 = call i64 @drm_valid_hdmi_vic(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %58
  %70 = load i32, i32* %11, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %69
  %73 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %5, align 8
  %74 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %73, i32 0, i32 1
  store i32 0, i32* %74, align 4
  br label %75

75:                                               ; preds = %72, %69, %58
  br label %76

76:                                               ; preds = %75, %53
  %77 = load i32, i32* @HDMI_PICTURE_ASPECT_NONE, align 4
  %78 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %5, align 8
  %79 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %78, i32 0, i32 2
  store i32 %77, i32* %79, align 8
  %80 = load i32, i32* @HDMI_CONTENT_TYPE_GRAPHICS, align 4
  %81 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %5, align 8
  %82 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %81, i32 0, i32 6
  store i32 %80, i32* %82, align 8
  %83 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %5, align 8
  %84 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %83, i32 0, i32 5
  store i64 0, i64* %84, align 8
  %85 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %86 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  store i32 %87, i32* %8, align 4
  %88 = load i32, i32* %8, align 4
  %89 = load i32, i32* @HDMI_PICTURE_ASPECT_NONE, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %96

91:                                               ; preds = %76
  %92 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %5, align 8
  %93 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @drm_get_cea_aspect_ratio(i32 %94)
  store i32 %95, i32* %8, align 4
  br label %96

96:                                               ; preds = %91, %76
  %97 = load i32, i32* %8, align 4
  %98 = load i32, i32* @HDMI_PICTURE_ASPECT_16_9, align 4
  %99 = icmp ugt i32 %97, %98
  br i1 %99, label %100, label %112

100:                                              ; preds = %96
  %101 = load i32, i32* %8, align 4
  %102 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %5, align 8
  %103 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @drm_get_cea_aspect_ratio(i32 %104)
  %106 = icmp ne i32 %101, %105
  br i1 %106, label %107, label %110

107:                                              ; preds = %100
  %108 = load i32, i32* @EINVAL, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %4, align 4
  br label %122

110:                                              ; preds = %100
  %111 = load i32, i32* @HDMI_PICTURE_ASPECT_NONE, align 4
  store i32 %111, i32* %8, align 4
  br label %112

112:                                              ; preds = %110, %96
  %113 = load i32, i32* %8, align 4
  %114 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %5, align 8
  %115 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %114, i32 0, i32 2
  store i32 %113, i32* %115, align 8
  %116 = load i32, i32* @HDMI_ACTIVE_ASPECT_PICTURE, align 4
  %117 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %5, align 8
  %118 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %117, i32 0, i32 4
  store i32 %116, i32* %118, align 8
  %119 = load i32, i32* @HDMI_SCAN_MODE_UNDERSCAN, align 4
  %120 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %5, align 8
  %121 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %120, i32 0, i32 3
  store i32 %119, i32* %121, align 4
  store i32 0, i32* %4, align 4
  br label %122

122:                                              ; preds = %112, %107, %25, %17
  %123 = load i32, i32* %4, align 4
  ret i32 %123
}

declare dso_local i32 @hdmi_avi_infoframe_init(%struct.hdmi_avi_infoframe*) #1

declare dso_local i32 @drm_match_cea_mode(%struct.drm_display_mode*) #1

declare dso_local i32 @is_hdmi2_sink(%struct.drm_connector*) #1

declare dso_local i32 @drm_match_hdmi_mode(%struct.drm_display_mode*) #1

declare dso_local i64 @drm_valid_hdmi_vic(i32) #1

declare dso_local i32 @drm_get_cea_aspect_ratio(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
