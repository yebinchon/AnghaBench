; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_connector.c_drm_hdmi_avi_infoframe_content_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_connector.c_drm_hdmi_avi_infoframe_content_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdmi_avi_infoframe = type { i32, i8* }
%struct.drm_connector_state = type { i32 }

@HDMI_CONTENT_TYPE_GRAPHICS = common dso_local global i8* null, align 8
@HDMI_CONTENT_TYPE_CINEMA = common dso_local global i8* null, align 8
@HDMI_CONTENT_TYPE_GAME = common dso_local global i8* null, align 8
@HDMI_CONTENT_TYPE_PHOTO = common dso_local global i8* null, align 8
@DRM_MODE_CONTENT_TYPE_NO_DATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drm_hdmi_avi_infoframe_content_type(%struct.hdmi_avi_infoframe* %0, %struct.drm_connector_state* %1) #0 {
  %3 = alloca %struct.hdmi_avi_infoframe*, align 8
  %4 = alloca %struct.drm_connector_state*, align 8
  store %struct.hdmi_avi_infoframe* %0, %struct.hdmi_avi_infoframe** %3, align 8
  store %struct.drm_connector_state* %1, %struct.drm_connector_state** %4, align 8
  %5 = load %struct.drm_connector_state*, %struct.drm_connector_state** %4, align 8
  %6 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %24 [
    i32 129, label %8
    i32 131, label %12
    i32 130, label %16
    i32 128, label %20
  ]

8:                                                ; preds = %2
  %9 = load i8*, i8** @HDMI_CONTENT_TYPE_GRAPHICS, align 8
  %10 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %3, align 8
  %11 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %10, i32 0, i32 1
  store i8* %9, i8** %11, align 8
  br label %28

12:                                               ; preds = %2
  %13 = load i8*, i8** @HDMI_CONTENT_TYPE_CINEMA, align 8
  %14 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %3, align 8
  %15 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %14, i32 0, i32 1
  store i8* %13, i8** %15, align 8
  br label %28

16:                                               ; preds = %2
  %17 = load i8*, i8** @HDMI_CONTENT_TYPE_GAME, align 8
  %18 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %3, align 8
  %19 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %18, i32 0, i32 1
  store i8* %17, i8** %19, align 8
  br label %28

20:                                               ; preds = %2
  %21 = load i8*, i8** @HDMI_CONTENT_TYPE_PHOTO, align 8
  %22 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %3, align 8
  %23 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %22, i32 0, i32 1
  store i8* %21, i8** %23, align 8
  br label %28

24:                                               ; preds = %2
  %25 = load i8*, i8** @HDMI_CONTENT_TYPE_GRAPHICS, align 8
  %26 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %3, align 8
  %27 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %26, i32 0, i32 1
  store i8* %25, i8** %27, align 8
  br label %28

28:                                               ; preds = %24, %20, %16, %12, %8
  %29 = load %struct.drm_connector_state*, %struct.drm_connector_state** %4, align 8
  %30 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @DRM_MODE_CONTENT_TYPE_NO_DATA, align 4
  %33 = icmp ne i32 %31, %32
  %34 = zext i1 %33 to i32
  %35 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %3, align 8
  %36 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
