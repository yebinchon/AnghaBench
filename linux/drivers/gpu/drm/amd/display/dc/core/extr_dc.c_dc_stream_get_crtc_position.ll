; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc.c_dc_stream_get_crtc_position.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc.c_dc_stream_get_crtc_position.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc = type { %struct.TYPE_8__, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i32 (%struct.pipe_ctx**, i32, %struct.crtc_position*)* }
%struct.pipe_ctx = type { %struct.TYPE_7__, %struct.dc_stream_state* }
%struct.TYPE_7__ = type { i64 }
%struct.dc_stream_state = type { i32 }
%struct.crtc_position = type opaque
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.pipe_ctx* }
%struct.crtc_position.0 = type { i32, i32 }

@MAX_PIPES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dc_stream_get_crtc_position(%struct.dc* %0, %struct.dc_stream_state** %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.dc*, align 8
  %7 = alloca %struct.dc_stream_state**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.dc_stream_state*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.crtc_position.0, align 4
  %15 = alloca %struct.pipe_ctx*, align 8
  store %struct.dc* %0, %struct.dc** %6, align 8
  store %struct.dc_stream_state** %1, %struct.dc_stream_state*** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %16 = load %struct.dc_stream_state**, %struct.dc_stream_state*** %7, align 8
  %17 = getelementptr inbounds %struct.dc_stream_state*, %struct.dc_stream_state** %16, i64 0
  %18 = load %struct.dc_stream_state*, %struct.dc_stream_state** %17, align 8
  store %struct.dc_stream_state* %18, %struct.dc_stream_state** %11, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %12, align 4
  br label %19

19:                                               ; preds = %58, %5
  %20 = load i32, i32* %12, align 4
  %21 = load i32, i32* @MAX_PIPES, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %61

23:                                               ; preds = %19
  %24 = load %struct.dc*, %struct.dc** %6, align 8
  %25 = getelementptr inbounds %struct.dc, %struct.dc* %24, i32 0, i32 1
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load %struct.pipe_ctx*, %struct.pipe_ctx** %28, align 8
  %30 = load i32, i32* %12, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %29, i64 %31
  store %struct.pipe_ctx* %32, %struct.pipe_ctx** %15, align 8
  %33 = load %struct.pipe_ctx*, %struct.pipe_ctx** %15, align 8
  %34 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %33, i32 0, i32 1
  %35 = load %struct.dc_stream_state*, %struct.dc_stream_state** %34, align 8
  %36 = load %struct.dc_stream_state*, %struct.dc_stream_state** %11, align 8
  %37 = icmp eq %struct.dc_stream_state* %35, %36
  br i1 %37, label %38, label %57

38:                                               ; preds = %23
  %39 = load %struct.pipe_ctx*, %struct.pipe_ctx** %15, align 8
  %40 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %57

44:                                               ; preds = %38
  %45 = load %struct.dc*, %struct.dc** %6, align 8
  %46 = getelementptr inbounds %struct.dc, %struct.dc* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i32 (%struct.pipe_ctx**, i32, %struct.crtc_position*)*, i32 (%struct.pipe_ctx**, i32, %struct.crtc_position*)** %47, align 8
  %49 = bitcast %struct.crtc_position.0* %14 to %struct.crtc_position*
  %50 = call i32 %48(%struct.pipe_ctx** %15, i32 1, %struct.crtc_position* %49)
  %51 = getelementptr inbounds %struct.crtc_position.0, %struct.crtc_position.0* %14, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32*, i32** %9, align 8
  store i32 %52, i32* %53, align 4
  %54 = getelementptr inbounds %struct.crtc_position.0, %struct.crtc_position.0* %14, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32*, i32** %10, align 8
  store i32 %55, i32* %56, align 4
  store i32 1, i32* %13, align 4
  br label %57

57:                                               ; preds = %44, %38, %23
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %12, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %12, align 4
  br label %19

61:                                               ; preds = %19
  %62 = load i32, i32* %13, align 4
  ret i32 %62
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
