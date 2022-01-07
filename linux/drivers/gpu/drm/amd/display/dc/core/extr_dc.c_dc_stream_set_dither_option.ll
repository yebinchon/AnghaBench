; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc.c_dc_stream_set_dither_option.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc.c_dc_stream_set_dither_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_stream_state = type { i32, %struct.bit_depth_reduction_params, %struct.dc_link* }
%struct.bit_depth_reduction_params = type { i32 }
%struct.dc_link = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.pipe_ctx* }
%struct.pipe_ctx = type { %struct.TYPE_22__, %struct.TYPE_20__, %struct.dc_stream_state* }
%struct.TYPE_22__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32 (%struct.TYPE_12__*, %struct.bit_depth_reduction_params*)* }
%struct.TYPE_20__ = type { %struct.TYPE_19__, %struct.TYPE_13__* }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32 (%struct.TYPE_13__*, i32, %struct.bit_depth_reduction_params*)* }

@MAX_PIPES = common dso_local global i32 0, align 4
@DITHER_OPTION_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dc_stream_set_dither_option(%struct.dc_stream_state* %0, i32 %1) #0 {
  %3 = alloca %struct.dc_stream_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bit_depth_reduction_params, align 4
  %6 = alloca %struct.dc_link*, align 8
  %7 = alloca %struct.pipe_ctx*, align 8
  %8 = alloca i32, align 4
  store %struct.dc_stream_state* %0, %struct.dc_stream_state** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.dc_stream_state*, %struct.dc_stream_state** %3, align 8
  %10 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %9, i32 0, i32 2
  %11 = load %struct.dc_link*, %struct.dc_link** %10, align 8
  store %struct.dc_link* %11, %struct.dc_link** %6, align 8
  store %struct.pipe_ctx* null, %struct.pipe_ctx** %7, align 8
  store i32 0, i32* %8, align 4
  br label %12

12:                                               ; preds = %45, %2
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* @MAX_PIPES, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %48

16:                                               ; preds = %12
  %17 = load %struct.dc_link*, %struct.dc_link** %6, align 8
  %18 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %17, i32 0, i32 0
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 0
  %24 = load %struct.pipe_ctx*, %struct.pipe_ctx** %23, align 8
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %24, i64 %26
  %28 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %27, i32 0, i32 2
  %29 = load %struct.dc_stream_state*, %struct.dc_stream_state** %28, align 8
  %30 = load %struct.dc_stream_state*, %struct.dc_stream_state** %3, align 8
  %31 = icmp eq %struct.dc_stream_state* %29, %30
  br i1 %31, label %32, label %44

32:                                               ; preds = %16
  %33 = load %struct.dc_link*, %struct.dc_link** %6, align 8
  %34 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %33, i32 0, i32 0
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 0
  %40 = load %struct.pipe_ctx*, %struct.pipe_ctx** %39, align 8
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %40, i64 %42
  store %struct.pipe_ctx* %43, %struct.pipe_ctx** %7, align 8
  br label %48

44:                                               ; preds = %16
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %8, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %8, align 4
  br label %12

48:                                               ; preds = %32, %12
  %49 = load %struct.pipe_ctx*, %struct.pipe_ctx** %7, align 8
  %50 = icmp ne %struct.pipe_ctx* %49, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %48
  br label %119

52:                                               ; preds = %48
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* @DITHER_OPTION_MAX, align 4
  %55 = icmp ugt i32 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  br label %119

57:                                               ; preds = %52
  %58 = load i32, i32* %4, align 4
  %59 = load %struct.dc_stream_state*, %struct.dc_stream_state** %3, align 8
  %60 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  %61 = call i32 @memset(%struct.bit_depth_reduction_params* %5, i32 0, i32 4)
  %62 = load %struct.dc_stream_state*, %struct.dc_stream_state** %3, align 8
  %63 = call i32 @resource_build_bit_depth_reduction_params(%struct.dc_stream_state* %62, %struct.bit_depth_reduction_params* %5)
  %64 = load %struct.dc_stream_state*, %struct.dc_stream_state** %3, align 8
  %65 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %64, i32 0, i32 1
  %66 = bitcast %struct.bit_depth_reduction_params* %65 to i8*
  %67 = bitcast %struct.bit_depth_reduction_params* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %66, i8* align 4 %67, i64 4, i1 false)
  %68 = load %struct.pipe_ctx*, %struct.pipe_ctx** %7, align 8
  %69 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %70, align 8
  %72 = icmp ne %struct.TYPE_13__* %71, null
  br i1 %72, label %73, label %105

73:                                               ; preds = %57
  %74 = load %struct.pipe_ctx*, %struct.pipe_ctx** %7, align 8
  %75 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %75, i32 0, i32 1
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_17__*, %struct.TYPE_17__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %79, i32 0, i32 0
  %81 = load i32 (%struct.TYPE_13__*, i32, %struct.bit_depth_reduction_params*)*, i32 (%struct.TYPE_13__*, i32, %struct.bit_depth_reduction_params*)** %80, align 8
  %82 = icmp ne i32 (%struct.TYPE_13__*, i32, %struct.bit_depth_reduction_params*)* %81, null
  br i1 %82, label %83, label %105

83:                                               ; preds = %73
  %84 = load %struct.pipe_ctx*, %struct.pipe_ctx** %7, align 8
  %85 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %85, i32 0, i32 1
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_17__*, %struct.TYPE_17__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %89, i32 0, i32 0
  %91 = load i32 (%struct.TYPE_13__*, i32, %struct.bit_depth_reduction_params*)*, i32 (%struct.TYPE_13__*, i32, %struct.bit_depth_reduction_params*)** %90, align 8
  %92 = load %struct.pipe_ctx*, %struct.pipe_ctx** %7, align 8
  %93 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %93, i32 0, i32 1
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %94, align 8
  %96 = load %struct.pipe_ctx*, %struct.pipe_ctx** %7, align 8
  %97 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.dc_stream_state*, %struct.dc_stream_state** %3, align 8
  %103 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %102, i32 0, i32 1
  %104 = call i32 %91(%struct.TYPE_13__* %95, i32 %101, %struct.bit_depth_reduction_params* %103)
  br label %105

105:                                              ; preds = %83, %73, %57
  %106 = load %struct.pipe_ctx*, %struct.pipe_ctx** %7, align 8
  %107 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_21__*, %struct.TYPE_21__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %111, i32 0, i32 0
  %113 = load i32 (%struct.TYPE_12__*, %struct.bit_depth_reduction_params*)*, i32 (%struct.TYPE_12__*, %struct.bit_depth_reduction_params*)** %112, align 8
  %114 = load %struct.pipe_ctx*, %struct.pipe_ctx** %7, align 8
  %115 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %115, i32 0, i32 0
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %116, align 8
  %118 = call i32 %113(%struct.TYPE_12__* %117, %struct.bit_depth_reduction_params* %5)
  br label %119

119:                                              ; preds = %105, %56, %51
  ret void
}

declare dso_local i32 @memset(%struct.bit_depth_reduction_params*, i32, i32) #1

declare dso_local i32 @resource_build_bit_depth_reduction_params(%struct.dc_stream_state*, %struct.bit_depth_reduction_params*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
