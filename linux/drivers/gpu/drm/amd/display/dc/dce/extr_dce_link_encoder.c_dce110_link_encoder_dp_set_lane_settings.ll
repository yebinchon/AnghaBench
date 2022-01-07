; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_link_encoder.c_dce110_link_encoder_dp_set_lane_settings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_link_encoder.c_dce110_link_encoder_dp_set_lane_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.link_encoder = type { i32 }
%struct.link_training_settings = type { %struct.TYPE_10__*, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i64, i32 }
%struct.dce110_link_encoder = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32 }
%union.dpcd_training_lane_set = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.bp_transmitter_control = type { i64, i32, i64, i32, i32, i32, i32, i32, i32 }

@__const.dce110_link_encoder_dp_set_lane_settings.training_lane_set = private unnamed_addr constant { i32, [8 x i8] } { i32 0, [8 x i8] undef }, align 4
@TRANSMITTER_CONTROL_SET_VOLTAGE_AND_PREEMPASIS = common dso_local global i32 0, align 4
@LINK_RATE_REF_FREQ_IN_KHZ = common dso_local global i32 0, align 4
@LINK_RATE_HIGH2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dce110_link_encoder_dp_set_lane_settings(%struct.link_encoder* %0, %struct.link_training_settings* %1) #0 {
  %3 = alloca %struct.link_encoder*, align 8
  %4 = alloca %struct.link_training_settings*, align 8
  %5 = alloca %struct.dce110_link_encoder*, align 8
  %6 = alloca %union.dpcd_training_lane_set, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.bp_transmitter_control, align 8
  store %struct.link_encoder* %0, %struct.link_encoder** %3, align 8
  store %struct.link_training_settings* %1, %struct.link_training_settings** %4, align 8
  %9 = load %struct.link_encoder*, %struct.link_encoder** %3, align 8
  %10 = call %struct.dce110_link_encoder* @TO_DCE110_LINK_ENC(%struct.link_encoder* %9)
  store %struct.dce110_link_encoder* %10, %struct.dce110_link_encoder** %5, align 8
  %11 = bitcast %union.dpcd_training_lane_set* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %11, i8* align 4 bitcast ({ i32, [8 x i8] }* @__const.dce110_link_encoder_dp_set_lane_settings.training_lane_set to i8*), i64 12, i1 false)
  store i64 0, i64* %7, align 8
  %12 = bitcast %struct.bp_transmitter_control* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 48, i1 false)
  %13 = load %struct.link_training_settings*, %struct.link_training_settings** %4, align 8
  %14 = icmp ne %struct.link_training_settings* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %2
  %16 = call i32 (...) @BREAK_TO_DEBUGGER()
  br label %100

17:                                               ; preds = %2
  %18 = load i32, i32* @TRANSMITTER_CONTROL_SET_VOLTAGE_AND_PREEMPASIS, align 4
  %19 = getelementptr inbounds %struct.bp_transmitter_control, %struct.bp_transmitter_control* %8, i32 0, i32 7
  store i32 %18, i32* %19, align 8
  %20 = load %struct.dce110_link_encoder*, %struct.dce110_link_encoder** %5, align 8
  %21 = getelementptr inbounds %struct.dce110_link_encoder, %struct.dce110_link_encoder* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds %struct.bp_transmitter_control, %struct.bp_transmitter_control* %8, i32 0, i32 6
  store i32 %23, i32* %24, align 4
  %25 = load %struct.dce110_link_encoder*, %struct.dce110_link_encoder** %5, align 8
  %26 = getelementptr inbounds %struct.dce110_link_encoder, %struct.dce110_link_encoder* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds %struct.bp_transmitter_control, %struct.bp_transmitter_control* %8, i32 0, i32 5
  store i32 %28, i32* %29, align 8
  %30 = load %struct.link_training_settings*, %struct.link_training_settings** %4, align 8
  %31 = getelementptr inbounds %struct.link_training_settings, %struct.link_training_settings* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds %struct.bp_transmitter_control, %struct.bp_transmitter_control* %8, i32 0, i32 0
  store i64 %33, i64* %34, align 8
  %35 = load %struct.dce110_link_encoder*, %struct.dce110_link_encoder** %5, align 8
  %36 = getelementptr inbounds %struct.dce110_link_encoder, %struct.dce110_link_encoder* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds %struct.bp_transmitter_control, %struct.bp_transmitter_control* %8, i32 0, i32 4
  store i32 %38, i32* %39, align 4
  %40 = load %struct.link_training_settings*, %struct.link_training_settings** %4, align 8
  %41 = getelementptr inbounds %struct.link_training_settings, %struct.link_training_settings* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @LINK_RATE_REF_FREQ_IN_KHZ, align 4
  %45 = mul nsw i32 %43, %44
  %46 = getelementptr inbounds %struct.bp_transmitter_control, %struct.bp_transmitter_control* %8, i32 0, i32 1
  store i32 %45, i32* %46, align 8
  store i64 0, i64* %7, align 8
  br label %47

47:                                               ; preds = %97, %17
  %48 = load i64, i64* %7, align 8
  %49 = load %struct.link_training_settings*, %struct.link_training_settings** %4, align 8
  %50 = getelementptr inbounds %struct.link_training_settings, %struct.link_training_settings* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ult i64 %48, %52
  br i1 %53, label %54, label %100

54:                                               ; preds = %47
  %55 = load %struct.link_training_settings*, %struct.link_training_settings** %4, align 8
  %56 = getelementptr inbounds %struct.link_training_settings, %struct.link_training_settings* %55, i32 0, i32 0
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %56, align 8
  %58 = load i64, i64* %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = bitcast %union.dpcd_training_lane_set* %6 to %struct.TYPE_9__*
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 4
  %64 = load %struct.link_training_settings*, %struct.link_training_settings** %4, align 8
  %65 = getelementptr inbounds %struct.link_training_settings, %struct.link_training_settings* %64, i32 0, i32 0
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %65, align 8
  %67 = load i64, i64* %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = bitcast %union.dpcd_training_lane_set* %6 to %struct.TYPE_9__*
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  %73 = load %struct.link_training_settings*, %struct.link_training_settings** %4, align 8
  %74 = getelementptr inbounds %struct.link_training_settings, %struct.link_training_settings* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @LINK_RATE_HIGH2, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %89

79:                                               ; preds = %54
  %80 = load %struct.link_training_settings*, %struct.link_training_settings** %4, align 8
  %81 = getelementptr inbounds %struct.link_training_settings, %struct.link_training_settings* %80, i32 0, i32 0
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %81, align 8
  %83 = load i64, i64* %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = bitcast %union.dpcd_training_lane_set* %6 to %struct.TYPE_9__*
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 4
  br label %89

89:                                               ; preds = %79, %54
  %90 = load i64, i64* %7, align 8
  %91 = getelementptr inbounds %struct.bp_transmitter_control, %struct.bp_transmitter_control* %8, i32 0, i32 2
  store i64 %90, i64* %91, align 8
  %92 = bitcast %union.dpcd_training_lane_set* %6 to i32*
  %93 = load i32, i32* %92, align 4
  %94 = getelementptr inbounds %struct.bp_transmitter_control, %struct.bp_transmitter_control* %8, i32 0, i32 3
  store i32 %93, i32* %94, align 8
  %95 = load %struct.dce110_link_encoder*, %struct.dce110_link_encoder** %5, align 8
  %96 = call i32 @link_transmitter_control(%struct.dce110_link_encoder* %95, %struct.bp_transmitter_control* %8)
  br label %97

97:                                               ; preds = %89
  %98 = load i64, i64* %7, align 8
  %99 = add i64 %98, 1
  store i64 %99, i64* %7, align 8
  br label %47

100:                                              ; preds = %15, %47
  ret void
}

declare dso_local %struct.dce110_link_encoder* @TO_DCE110_LINK_ENC(%struct.link_encoder*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @BREAK_TO_DEBUGGER(...) #1

declare dso_local i32 @link_transmitter_control(%struct.dce110_link_encoder*, %struct.bp_transmitter_control*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
