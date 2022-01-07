; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_stream.c_dc_stream_get_vblank_counter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_stream.c_dc_stream_get_vblank_counter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_stream_state = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.dc* }
%struct.dc = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.resource_context }
%struct.resource_context = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.dc_stream_state*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.timing_generator* }
%struct.timing_generator = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 (%struct.timing_generator*)* }

@MAX_PIPES = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dc_stream_get_vblank_counter(%struct.dc_stream_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dc_stream_state*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.dc*, align 8
  %6 = alloca %struct.resource_context*, align 8
  %7 = alloca %struct.timing_generator*, align 8
  store %struct.dc_stream_state* %0, %struct.dc_stream_state** %3, align 8
  %8 = load %struct.dc_stream_state*, %struct.dc_stream_state** %3, align 8
  %9 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %8, i32 0, i32 0
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %12 = load %struct.dc*, %struct.dc** %11, align 8
  store %struct.dc* %12, %struct.dc** %5, align 8
  %13 = load %struct.dc*, %struct.dc** %5, align 8
  %14 = getelementptr inbounds %struct.dc, %struct.dc* %13, i32 0, i32 0
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  store %struct.resource_context* %16, %struct.resource_context** %6, align 8
  store i64 0, i64* %4, align 8
  br label %17

17:                                               ; preds = %48, %1
  %18 = load i64, i64* %4, align 8
  %19 = load i64, i64* @MAX_PIPES, align 8
  %20 = icmp ult i64 %18, %19
  br i1 %20, label %21, label %51

21:                                               ; preds = %17
  %22 = load %struct.resource_context*, %struct.resource_context** %6, align 8
  %23 = getelementptr inbounds %struct.resource_context, %struct.resource_context* %22, i32 0, i32 0
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %25 = load i64, i64* %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load %struct.timing_generator*, %struct.timing_generator** %28, align 8
  store %struct.timing_generator* %29, %struct.timing_generator** %7, align 8
  %30 = load %struct.resource_context*, %struct.resource_context** %6, align 8
  %31 = getelementptr inbounds %struct.resource_context, %struct.resource_context* %30, i32 0, i32 0
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %31, align 8
  %33 = load i64, i64* %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load %struct.dc_stream_state*, %struct.dc_stream_state** %35, align 8
  %37 = load %struct.dc_stream_state*, %struct.dc_stream_state** %3, align 8
  %38 = icmp ne %struct.dc_stream_state* %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %21
  br label %48

40:                                               ; preds = %21
  %41 = load %struct.timing_generator*, %struct.timing_generator** %7, align 8
  %42 = getelementptr inbounds %struct.timing_generator, %struct.timing_generator* %41, i32 0, i32 0
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load i32 (%struct.timing_generator*)*, i32 (%struct.timing_generator*)** %44, align 8
  %46 = load %struct.timing_generator*, %struct.timing_generator** %7, align 8
  %47 = call i32 %45(%struct.timing_generator* %46)
  store i32 %47, i32* %2, align 4
  br label %52

48:                                               ; preds = %39
  %49 = load i64, i64* %4, align 8
  %50 = add i64 %49, 1
  store i64 %50, i64* %4, align 8
  br label %17

51:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %52

52:                                               ; preds = %51, %40
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
