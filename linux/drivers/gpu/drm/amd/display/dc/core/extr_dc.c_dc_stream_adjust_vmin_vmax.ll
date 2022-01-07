; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc.c_dc_stream_adjust_vmin_vmax.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc.c_dc_stream_adjust_vmin_vmax.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc = type { %struct.TYPE_8__, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i32 (%struct.pipe_ctx**, i32, i32, i32, i32, i32)* }
%struct.pipe_ctx = type { %struct.dc_stream_state*, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.pipe_ctx* }
%struct.dc_stream_state = type { %struct.dc_crtc_timing_adjust }
%struct.dc_crtc_timing_adjust = type { i32, i32, i32, i32 }

@MAX_PIPES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dc_stream_adjust_vmin_vmax(%struct.dc* %0, %struct.dc_stream_state* %1, %struct.dc_crtc_timing_adjust* %2) #0 {
  %4 = alloca %struct.dc*, align 8
  %5 = alloca %struct.dc_stream_state*, align 8
  %6 = alloca %struct.dc_crtc_timing_adjust*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.pipe_ctx*, align 8
  store %struct.dc* %0, %struct.dc** %4, align 8
  store %struct.dc_stream_state* %1, %struct.dc_stream_state** %5, align 8
  store %struct.dc_crtc_timing_adjust* %2, %struct.dc_crtc_timing_adjust** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %61, %3
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @MAX_PIPES, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %64

14:                                               ; preds = %10
  %15 = load %struct.dc*, %struct.dc** %4, align 8
  %16 = getelementptr inbounds %struct.dc, %struct.dc* %15, i32 0, i32 1
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load %struct.pipe_ctx*, %struct.pipe_ctx** %19, align 8
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %20, i64 %22
  store %struct.pipe_ctx* %23, %struct.pipe_ctx** %9, align 8
  %24 = load %struct.pipe_ctx*, %struct.pipe_ctx** %9, align 8
  %25 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %24, i32 0, i32 0
  %26 = load %struct.dc_stream_state*, %struct.dc_stream_state** %25, align 8
  %27 = load %struct.dc_stream_state*, %struct.dc_stream_state** %5, align 8
  %28 = icmp eq %struct.dc_stream_state* %26, %27
  br i1 %28, label %29, label %60

29:                                               ; preds = %14
  %30 = load %struct.pipe_ctx*, %struct.pipe_ctx** %9, align 8
  %31 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %60

35:                                               ; preds = %29
  %36 = load %struct.pipe_ctx*, %struct.pipe_ctx** %9, align 8
  %37 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %36, i32 0, i32 0
  %38 = load %struct.dc_stream_state*, %struct.dc_stream_state** %37, align 8
  %39 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %38, i32 0, i32 0
  %40 = load %struct.dc_crtc_timing_adjust*, %struct.dc_crtc_timing_adjust** %6, align 8
  %41 = bitcast %struct.dc_crtc_timing_adjust* %39 to i8*
  %42 = bitcast %struct.dc_crtc_timing_adjust* %40 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %41, i8* align 4 %42, i64 16, i1 false)
  %43 = load %struct.dc*, %struct.dc** %4, align 8
  %44 = getelementptr inbounds %struct.dc, %struct.dc* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load i32 (%struct.pipe_ctx**, i32, i32, i32, i32, i32)*, i32 (%struct.pipe_ctx**, i32, i32, i32, i32, i32)** %45, align 8
  %47 = load %struct.dc_crtc_timing_adjust*, %struct.dc_crtc_timing_adjust** %6, align 8
  %48 = getelementptr inbounds %struct.dc_crtc_timing_adjust, %struct.dc_crtc_timing_adjust* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.dc_crtc_timing_adjust*, %struct.dc_crtc_timing_adjust** %6, align 8
  %51 = getelementptr inbounds %struct.dc_crtc_timing_adjust, %struct.dc_crtc_timing_adjust* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.dc_crtc_timing_adjust*, %struct.dc_crtc_timing_adjust** %6, align 8
  %54 = getelementptr inbounds %struct.dc_crtc_timing_adjust, %struct.dc_crtc_timing_adjust* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.dc_crtc_timing_adjust*, %struct.dc_crtc_timing_adjust** %6, align 8
  %57 = getelementptr inbounds %struct.dc_crtc_timing_adjust, %struct.dc_crtc_timing_adjust* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 %46(%struct.pipe_ctx** %9, i32 1, i32 %49, i32 %52, i32 %55, i32 %58)
  store i32 1, i32* %8, align 4
  br label %60

60:                                               ; preds = %35, %29, %14
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %7, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %7, align 4
  br label %10

64:                                               ; preds = %10
  %65 = load i32, i32* %8, align 4
  ret i32 %65
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
