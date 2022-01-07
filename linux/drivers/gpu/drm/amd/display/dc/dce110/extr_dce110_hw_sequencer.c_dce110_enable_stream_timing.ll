; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_hw_sequencer.c_dce110_enable_stream_timing.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_hw_sequencer.c_dce110_enable_stream_timing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pipe_ctx = type { i64, %struct.TYPE_15__, %struct.dc_stream_state*, i32, %struct.TYPE_17__* }
%struct.TYPE_15__ = type { %struct.TYPE_16__*, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 (%struct.TYPE_16__*)*, i32 (%struct.TYPE_16__*, i32*, i32, i32, i32, i32, i32, i32)*, i32 (%struct.TYPE_16__*, i32)*, i32 (%struct.TYPE_16__*, %struct.tg_color*)* }
%struct.tg_color = type { i32 }
%struct.dc_stream_state = type { i32, i32, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 (%struct.TYPE_17__*, i32*, i32*)* }
%struct.dc_state = type { i32 }
%struct.dc = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.pipe_ctx* }

@DC_ERROR_UNEXPECTED = common dso_local global i32 0, align 4
@DC_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pipe_ctx*, %struct.dc_state*, %struct.dc*)* @dce110_enable_stream_timing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dce110_enable_stream_timing(%struct.pipe_ctx* %0, %struct.dc_state* %1, %struct.dc* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pipe_ctx*, align 8
  %6 = alloca %struct.dc_state*, align 8
  %7 = alloca %struct.dc*, align 8
  %8 = alloca %struct.dc_stream_state*, align 8
  %9 = alloca %struct.pipe_ctx*, align 8
  %10 = alloca %struct.tg_color, align 4
  store %struct.pipe_ctx* %0, %struct.pipe_ctx** %5, align 8
  store %struct.dc_state* %1, %struct.dc_state** %6, align 8
  store %struct.dc* %2, %struct.dc** %7, align 8
  %11 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %12 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %11, i32 0, i32 2
  %13 = load %struct.dc_stream_state*, %struct.dc_stream_state** %12, align 8
  store %struct.dc_stream_state* %13, %struct.dc_stream_state** %8, align 8
  %14 = load %struct.dc*, %struct.dc** %7, align 8
  %15 = getelementptr inbounds %struct.dc, %struct.dc* %14, i32 0, i32 0
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %19 = load %struct.pipe_ctx*, %struct.pipe_ctx** %18, align 8
  %20 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %21 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %19, i64 %22
  store %struct.pipe_ctx* %23, %struct.pipe_ctx** %9, align 8
  %24 = bitcast %struct.tg_color* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %24, i8 0, i64 4, i1 false)
  %25 = load %struct.pipe_ctx*, %struct.pipe_ctx** %9, align 8
  %26 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %25, i32 0, i32 2
  %27 = load %struct.dc_stream_state*, %struct.dc_stream_state** %26, align 8
  %28 = icmp ne %struct.dc_stream_state* %27, null
  br i1 %28, label %102, label %29

29:                                               ; preds = %3
  %30 = load %struct.dc*, %struct.dc** %7, align 8
  %31 = load %struct.dc_stream_state*, %struct.dc_stream_state** %8, align 8
  %32 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @color_space_to_black_color(%struct.dc* %30, i32 %33, %struct.tg_color* %10)
  %35 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %36 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 3
  %42 = load i32 (%struct.TYPE_16__*, %struct.tg_color*)*, i32 (%struct.TYPE_16__*, %struct.tg_color*)** %41, align 8
  %43 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %44 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %45, align 8
  %47 = call i32 %42(%struct.TYPE_16__* %46, %struct.tg_color* %10)
  %48 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %49 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 2
  %55 = load i32 (%struct.TYPE_16__*, i32)*, i32 (%struct.TYPE_16__*, i32)** %54, align 8
  %56 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %57 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %58, align 8
  %60 = call i32 %55(%struct.TYPE_16__* %59, i32 1)
  %61 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %62 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %61, i32 0, i32 4
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 0
  %67 = load i32 (%struct.TYPE_17__*, i32*, i32*)*, i32 (%struct.TYPE_17__*, i32*, i32*)** %66, align 8
  %68 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %69 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %68, i32 0, i32 4
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %69, align 8
  %71 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %72 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 1
  %74 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %75 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %74, i32 0, i32 3
  %76 = call i32 %67(%struct.TYPE_17__* %70, i32* %73, i32* %75)
  %77 = icmp eq i32 0, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %29
  %79 = call i32 (...) @BREAK_TO_DEBUGGER()
  %80 = load i32, i32* @DC_ERROR_UNEXPECTED, align 4
  store i32 %80, i32* %4, align 4
  br label %128

81:                                               ; preds = %29
  %82 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %83 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 1
  %89 = load i32 (%struct.TYPE_16__*, i32*, i32, i32, i32, i32, i32, i32)*, i32 (%struct.TYPE_16__*, i32*, i32, i32, i32, i32, i32, i32)** %88, align 8
  %90 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %91 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %92, align 8
  %94 = load %struct.dc_stream_state*, %struct.dc_stream_state** %8, align 8
  %95 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %94, i32 0, i32 1
  %96 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %97 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %96, i32 0, i32 2
  %98 = load %struct.dc_stream_state*, %struct.dc_stream_state** %97, align 8
  %99 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 %89(%struct.TYPE_16__* %93, i32* %95, i32 0, i32 0, i32 0, i32 0, i32 %100, i32 1)
  br label %102

102:                                              ; preds = %81, %3
  %103 = load %struct.pipe_ctx*, %struct.pipe_ctx** %9, align 8
  %104 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %103, i32 0, i32 2
  %105 = load %struct.dc_stream_state*, %struct.dc_stream_state** %104, align 8
  %106 = icmp ne %struct.dc_stream_state* %105, null
  br i1 %106, label %126, label %107

107:                                              ; preds = %102
  %108 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %109 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_16__*, %struct.TYPE_16__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i32 0, i32 0
  %115 = load i32 (%struct.TYPE_16__*)*, i32 (%struct.TYPE_16__*)** %114, align 8
  %116 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %117 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %117, i32 0, i32 0
  %119 = load %struct.TYPE_16__*, %struct.TYPE_16__** %118, align 8
  %120 = call i32 %115(%struct.TYPE_16__* %119)
  %121 = icmp eq i32 0, %120
  br i1 %121, label %122, label %125

122:                                              ; preds = %107
  %123 = call i32 (...) @BREAK_TO_DEBUGGER()
  %124 = load i32, i32* @DC_ERROR_UNEXPECTED, align 4
  store i32 %124, i32* %4, align 4
  br label %128

125:                                              ; preds = %107
  br label %126

126:                                              ; preds = %125, %102
  %127 = load i32, i32* @DC_OK, align 4
  store i32 %127, i32* %4, align 4
  br label %128

128:                                              ; preds = %126, %122, %78
  %129 = load i32, i32* %4, align 4
  ret i32 %129
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @color_space_to_black_color(%struct.dc*, i32, %struct.tg_color*) #2

declare dso_local i32 @BREAK_TO_DEBUGGER(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
