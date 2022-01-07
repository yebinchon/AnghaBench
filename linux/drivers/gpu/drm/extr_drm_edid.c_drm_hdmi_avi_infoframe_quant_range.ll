; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_edid.c_drm_hdmi_avi_infoframe_quant_range.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_edid.c_drm_hdmi_avi_infoframe_quant_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdmi_avi_infoframe = type { i32, i32 }
%struct.drm_connector = type { %struct.drm_display_info }
%struct.drm_display_info = type { i64 }
%struct.drm_display_mode = type { i32 }

@HDMI_QUANTIZATION_RANGE_DEFAULT = common dso_local global i32 0, align 4
@HDMI_QUANTIZATION_RANGE_LIMITED = common dso_local global i32 0, align 4
@HDMI_YCC_QUANTIZATION_RANGE_LIMITED = common dso_local global i32 0, align 4
@HDMI_YCC_QUANTIZATION_RANGE_FULL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drm_hdmi_avi_infoframe_quant_range(%struct.hdmi_avi_infoframe* %0, %struct.drm_connector* %1, %struct.drm_display_mode* %2, i32 %3) #0 {
  %5 = alloca %struct.hdmi_avi_infoframe*, align 8
  %6 = alloca %struct.drm_connector*, align 8
  %7 = alloca %struct.drm_display_mode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.drm_display_info*, align 8
  store %struct.hdmi_avi_infoframe* %0, %struct.hdmi_avi_infoframe** %5, align 8
  store %struct.drm_connector* %1, %struct.drm_connector** %6, align 8
  store %struct.drm_display_mode* %2, %struct.drm_display_mode** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.drm_connector*, %struct.drm_connector** %6, align 8
  %11 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %10, i32 0, i32 0
  store %struct.drm_display_info* %11, %struct.drm_display_info** %9, align 8
  %12 = load %struct.drm_display_info*, %struct.drm_display_info** %9, align 8
  %13 = getelementptr inbounds %struct.drm_display_info, %struct.drm_display_info* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %4
  %17 = load i32, i32* %8, align 4
  %18 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %19 = call i32 @drm_default_rgb_quant_range(%struct.drm_display_mode* %18)
  %20 = icmp eq i32 %17, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %16, %4
  %22 = load i32, i32* %8, align 4
  %23 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %5, align 8
  %24 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  br label %29

25:                                               ; preds = %16
  %26 = load i32, i32* @HDMI_QUANTIZATION_RANGE_DEFAULT, align 4
  %27 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %5, align 8
  %28 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  br label %29

29:                                               ; preds = %25, %21
  %30 = load %struct.drm_connector*, %struct.drm_connector** %6, align 8
  %31 = call i32 @is_hdmi2_sink(%struct.drm_connector* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @HDMI_QUANTIZATION_RANGE_LIMITED, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %33, %29
  %38 = load i32, i32* @HDMI_YCC_QUANTIZATION_RANGE_LIMITED, align 4
  %39 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %5, align 8
  %40 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  br label %45

41:                                               ; preds = %33
  %42 = load i32, i32* @HDMI_YCC_QUANTIZATION_RANGE_FULL, align 4
  %43 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %5, align 8
  %44 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  br label %45

45:                                               ; preds = %41, %37
  ret void
}

declare dso_local i32 @drm_default_rgb_quant_range(%struct.drm_display_mode*) #1

declare dso_local i32 @is_hdmi2_sink(%struct.drm_connector*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
