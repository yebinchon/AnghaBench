; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_hw_sequencer.c_dce110_disable_stream.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_hw_sequencer.c_dce110_disable_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pipe_ctx = type { %struct.TYPE_14__, %struct.dc_stream_state* }
%struct.TYPE_14__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 (%struct.TYPE_16__*)*, i32 (%struct.TYPE_16__*)*, i32 (%struct.TYPE_16__*)* }
%struct.dc_stream_state = type { i32, %struct.TYPE_10__*, %struct.dc_link* }
%struct.TYPE_10__ = type { %struct.dc* }
%struct.dc = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 (%struct.pipe_ctx*)* }
%struct.dc_link = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 (%struct.TYPE_15__*, i32, i32)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dce110_disable_stream(%struct.pipe_ctx* %0) #0 {
  %2 = alloca %struct.pipe_ctx*, align 8
  %3 = alloca %struct.dc_stream_state*, align 8
  %4 = alloca %struct.dc_link*, align 8
  %5 = alloca %struct.dc*, align 8
  store %struct.pipe_ctx* %0, %struct.pipe_ctx** %2, align 8
  %6 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %7 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %6, i32 0, i32 1
  %8 = load %struct.dc_stream_state*, %struct.dc_stream_state** %7, align 8
  store %struct.dc_stream_state* %8, %struct.dc_stream_state** %3, align 8
  %9 = load %struct.dc_stream_state*, %struct.dc_stream_state** %3, align 8
  %10 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %9, i32 0, i32 2
  %11 = load %struct.dc_link*, %struct.dc_link** %10, align 8
  store %struct.dc_link* %11, %struct.dc_link** %4, align 8
  %12 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %13 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %12, i32 0, i32 1
  %14 = load %struct.dc_stream_state*, %struct.dc_stream_state** %13, align 8
  %15 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %14, i32 0, i32 1
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = load %struct.dc*, %struct.dc** %17, align 8
  store %struct.dc* %18, %struct.dc** %5, align 8
  %19 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %20 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %19, i32 0, i32 1
  %21 = load %struct.dc_stream_state*, %struct.dc_stream_state** %20, align 8
  %22 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i64 @dc_is_hdmi_tmds_signal(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %53

26:                                               ; preds = %1
  %27 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %28 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 2
  %34 = load i32 (%struct.TYPE_16__*)*, i32 (%struct.TYPE_16__*)** %33, align 8
  %35 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %36 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %37, align 8
  %39 = call i32 %34(%struct.TYPE_16__* %38)
  %40 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %41 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 1
  %47 = load i32 (%struct.TYPE_16__*)*, i32 (%struct.TYPE_16__*)** %46, align 8
  %48 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %49 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %50, align 8
  %52 = call i32 %47(%struct.TYPE_16__* %51)
  br label %53

53:                                               ; preds = %26, %1
  %54 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %55 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %54, i32 0, i32 1
  %56 = load %struct.dc_stream_state*, %struct.dc_stream_state** %55, align 8
  %57 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i64 @dc_is_dp_signal(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %75

61:                                               ; preds = %53
  %62 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %63 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 0
  %69 = load i32 (%struct.TYPE_16__*)*, i32 (%struct.TYPE_16__*)** %68, align 8
  %70 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %71 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %72, align 8
  %74 = call i32 %69(%struct.TYPE_16__* %73)
  br label %75

75:                                               ; preds = %61, %53
  %76 = load %struct.dc*, %struct.dc** %5, align 8
  %77 = getelementptr inbounds %struct.dc, %struct.dc* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 0
  %79 = load i32 (%struct.pipe_ctx*)*, i32 (%struct.pipe_ctx*)** %78, align 8
  %80 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %81 = call i32 %79(%struct.pipe_ctx* %80)
  %82 = load %struct.dc_link*, %struct.dc_link** %4, align 8
  %83 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %82, i32 0, i32 0
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 0
  %88 = load i32 (%struct.TYPE_15__*, i32, i32)*, i32 (%struct.TYPE_15__*, i32, i32)** %87, align 8
  %89 = load %struct.dc_link*, %struct.dc_link** %4, align 8
  %90 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %89, i32 0, i32 0
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %90, align 8
  %92 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %93 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i32 %88(%struct.TYPE_15__* %91, i32 %97, i32 0)
  ret void
}

declare dso_local i64 @dc_is_hdmi_tmds_signal(i32) #1

declare dso_local i64 @dc_is_dp_signal(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
