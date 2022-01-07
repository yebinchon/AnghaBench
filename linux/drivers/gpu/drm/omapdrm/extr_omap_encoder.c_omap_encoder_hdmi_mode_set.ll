; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_encoder.c_omap_encoder_hdmi_mode_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_encoder.c_omap_encoder_hdmi_mode_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32 }
%struct.drm_encoder = type { i32 }
%struct.drm_display_mode = type { i32 }
%struct.omap_encoder = type { %struct.omap_dss_device* }
%struct.omap_dss_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.omap_dss_device*, %struct.hdmi_avi_infoframe*)*, i32 (%struct.omap_dss_device*, i32)* }
%struct.hdmi_avi_infoframe = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_connector*, %struct.drm_encoder*, %struct.drm_display_mode*)* @omap_encoder_hdmi_mode_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap_encoder_hdmi_mode_set(%struct.drm_connector* %0, %struct.drm_encoder* %1, %struct.drm_display_mode* %2) #0 {
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca %struct.drm_encoder*, align 8
  %6 = alloca %struct.drm_display_mode*, align 8
  %7 = alloca %struct.omap_encoder*, align 8
  %8 = alloca %struct.omap_dss_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.hdmi_avi_infoframe, align 4
  %11 = alloca i32, align 4
  store %struct.drm_connector* %0, %struct.drm_connector** %4, align 8
  store %struct.drm_encoder* %1, %struct.drm_encoder** %5, align 8
  store %struct.drm_display_mode* %2, %struct.drm_display_mode** %6, align 8
  %12 = load %struct.drm_encoder*, %struct.drm_encoder** %5, align 8
  %13 = call %struct.omap_encoder* @to_omap_encoder(%struct.drm_encoder* %12)
  store %struct.omap_encoder* %13, %struct.omap_encoder** %7, align 8
  %14 = load %struct.omap_encoder*, %struct.omap_encoder** %7, align 8
  %15 = getelementptr inbounds %struct.omap_encoder, %struct.omap_encoder* %14, i32 0, i32 0
  %16 = load %struct.omap_dss_device*, %struct.omap_dss_device** %15, align 8
  store %struct.omap_dss_device* %16, %struct.omap_dss_device** %8, align 8
  %17 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %18 = call i32 @omap_connector_get_hdmi_mode(%struct.drm_connector* %17)
  store i32 %18, i32* %9, align 4
  %19 = load %struct.omap_dss_device*, %struct.omap_dss_device** %8, align 8
  %20 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load i32 (%struct.omap_dss_device*, i32)*, i32 (%struct.omap_dss_device*, i32)** %23, align 8
  %25 = icmp ne i32 (%struct.omap_dss_device*, i32)* %24, null
  br i1 %25, label %26, label %36

26:                                               ; preds = %3
  %27 = load %struct.omap_dss_device*, %struct.omap_dss_device** %8, align 8
  %28 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i32 (%struct.omap_dss_device*, i32)*, i32 (%struct.omap_dss_device*, i32)** %31, align 8
  %33 = load %struct.omap_dss_device*, %struct.omap_dss_device** %8, align 8
  %34 = load i32, i32* %9, align 4
  %35 = call i32 %32(%struct.omap_dss_device* %33, i32 %34)
  br label %36

36:                                               ; preds = %26, %3
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %63

39:                                               ; preds = %36
  %40 = load %struct.omap_dss_device*, %struct.omap_dss_device** %8, align 8
  %41 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %40, i32 0, i32 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32 (%struct.omap_dss_device*, %struct.hdmi_avi_infoframe*)*, i32 (%struct.omap_dss_device*, %struct.hdmi_avi_infoframe*)** %44, align 8
  %46 = icmp ne i32 (%struct.omap_dss_device*, %struct.hdmi_avi_infoframe*)* %45, null
  br i1 %46, label %47, label %63

47:                                               ; preds = %39
  %48 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %49 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %50 = call i32 @drm_hdmi_avi_infoframe_from_display_mode(%struct.hdmi_avi_infoframe* %10, %struct.drm_connector* %48, %struct.drm_display_mode* %49)
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %11, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %47
  %54 = load %struct.omap_dss_device*, %struct.omap_dss_device** %8, align 8
  %55 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %54, i32 0, i32 0
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32 (%struct.omap_dss_device*, %struct.hdmi_avi_infoframe*)*, i32 (%struct.omap_dss_device*, %struct.hdmi_avi_infoframe*)** %58, align 8
  %60 = load %struct.omap_dss_device*, %struct.omap_dss_device** %8, align 8
  %61 = call i32 %59(%struct.omap_dss_device* %60, %struct.hdmi_avi_infoframe* %10)
  br label %62

62:                                               ; preds = %53, %47
  br label %63

63:                                               ; preds = %62, %39, %36
  ret void
}

declare dso_local %struct.omap_encoder* @to_omap_encoder(%struct.drm_encoder*) #1

declare dso_local i32 @omap_connector_get_hdmi_mode(%struct.drm_connector*) #1

declare dso_local i32 @drm_hdmi_avi_infoframe_from_display_mode(%struct.hdmi_avi_infoframe*, %struct.drm_connector*, %struct.drm_display_mode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
