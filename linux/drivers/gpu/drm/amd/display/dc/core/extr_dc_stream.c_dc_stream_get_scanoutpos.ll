; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_stream.c_dc_stream_get_scanoutpos.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_stream.c_dc_stream_get_scanoutpos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_stream_state = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.dc* }
%struct.dc = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.resource_context }
%struct.resource_context = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.dc_stream_state*, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.timing_generator* }
%struct.timing_generator = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 (%struct.timing_generator*, i32*, i32*, i32*, i32*)* }

@MAX_PIPES = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dc_stream_get_scanoutpos(%struct.dc_stream_state* %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.dc_stream_state*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.dc*, align 8
  %14 = alloca %struct.resource_context*, align 8
  %15 = alloca %struct.timing_generator*, align 8
  store %struct.dc_stream_state* %0, %struct.dc_stream_state** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  store i32 0, i32* %12, align 4
  %16 = load %struct.dc_stream_state*, %struct.dc_stream_state** %6, align 8
  %17 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %16, i32 0, i32 0
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load %struct.dc*, %struct.dc** %19, align 8
  store %struct.dc* %20, %struct.dc** %13, align 8
  %21 = load %struct.dc*, %struct.dc** %13, align 8
  %22 = getelementptr inbounds %struct.dc, %struct.dc* %21, i32 0, i32 0
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  store %struct.resource_context* %24, %struct.resource_context** %14, align 8
  store i64 0, i64* %11, align 8
  br label %25

25:                                               ; preds = %60, %5
  %26 = load i64, i64* %11, align 8
  %27 = load i64, i64* @MAX_PIPES, align 8
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %29, label %63

29:                                               ; preds = %25
  %30 = load %struct.resource_context*, %struct.resource_context** %14, align 8
  %31 = getelementptr inbounds %struct.resource_context, %struct.resource_context* %30, i32 0, i32 0
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %31, align 8
  %33 = load i64, i64* %11, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load %struct.timing_generator*, %struct.timing_generator** %36, align 8
  store %struct.timing_generator* %37, %struct.timing_generator** %15, align 8
  %38 = load %struct.resource_context*, %struct.resource_context** %14, align 8
  %39 = getelementptr inbounds %struct.resource_context, %struct.resource_context* %38, i32 0, i32 0
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %39, align 8
  %41 = load i64, i64* %11, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load %struct.dc_stream_state*, %struct.dc_stream_state** %43, align 8
  %45 = load %struct.dc_stream_state*, %struct.dc_stream_state** %6, align 8
  %46 = icmp ne %struct.dc_stream_state* %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %29
  br label %60

48:                                               ; preds = %29
  %49 = load %struct.timing_generator*, %struct.timing_generator** %15, align 8
  %50 = getelementptr inbounds %struct.timing_generator, %struct.timing_generator* %49, i32 0, i32 0
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = load i32 (%struct.timing_generator*, i32*, i32*, i32*, i32*)*, i32 (%struct.timing_generator*, i32*, i32*, i32*, i32*)** %52, align 8
  %54 = load %struct.timing_generator*, %struct.timing_generator** %15, align 8
  %55 = load i32*, i32** %7, align 8
  %56 = load i32*, i32** %8, align 8
  %57 = load i32*, i32** %9, align 8
  %58 = load i32*, i32** %10, align 8
  %59 = call i32 %53(%struct.timing_generator* %54, i32* %55, i32* %56, i32* %57, i32* %58)
  store i32 1, i32* %12, align 4
  br label %63

60:                                               ; preds = %47
  %61 = load i64, i64* %11, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* %11, align 8
  br label %25

63:                                               ; preds = %48, %25
  %64 = load i32, i32* %12, align 4
  ret i32 %64
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
