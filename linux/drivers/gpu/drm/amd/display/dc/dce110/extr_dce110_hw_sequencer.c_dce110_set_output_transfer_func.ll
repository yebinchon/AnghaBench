; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_hw_sequencer.c_dce110_set_output_transfer_func.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_hw_sequencer.c_dce110_set_output_transfer_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pipe_ctx = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.transform* }
%struct.transform = type { %struct.TYPE_7__*, %struct.TYPE_8__ }
%struct.TYPE_7__ = type { i32 (%struct.transform*, i32)*, i32 (%struct.transform*, i32)*, i32 (%struct.transform*, %struct.TYPE_8__*)* }
%struct.TYPE_8__ = type { i32 }
%struct.dc_stream_state = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64, i64 }

@GAMMA_HW_POINTS_NUM = common dso_local global i32 0, align 4
@TF_TYPE_PREDEFINED = common dso_local global i64 0, align 8
@TRANSFER_FUNCTION_SRGB = common dso_local global i64 0, align 8
@OPP_REGAMMA_SRGB = common dso_local global i32 0, align 4
@OPP_REGAMMA_USER = common dso_local global i32 0, align 4
@OPP_REGAMMA_BYPASS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pipe_ctx*, %struct.dc_stream_state*)* @dce110_set_output_transfer_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dce110_set_output_transfer_func(%struct.pipe_ctx* %0, %struct.dc_stream_state* %1) #0 {
  %3 = alloca %struct.pipe_ctx*, align 8
  %4 = alloca %struct.dc_stream_state*, align 8
  %5 = alloca %struct.transform*, align 8
  store %struct.pipe_ctx* %0, %struct.pipe_ctx** %3, align 8
  store %struct.dc_stream_state* %1, %struct.dc_stream_state** %4, align 8
  %6 = load %struct.pipe_ctx*, %struct.pipe_ctx** %3, align 8
  %7 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = load %struct.transform*, %struct.transform** %8, align 8
  store %struct.transform* %9, %struct.transform** %5, align 8
  %10 = load %struct.transform*, %struct.transform** %5, align 8
  %11 = getelementptr inbounds %struct.transform, %struct.transform* %10, i32 0, i32 0
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load i32 (%struct.transform*, i32)*, i32 (%struct.transform*, i32)** %13, align 8
  %15 = load %struct.transform*, %struct.transform** %5, align 8
  %16 = call i32 %14(%struct.transform* %15, i32 1)
  %17 = load i32, i32* @GAMMA_HW_POINTS_NUM, align 4
  %18 = load %struct.transform*, %struct.transform** %5, align 8
  %19 = getelementptr inbounds %struct.transform, %struct.transform* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  store i32 %17, i32* %20, align 8
  %21 = load %struct.dc_stream_state*, %struct.dc_stream_state** %4, align 8
  %22 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %21, i32 0, i32 0
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  %24 = icmp ne %struct.TYPE_9__* %23, null
  br i1 %24, label %25, label %50

25:                                               ; preds = %2
  %26 = load %struct.dc_stream_state*, %struct.dc_stream_state** %4, align 8
  %27 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %26, i32 0, i32 0
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @TF_TYPE_PREDEFINED, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %50

33:                                               ; preds = %25
  %34 = load %struct.dc_stream_state*, %struct.dc_stream_state** %4, align 8
  %35 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %34, i32 0, i32 0
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @TRANSFER_FUNCTION_SRGB, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %50

41:                                               ; preds = %33
  %42 = load %struct.transform*, %struct.transform** %5, align 8
  %43 = getelementptr inbounds %struct.transform, %struct.transform* %42, i32 0, i32 0
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 1
  %46 = load i32 (%struct.transform*, i32)*, i32 (%struct.transform*, i32)** %45, align 8
  %47 = load %struct.transform*, %struct.transform** %5, align 8
  %48 = load i32, i32* @OPP_REGAMMA_SRGB, align 4
  %49 = call i32 %46(%struct.transform* %47, i32 %48)
  br label %86

50:                                               ; preds = %33, %25, %2
  %51 = load %struct.dc_stream_state*, %struct.dc_stream_state** %4, align 8
  %52 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %51, i32 0, i32 0
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %52, align 8
  %54 = load %struct.transform*, %struct.transform** %5, align 8
  %55 = getelementptr inbounds %struct.transform, %struct.transform* %54, i32 0, i32 1
  %56 = call i64 @dce110_translate_regamma_to_hw_format(%struct.TYPE_9__* %53, %struct.TYPE_8__* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %76

58:                                               ; preds = %50
  %59 = load %struct.transform*, %struct.transform** %5, align 8
  %60 = getelementptr inbounds %struct.transform, %struct.transform* %59, i32 0, i32 0
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 2
  %63 = load i32 (%struct.transform*, %struct.TYPE_8__*)*, i32 (%struct.transform*, %struct.TYPE_8__*)** %62, align 8
  %64 = load %struct.transform*, %struct.transform** %5, align 8
  %65 = load %struct.transform*, %struct.transform** %5, align 8
  %66 = getelementptr inbounds %struct.transform, %struct.transform* %65, i32 0, i32 1
  %67 = call i32 %63(%struct.transform* %64, %struct.TYPE_8__* %66)
  %68 = load %struct.transform*, %struct.transform** %5, align 8
  %69 = getelementptr inbounds %struct.transform, %struct.transform* %68, i32 0, i32 0
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 1
  %72 = load i32 (%struct.transform*, i32)*, i32 (%struct.transform*, i32)** %71, align 8
  %73 = load %struct.transform*, %struct.transform** %5, align 8
  %74 = load i32, i32* @OPP_REGAMMA_USER, align 4
  %75 = call i32 %72(%struct.transform* %73, i32 %74)
  br label %85

76:                                               ; preds = %50
  %77 = load %struct.transform*, %struct.transform** %5, align 8
  %78 = getelementptr inbounds %struct.transform, %struct.transform* %77, i32 0, i32 0
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 1
  %81 = load i32 (%struct.transform*, i32)*, i32 (%struct.transform*, i32)** %80, align 8
  %82 = load %struct.transform*, %struct.transform** %5, align 8
  %83 = load i32, i32* @OPP_REGAMMA_BYPASS, align 4
  %84 = call i32 %81(%struct.transform* %82, i32 %83)
  br label %85

85:                                               ; preds = %76, %58
  br label %86

86:                                               ; preds = %85, %41
  %87 = load %struct.transform*, %struct.transform** %5, align 8
  %88 = getelementptr inbounds %struct.transform, %struct.transform* %87, i32 0, i32 0
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  %91 = load i32 (%struct.transform*, i32)*, i32 (%struct.transform*, i32)** %90, align 8
  %92 = load %struct.transform*, %struct.transform** %5, align 8
  %93 = call i32 %91(%struct.transform* %92, i32 0)
  ret i32 1
}

declare dso_local i64 @dce110_translate_regamma_to_hw_format(%struct.TYPE_9__*, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
