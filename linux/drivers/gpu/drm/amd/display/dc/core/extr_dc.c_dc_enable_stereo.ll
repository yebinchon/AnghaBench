; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc.c_dc_enable_stereo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc.c_dc_enable_stereo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc = type { %struct.TYPE_8__, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32 (%struct.pipe_ctx*, %struct.dc.0*)* }
%struct.pipe_ctx = type { %struct.dc_stream_state* }
%struct.dc_stream_state = type { i32 }
%struct.dc.0 = type opaque
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.pipe_ctx* }
%struct.dc_state = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.pipe_ctx* }

@MAX_PIPES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dc_enable_stereo(%struct.dc* %0, %struct.dc_state* %1, %struct.dc_stream_state** %2, i32 %3) #0 {
  %5 = alloca %struct.dc*, align 8
  %6 = alloca %struct.dc_state*, align 8
  %7 = alloca %struct.dc_stream_state**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.pipe_ctx*, align 8
  store %struct.dc* %0, %struct.dc** %5, align 8
  store %struct.dc_state* %1, %struct.dc_state** %6, align 8
  store %struct.dc_stream_state** %2, %struct.dc_stream_state*** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 1, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %13

13:                                               ; preds = %85, %4
  %14 = load i32, i32* %10, align 4
  %15 = load i32, i32* @MAX_PIPES, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %88

17:                                               ; preds = %13
  %18 = load %struct.dc_state*, %struct.dc_state** %6, align 8
  %19 = icmp ne %struct.dc_state* %18, null
  br i1 %19, label %20, label %28

20:                                               ; preds = %17
  %21 = load %struct.dc_state*, %struct.dc_state** %6, align 8
  %22 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load %struct.pipe_ctx*, %struct.pipe_ctx** %23, align 8
  %25 = load i32, i32* %10, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %24, i64 %26
  store %struct.pipe_ctx* %27, %struct.pipe_ctx** %12, align 8
  br label %38

28:                                               ; preds = %17
  %29 = load %struct.dc*, %struct.dc** %5, align 8
  %30 = getelementptr inbounds %struct.dc, %struct.dc* %29, i32 0, i32 1
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load %struct.pipe_ctx*, %struct.pipe_ctx** %33, align 8
  %35 = load i32, i32* %10, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %34, i64 %36
  store %struct.pipe_ctx* %37, %struct.pipe_ctx** %12, align 8
  br label %38

38:                                               ; preds = %28, %20
  store i32 0, i32* %11, align 4
  br label %39

39:                                               ; preds = %81, %38
  %40 = load %struct.pipe_ctx*, %struct.pipe_ctx** %12, align 8
  %41 = icmp ne %struct.pipe_ctx* %40, null
  br i1 %41, label %42, label %46

42:                                               ; preds = %39
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp slt i32 %43, %44
  br label %46

46:                                               ; preds = %42, %39
  %47 = phi i1 [ false, %39 ], [ %45, %42 ]
  br i1 %47, label %48, label %84

48:                                               ; preds = %46
  %49 = load %struct.dc_stream_state**, %struct.dc_stream_state*** %7, align 8
  %50 = load i32, i32* %11, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.dc_stream_state*, %struct.dc_stream_state** %49, i64 %51
  %53 = load %struct.dc_stream_state*, %struct.dc_stream_state** %52, align 8
  %54 = icmp ne %struct.dc_stream_state* %53, null
  br i1 %54, label %55, label %80

55:                                               ; preds = %48
  %56 = load %struct.dc_stream_state**, %struct.dc_stream_state*** %7, align 8
  %57 = load i32, i32* %11, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.dc_stream_state*, %struct.dc_stream_state** %56, i64 %58
  %60 = load %struct.dc_stream_state*, %struct.dc_stream_state** %59, align 8
  %61 = load %struct.pipe_ctx*, %struct.pipe_ctx** %12, align 8
  %62 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %61, i32 0, i32 0
  %63 = load %struct.dc_stream_state*, %struct.dc_stream_state** %62, align 8
  %64 = icmp eq %struct.dc_stream_state* %60, %63
  br i1 %64, label %65, label %80

65:                                               ; preds = %55
  %66 = load %struct.dc*, %struct.dc** %5, align 8
  %67 = getelementptr inbounds %struct.dc, %struct.dc* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = load i32 (%struct.pipe_ctx*, %struct.dc.0*)*, i32 (%struct.pipe_ctx*, %struct.dc.0*)** %68, align 8
  %70 = icmp ne i32 (%struct.pipe_ctx*, %struct.dc.0*)* %69, null
  br i1 %70, label %71, label %80

71:                                               ; preds = %65
  %72 = load %struct.dc*, %struct.dc** %5, align 8
  %73 = getelementptr inbounds %struct.dc, %struct.dc* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = load i32 (%struct.pipe_ctx*, %struct.dc.0*)*, i32 (%struct.pipe_ctx*, %struct.dc.0*)** %74, align 8
  %76 = load %struct.pipe_ctx*, %struct.pipe_ctx** %12, align 8
  %77 = load %struct.dc*, %struct.dc** %5, align 8
  %78 = bitcast %struct.dc* %77 to %struct.dc.0*
  %79 = call i32 %75(%struct.pipe_ctx* %76, %struct.dc.0* %78)
  br label %80

80:                                               ; preds = %71, %65, %55, %48
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %11, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %11, align 4
  br label %39

84:                                               ; preds = %46
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %10, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %10, align 4
  br label %13

88:                                               ; preds = %13
  %89 = load i32, i32* %9, align 4
  ret i32 %89
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
