; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc.c_dc_stream_program_csc_matrix.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc.c_dc_stream_program_csc_matrix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc = type { %struct.TYPE_9__, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i32 (%struct.dc.0*, %struct.pipe_ctx*, i32, i32, i32)* }
%struct.dc.0 = type opaque
%struct.pipe_ctx = type { %struct.TYPE_12__, %struct.dc_stream_state* }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.pipe_ctx* }
%struct.dc_stream_state = type { %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i32 }

@MAX_PIPES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dc_stream_program_csc_matrix(%struct.dc* %0, %struct.dc_stream_state* %1) #0 {
  %3 = alloca %struct.dc*, align 8
  %4 = alloca %struct.dc_stream_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.pipe_ctx*, align 8
  store %struct.dc* %0, %struct.dc** %3, align 8
  store %struct.dc_stream_state* %1, %struct.dc_stream_state** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %58, %2
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @MAX_PIPES, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %61

12:                                               ; preds = %8
  %13 = load %struct.dc*, %struct.dc** %3, align 8
  %14 = getelementptr inbounds %struct.dc, %struct.dc* %13, i32 0, i32 1
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load %struct.pipe_ctx*, %struct.pipe_ctx** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %18, i64 %20
  %22 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %21, i32 0, i32 1
  %23 = load %struct.dc_stream_state*, %struct.dc_stream_state** %22, align 8
  %24 = load %struct.dc_stream_state*, %struct.dc_stream_state** %4, align 8
  %25 = icmp eq %struct.dc_stream_state* %23, %24
  br i1 %25, label %26, label %57

26:                                               ; preds = %12
  %27 = load %struct.dc*, %struct.dc** %3, align 8
  %28 = getelementptr inbounds %struct.dc, %struct.dc* %27, i32 0, i32 1
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load %struct.pipe_ctx*, %struct.pipe_ctx** %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %32, i64 %34
  store %struct.pipe_ctx* %35, %struct.pipe_ctx** %7, align 8
  %36 = load %struct.dc*, %struct.dc** %3, align 8
  %37 = getelementptr inbounds %struct.dc, %struct.dc* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = load i32 (%struct.dc.0*, %struct.pipe_ctx*, i32, i32, i32)*, i32 (%struct.dc.0*, %struct.pipe_ctx*, i32, i32, i32)** %38, align 8
  %40 = load %struct.dc*, %struct.dc** %3, align 8
  %41 = bitcast %struct.dc* %40 to %struct.dc.0*
  %42 = load %struct.pipe_ctx*, %struct.pipe_ctx** %7, align 8
  %43 = load %struct.dc_stream_state*, %struct.dc_stream_state** %4, align 8
  %44 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.dc_stream_state*, %struct.dc_stream_state** %4, align 8
  %47 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.pipe_ctx*, %struct.pipe_ctx** %7, align 8
  %51 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 %39(%struct.dc.0* %41, %struct.pipe_ctx* %42, i32 %45, i32 %49, i32 %55)
  store i32 1, i32* %6, align 4
  br label %57

57:                                               ; preds = %26, %12
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %5, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %5, align 4
  br label %8

61:                                               ; preds = %8
  %62 = load i32, i32* %6, align 4
  ret i32 %62
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
