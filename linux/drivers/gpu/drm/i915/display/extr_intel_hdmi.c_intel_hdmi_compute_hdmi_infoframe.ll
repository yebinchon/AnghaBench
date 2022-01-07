; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_hdmi.c_intel_hdmi_compute_hdmi_infoframe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_hdmi.c_intel_hdmi_compute_hdmi_infoframe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_encoder = type { i32 }
%struct.intel_crtc_state = type { %struct.TYPE_6__, %struct.TYPE_9__, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.hdmi_vendor_infoframe }
%struct.hdmi_vendor_infoframe = type { i32 }
%struct.drm_connector_state = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.drm_display_info }
%struct.drm_display_info = type { i32 }

@HDMI_INFOFRAME_TYPE_VENDOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_encoder*, %struct.intel_crtc_state*, %struct.drm_connector_state*)* @intel_hdmi_compute_hdmi_infoframe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_hdmi_compute_hdmi_infoframe(%struct.intel_encoder* %0, %struct.intel_crtc_state* %1, %struct.drm_connector_state* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.intel_encoder*, align 8
  %6 = alloca %struct.intel_crtc_state*, align 8
  %7 = alloca %struct.drm_connector_state*, align 8
  %8 = alloca %struct.hdmi_vendor_infoframe*, align 8
  %9 = alloca %struct.drm_display_info*, align 8
  %10 = alloca i32, align 4
  store %struct.intel_encoder* %0, %struct.intel_encoder** %5, align 8
  store %struct.intel_crtc_state* %1, %struct.intel_crtc_state** %6, align 8
  store %struct.drm_connector_state* %2, %struct.drm_connector_state** %7, align 8
  %11 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %12 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  store %struct.hdmi_vendor_infoframe* %15, %struct.hdmi_vendor_infoframe** %8, align 8
  %16 = load %struct.drm_connector_state*, %struct.drm_connector_state** %7, align 8
  %17 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %16, i32 0, i32 0
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  store %struct.drm_display_info* %19, %struct.drm_display_info** %9, align 8
  %20 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %21 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %3
  %25 = load %struct.drm_display_info*, %struct.drm_display_info** %9, align 8
  %26 = getelementptr inbounds %struct.drm_display_info, %struct.drm_display_info* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %24, %3
  store i32 1, i32* %4, align 4
  br label %58

30:                                               ; preds = %24
  %31 = load i32, i32* @HDMI_INFOFRAME_TYPE_VENDOR, align 4
  %32 = call i32 @intel_hdmi_infoframe_enable(i32 %31)
  %33 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %34 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %32
  store i32 %37, i32* %35, align 4
  %38 = load %struct.hdmi_vendor_infoframe*, %struct.hdmi_vendor_infoframe** %8, align 8
  %39 = load %struct.drm_connector_state*, %struct.drm_connector_state** %7, align 8
  %40 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %39, i32 0, i32 0
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %40, align 8
  %42 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %43 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = call i32 @drm_hdmi_vendor_infoframe_from_display_mode(%struct.hdmi_vendor_infoframe* %38, %struct.TYPE_10__* %41, i32* %44)
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = call i64 @WARN_ON(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %30
  store i32 0, i32* %4, align 4
  br label %58

50:                                               ; preds = %30
  %51 = load %struct.hdmi_vendor_infoframe*, %struct.hdmi_vendor_infoframe** %8, align 8
  %52 = call i32 @hdmi_vendor_infoframe_check(%struct.hdmi_vendor_infoframe* %51)
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %10, align 4
  %54 = call i64 @WARN_ON(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  store i32 0, i32* %4, align 4
  br label %58

57:                                               ; preds = %50
  store i32 1, i32* %4, align 4
  br label %58

58:                                               ; preds = %57, %56, %49, %29
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i32 @intel_hdmi_infoframe_enable(i32) #1

declare dso_local i32 @drm_hdmi_vendor_infoframe_from_display_mode(%struct.hdmi_vendor_infoframe*, %struct.TYPE_10__*, i32*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @hdmi_vendor_infoframe_check(%struct.hdmi_vendor_infoframe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
