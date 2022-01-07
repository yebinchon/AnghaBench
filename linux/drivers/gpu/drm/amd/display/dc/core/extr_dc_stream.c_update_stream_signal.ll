; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_stream.c_update_stream_signal.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_stream.c_update_stream_signal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_stream_state = type { i64, %struct.TYPE_9__, %struct.TYPE_8__*, %struct.TYPE_10__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_10__ = type { i64 }
%struct.dc_sink = type { i64 }

@SIGNAL_TYPE_NONE = common dso_local global i64 0, align 8
@TMDS_MAX_PIXEL_CLOCK = common dso_local global i32 0, align 4
@SIGNAL_TYPE_DVI_SINGLE_LINK = common dso_local global i64 0, align 8
@SIGNAL_TYPE_DVI_DUAL_LINK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @update_stream_signal(%struct.dc_stream_state* %0, %struct.dc_sink* %1) #0 {
  %3 = alloca %struct.dc_stream_state*, align 8
  %4 = alloca %struct.dc_sink*, align 8
  store %struct.dc_stream_state* %0, %struct.dc_stream_state** %3, align 8
  store %struct.dc_sink* %1, %struct.dc_sink** %4, align 8
  %5 = load %struct.dc_sink*, %struct.dc_sink** %4, align 8
  %6 = getelementptr inbounds %struct.dc_sink, %struct.dc_sink* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @SIGNAL_TYPE_NONE, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %18

10:                                               ; preds = %2
  %11 = load %struct.dc_stream_state*, %struct.dc_stream_state** %3, align 8
  %12 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %11, i32 0, i32 3
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.dc_stream_state*, %struct.dc_stream_state** %3, align 8
  %17 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %16, i32 0, i32 0
  store i64 %15, i64* %17, align 8
  br label %24

18:                                               ; preds = %2
  %19 = load %struct.dc_sink*, %struct.dc_sink** %4, align 8
  %20 = getelementptr inbounds %struct.dc_sink, %struct.dc_sink* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.dc_stream_state*, %struct.dc_stream_state** %3, align 8
  %23 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %22, i32 0, i32 0
  store i64 %21, i64* %23, align 8
  br label %24

24:                                               ; preds = %18, %10
  %25 = load %struct.dc_stream_state*, %struct.dc_stream_state** %3, align 8
  %26 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i64 @dc_is_dvi_signal(i64 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %63

30:                                               ; preds = %24
  %31 = load %struct.dc_stream_state*, %struct.dc_stream_state** %3, align 8
  %32 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %31, i32 0, i32 2
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %58

40:                                               ; preds = %30
  %41 = load %struct.dc_stream_state*, %struct.dc_stream_state** %3, align 8
  %42 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = sdiv i32 %44, 10
  %46 = load i32, i32* @TMDS_MAX_PIXEL_CLOCK, align 4
  %47 = icmp sgt i32 %45, %46
  br i1 %47, label %48, label %58

48:                                               ; preds = %40
  %49 = load %struct.dc_sink*, %struct.dc_sink** %4, align 8
  %50 = getelementptr inbounds %struct.dc_sink, %struct.dc_sink* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @SIGNAL_TYPE_DVI_SINGLE_LINK, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %48
  %55 = load i64, i64* @SIGNAL_TYPE_DVI_DUAL_LINK, align 8
  %56 = load %struct.dc_stream_state*, %struct.dc_stream_state** %3, align 8
  %57 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %56, i32 0, i32 0
  store i64 %55, i64* %57, align 8
  br label %62

58:                                               ; preds = %48, %40, %30
  %59 = load i64, i64* @SIGNAL_TYPE_DVI_SINGLE_LINK, align 8
  %60 = load %struct.dc_stream_state*, %struct.dc_stream_state** %3, align 8
  %61 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %60, i32 0, i32 0
  store i64 %59, i64* %61, align 8
  br label %62

62:                                               ; preds = %58, %54
  br label %63

63:                                               ; preds = %62, %24
  ret void
}

declare dso_local i64 @dc_is_dvi_signal(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
