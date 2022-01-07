; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_hdmi.c_vc4_hdmi_set_avi_infoframe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_hdmi.c_vc4_hdmi_set_avi_infoframe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { %struct.drm_crtc*, %struct.TYPE_9__* }
%struct.drm_crtc = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.drm_display_mode }
%struct.drm_display_mode = type { i32 }
%struct.TYPE_9__ = type { %struct.vc4_dev* }
%struct.vc4_dev = type { %struct.vc4_hdmi* }
%struct.vc4_hdmi = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.drm_connector_state* }
%struct.drm_connector_state = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32, i32, i32 }
%struct.vc4_hdmi_encoder = type { i64 }
%union.hdmi_infoframe = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"couldn't fill AVI infoframe\0A\00", align 1
@HDMI_QUANTIZATION_RANGE_LIMITED = common dso_local global i32 0, align 4
@HDMI_QUANTIZATION_RANGE_FULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*)* @vc4_hdmi_set_avi_infoframe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vc4_hdmi_set_avi_infoframe(%struct.drm_encoder* %0) #0 {
  %2 = alloca %struct.drm_encoder*, align 8
  %3 = alloca %struct.vc4_hdmi_encoder*, align 8
  %4 = alloca %struct.vc4_dev*, align 8
  %5 = alloca %struct.vc4_hdmi*, align 8
  %6 = alloca %struct.drm_connector_state*, align 8
  %7 = alloca %struct.drm_crtc*, align 8
  %8 = alloca %struct.drm_display_mode*, align 8
  %9 = alloca %union.hdmi_infoframe, align 4
  %10 = alloca i32, align 4
  store %struct.drm_encoder* %0, %struct.drm_encoder** %2, align 8
  %11 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %12 = call %struct.vc4_hdmi_encoder* @to_vc4_hdmi_encoder(%struct.drm_encoder* %11)
  store %struct.vc4_hdmi_encoder* %12, %struct.vc4_hdmi_encoder** %3, align 8
  %13 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %14 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %13, i32 0, i32 1
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = load %struct.vc4_dev*, %struct.vc4_dev** %16, align 8
  store %struct.vc4_dev* %17, %struct.vc4_dev** %4, align 8
  %18 = load %struct.vc4_dev*, %struct.vc4_dev** %4, align 8
  %19 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %18, i32 0, i32 0
  %20 = load %struct.vc4_hdmi*, %struct.vc4_hdmi** %19, align 8
  store %struct.vc4_hdmi* %20, %struct.vc4_hdmi** %5, align 8
  %21 = load %struct.vc4_hdmi*, %struct.vc4_hdmi** %5, align 8
  %22 = getelementptr inbounds %struct.vc4_hdmi, %struct.vc4_hdmi* %21, i32 0, i32 0
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 0
  %25 = load %struct.drm_connector_state*, %struct.drm_connector_state** %24, align 8
  store %struct.drm_connector_state* %25, %struct.drm_connector_state** %6, align 8
  %26 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %27 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %26, i32 0, i32 0
  %28 = load %struct.drm_crtc*, %struct.drm_crtc** %27, align 8
  store %struct.drm_crtc* %28, %struct.drm_crtc** %7, align 8
  %29 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %30 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %29, i32 0, i32 0
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  store %struct.drm_display_mode* %32, %struct.drm_display_mode** %8, align 8
  %33 = bitcast %union.hdmi_infoframe* %9 to %struct.TYPE_13__*
  %34 = load %struct.vc4_hdmi*, %struct.vc4_hdmi** %5, align 8
  %35 = getelementptr inbounds %struct.vc4_hdmi, %struct.vc4_hdmi* %34, i32 0, i32 0
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %35, align 8
  %37 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %38 = call i32 @drm_hdmi_avi_infoframe_from_display_mode(%struct.TYPE_13__* %33, %struct.TYPE_14__* %36, %struct.drm_display_mode* %37)
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %1
  %42 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %90

43:                                               ; preds = %1
  %44 = bitcast %union.hdmi_infoframe* %9 to %struct.TYPE_13__*
  %45 = load %struct.vc4_hdmi*, %struct.vc4_hdmi** %5, align 8
  %46 = getelementptr inbounds %struct.vc4_hdmi, %struct.vc4_hdmi* %45, i32 0, i32 0
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %46, align 8
  %48 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %49 = load %struct.vc4_hdmi_encoder*, %struct.vc4_hdmi_encoder** %3, align 8
  %50 = getelementptr inbounds %struct.vc4_hdmi_encoder, %struct.vc4_hdmi_encoder* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %43
  %54 = load i32, i32* @HDMI_QUANTIZATION_RANGE_LIMITED, align 4
  br label %57

55:                                               ; preds = %43
  %56 = load i32, i32* @HDMI_QUANTIZATION_RANGE_FULL, align 4
  br label %57

57:                                               ; preds = %55, %53
  %58 = phi i32 [ %54, %53 ], [ %56, %55 ]
  %59 = call i32 @drm_hdmi_avi_infoframe_quant_range(%struct.TYPE_13__* %44, %struct.TYPE_14__* %47, %struct.drm_display_mode* %48, i32 %58)
  %60 = load %struct.drm_connector_state*, %struct.drm_connector_state** %6, align 8
  %61 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = bitcast %union.hdmi_infoframe* %9 to %struct.TYPE_13__*
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 3
  store i32 %64, i32* %66, align 4
  %67 = load %struct.drm_connector_state*, %struct.drm_connector_state** %6, align 8
  %68 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = bitcast %union.hdmi_infoframe* %9 to %struct.TYPE_13__*
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 2
  store i32 %71, i32* %73, align 4
  %74 = load %struct.drm_connector_state*, %struct.drm_connector_state** %6, align 8
  %75 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = bitcast %union.hdmi_infoframe* %9 to %struct.TYPE_13__*
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 4
  %81 = load %struct.drm_connector_state*, %struct.drm_connector_state** %6, align 8
  %82 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = bitcast %union.hdmi_infoframe* %9 to %struct.TYPE_13__*
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 4
  %88 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %89 = call i32 @vc4_hdmi_write_infoframe(%struct.drm_encoder* %88, %union.hdmi_infoframe* %9)
  br label %90

90:                                               ; preds = %57, %41
  ret void
}

declare dso_local %struct.vc4_hdmi_encoder* @to_vc4_hdmi_encoder(%struct.drm_encoder*) #1

declare dso_local i32 @drm_hdmi_avi_infoframe_from_display_mode(%struct.TYPE_13__*, %struct.TYPE_14__*, %struct.drm_display_mode*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @drm_hdmi_avi_infoframe_quant_range(%struct.TYPE_13__*, %struct.TYPE_14__*, %struct.drm_display_mode*, i32) #1

declare dso_local i32 @vc4_hdmi_write_infoframe(%struct.drm_encoder*, %union.hdmi_infoframe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
