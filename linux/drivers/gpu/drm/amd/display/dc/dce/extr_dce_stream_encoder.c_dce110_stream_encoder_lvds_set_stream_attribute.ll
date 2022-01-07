; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_stream_encoder.c_dce110_stream_encoder_lvds_set_stream_attribute.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_stream_encoder.c_dce110_stream_encoder_lvds_set_stream_attribute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stream_encoder = type { i32 }
%struct.dc_crtc_timing = type { i32, i64 }
%struct.dce110_stream_encoder = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 (%struct.TYPE_6__*, %struct.bp_encoder_control*)* }
%struct.bp_encoder_control = type { i32, i32, i32, i32, i32, i32, i32 }

@ENCODER_CONTROL_SETUP = common dso_local global i32 0, align 4
@SIGNAL_TYPE_LVDS = common dso_local global i32 0, align 4
@LANE_COUNT_FOUR = common dso_local global i32 0, align 4
@BP_RESULT_OK = common dso_local global i64 0, align 8
@PIXEL_ENCODING_RGB = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stream_encoder*, %struct.dc_crtc_timing*)* @dce110_stream_encoder_lvds_set_stream_attribute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dce110_stream_encoder_lvds_set_stream_attribute(%struct.stream_encoder* %0, %struct.dc_crtc_timing* %1) #0 {
  %3 = alloca %struct.stream_encoder*, align 8
  %4 = alloca %struct.dc_crtc_timing*, align 8
  %5 = alloca %struct.dce110_stream_encoder*, align 8
  %6 = alloca %struct.bp_encoder_control, align 4
  store %struct.stream_encoder* %0, %struct.stream_encoder** %3, align 8
  store %struct.dc_crtc_timing* %1, %struct.dc_crtc_timing** %4, align 8
  %7 = load %struct.stream_encoder*, %struct.stream_encoder** %3, align 8
  %8 = call %struct.dce110_stream_encoder* @DCE110STRENC_FROM_STRENC(%struct.stream_encoder* %7)
  store %struct.dce110_stream_encoder* %8, %struct.dce110_stream_encoder** %5, align 8
  %9 = bitcast %struct.bp_encoder_control* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %9, i8 0, i64 28, i1 false)
  %10 = load i32, i32* @ENCODER_CONTROL_SETUP, align 4
  %11 = getelementptr inbounds %struct.bp_encoder_control, %struct.bp_encoder_control* %6, i32 0, i32 5
  store i32 %10, i32* %11, align 4
  %12 = load %struct.dce110_stream_encoder*, %struct.dce110_stream_encoder** %5, align 8
  %13 = getelementptr inbounds %struct.dce110_stream_encoder, %struct.dce110_stream_encoder* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = getelementptr inbounds %struct.bp_encoder_control, %struct.bp_encoder_control* %6, i32 0, i32 4
  store i32 %15, i32* %16, align 4
  %17 = load i32, i32* @SIGNAL_TYPE_LVDS, align 4
  %18 = getelementptr inbounds %struct.bp_encoder_control, %struct.bp_encoder_control* %6, i32 0, i32 3
  store i32 %17, i32* %18, align 4
  %19 = getelementptr inbounds %struct.bp_encoder_control, %struct.bp_encoder_control* %6, i32 0, i32 0
  store i32 0, i32* %19, align 4
  %20 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %4, align 8
  %21 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = sdiv i32 %22, 10
  %24 = getelementptr inbounds %struct.bp_encoder_control, %struct.bp_encoder_control* %6, i32 0, i32 1
  store i32 %23, i32* %24, align 4
  %25 = load i32, i32* @LANE_COUNT_FOUR, align 4
  %26 = getelementptr inbounds %struct.bp_encoder_control, %struct.bp_encoder_control* %6, i32 0, i32 2
  store i32 %25, i32* %26, align 4
  %27 = load %struct.dce110_stream_encoder*, %struct.dce110_stream_encoder** %5, align 8
  %28 = getelementptr inbounds %struct.dce110_stream_encoder, %struct.dce110_stream_encoder* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i64 (%struct.TYPE_6__*, %struct.bp_encoder_control*)*, i64 (%struct.TYPE_6__*, %struct.bp_encoder_control*)** %33, align 8
  %35 = load %struct.dce110_stream_encoder*, %struct.dce110_stream_encoder** %5, align 8
  %36 = getelementptr inbounds %struct.dce110_stream_encoder, %struct.dce110_stream_encoder* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = call i64 %34(%struct.TYPE_6__* %38, %struct.bp_encoder_control* %6)
  %40 = load i64, i64* @BP_RESULT_OK, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %2
  br label %51

43:                                               ; preds = %2
  %44 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %4, align 8
  %45 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @PIXEL_ENCODING_RGB, align 8
  %48 = icmp eq i64 %46, %47
  %49 = zext i1 %48 to i32
  %50 = call i32 @ASSERT(i32 %49)
  br label %51

51:                                               ; preds = %43, %42
  ret void
}

declare dso_local %struct.dce110_stream_encoder* @DCE110STRENC_FROM_STRENC(%struct.stream_encoder*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
