; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_edid.c_drm_hdmi_avi_infoframe_colorspace.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_edid.c_drm_hdmi_avi_infoframe_colorspace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdmi_avi_infoframe = type { i64, i64 }
%struct.drm_connector_state = type { i64 }

@FULL_COLORIMETRY_MASK = common dso_local global i64 0, align 8
@hdmi_colorimetry_val = common dso_local global i64* null, align 8
@HDMI_COLORIMETRY_NO_DATA = common dso_local global i64 0, align 8
@NORMAL_COLORIMETRY_MASK = common dso_local global i64 0, align 8
@EXTENDED_COLORIMETRY_MASK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drm_hdmi_avi_infoframe_colorspace(%struct.hdmi_avi_infoframe* %0, %struct.drm_connector_state* %1) #0 {
  %3 = alloca %struct.hdmi_avi_infoframe*, align 8
  %4 = alloca %struct.drm_connector_state*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.hdmi_avi_infoframe* %0, %struct.hdmi_avi_infoframe** %3, align 8
  store %struct.drm_connector_state* %1, %struct.drm_connector_state** %4, align 8
  %7 = load %struct.drm_connector_state*, %struct.drm_connector_state** %4, align 8
  %8 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @FULL_COLORIMETRY_MASK, align 8
  %11 = and i64 %9, %10
  store i64 %11, i64* %6, align 8
  %12 = load i64, i64* %6, align 8
  %13 = load i64*, i64** @hdmi_colorimetry_val, align 8
  %14 = call i64 @ARRAY_SIZE(i64* %13)
  %15 = icmp uge i64 %12, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i64, i64* @HDMI_COLORIMETRY_NO_DATA, align 8
  store i64 %17, i64* %5, align 8
  br label %23

18:                                               ; preds = %2
  %19 = load i64*, i64** @hdmi_colorimetry_val, align 8
  %20 = load i64, i64* %6, align 8
  %21 = getelementptr inbounds i64, i64* %19, i64 %20
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %5, align 8
  br label %23

23:                                               ; preds = %18, %16
  %24 = load i64, i64* %5, align 8
  %25 = load i64, i64* @NORMAL_COLORIMETRY_MASK, align 8
  %26 = and i64 %24, %25
  %27 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %3, align 8
  %28 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  %29 = load i64, i64* %5, align 8
  %30 = lshr i64 %29, 2
  %31 = load i64, i64* @EXTENDED_COLORIMETRY_MASK, align 8
  %32 = and i64 %30, %31
  %33 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %3, align 8
  %34 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %33, i32 0, i32 1
  store i64 %32, i64* %34, align 8
  ret void
}

declare dso_local i64 @ARRAY_SIZE(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
