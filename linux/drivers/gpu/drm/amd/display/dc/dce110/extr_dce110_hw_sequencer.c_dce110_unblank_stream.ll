; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_hw_sequencer.c_dce110_unblank_stream.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_hw_sequencer.c_dce110_unblank_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pipe_ctx = type { %struct.TYPE_12__, %struct.dc_stream_state* }
%struct.TYPE_12__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 (%struct.TYPE_16__*, %struct.encoder_unblank_param*)* }
%struct.encoder_unblank_param = type { %struct.TYPE_10__, i32, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.dc_stream_state = type { i32, i32, %struct.dc_link* }
%struct.dc_link = type { %struct.TYPE_15__*, %struct.TYPE_13__* }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 (%struct.dc_link*, i32)* }
%struct.TYPE_13__ = type { i64 }
%struct.dc_link_settings = type { i32 }

@SIGNAL_TYPE_EDP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dce110_unblank_stream(%struct.pipe_ctx* %0, %struct.dc_link_settings* %1) #0 {
  %3 = alloca %struct.pipe_ctx*, align 8
  %4 = alloca %struct.dc_link_settings*, align 8
  %5 = alloca %struct.encoder_unblank_param, align 4
  %6 = alloca %struct.dc_stream_state*, align 8
  %7 = alloca %struct.dc_link*, align 8
  store %struct.pipe_ctx* %0, %struct.pipe_ctx** %3, align 8
  store %struct.dc_link_settings* %1, %struct.dc_link_settings** %4, align 8
  %8 = bitcast %struct.encoder_unblank_param* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %8, i8 0, i64 12, i1 false)
  %9 = load %struct.pipe_ctx*, %struct.pipe_ctx** %3, align 8
  %10 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %9, i32 0, i32 1
  %11 = load %struct.dc_stream_state*, %struct.dc_stream_state** %10, align 8
  store %struct.dc_stream_state* %11, %struct.dc_stream_state** %6, align 8
  %12 = load %struct.dc_stream_state*, %struct.dc_stream_state** %6, align 8
  %13 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %12, i32 0, i32 2
  %14 = load %struct.dc_link*, %struct.dc_link** %13, align 8
  store %struct.dc_link* %14, %struct.dc_link** %7, align 8
  %15 = load %struct.pipe_ctx*, %struct.pipe_ctx** %3, align 8
  %16 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %15, i32 0, i32 1
  %17 = load %struct.dc_stream_state*, %struct.dc_stream_state** %16, align 8
  %18 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds %struct.encoder_unblank_param, %struct.encoder_unblank_param* %5, i32 0, i32 1
  store i32 %19, i32* %20, align 4
  %21 = load %struct.dc_link_settings*, %struct.dc_link_settings** %4, align 8
  %22 = getelementptr inbounds %struct.dc_link_settings, %struct.dc_link_settings* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds %struct.encoder_unblank_param, %struct.encoder_unblank_param* %5, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load %struct.pipe_ctx*, %struct.pipe_ctx** %3, align 8
  %27 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %26, i32 0, i32 1
  %28 = load %struct.dc_stream_state*, %struct.dc_stream_state** %27, align 8
  %29 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i64 @dc_is_dp_signal(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %47

33:                                               ; preds = %2
  %34 = load %struct.pipe_ctx*, %struct.pipe_ctx** %3, align 8
  %35 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 0
  %41 = load i32 (%struct.TYPE_16__*, %struct.encoder_unblank_param*)*, i32 (%struct.TYPE_16__*, %struct.encoder_unblank_param*)** %40, align 8
  %42 = load %struct.pipe_ctx*, %struct.pipe_ctx** %3, align 8
  %43 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %44, align 8
  %46 = call i32 %41(%struct.TYPE_16__* %45, %struct.encoder_unblank_param* %5)
  br label %47

47:                                               ; preds = %33, %2
  %48 = load %struct.dc_link*, %struct.dc_link** %7, align 8
  %49 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %48, i32 0, i32 1
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %49, align 8
  %51 = icmp ne %struct.TYPE_13__* %50, null
  br i1 %51, label %52, label %69

52:                                               ; preds = %47
  %53 = load %struct.dc_link*, %struct.dc_link** %7, align 8
  %54 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %53, i32 0, i32 1
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @SIGNAL_TYPE_EDP, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %69

60:                                               ; preds = %52
  %61 = load %struct.dc_link*, %struct.dc_link** %7, align 8
  %62 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %61, i32 0, i32 0
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 0
  %66 = load i32 (%struct.dc_link*, i32)*, i32 (%struct.dc_link*, i32)** %65, align 8
  %67 = load %struct.dc_link*, %struct.dc_link** %7, align 8
  %68 = call i32 %66(%struct.dc_link* %67, i32 1)
  br label %69

69:                                               ; preds = %60, %52, %47
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @dc_is_dp_signal(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
