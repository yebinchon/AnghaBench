; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hw_sequencer.c_dcn10_set_output_transfer_func.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hw_sequencer.c_dcn10_set_output_transfer_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pipe_ctx = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.dpp* }
%struct.dpp = type { %struct.TYPE_11__, %struct.TYPE_10__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 (%struct.dpp*, %struct.TYPE_11__*, i32)* }
%struct.dc_stream_state = type { %struct.TYPE_12__*, i32* }
%struct.TYPE_12__ = type { i64, i64 }

@GAMMA_HW_POINTS_NUM = common dso_local global i32 0, align 4
@TF_TYPE_PREDEFINED = common dso_local global i64 0, align 8
@TRANSFER_FUNCTION_SRGB = common dso_local global i64 0, align 8
@OPP_REGAMMA_SRGB = common dso_local global i32 0, align 4
@OPP_REGAMMA_USER = common dso_local global i32 0, align 4
@OPP_REGAMMA_BYPASS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pipe_ctx*, %struct.dc_stream_state*)* @dcn10_set_output_transfer_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dcn10_set_output_transfer_func(%struct.pipe_ctx* %0, %struct.dc_stream_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pipe_ctx*, align 8
  %5 = alloca %struct.dc_stream_state*, align 8
  %6 = alloca %struct.dpp*, align 8
  store %struct.pipe_ctx* %0, %struct.pipe_ctx** %4, align 8
  store %struct.dc_stream_state* %1, %struct.dc_stream_state** %5, align 8
  %7 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %8 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %10 = load %struct.dpp*, %struct.dpp** %9, align 8
  store %struct.dpp* %10, %struct.dpp** %6, align 8
  %11 = load %struct.dpp*, %struct.dpp** %6, align 8
  %12 = icmp eq %struct.dpp* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %103

14:                                               ; preds = %2
  %15 = load i32, i32* @GAMMA_HW_POINTS_NUM, align 4
  %16 = load %struct.dpp*, %struct.dpp** %6, align 8
  %17 = getelementptr inbounds %struct.dpp, %struct.dpp* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  store i32 %15, i32* %18, align 8
  %19 = load %struct.dc_stream_state*, %struct.dc_stream_state** %5, align 8
  %20 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %19, i32 0, i32 0
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %22 = icmp ne %struct.TYPE_12__* %21, null
  br i1 %22, label %23, label %48

23:                                               ; preds = %14
  %24 = load %struct.dc_stream_state*, %struct.dc_stream_state** %5, align 8
  %25 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %24, i32 0, i32 0
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @TF_TYPE_PREDEFINED, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %48

31:                                               ; preds = %23
  %32 = load %struct.dc_stream_state*, %struct.dc_stream_state** %5, align 8
  %33 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %32, i32 0, i32 0
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @TRANSFER_FUNCTION_SRGB, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %48

39:                                               ; preds = %31
  %40 = load %struct.dpp*, %struct.dpp** %6, align 8
  %41 = getelementptr inbounds %struct.dpp, %struct.dpp* %40, i32 0, i32 1
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = load i32 (%struct.dpp*, %struct.TYPE_11__*, i32)*, i32 (%struct.dpp*, %struct.TYPE_11__*, i32)** %43, align 8
  %45 = load %struct.dpp*, %struct.dpp** %6, align 8
  %46 = load i32, i32* @OPP_REGAMMA_SRGB, align 4
  %47 = call i32 %44(%struct.dpp* %45, %struct.TYPE_11__* null, i32 %46)
  br label %77

48:                                               ; preds = %31, %23, %14
  %49 = load %struct.dc_stream_state*, %struct.dc_stream_state** %5, align 8
  %50 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %49, i32 0, i32 0
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %50, align 8
  %52 = load %struct.dpp*, %struct.dpp** %6, align 8
  %53 = getelementptr inbounds %struct.dpp, %struct.dpp* %52, i32 0, i32 0
  %54 = call i64 @cm_helper_translate_curve_to_hw_format(%struct.TYPE_12__* %51, %struct.TYPE_11__* %53, i32 0)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %67

56:                                               ; preds = %48
  %57 = load %struct.dpp*, %struct.dpp** %6, align 8
  %58 = getelementptr inbounds %struct.dpp, %struct.dpp* %57, i32 0, i32 1
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = load i32 (%struct.dpp*, %struct.TYPE_11__*, i32)*, i32 (%struct.dpp*, %struct.TYPE_11__*, i32)** %60, align 8
  %62 = load %struct.dpp*, %struct.dpp** %6, align 8
  %63 = load %struct.dpp*, %struct.dpp** %6, align 8
  %64 = getelementptr inbounds %struct.dpp, %struct.dpp* %63, i32 0, i32 0
  %65 = load i32, i32* @OPP_REGAMMA_USER, align 4
  %66 = call i32 %61(%struct.dpp* %62, %struct.TYPE_11__* %64, i32 %65)
  br label %76

67:                                               ; preds = %48
  %68 = load %struct.dpp*, %struct.dpp** %6, align 8
  %69 = getelementptr inbounds %struct.dpp, %struct.dpp* %68, i32 0, i32 1
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  %72 = load i32 (%struct.dpp*, %struct.TYPE_11__*, i32)*, i32 (%struct.dpp*, %struct.TYPE_11__*, i32)** %71, align 8
  %73 = load %struct.dpp*, %struct.dpp** %6, align 8
  %74 = load i32, i32* @OPP_REGAMMA_BYPASS, align 4
  %75 = call i32 %72(%struct.dpp* %73, %struct.TYPE_11__* null, i32 %74)
  br label %76

76:                                               ; preds = %67, %56
  br label %77

77:                                               ; preds = %76, %39
  %78 = load %struct.dc_stream_state*, %struct.dc_stream_state** %5, align 8
  %79 = icmp ne %struct.dc_stream_state* %78, null
  br i1 %79, label %80, label %102

80:                                               ; preds = %77
  %81 = load %struct.dc_stream_state*, %struct.dc_stream_state** %5, align 8
  %82 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = icmp ne i32* %83, null
  br i1 %84, label %85, label %102

85:                                               ; preds = %80
  %86 = load %struct.dc_stream_state*, %struct.dc_stream_state** %5, align 8
  %87 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %86, i32 0, i32 0
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %87, align 8
  %89 = icmp ne %struct.TYPE_12__* %88, null
  br i1 %89, label %90, label %102

90:                                               ; preds = %85
  %91 = load %struct.dc_stream_state*, %struct.dc_stream_state** %5, align 8
  %92 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %91, i32 0, i32 1
  %93 = load i32*, i32** %92, align 8
  %94 = load %struct.dc_stream_state*, %struct.dc_stream_state** %5, align 8
  %95 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %94, i32 0, i32 0
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %95, align 8
  %97 = load %struct.dpp*, %struct.dpp** %6, align 8
  %98 = getelementptr inbounds %struct.dpp, %struct.dpp* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @log_tf(i32* %93, %struct.TYPE_12__* %96, i32 %100)
  br label %102

102:                                              ; preds = %90, %85, %80, %77
  store i32 1, i32* %3, align 4
  br label %103

103:                                              ; preds = %102, %13
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local i64 @cm_helper_translate_curve_to_hw_format(%struct.TYPE_12__*, %struct.TYPE_11__*, i32) #1

declare dso_local i32 @log_tf(i32*, %struct.TYPE_12__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
