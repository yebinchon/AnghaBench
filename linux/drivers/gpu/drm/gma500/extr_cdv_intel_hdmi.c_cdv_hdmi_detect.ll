; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_cdv_intel_hdmi.c_cdv_hdmi_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_cdv_intel_hdmi.c_cdv_hdmi_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32 }
%struct.gma_encoder = type { %struct.TYPE_2__*, %struct.mid_intel_hdmi_priv* }
%struct.TYPE_2__ = type { i32 }
%struct.mid_intel_hdmi_priv = type { i32, i32 }
%struct.edid = type { i32 }

@connector_status_disconnected = common dso_local global i32 0, align 4
@DRM_EDID_INPUT_DIGITAL = common dso_local global i32 0, align 4
@connector_status_connected = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*, i32)* @cdv_hdmi_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdv_hdmi_detect(%struct.drm_connector* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_connector*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.gma_encoder*, align 8
  %6 = alloca %struct.mid_intel_hdmi_priv*, align 8
  %7 = alloca %struct.edid*, align 8
  %8 = alloca i32, align 4
  store %struct.drm_connector* %0, %struct.drm_connector** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %10 = call %struct.gma_encoder* @gma_attached_encoder(%struct.drm_connector* %9)
  store %struct.gma_encoder* %10, %struct.gma_encoder** %5, align 8
  %11 = load %struct.gma_encoder*, %struct.gma_encoder** %5, align 8
  %12 = getelementptr inbounds %struct.gma_encoder, %struct.gma_encoder* %11, i32 0, i32 1
  %13 = load %struct.mid_intel_hdmi_priv*, %struct.mid_intel_hdmi_priv** %12, align 8
  store %struct.mid_intel_hdmi_priv* %13, %struct.mid_intel_hdmi_priv** %6, align 8
  store %struct.edid* null, %struct.edid** %7, align 8
  %14 = load i32, i32* @connector_status_disconnected, align 4
  store i32 %14, i32* %8, align 4
  %15 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %16 = load %struct.gma_encoder*, %struct.gma_encoder** %5, align 8
  %17 = getelementptr inbounds %struct.gma_encoder, %struct.gma_encoder* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = call %struct.edid* @drm_get_edid(%struct.drm_connector* %15, i32* %19)
  store %struct.edid* %20, %struct.edid** %7, align 8
  %21 = load %struct.mid_intel_hdmi_priv*, %struct.mid_intel_hdmi_priv** %6, align 8
  %22 = getelementptr inbounds %struct.mid_intel_hdmi_priv, %struct.mid_intel_hdmi_priv* %21, i32 0, i32 0
  store i32 0, i32* %22, align 4
  %23 = load %struct.mid_intel_hdmi_priv*, %struct.mid_intel_hdmi_priv** %6, align 8
  %24 = getelementptr inbounds %struct.mid_intel_hdmi_priv, %struct.mid_intel_hdmi_priv* %23, i32 0, i32 1
  store i32 0, i32* %24, align 4
  %25 = load %struct.edid*, %struct.edid** %7, align 8
  %26 = icmp ne %struct.edid* %25, null
  br i1 %26, label %27, label %47

27:                                               ; preds = %2
  %28 = load %struct.edid*, %struct.edid** %7, align 8
  %29 = getelementptr inbounds %struct.edid, %struct.edid* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @DRM_EDID_INPUT_DIGITAL, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %27
  %35 = load i32, i32* @connector_status_connected, align 4
  store i32 %35, i32* %8, align 4
  %36 = load %struct.edid*, %struct.edid** %7, align 8
  %37 = call i32 @drm_detect_hdmi_monitor(%struct.edid* %36)
  %38 = load %struct.mid_intel_hdmi_priv*, %struct.mid_intel_hdmi_priv** %6, align 8
  %39 = getelementptr inbounds %struct.mid_intel_hdmi_priv, %struct.mid_intel_hdmi_priv* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  %40 = load %struct.edid*, %struct.edid** %7, align 8
  %41 = call i32 @drm_detect_monitor_audio(%struct.edid* %40)
  %42 = load %struct.mid_intel_hdmi_priv*, %struct.mid_intel_hdmi_priv** %6, align 8
  %43 = getelementptr inbounds %struct.mid_intel_hdmi_priv, %struct.mid_intel_hdmi_priv* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  br label %44

44:                                               ; preds = %34, %27
  %45 = load %struct.edid*, %struct.edid** %7, align 8
  %46 = call i32 @kfree(%struct.edid* %45)
  br label %47

47:                                               ; preds = %44, %2
  %48 = load i32, i32* %8, align 4
  ret i32 %48
}

declare dso_local %struct.gma_encoder* @gma_attached_encoder(%struct.drm_connector*) #1

declare dso_local %struct.edid* @drm_get_edid(%struct.drm_connector*, i32*) #1

declare dso_local i32 @drm_detect_hdmi_monitor(%struct.edid*) #1

declare dso_local i32 @drm_detect_monitor_audio(%struct.edid*) #1

declare dso_local i32 @kfree(%struct.edid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
