; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hw_sequencer.c_find_top_pipe_for_stream.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hw_sequencer.c_find_top_pipe_for_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pipe_ctx = type { i32, i32, %struct.dc_stream_state*, i32 }
%struct.dc = type { %struct.TYPE_7__*, %struct.TYPE_8__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.pipe_ctx* }
%struct.TYPE_8__ = type { i32 }
%struct.dc_state = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.pipe_ctx* }
%struct.dc_stream_state = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pipe_ctx* @find_top_pipe_for_stream(%struct.dc* %0, %struct.dc_state* %1, %struct.dc_stream_state* %2) #0 {
  %4 = alloca %struct.pipe_ctx*, align 8
  %5 = alloca %struct.dc*, align 8
  %6 = alloca %struct.dc_state*, align 8
  %7 = alloca %struct.dc_stream_state*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.pipe_ctx*, align 8
  %10 = alloca %struct.pipe_ctx*, align 8
  store %struct.dc* %0, %struct.dc** %5, align 8
  store %struct.dc_state* %1, %struct.dc_state** %6, align 8
  store %struct.dc_stream_state* %2, %struct.dc_stream_state** %7, align 8
  store i32 0, i32* %8, align 4
  br label %11

11:                                               ; preds = %66, %3
  %12 = load i32, i32* %8, align 4
  %13 = load %struct.dc*, %struct.dc** %5, align 8
  %14 = getelementptr inbounds %struct.dc, %struct.dc* %13, i32 0, i32 1
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp slt i32 %12, %17
  br i1 %18, label %19, label %69

19:                                               ; preds = %11
  %20 = load %struct.dc_state*, %struct.dc_state** %6, align 8
  %21 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load %struct.pipe_ctx*, %struct.pipe_ctx** %22, align 8
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %23, i64 %25
  store %struct.pipe_ctx* %26, %struct.pipe_ctx** %9, align 8
  %27 = load %struct.dc*, %struct.dc** %5, align 8
  %28 = getelementptr inbounds %struct.dc, %struct.dc* %27, i32 0, i32 0
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load %struct.pipe_ctx*, %struct.pipe_ctx** %31, align 8
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %32, i64 %34
  store %struct.pipe_ctx* %35, %struct.pipe_ctx** %10, align 8
  %36 = load %struct.pipe_ctx*, %struct.pipe_ctx** %9, align 8
  %37 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %19
  %41 = load %struct.pipe_ctx*, %struct.pipe_ctx** %10, align 8
  %42 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %40
  br label %66

46:                                               ; preds = %40, %19
  %47 = load %struct.pipe_ctx*, %struct.pipe_ctx** %9, align 8
  %48 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %47, i32 0, i32 2
  %49 = load %struct.dc_stream_state*, %struct.dc_stream_state** %48, align 8
  %50 = load %struct.dc_stream_state*, %struct.dc_stream_state** %7, align 8
  %51 = icmp ne %struct.dc_stream_state* %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  br label %66

53:                                               ; preds = %46
  %54 = load %struct.pipe_ctx*, %struct.pipe_ctx** %9, align 8
  %55 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %65, label %58

58:                                               ; preds = %53
  %59 = load %struct.pipe_ctx*, %struct.pipe_ctx** %9, align 8
  %60 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %58
  %64 = load %struct.pipe_ctx*, %struct.pipe_ctx** %9, align 8
  store %struct.pipe_ctx* %64, %struct.pipe_ctx** %4, align 8
  br label %70

65:                                               ; preds = %58, %53
  br label %66

66:                                               ; preds = %65, %52, %45
  %67 = load i32, i32* %8, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %8, align 4
  br label %11

69:                                               ; preds = %11
  store %struct.pipe_ctx* null, %struct.pipe_ctx** %4, align 8
  br label %70

70:                                               ; preds = %69, %63
  %71 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  ret %struct.pipe_ctx* %71
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
