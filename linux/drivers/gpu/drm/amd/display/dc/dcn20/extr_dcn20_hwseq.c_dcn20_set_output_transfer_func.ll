; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_hwseq.c_dcn20_set_output_transfer_func.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_hwseq.c_dcn20_set_output_transfer_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pipe_ctx = type { %struct.TYPE_22__*, i32*, %struct.TYPE_20__, %struct.TYPE_15__ }
%struct.TYPE_22__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i64 }
%struct.TYPE_20__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.mpc* }
%struct.mpc = type { %struct.TYPE_12__*, %struct.pwl_params }
%struct.TYPE_12__ = type { i32 (%struct.mpc*, i32, %struct.pwl_params*)*, i32 (%struct.mpc*, i32, i32)* }
%struct.pwl_params = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }
%struct.dc_stream_state = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64, %struct.pwl_params }

@TF_TYPE_HWPWL = common dso_local global i64 0, align 8
@TF_TYPE_DISTRIBUTED_POINTS = common dso_local global i64 0, align 8
@TF_TYPE_PREDEFINED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dcn20_set_output_transfer_func(%struct.pipe_ctx* %0, %struct.dc_stream_state* %1) #0 {
  %3 = alloca %struct.pipe_ctx*, align 8
  %4 = alloca %struct.dc_stream_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mpc*, align 8
  %7 = alloca %struct.pwl_params*, align 8
  store %struct.pipe_ctx* %0, %struct.pipe_ctx** %3, align 8
  store %struct.dc_stream_state* %1, %struct.dc_stream_state** %4, align 8
  %8 = load %struct.pipe_ctx*, %struct.pipe_ctx** %3, align 8
  %9 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %8, i32 0, i32 3
  %10 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %5, align 4
  %14 = load %struct.pipe_ctx*, %struct.pipe_ctx** %3, align 8
  %15 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 0
  %25 = load %struct.mpc*, %struct.mpc** %24, align 8
  store %struct.mpc* %25, %struct.mpc** %6, align 8
  store %struct.pwl_params* null, %struct.pwl_params** %7, align 8
  %26 = load %struct.mpc*, %struct.mpc** %6, align 8
  %27 = getelementptr inbounds %struct.mpc, %struct.mpc* %26, i32 0, i32 0
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 1
  %30 = load i32 (%struct.mpc*, i32, i32)*, i32 (%struct.mpc*, i32, i32)** %29, align 8
  %31 = icmp ne i32 (%struct.mpc*, i32, i32)* %30, null
  br i1 %31, label %32, label %41

32:                                               ; preds = %2
  %33 = load %struct.mpc*, %struct.mpc** %6, align 8
  %34 = getelementptr inbounds %struct.mpc, %struct.mpc* %33, i32 0, i32 0
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 1
  %37 = load i32 (%struct.mpc*, i32, i32)*, i32 (%struct.mpc*, i32, i32)** %36, align 8
  %38 = load %struct.mpc*, %struct.mpc** %6, align 8
  %39 = load i32, i32* %5, align 4
  %40 = call i32 %37(%struct.mpc* %38, i32 %39, i32 1)
  br label %41

41:                                               ; preds = %32, %2
  %42 = load %struct.pipe_ctx*, %struct.pipe_ctx** %3, align 8
  %43 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = icmp eq i32* %44, null
  br i1 %45, label %46, label %104

46:                                               ; preds = %41
  %47 = load %struct.mpc*, %struct.mpc** %6, align 8
  %48 = getelementptr inbounds %struct.mpc, %struct.mpc* %47, i32 0, i32 0
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 0
  %51 = load i32 (%struct.mpc*, i32, %struct.pwl_params*)*, i32 (%struct.mpc*, i32, %struct.pwl_params*)** %50, align 8
  %52 = icmp ne i32 (%struct.mpc*, i32, %struct.pwl_params*)* %51, null
  br i1 %52, label %53, label %104

53:                                               ; preds = %46
  %54 = load %struct.dc_stream_state*, %struct.dc_stream_state** %4, align 8
  %55 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %54, i32 0, i32 0
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %55, align 8
  %57 = icmp ne %struct.TYPE_13__* %56, null
  br i1 %57, label %58, label %104

58:                                               ; preds = %53
  %59 = load %struct.dc_stream_state*, %struct.dc_stream_state** %4, align 8
  %60 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %59, i32 0, i32 0
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @TF_TYPE_HWPWL, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %71

66:                                               ; preds = %58
  %67 = load %struct.dc_stream_state*, %struct.dc_stream_state** %4, align 8
  %68 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %67, i32 0, i32 0
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 1
  store %struct.pwl_params* %70, %struct.pwl_params** %7, align 8
  br label %93

71:                                               ; preds = %58
  %72 = load %struct.pipe_ctx*, %struct.pipe_ctx** %3, align 8
  %73 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %72, i32 0, i32 0
  %74 = load %struct.TYPE_22__*, %struct.TYPE_22__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_21__*, %struct.TYPE_21__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @TF_TYPE_DISTRIBUTED_POINTS, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %92

81:                                               ; preds = %71
  %82 = load %struct.dc_stream_state*, %struct.dc_stream_state** %4, align 8
  %83 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %82, i32 0, i32 0
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %83, align 8
  %85 = load %struct.mpc*, %struct.mpc** %6, align 8
  %86 = getelementptr inbounds %struct.mpc, %struct.mpc* %85, i32 0, i32 1
  %87 = call i64 @cm_helper_translate_curve_to_hw_format(%struct.TYPE_13__* %84, %struct.pwl_params* %86, i32 0)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %81
  %90 = load %struct.mpc*, %struct.mpc** %6, align 8
  %91 = getelementptr inbounds %struct.mpc, %struct.mpc* %90, i32 0, i32 1
  store %struct.pwl_params* %91, %struct.pwl_params** %7, align 8
  br label %92

92:                                               ; preds = %89, %81, %71
  br label %93

93:                                               ; preds = %92, %66
  %94 = load %struct.dc_stream_state*, %struct.dc_stream_state** %4, align 8
  %95 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %94, i32 0, i32 0
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @TF_TYPE_PREDEFINED, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %103

101:                                              ; preds = %93
  %102 = call i32 (...) @BREAK_TO_DEBUGGER()
  br label %103

103:                                              ; preds = %101, %93
  br label %104

104:                                              ; preds = %103, %53, %46, %41
  %105 = load %struct.mpc*, %struct.mpc** %6, align 8
  %106 = getelementptr inbounds %struct.mpc, %struct.mpc* %105, i32 0, i32 0
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 0
  %109 = load i32 (%struct.mpc*, i32, %struct.pwl_params*)*, i32 (%struct.mpc*, i32, %struct.pwl_params*)** %108, align 8
  %110 = load %struct.mpc*, %struct.mpc** %6, align 8
  %111 = load i32, i32* %5, align 4
  %112 = load %struct.pwl_params*, %struct.pwl_params** %7, align 8
  %113 = call i32 %109(%struct.mpc* %110, i32 %111, %struct.pwl_params* %112)
  ret i32 1
}

declare dso_local i64 @cm_helper_translate_curve_to_hw_format(%struct.TYPE_13__*, %struct.pwl_params*, i32) #1

declare dso_local i32 @BREAK_TO_DEBUGGER(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
