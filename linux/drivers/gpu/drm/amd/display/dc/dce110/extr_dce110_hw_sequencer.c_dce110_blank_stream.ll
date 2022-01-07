; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_hw_sequencer.c_dce110_blank_stream.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_hw_sequencer.c_dce110_blank_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pipe_ctx = type { %struct.TYPE_10__, %struct.dc_stream_state* }
%struct.TYPE_10__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 (%struct.TYPE_12__*)* }
%struct.dc_stream_state = type { i32, %struct.dc_link* }
%struct.dc_link = type { %struct.TYPE_8__*, %struct.TYPE_11__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 (%struct.dc_link*, i32)* }
%struct.TYPE_11__ = type { i64 }

@SIGNAL_TYPE_EDP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dce110_blank_stream(%struct.pipe_ctx* %0) #0 {
  %2 = alloca %struct.pipe_ctx*, align 8
  %3 = alloca %struct.dc_stream_state*, align 8
  %4 = alloca %struct.dc_link*, align 8
  store %struct.pipe_ctx* %0, %struct.pipe_ctx** %2, align 8
  %5 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %6 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %5, i32 0, i32 1
  %7 = load %struct.dc_stream_state*, %struct.dc_stream_state** %6, align 8
  store %struct.dc_stream_state* %7, %struct.dc_stream_state** %3, align 8
  %8 = load %struct.dc_stream_state*, %struct.dc_stream_state** %3, align 8
  %9 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %8, i32 0, i32 1
  %10 = load %struct.dc_link*, %struct.dc_link** %9, align 8
  store %struct.dc_link* %10, %struct.dc_link** %4, align 8
  %11 = load %struct.dc_link*, %struct.dc_link** %4, align 8
  %12 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %11, i32 0, i32 1
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %14 = icmp ne %struct.TYPE_11__* %13, null
  br i1 %14, label %15, label %34

15:                                               ; preds = %1
  %16 = load %struct.dc_link*, %struct.dc_link** %4, align 8
  %17 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %16, i32 0, i32 1
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @SIGNAL_TYPE_EDP, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %34

23:                                               ; preds = %15
  %24 = load %struct.dc_link*, %struct.dc_link** %4, align 8
  %25 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %24, i32 0, i32 0
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i32 (%struct.dc_link*, i32)*, i32 (%struct.dc_link*, i32)** %28, align 8
  %30 = load %struct.dc_link*, %struct.dc_link** %4, align 8
  %31 = call i32 %29(%struct.dc_link* %30, i32 0)
  %32 = load %struct.dc_link*, %struct.dc_link** %4, align 8
  %33 = call i32 @dc_link_set_abm_disable(%struct.dc_link* %32)
  br label %34

34:                                               ; preds = %23, %15, %1
  %35 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %36 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %35, i32 0, i32 1
  %37 = load %struct.dc_stream_state*, %struct.dc_stream_state** %36, align 8
  %38 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i64 @dc_is_dp_signal(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %56

42:                                               ; preds = %34
  %43 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %44 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = load i32 (%struct.TYPE_12__*)*, i32 (%struct.TYPE_12__*)** %49, align 8
  %51 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %52 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %53, align 8
  %55 = call i32 %50(%struct.TYPE_12__* %54)
  br label %56

56:                                               ; preds = %42, %34
  ret void
}

declare dso_local i32 @dc_link_set_abm_disable(%struct.dc_link*) #1

declare dso_local i64 @dc_is_dp_signal(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
