; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_hwseq.c_dcn20_program_dmdata_engine.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_hwseq.c_dcn20_program_dmdata_engine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pipe_ctx = type { %struct.TYPE_11__, %struct.dc_stream_state*, %struct.TYPE_7__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.stream_encoder* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.stream_encoder = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 (%struct.stream_encoder*, i32, i32, i32)* }
%struct.dc_stream_state = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { %struct.hubp* }
%struct.hubp = type { i32 }

@dmdata_dp = common dso_local global i32 0, align 4
@dmdata_hdmi = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pipe_ctx*)* @dcn20_program_dmdata_engine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dcn20_program_dmdata_engine(%struct.pipe_ctx* %0) #0 {
  %2 = alloca %struct.pipe_ctx*, align 8
  %3 = alloca %struct.dc_stream_state*, align 8
  %4 = alloca %struct.hubp*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.stream_encoder*, align 8
  %7 = alloca i32, align 4
  store %struct.pipe_ctx* %0, %struct.pipe_ctx** %2, align 8
  %8 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %9 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %8, i32 0, i32 1
  %10 = load %struct.dc_stream_state*, %struct.dc_stream_state** %9, align 8
  store %struct.dc_stream_state* %10, %struct.dc_stream_state** %3, align 8
  %11 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %12 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load %struct.hubp*, %struct.hubp** %13, align 8
  store %struct.hubp* %14, %struct.hubp** %4, align 8
  store i32 0, i32* %5, align 4
  %15 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %16 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 1
  %18 = load %struct.stream_encoder*, %struct.stream_encoder** %17, align 8
  store %struct.stream_encoder* %18, %struct.stream_encoder** %6, align 8
  %19 = load %struct.dc_stream_state*, %struct.dc_stream_state** %3, align 8
  %20 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i64 @dc_is_dp_signal(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %1
  %25 = load i32, i32* @dmdata_dp, align 4
  br label %28

26:                                               ; preds = %1
  %27 = load i32, i32* @dmdata_hdmi, align 4
  br label %28

28:                                               ; preds = %26, %24
  %29 = phi i32 [ %25, %24 ], [ %27, %26 ]
  store i32 %29, i32* %7, align 4
  %30 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %31 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %30, i32 0, i32 1
  %32 = load %struct.dc_stream_state*, %struct.dc_stream_state** %31, align 8
  %33 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %28
  %38 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %39 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  store i32 0, i32* %42, align 8
  store i32 1, i32* %5, align 4
  br label %43

43:                                               ; preds = %37, %28
  %44 = load %struct.hubp*, %struct.hubp** %4, align 8
  %45 = icmp ne %struct.hubp* %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %43
  br label %71

47:                                               ; preds = %43
  %48 = load %struct.stream_encoder*, %struct.stream_encoder** %6, align 8
  %49 = icmp ne %struct.stream_encoder* %48, null
  br i1 %49, label %50, label %57

50:                                               ; preds = %47
  %51 = load %struct.stream_encoder*, %struct.stream_encoder** %6, align 8
  %52 = getelementptr inbounds %struct.stream_encoder, %struct.stream_encoder* %51, i32 0, i32 0
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 0
  %55 = load i32 (%struct.stream_encoder*, i32, i32, i32)*, i32 (%struct.stream_encoder*, i32, i32, i32)** %54, align 8
  %56 = icmp ne i32 (%struct.stream_encoder*, i32, i32, i32)* %55, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %50, %47
  br label %71

58:                                               ; preds = %50
  %59 = load %struct.stream_encoder*, %struct.stream_encoder** %6, align 8
  %60 = getelementptr inbounds %struct.stream_encoder, %struct.stream_encoder* %59, i32 0, i32 0
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 0
  %63 = load i32 (%struct.stream_encoder*, i32, i32, i32)*, i32 (%struct.stream_encoder*, i32, i32, i32)** %62, align 8
  %64 = load %struct.stream_encoder*, %struct.stream_encoder** %6, align 8
  %65 = load i32, i32* %5, align 4
  %66 = load %struct.hubp*, %struct.hubp** %4, align 8
  %67 = getelementptr inbounds %struct.hubp, %struct.hubp* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %7, align 4
  %70 = call i32 %63(%struct.stream_encoder* %64, i32 %65, i32 %68, i32 %69)
  br label %71

71:                                               ; preds = %58, %57, %46
  ret void
}

declare dso_local i64 @dc_is_dp_signal(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
