; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_hwseq.c_dcn20_enable_stream.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_hwseq.c_dcn20_enable_stream.c"
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
%struct.TYPE_14__ = type { i32 (%struct.pipe_ctx*)*, i32 (%struct.pipe_ctx*)* }
%struct.TYPE_11__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 (%struct.TYPE_11__*, i32, i32)* }
%struct.TYPE_12__ = type { i32 }
%struct.dc_crtc_timing = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pipe_ctx*)* @dcn20_enable_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dcn20_enable_stream(%struct.pipe_ctx* %0) #0 {
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
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 1
  %52 = load i32 (%struct.pipe_ctx*)*, i32 (%struct.pipe_ctx*)** %51, align 8
  %53 = icmp ne i32 (%struct.pipe_ctx*)* %52, null
  br i1 %53, label %54, label %63

54:                                               ; preds = %1
  %55 = load %struct.dc_link*, %struct.dc_link** %5, align 8
  %56 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %55, i32 0, i32 0
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 1
  %60 = load i32 (%struct.pipe_ctx*)*, i32 (%struct.pipe_ctx*)** %59, align 8
  %61 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %62 = call i32 %60(%struct.pipe_ctx* %61)
  br label %63

63:                                               ; preds = %54, %1
  %64 = load %struct.dc_link*, %struct.dc_link** %5, align 8
  %65 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %64, i32 0, i32 0
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 0
  %69 = load i32 (%struct.pipe_ctx*)*, i32 (%struct.pipe_ctx*)** %68, align 8
  %70 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %71 = call i32 %69(%struct.pipe_ctx* %70)
  %72 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %4, align 8
  %73 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %4, align 8
  %76 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %74, %77
  %79 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %4, align 8
  %80 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = add nsw i32 %78, %81
  store i32 %82, i32* %6, align 4
  %83 = load i32, i32* %3, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %63
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* %3, align 4
  %88 = urem i32 %86, %87
  store i32 %88, i32* %7, align 4
  br label %89

89:                                               ; preds = %85, %63
  %90 = load i32, i32* %7, align 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %89
  %93 = load i32, i32* %3, align 4
  store i32 %93, i32* %7, align 4
  br label %94

94:                                               ; preds = %92, %89
  %95 = load %struct.timing_generator*, %struct.timing_generator** %8, align 8
  %96 = getelementptr inbounds %struct.timing_generator, %struct.timing_generator* %95, i32 0, i32 0
  %97 = load %struct.TYPE_16__*, %struct.TYPE_16__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %97, i32 0, i32 0
  %99 = load i32 (%struct.timing_generator*, i32)*, i32 (%struct.timing_generator*, i32)** %98, align 8
  %100 = load %struct.timing_generator*, %struct.timing_generator** %8, align 8
  %101 = load i32, i32* %7, align 4
  %102 = call i32 %99(%struct.timing_generator* %100, i32 %101)
  %103 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %104 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %104, i32 0, i32 1
  %106 = load i32*, i32** %105, align 8
  %107 = icmp ne i32* %106, null
  br i1 %107, label %108, label %131

108:                                              ; preds = %94
  %109 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %110 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %109, i32 0, i32 1
  %111 = load %struct.TYPE_17__*, %struct.TYPE_17__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = call i64 @dc_is_dp_signal(i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %130

116:                                              ; preds = %108
  %117 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %118 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %118, i32 0, i32 0
  %120 = load %struct.TYPE_20__*, %struct.TYPE_20__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %120, i32 0, i32 0
  %122 = load %struct.TYPE_18__*, %struct.TYPE_18__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %122, i32 0, i32 0
  %124 = load i32 (%struct.TYPE_20__*)*, i32 (%struct.TYPE_20__*)** %123, align 8
  %125 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %126 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %126, i32 0, i32 0
  %128 = load %struct.TYPE_20__*, %struct.TYPE_20__** %127, align 8
  %129 = call i32 %124(%struct.TYPE_20__* %128)
  br label %130

130:                                              ; preds = %116, %108
  br label %131

131:                                              ; preds = %130, %94
  ret void
}

declare dso_local i64 @dc_is_dp_signal(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
