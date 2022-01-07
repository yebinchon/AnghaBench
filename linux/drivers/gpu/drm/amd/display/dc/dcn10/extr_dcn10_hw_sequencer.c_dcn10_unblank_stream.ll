; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hw_sequencer.c_dcn10_unblank_stream.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hw_sequencer.c_dcn10_unblank_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pipe_ctx = type { %struct.TYPE_14__, %struct.dc_stream_state* }
%struct.TYPE_14__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 (%struct.TYPE_18__*, %struct.encoder_unblank_param*)* }
%struct.encoder_unblank_param = type { %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_12__ = type { i64, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.dc_stream_state = type { i32, %struct.TYPE_12__, %struct.dc_link* }
%struct.dc_link = type { %struct.TYPE_17__*, %struct.TYPE_15__* }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32 (%struct.dc_link*, i32)* }
%struct.TYPE_15__ = type { i64 }
%struct.dc_link_settings = type { i32 }

@PIXEL_ENCODING_YCBCR420 = common dso_local global i64 0, align 8
@SIGNAL_TYPE_EDP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pipe_ctx*, %struct.dc_link_settings*)* @dcn10_unblank_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dcn10_unblank_stream(%struct.pipe_ctx* %0, %struct.dc_link_settings* %1) #0 {
  %3 = alloca %struct.pipe_ctx*, align 8
  %4 = alloca %struct.dc_link_settings*, align 8
  %5 = alloca %struct.encoder_unblank_param, align 8
  %6 = alloca %struct.dc_stream_state*, align 8
  %7 = alloca %struct.dc_link*, align 8
  store %struct.pipe_ctx* %0, %struct.pipe_ctx** %3, align 8
  store %struct.dc_link_settings* %1, %struct.dc_link_settings** %4, align 8
  %8 = bitcast %struct.encoder_unblank_param* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %8, i8 0, i64 24, i1 false)
  %9 = load %struct.pipe_ctx*, %struct.pipe_ctx** %3, align 8
  %10 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %9, i32 0, i32 1
  %11 = load %struct.dc_stream_state*, %struct.dc_stream_state** %10, align 8
  store %struct.dc_stream_state* %11, %struct.dc_stream_state** %6, align 8
  %12 = load %struct.dc_stream_state*, %struct.dc_stream_state** %6, align 8
  %13 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %12, i32 0, i32 2
  %14 = load %struct.dc_link*, %struct.dc_link** %13, align 8
  store %struct.dc_link* %14, %struct.dc_link** %7, align 8
  %15 = getelementptr inbounds %struct.encoder_unblank_param, %struct.encoder_unblank_param* %5, i32 0, i32 0
  %16 = load %struct.pipe_ctx*, %struct.pipe_ctx** %3, align 8
  %17 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %16, i32 0, i32 1
  %18 = load %struct.dc_stream_state*, %struct.dc_stream_state** %17, align 8
  %19 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %18, i32 0, i32 1
  %20 = bitcast %struct.TYPE_12__* %15 to i8*
  %21 = bitcast %struct.TYPE_12__* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %20, i8* align 8 %21, i64 16, i1 false)
  %22 = load %struct.dc_link_settings*, %struct.dc_link_settings** %4, align 8
  %23 = getelementptr inbounds %struct.dc_link_settings, %struct.dc_link_settings* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds %struct.encoder_unblank_param, %struct.encoder_unblank_param* %5, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load %struct.pipe_ctx*, %struct.pipe_ctx** %3, align 8
  %28 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %27, i32 0, i32 1
  %29 = load %struct.dc_stream_state*, %struct.dc_stream_state** %28, align 8
  %30 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i64 @dc_is_dp_signal(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %59

34:                                               ; preds = %2
  %35 = getelementptr inbounds %struct.encoder_unblank_param, %struct.encoder_unblank_param* %5, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @PIXEL_ENCODING_YCBCR420, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.encoder_unblank_param, %struct.encoder_unblank_param* %5, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = sdiv i32 %43, 2
  store i32 %44, i32* %42, align 8
  br label %45

45:                                               ; preds = %40, %34
  %46 = load %struct.pipe_ctx*, %struct.pipe_ctx** %3, align 8
  %47 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_18__*, %struct.TYPE_18__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 0
  %53 = load i32 (%struct.TYPE_18__*, %struct.encoder_unblank_param*)*, i32 (%struct.TYPE_18__*, %struct.encoder_unblank_param*)** %52, align 8
  %54 = load %struct.pipe_ctx*, %struct.pipe_ctx** %3, align 8
  %55 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_18__*, %struct.TYPE_18__** %56, align 8
  %58 = call i32 %53(%struct.TYPE_18__* %57, %struct.encoder_unblank_param* %5)
  br label %59

59:                                               ; preds = %45, %2
  %60 = load %struct.dc_link*, %struct.dc_link** %7, align 8
  %61 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %60, i32 0, i32 1
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %61, align 8
  %63 = icmp ne %struct.TYPE_15__* %62, null
  br i1 %63, label %64, label %81

64:                                               ; preds = %59
  %65 = load %struct.dc_link*, %struct.dc_link** %7, align 8
  %66 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %65, i32 0, i32 1
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @SIGNAL_TYPE_EDP, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %81

72:                                               ; preds = %64
  %73 = load %struct.dc_link*, %struct.dc_link** %7, align 8
  %74 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %73, i32 0, i32 0
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %76, i32 0, i32 0
  %78 = load i32 (%struct.dc_link*, i32)*, i32 (%struct.dc_link*, i32)** %77, align 8
  %79 = load %struct.dc_link*, %struct.dc_link** %7, align 8
  %80 = call i32 %78(%struct.dc_link* %79, i32 1)
  br label %81

81:                                               ; preds = %72, %64, %59
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @dc_is_dp_signal(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
