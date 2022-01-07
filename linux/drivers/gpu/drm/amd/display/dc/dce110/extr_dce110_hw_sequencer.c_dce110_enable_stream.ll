; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_hw_sequencer.c_dce110_enable_stream.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_hw_sequencer.c_dce110_enable_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pipe_ctx = type { %struct.TYPE_19__, %struct.TYPE_17__* }
%struct.TYPE_19__ = type { %struct.TYPE_20__*, i32*, %struct.timing_generator* }
%struct.TYPE_20__ = type { %struct.TYPE_18__*, i32 }
%struct.TYPE_18__ = type { i32 (%struct.TYPE_20__*)* }
%struct.timing_generator = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32 (%struct.timing_generator*, i32)* }
%struct.TYPE_17__ = type { i32, %struct.dc_link*, %struct.dc_crtc_timing }
%struct.dc_link = type { %struct.TYPE_15__*, %struct.TYPE_11__*, %struct.TYPE_12__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 (%struct.pipe_ctx*)* }
%struct.TYPE_11__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 (%struct.TYPE_11__*, i32, i32)* }
%struct.TYPE_12__ = type { i32 }
%struct.dc_crtc_timing = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dce110_enable_stream(%struct.pipe_ctx* %0) #0 {
  %2 = alloca %struct.pipe_ctx*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.dc_crtc_timing*, align 8
  %5 = alloca %struct.dc_link*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.timing_generator*, align 8
  store %struct.pipe_ctx* %0, %struct.pipe_ctx** %2, align 8
  %9 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %10 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %9, i32 0, i32 1
  %11 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 1
  %13 = load %struct.dc_link*, %struct.dc_link** %12, align 8
  %14 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %3, align 4
  %17 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %18 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %17, i32 0, i32 1
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %19, i32 0, i32 2
  store %struct.dc_crtc_timing* %20, %struct.dc_crtc_timing** %4, align 8
  %21 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %22 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %21, i32 0, i32 1
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 1
  %25 = load %struct.dc_link*, %struct.dc_link** %24, align 8
  store %struct.dc_link* %25, %struct.dc_link** %5, align 8
  store i32 0, i32* %7, align 4
  %26 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %27 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %27, i32 0, i32 2
  %29 = load %struct.timing_generator*, %struct.timing_generator** %28, align 8
  store %struct.timing_generator* %29, %struct.timing_generator** %8, align 8
  %30 = load %struct.dc_link*, %struct.dc_link** %5, align 8
  %31 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %30, i32 0, i32 1
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 0
  %36 = load i32 (%struct.TYPE_11__*, i32, i32)*, i32 (%struct.TYPE_11__*, i32, i32)** %35, align 8
  %37 = load %struct.dc_link*, %struct.dc_link** %5, align 8
  %38 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %37, i32 0, i32 1
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %38, align 8
  %40 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %41 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_20__*, %struct.TYPE_20__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i32 %36(%struct.TYPE_11__* %39, i32 %45, i32 1)
  %47 = load %struct.dc_link*, %struct.dc_link** %5, align 8
  %48 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %47, i32 0, i32 0
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 0
  %52 = load i32 (%struct.pipe_ctx*)*, i32 (%struct.pipe_ctx*)** %51, align 8
  %53 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %54 = call i32 %52(%struct.pipe_ctx* %53)
  %55 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %4, align 8
  %56 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %4, align 8
  %59 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %57, %60
  %62 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %4, align 8
  %63 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %61, %64
  store i32 %65, i32* %6, align 4
  %66 = load i32, i32* %3, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %1
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* %3, align 4
  %71 = urem i32 %69, %70
  store i32 %71, i32* %7, align 4
  br label %72

72:                                               ; preds = %68, %1
  %73 = load i32, i32* %7, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %72
  %76 = load i32, i32* %3, align 4
  store i32 %76, i32* %7, align 4
  br label %77

77:                                               ; preds = %75, %72
  %78 = load %struct.timing_generator*, %struct.timing_generator** %8, align 8
  %79 = getelementptr inbounds %struct.timing_generator, %struct.timing_generator* %78, i32 0, i32 0
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 0
  %82 = load i32 (%struct.timing_generator*, i32)*, i32 (%struct.timing_generator*, i32)** %81, align 8
  %83 = load %struct.timing_generator*, %struct.timing_generator** %8, align 8
  %84 = load i32, i32* %7, align 4
  %85 = call i32 %82(%struct.timing_generator* %83, i32 %84)
  %86 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %87 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %87, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = icmp ne i32* %89, null
  br i1 %90, label %91, label %114

91:                                               ; preds = %77
  %92 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %93 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %92, i32 0, i32 1
  %94 = load %struct.TYPE_17__*, %struct.TYPE_17__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = call i64 @dc_is_dp_signal(i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %113

99:                                               ; preds = %91
  %100 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %101 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_20__*, %struct.TYPE_20__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_18__*, %struct.TYPE_18__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %105, i32 0, i32 0
  %107 = load i32 (%struct.TYPE_20__*)*, i32 (%struct.TYPE_20__*)** %106, align 8
  %108 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %109 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_20__*, %struct.TYPE_20__** %110, align 8
  %112 = call i32 %107(%struct.TYPE_20__* %111)
  br label %113

113:                                              ; preds = %99, %91
  br label %114

114:                                              ; preds = %113, %77
  ret void
}

declare dso_local i64 @dc_is_dp_signal(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
