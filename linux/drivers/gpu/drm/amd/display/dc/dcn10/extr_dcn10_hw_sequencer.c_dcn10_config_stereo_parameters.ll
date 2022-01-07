; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hw_sequencer.c_dcn10_config_stereo_parameters.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hw_sequencer.c_dcn10_config_stereo_parameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_stream_state = type { i32, %struct.TYPE_8__, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.crtc_stereo_flags = type { i32, i32, i32, i32, i32 }

@TIMING_3D_FORMAT_NONE = common dso_local global i32 0, align 4
@TIMING_3D_FORMAT_SIDE_BY_SIDE = common dso_local global i32 0, align 4
@TIMING_3D_FORMAT_TOP_AND_BOTTOM = common dso_local global i32 0, align 4
@VIEW_3D_FORMAT_FRAME_SEQUENTIAL = common dso_local global i32 0, align 4
@TIMING_3D_FORMAT_INBAND_FA = common dso_local global i32 0, align 4
@TIMING_3D_FORMAT_DP_HDMI_INBAND_FA = common dso_local global i32 0, align 4
@TIMING_3D_FORMAT_SIDEBAND_FA = common dso_local global i32 0, align 4
@DISPLAY_DONGLE_DP_VGA_CONVERTER = common dso_local global i32 0, align 4
@DISPLAY_DONGLE_DP_DVI_CONVERTER = common dso_local global i32 0, align 4
@DISPLAY_DONGLE_DP_HDMI_CONVERTER = common dso_local global i32 0, align 4
@TIMING_3D_FORMAT_HW_FRAME_PACKING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dc_stream_state*, %struct.crtc_stereo_flags*)* @dcn10_config_stereo_parameters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dcn10_config_stereo_parameters(%struct.dc_stream_state* %0, %struct.crtc_stereo_flags* %1) #0 {
  %3 = alloca %struct.dc_stream_state*, align 8
  %4 = alloca %struct.crtc_stereo_flags*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dc_stream_state* %0, %struct.dc_stream_state** %3, align 8
  store %struct.crtc_stereo_flags* %1, %struct.crtc_stereo_flags** %4, align 8
  %9 = load %struct.dc_stream_state*, %struct.dc_stream_state** %3, align 8
  %10 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %5, align 4
  %12 = load %struct.dc_stream_state*, %struct.dc_stream_state** %3, align 8
  %13 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @TIMING_3D_FORMAT_NONE, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %27, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @TIMING_3D_FORMAT_SIDE_BY_SIDE, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @TIMING_3D_FORMAT_TOP_AND_BOTTOM, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %23, %19, %2
  store i32 1, i32* %7, align 4
  br label %28

28:                                               ; preds = %27, %23
  %29 = load i32, i32* %7, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %89

31:                                               ; preds = %28
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @VIEW_3D_FORMAT_FRAME_SEQUENTIAL, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %89

35:                                               ; preds = %31
  %36 = load %struct.crtc_stereo_flags*, %struct.crtc_stereo_flags** %4, align 8
  %37 = getelementptr inbounds %struct.crtc_stereo_flags, %struct.crtc_stereo_flags* %36, i32 0, i32 0
  store i32 1, i32* %37, align 4
  %38 = load %struct.crtc_stereo_flags*, %struct.crtc_stereo_flags** %4, align 8
  %39 = getelementptr inbounds %struct.crtc_stereo_flags, %struct.crtc_stereo_flags* %38, i32 0, i32 1
  store i32 1, i32* %39, align 4
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @TIMING_3D_FORMAT_INBAND_FA, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %51, label %43

43:                                               ; preds = %35
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @TIMING_3D_FORMAT_DP_HDMI_INBAND_FA, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %51, label %47

47:                                               ; preds = %43
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @TIMING_3D_FORMAT_SIDEBAND_FA, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %74

51:                                               ; preds = %47, %43, %35
  %52 = load %struct.dc_stream_state*, %struct.dc_stream_state** %3, align 8
  %53 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %52, i32 0, i32 2
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* @DISPLAY_DONGLE_DP_VGA_CONVERTER, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %70, label %62

62:                                               ; preds = %51
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* @DISPLAY_DONGLE_DP_DVI_CONVERTER, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %70, label %66

66:                                               ; preds = %62
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* @DISPLAY_DONGLE_DP_HDMI_CONVERTER, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %66, %62, %51
  %71 = load %struct.crtc_stereo_flags*, %struct.crtc_stereo_flags** %4, align 8
  %72 = getelementptr inbounds %struct.crtc_stereo_flags, %struct.crtc_stereo_flags* %71, i32 0, i32 2
  store i32 1, i32* %72, align 4
  br label %73

73:                                               ; preds = %70, %66
  br label %74

74:                                               ; preds = %73, %47
  %75 = load %struct.dc_stream_state*, %struct.dc_stream_state** %3, align 8
  %76 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.crtc_stereo_flags*, %struct.crtc_stereo_flags** %4, align 8
  %81 = getelementptr inbounds %struct.crtc_stereo_flags, %struct.crtc_stereo_flags* %80, i32 0, i32 4
  store i32 %79, i32* %81, align 4
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* @TIMING_3D_FORMAT_HW_FRAME_PACKING, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %74
  %86 = load %struct.crtc_stereo_flags*, %struct.crtc_stereo_flags** %4, align 8
  %87 = getelementptr inbounds %struct.crtc_stereo_flags, %struct.crtc_stereo_flags* %86, i32 0, i32 3
  store i32 1, i32* %87, align 4
  br label %88

88:                                               ; preds = %85, %74
  br label %89

89:                                               ; preds = %88, %31, %28
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
