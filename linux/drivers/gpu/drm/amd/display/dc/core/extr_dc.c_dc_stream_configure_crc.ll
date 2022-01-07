; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc.c_dc_stream_configure_crc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc.c_dc_stream_configure_crc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.pipe_ctx* }
%struct.pipe_ctx = type { %struct.TYPE_9__, %struct.dc_stream_state* }
%struct.TYPE_9__ = type { %struct.timing_generator* }
%struct.timing_generator = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 (%struct.timing_generator*, %struct.crc_params*)* }
%struct.crc_params = type { i32, i32, i32, i32, i32, i64, i64, i32, i32, i64, i64 }
%struct.dc_stream_state = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }

@MAX_PIPES = common dso_local global i32 0, align 4
@UNION_WINDOW_A_B = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"CRC capture not supported.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dc_stream_configure_crc(%struct.dc* %0, %struct.dc_stream_state* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dc*, align 8
  %7 = alloca %struct.dc_stream_state*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.pipe_ctx*, align 8
  %12 = alloca %struct.crc_params, align 8
  %13 = alloca %struct.timing_generator*, align 8
  store %struct.dc* %0, %struct.dc** %6, align 8
  store %struct.dc_stream_state* %1, %struct.dc_stream_state** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %14

14:                                               ; preds = %35, %4
  %15 = load i32, i32* %10, align 4
  %16 = load i32, i32* @MAX_PIPES, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %38

18:                                               ; preds = %14
  %19 = load %struct.dc*, %struct.dc** %6, align 8
  %20 = getelementptr inbounds %struct.dc, %struct.dc* %19, i32 0, i32 0
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load %struct.pipe_ctx*, %struct.pipe_ctx** %23, align 8
  %25 = load i32, i32* %10, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %24, i64 %26
  store %struct.pipe_ctx* %27, %struct.pipe_ctx** %11, align 8
  %28 = load %struct.pipe_ctx*, %struct.pipe_ctx** %11, align 8
  %29 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %28, i32 0, i32 1
  %30 = load %struct.dc_stream_state*, %struct.dc_stream_state** %29, align 8
  %31 = load %struct.dc_stream_state*, %struct.dc_stream_state** %7, align 8
  %32 = icmp eq %struct.dc_stream_state* %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %18
  br label %38

34:                                               ; preds = %18
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %10, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %10, align 4
  br label %14

38:                                               ; preds = %33, %14
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* @MAX_PIPES, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  store i32 0, i32* %5, align 4
  br label %102

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.crc_params, %struct.crc_params* %12, i32 0, i32 10
  store i64 0, i64* %44, align 8
  %45 = getelementptr inbounds %struct.crc_params, %struct.crc_params* %12, i32 0, i32 9
  store i64 0, i64* %45, align 8
  %46 = load %struct.pipe_ctx*, %struct.pipe_ctx** %11, align 8
  %47 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %46, i32 0, i32 1
  %48 = load %struct.dc_stream_state*, %struct.dc_stream_state** %47, align 8
  %49 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds %struct.crc_params, %struct.crc_params* %12, i32 0, i32 8
  store i32 %51, i32* %52, align 4
  %53 = load %struct.pipe_ctx*, %struct.pipe_ctx** %11, align 8
  %54 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %53, i32 0, i32 1
  %55 = load %struct.dc_stream_state*, %struct.dc_stream_state** %54, align 8
  %56 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = getelementptr inbounds %struct.crc_params, %struct.crc_params* %12, i32 0, i32 7
  store i32 %58, i32* %59, align 8
  %60 = getelementptr inbounds %struct.crc_params, %struct.crc_params* %12, i32 0, i32 6
  store i64 0, i64* %60, align 8
  %61 = getelementptr inbounds %struct.crc_params, %struct.crc_params* %12, i32 0, i32 5
  store i64 0, i64* %61, align 8
  %62 = load %struct.pipe_ctx*, %struct.pipe_ctx** %11, align 8
  %63 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %62, i32 0, i32 1
  %64 = load %struct.dc_stream_state*, %struct.dc_stream_state** %63, align 8
  %65 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = getelementptr inbounds %struct.crc_params, %struct.crc_params* %12, i32 0, i32 4
  store i32 %67, i32* %68, align 8
  %69 = load %struct.pipe_ctx*, %struct.pipe_ctx** %11, align 8
  %70 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %69, i32 0, i32 1
  %71 = load %struct.dc_stream_state*, %struct.dc_stream_state** %70, align 8
  %72 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = getelementptr inbounds %struct.crc_params, %struct.crc_params* %12, i32 0, i32 3
  store i32 %74, i32* %75, align 4
  %76 = load i32, i32* @UNION_WINDOW_A_B, align 4
  %77 = getelementptr inbounds %struct.crc_params, %struct.crc_params* %12, i32 0, i32 2
  store i32 %76, i32* %77, align 8
  %78 = load i32, i32* %9, align 4
  %79 = getelementptr inbounds %struct.crc_params, %struct.crc_params* %12, i32 0, i32 0
  store i32 %78, i32* %79, align 8
  %80 = load i32, i32* %8, align 4
  %81 = getelementptr inbounds %struct.crc_params, %struct.crc_params* %12, i32 0, i32 1
  store i32 %80, i32* %81, align 4
  %82 = load %struct.pipe_ctx*, %struct.pipe_ctx** %11, align 8
  %83 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  %85 = load %struct.timing_generator*, %struct.timing_generator** %84, align 8
  store %struct.timing_generator* %85, %struct.timing_generator** %13, align 8
  %86 = load %struct.timing_generator*, %struct.timing_generator** %13, align 8
  %87 = getelementptr inbounds %struct.timing_generator, %struct.timing_generator* %86, i32 0, i32 0
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 0
  %90 = load i32 (%struct.timing_generator*, %struct.crc_params*)*, i32 (%struct.timing_generator*, %struct.crc_params*)** %89, align 8
  %91 = icmp ne i32 (%struct.timing_generator*, %struct.crc_params*)* %90, null
  br i1 %91, label %92, label %100

92:                                               ; preds = %43
  %93 = load %struct.timing_generator*, %struct.timing_generator** %13, align 8
  %94 = getelementptr inbounds %struct.timing_generator, %struct.timing_generator* %93, i32 0, i32 0
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 0
  %97 = load i32 (%struct.timing_generator*, %struct.crc_params*)*, i32 (%struct.timing_generator*, %struct.crc_params*)** %96, align 8
  %98 = load %struct.timing_generator*, %struct.timing_generator** %13, align 8
  %99 = call i32 %97(%struct.timing_generator* %98, %struct.crc_params* %12)
  store i32 %99, i32* %5, align 4
  br label %102

100:                                              ; preds = %43
  %101 = call i32 @DC_LOG_WARNING(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %102

102:                                              ; preds = %100, %92, %42
  %103 = load i32, i32* %5, align 4
  ret i32 %103
}

declare dso_local i32 @DC_LOG_WARNING(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
