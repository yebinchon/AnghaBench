; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_stream_encoder.c_enc1_stream_encoder_dvi_set_stream_attribute.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_stream_encoder.c_enc1_stream_encoder_dvi_set_stream_attribute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stream_encoder = type { i32 }
%struct.dc_crtc_timing = type { i32, i64, i64 }
%struct.dcn10_stream_encoder = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 (%struct.TYPE_6__*, %struct.bp_encoder_control*)* }
%struct.bp_encoder_control = type { i32, i32, i32, i32, i32, i32, i32 }

@ENCODER_CONTROL_SETUP = common dso_local global i32 0, align 4
@SIGNAL_TYPE_DVI_DUAL_LINK = common dso_local global i32 0, align 4
@SIGNAL_TYPE_DVI_SINGLE_LINK = common dso_local global i32 0, align 4
@LANE_COUNT_EIGHT = common dso_local global i32 0, align 4
@LANE_COUNT_FOUR = common dso_local global i32 0, align 4
@BP_RESULT_OK = common dso_local global i64 0, align 8
@PIXEL_ENCODING_RGB = common dso_local global i64 0, align 8
@COLOR_DEPTH_888 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @enc1_stream_encoder_dvi_set_stream_attribute(%struct.stream_encoder* %0, %struct.dc_crtc_timing* %1, i32 %2) #0 {
  %4 = alloca %struct.stream_encoder*, align 8
  %5 = alloca %struct.dc_crtc_timing*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dcn10_stream_encoder*, align 8
  %8 = alloca %struct.bp_encoder_control, align 4
  store %struct.stream_encoder* %0, %struct.stream_encoder** %4, align 8
  store %struct.dc_crtc_timing* %1, %struct.dc_crtc_timing** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.stream_encoder*, %struct.stream_encoder** %4, align 8
  %10 = call %struct.dcn10_stream_encoder* @DCN10STRENC_FROM_STRENC(%struct.stream_encoder* %9)
  store %struct.dcn10_stream_encoder* %10, %struct.dcn10_stream_encoder** %7, align 8
  %11 = bitcast %struct.bp_encoder_control* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %11, i8 0, i64 28, i1 false)
  %12 = load i32, i32* @ENCODER_CONTROL_SETUP, align 4
  %13 = getelementptr inbounds %struct.bp_encoder_control, %struct.bp_encoder_control* %8, i32 0, i32 5
  store i32 %12, i32* %13, align 4
  %14 = load %struct.dcn10_stream_encoder*, %struct.dcn10_stream_encoder** %7, align 8
  %15 = getelementptr inbounds %struct.dcn10_stream_encoder, %struct.dcn10_stream_encoder* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = getelementptr inbounds %struct.bp_encoder_control, %struct.bp_encoder_control* %8, i32 0, i32 4
  store i32 %17, i32* %18, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* @SIGNAL_TYPE_DVI_DUAL_LINK, align 4
  br label %25

23:                                               ; preds = %3
  %24 = load i32, i32* @SIGNAL_TYPE_DVI_SINGLE_LINK, align 4
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi i32 [ %22, %21 ], [ %24, %23 ]
  %27 = getelementptr inbounds %struct.bp_encoder_control, %struct.bp_encoder_control* %8, i32 0, i32 3
  store i32 %26, i32* %27, align 4
  %28 = getelementptr inbounds %struct.bp_encoder_control, %struct.bp_encoder_control* %8, i32 0, i32 0
  store i32 0, i32* %28, align 4
  %29 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %5, align 8
  %30 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = sdiv i32 %31, 10
  %33 = getelementptr inbounds %struct.bp_encoder_control, %struct.bp_encoder_control* %8, i32 0, i32 1
  store i32 %32, i32* %33, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %25
  %37 = load i32, i32* @LANE_COUNT_EIGHT, align 4
  br label %40

38:                                               ; preds = %25
  %39 = load i32, i32* @LANE_COUNT_FOUR, align 4
  br label %40

40:                                               ; preds = %38, %36
  %41 = phi i32 [ %37, %36 ], [ %39, %38 ]
  %42 = getelementptr inbounds %struct.bp_encoder_control, %struct.bp_encoder_control* %8, i32 0, i32 2
  store i32 %41, i32* %42, align 4
  %43 = load %struct.dcn10_stream_encoder*, %struct.dcn10_stream_encoder** %7, align 8
  %44 = getelementptr inbounds %struct.dcn10_stream_encoder, %struct.dcn10_stream_encoder* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i64 (%struct.TYPE_6__*, %struct.bp_encoder_control*)*, i64 (%struct.TYPE_6__*, %struct.bp_encoder_control*)** %49, align 8
  %51 = load %struct.dcn10_stream_encoder*, %struct.dcn10_stream_encoder** %7, align 8
  %52 = getelementptr inbounds %struct.dcn10_stream_encoder, %struct.dcn10_stream_encoder* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = call i64 %50(%struct.TYPE_6__* %54, %struct.bp_encoder_control* %8)
  %56 = load i64, i64* @BP_RESULT_OK, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %40
  br label %77

59:                                               ; preds = %40
  %60 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %5, align 8
  %61 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @PIXEL_ENCODING_RGB, align 8
  %64 = icmp eq i64 %62, %63
  %65 = zext i1 %64 to i32
  %66 = call i32 @ASSERT(i32 %65)
  %67 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %5, align 8
  %68 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @COLOR_DEPTH_888, align 8
  %71 = icmp eq i64 %69, %70
  %72 = zext i1 %71 to i32
  %73 = call i32 @ASSERT(i32 %72)
  %74 = load %struct.dcn10_stream_encoder*, %struct.dcn10_stream_encoder** %7, align 8
  %75 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %5, align 8
  %76 = call i32 @enc1_stream_encoder_set_stream_attribute_helper(%struct.dcn10_stream_encoder* %74, %struct.dc_crtc_timing* %75)
  br label %77

77:                                               ; preds = %59, %58
  ret void
}

declare dso_local %struct.dcn10_stream_encoder* @DCN10STRENC_FROM_STRENC(%struct.stream_encoder*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @enc1_stream_encoder_set_stream_attribute_helper(%struct.dcn10_stream_encoder*, %struct.dc_crtc_timing*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
