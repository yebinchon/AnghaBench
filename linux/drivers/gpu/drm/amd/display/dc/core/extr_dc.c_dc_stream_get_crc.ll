; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc.c_dc_stream_get_crc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc.c_dc_stream_get_crc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.pipe_ctx* }
%struct.pipe_ctx = type { %struct.TYPE_7__, %struct.dc_stream_state* }
%struct.TYPE_7__ = type { %struct.timing_generator* }
%struct.timing_generator = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 (%struct.timing_generator*, i32*, i32*, i32*)* }
%struct.dc_stream_state = type { i32 }

@MAX_PIPES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"CRC capture not supported.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dc_stream_get_crc(%struct.dc* %0, %struct.dc_stream_state* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.dc*, align 8
  %8 = alloca %struct.dc_stream_state*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.pipe_ctx*, align 8
  %14 = alloca %struct.timing_generator*, align 8
  store %struct.dc* %0, %struct.dc** %7, align 8
  store %struct.dc_stream_state* %1, %struct.dc_stream_state** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 0, i32* %12, align 4
  br label %15

15:                                               ; preds = %36, %5
  %16 = load i32, i32* %12, align 4
  %17 = load i32, i32* @MAX_PIPES, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %39

19:                                               ; preds = %15
  %20 = load %struct.dc*, %struct.dc** %7, align 8
  %21 = getelementptr inbounds %struct.dc, %struct.dc* %20, i32 0, i32 0
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load %struct.pipe_ctx*, %struct.pipe_ctx** %24, align 8
  %26 = load i32, i32* %12, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %25, i64 %27
  store %struct.pipe_ctx* %28, %struct.pipe_ctx** %13, align 8
  %29 = load %struct.pipe_ctx*, %struct.pipe_ctx** %13, align 8
  %30 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %29, i32 0, i32 1
  %31 = load %struct.dc_stream_state*, %struct.dc_stream_state** %30, align 8
  %32 = load %struct.dc_stream_state*, %struct.dc_stream_state** %8, align 8
  %33 = icmp eq %struct.dc_stream_state* %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %19
  br label %39

35:                                               ; preds = %19
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %12, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %12, align 4
  br label %15

39:                                               ; preds = %34, %15
  %40 = load i32, i32* %12, align 4
  %41 = load i32, i32* @MAX_PIPES, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  store i32 0, i32* %6, align 4
  br label %68

44:                                               ; preds = %39
  %45 = load %struct.pipe_ctx*, %struct.pipe_ctx** %13, align 8
  %46 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load %struct.timing_generator*, %struct.timing_generator** %47, align 8
  store %struct.timing_generator* %48, %struct.timing_generator** %14, align 8
  %49 = load %struct.timing_generator*, %struct.timing_generator** %14, align 8
  %50 = getelementptr inbounds %struct.timing_generator, %struct.timing_generator* %49, i32 0, i32 0
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i32 (%struct.timing_generator*, i32*, i32*, i32*)*, i32 (%struct.timing_generator*, i32*, i32*, i32*)** %52, align 8
  %54 = icmp ne i32 (%struct.timing_generator*, i32*, i32*, i32*)* %53, null
  br i1 %54, label %55, label %66

55:                                               ; preds = %44
  %56 = load %struct.timing_generator*, %struct.timing_generator** %14, align 8
  %57 = getelementptr inbounds %struct.timing_generator, %struct.timing_generator* %56, i32 0, i32 0
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load i32 (%struct.timing_generator*, i32*, i32*, i32*)*, i32 (%struct.timing_generator*, i32*, i32*, i32*)** %59, align 8
  %61 = load %struct.timing_generator*, %struct.timing_generator** %14, align 8
  %62 = load i32*, i32** %9, align 8
  %63 = load i32*, i32** %10, align 8
  %64 = load i32*, i32** %11, align 8
  %65 = call i32 %60(%struct.timing_generator* %61, i32* %62, i32* %63, i32* %64)
  store i32 %65, i32* %6, align 4
  br label %68

66:                                               ; preds = %44
  %67 = call i32 @DC_LOG_WARNING(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %68

68:                                               ; preds = %66, %55, %43
  %69 = load i32, i32* %6, align 4
  ret i32 %69
}

declare dso_local i32 @DC_LOG_WARNING(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
