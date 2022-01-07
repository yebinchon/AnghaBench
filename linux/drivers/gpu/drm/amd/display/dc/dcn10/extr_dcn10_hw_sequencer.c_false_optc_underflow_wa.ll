; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hw_sequencer.c_false_optc_underflow_wa.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hw_sequencer.c_false_optc_underflow_wa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc = type { %struct.TYPE_14__*, %struct.TYPE_12__, %struct.TYPE_11__*, %struct.TYPE_9__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_12__ = type { i32 (%struct.dc.0*, %struct.TYPE_14__*, %struct.pipe_ctx*)* }
%struct.dc.0 = type opaque
%struct.pipe_ctx = type { %struct.dc_stream_state* }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.pipe_ctx* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.dc_stream_state = type { i32 }
%struct.timing_generator = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 (%struct.timing_generator*)*, i32 (%struct.timing_generator*)*, i32 (%struct.timing_generator*, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dc*, %struct.dc_stream_state*, %struct.timing_generator*)* @false_optc_underflow_wa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @false_optc_underflow_wa(%struct.dc* %0, %struct.dc_stream_state* %1, %struct.timing_generator* %2) #0 {
  %4 = alloca %struct.dc*, align 8
  %5 = alloca %struct.dc_stream_state*, align 8
  %6 = alloca %struct.timing_generator*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.pipe_ctx*, align 8
  store %struct.dc* %0, %struct.dc** %4, align 8
  store %struct.dc_stream_state* %1, %struct.dc_stream_state** %5, align 8
  store %struct.timing_generator* %2, %struct.timing_generator** %6, align 8
  %10 = load %struct.dc*, %struct.dc** %4, align 8
  %11 = getelementptr inbounds %struct.dc, %struct.dc* %10, i32 0, i32 3
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  br label %100

18:                                               ; preds = %3
  %19 = load %struct.timing_generator*, %struct.timing_generator** %6, align 8
  %20 = getelementptr inbounds %struct.timing_generator, %struct.timing_generator* %19, i32 0, i32 0
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 0
  %23 = load i32 (%struct.timing_generator*)*, i32 (%struct.timing_generator*)** %22, align 8
  %24 = load %struct.timing_generator*, %struct.timing_generator** %6, align 8
  %25 = call i32 %23(%struct.timing_generator* %24)
  store i32 %25, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %26

26:                                               ; preds = %62, %18
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.dc*, %struct.dc** %4, align 8
  %29 = getelementptr inbounds %struct.dc, %struct.dc* %28, i32 0, i32 0
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp slt i32 %27, %32
  br i1 %33, label %34, label %65

34:                                               ; preds = %26
  %35 = load %struct.dc*, %struct.dc** %4, align 8
  %36 = getelementptr inbounds %struct.dc, %struct.dc* %35, i32 0, i32 2
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = load %struct.pipe_ctx*, %struct.pipe_ctx** %39, align 8
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %40, i64 %42
  store %struct.pipe_ctx* %43, %struct.pipe_ctx** %9, align 8
  %44 = load %struct.pipe_ctx*, %struct.pipe_ctx** %9, align 8
  %45 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %44, i32 0, i32 0
  %46 = load %struct.dc_stream_state*, %struct.dc_stream_state** %45, align 8
  %47 = load %struct.dc_stream_state*, %struct.dc_stream_state** %5, align 8
  %48 = icmp ne %struct.dc_stream_state* %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %34
  br label %62

50:                                               ; preds = %34
  %51 = load %struct.dc*, %struct.dc** %4, align 8
  %52 = getelementptr inbounds %struct.dc, %struct.dc* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 0
  %54 = load i32 (%struct.dc.0*, %struct.TYPE_14__*, %struct.pipe_ctx*)*, i32 (%struct.dc.0*, %struct.TYPE_14__*, %struct.pipe_ctx*)** %53, align 8
  %55 = load %struct.dc*, %struct.dc** %4, align 8
  %56 = bitcast %struct.dc* %55 to %struct.dc.0*
  %57 = load %struct.dc*, %struct.dc** %4, align 8
  %58 = getelementptr inbounds %struct.dc, %struct.dc* %57, i32 0, i32 0
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %58, align 8
  %60 = load %struct.pipe_ctx*, %struct.pipe_ctx** %9, align 8
  %61 = call i32 %54(%struct.dc.0* %56, %struct.TYPE_14__* %59, %struct.pipe_ctx* %60)
  br label %62

62:                                               ; preds = %50, %49
  %63 = load i32, i32* %7, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %7, align 4
  br label %26

65:                                               ; preds = %26
  %66 = load %struct.timing_generator*, %struct.timing_generator** %6, align 8
  %67 = getelementptr inbounds %struct.timing_generator, %struct.timing_generator* %66, i32 0, i32 0
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 2
  %70 = load i32 (%struct.timing_generator*, i32)*, i32 (%struct.timing_generator*, i32)** %69, align 8
  %71 = icmp ne i32 (%struct.timing_generator*, i32)* %70, null
  br i1 %71, label %72, label %80

72:                                               ; preds = %65
  %73 = load %struct.timing_generator*, %struct.timing_generator** %6, align 8
  %74 = getelementptr inbounds %struct.timing_generator, %struct.timing_generator* %73, i32 0, i32 0
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 2
  %77 = load i32 (%struct.timing_generator*, i32)*, i32 (%struct.timing_generator*, i32)** %76, align 8
  %78 = load %struct.timing_generator*, %struct.timing_generator** %6, align 8
  %79 = call i32 %77(%struct.timing_generator* %78, i32 1)
  br label %80

80:                                               ; preds = %72, %65
  %81 = load %struct.timing_generator*, %struct.timing_generator** %6, align 8
  %82 = getelementptr inbounds %struct.timing_generator, %struct.timing_generator* %81, i32 0, i32 0
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 0
  %85 = load i32 (%struct.timing_generator*)*, i32 (%struct.timing_generator*)** %84, align 8
  %86 = load %struct.timing_generator*, %struct.timing_generator** %6, align 8
  %87 = call i32 %85(%struct.timing_generator* %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %100

89:                                               ; preds = %80
  %90 = load i32, i32* %8, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %100, label %92

92:                                               ; preds = %89
  %93 = load %struct.timing_generator*, %struct.timing_generator** %6, align 8
  %94 = getelementptr inbounds %struct.timing_generator, %struct.timing_generator* %93, i32 0, i32 0
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 1
  %97 = load i32 (%struct.timing_generator*)*, i32 (%struct.timing_generator*)** %96, align 8
  %98 = load %struct.timing_generator*, %struct.timing_generator** %6, align 8
  %99 = call i32 %97(%struct.timing_generator* %98)
  br label %100

100:                                              ; preds = %17, %92, %89, %80
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
