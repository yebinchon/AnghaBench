; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_stream.c_dc_stream_set_cursor_attributes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_stream.c_dc_stream_set_cursor_attributes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_stream_state = type { %struct.dc_cursor_attributes, %struct.TYPE_6__* }
%struct.dc_cursor_attributes = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { %struct.dc* }
%struct.dc = type { %struct.TYPE_8__, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32 (%struct.dc.0*, %struct.pipe_ctx*, i32)*, i32 (%struct.pipe_ctx*)*, i32 (%struct.pipe_ctx*)* }
%struct.dc.0 = type opaque
%struct.pipe_ctx = type { %struct.dc_stream_state* }
%struct.TYPE_7__ = type { %struct.resource_context }
%struct.resource_context = type { %struct.pipe_ctx* }

@.str = private unnamed_addr constant [24 x i8] c"DC: dc_stream is NULL!\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"DC: attributes is NULL!\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"DC: Cursor address is 0!\0A\00", align 1
@MAX_PIPES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dc_stream_set_cursor_attributes(%struct.dc_stream_state* %0, %struct.dc_cursor_attributes* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dc_stream_state*, align 8
  %5 = alloca %struct.dc_cursor_attributes*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dc*, align 8
  %8 = alloca %struct.resource_context*, align 8
  %9 = alloca %struct.pipe_ctx*, align 8
  %10 = alloca %struct.pipe_ctx*, align 8
  store %struct.dc_stream_state* %0, %struct.dc_stream_state** %4, align 8
  store %struct.dc_cursor_attributes* %1, %struct.dc_cursor_attributes** %5, align 8
  store %struct.pipe_ctx* null, %struct.pipe_ctx** %9, align 8
  %11 = load %struct.dc_stream_state*, %struct.dc_stream_state** %4, align 8
  %12 = icmp eq %struct.dc_stream_state* null, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = call i32 @dm_error(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %112

15:                                               ; preds = %2
  %16 = load %struct.dc_cursor_attributes*, %struct.dc_cursor_attributes** %5, align 8
  %17 = icmp eq %struct.dc_cursor_attributes* null, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = call i32 @dm_error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %112

20:                                               ; preds = %15
  %21 = load %struct.dc_cursor_attributes*, %struct.dc_cursor_attributes** %5, align 8
  %22 = getelementptr inbounds %struct.dc_cursor_attributes, %struct.dc_cursor_attributes* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = call i32 @dm_output_to_console(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %112

28:                                               ; preds = %20
  %29 = load %struct.dc_stream_state*, %struct.dc_stream_state** %4, align 8
  %30 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %29, i32 0, i32 1
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load %struct.dc*, %struct.dc** %32, align 8
  store %struct.dc* %33, %struct.dc** %7, align 8
  %34 = load %struct.dc*, %struct.dc** %7, align 8
  %35 = getelementptr inbounds %struct.dc, %struct.dc* %34, i32 0, i32 1
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  store %struct.resource_context* %37, %struct.resource_context** %8, align 8
  %38 = load %struct.dc_stream_state*, %struct.dc_stream_state** %4, align 8
  %39 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %38, i32 0, i32 0
  %40 = load %struct.dc_cursor_attributes*, %struct.dc_cursor_attributes** %5, align 8
  %41 = bitcast %struct.dc_cursor_attributes* %39 to i8*
  %42 = bitcast %struct.dc_cursor_attributes* %40 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %41, i8* align 8 %42, i64 8, i1 false)
  store i32 0, i32* %6, align 4
  br label %43

43:                                               ; preds = %96, %28
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @MAX_PIPES, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %99

47:                                               ; preds = %43
  %48 = load %struct.resource_context*, %struct.resource_context** %8, align 8
  %49 = getelementptr inbounds %struct.resource_context, %struct.resource_context* %48, i32 0, i32 0
  %50 = load %struct.pipe_ctx*, %struct.pipe_ctx** %49, align 8
  %51 = load i32, i32* %6, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %50, i64 %52
  store %struct.pipe_ctx* %53, %struct.pipe_ctx** %10, align 8
  %54 = load %struct.pipe_ctx*, %struct.pipe_ctx** %10, align 8
  %55 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %54, i32 0, i32 0
  %56 = load %struct.dc_stream_state*, %struct.dc_stream_state** %55, align 8
  %57 = load %struct.dc_stream_state*, %struct.dc_stream_state** %4, align 8
  %58 = icmp ne %struct.dc_stream_state* %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %47
  br label %96

60:                                               ; preds = %47
  %61 = load %struct.pipe_ctx*, %struct.pipe_ctx** %9, align 8
  %62 = icmp ne %struct.pipe_ctx* %61, null
  br i1 %62, label %76, label %63

63:                                               ; preds = %60
  %64 = load %struct.pipe_ctx*, %struct.pipe_ctx** %10, align 8
  store %struct.pipe_ctx* %64, %struct.pipe_ctx** %9, align 8
  %65 = load %struct.pipe_ctx*, %struct.pipe_ctx** %10, align 8
  %66 = load %struct.dc*, %struct.dc** %7, align 8
  %67 = call i32 @delay_cursor_until_vupdate(%struct.pipe_ctx* %65, %struct.dc* %66)
  %68 = load %struct.dc*, %struct.dc** %7, align 8
  %69 = getelementptr inbounds %struct.dc, %struct.dc* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = load i32 (%struct.dc.0*, %struct.pipe_ctx*, i32)*, i32 (%struct.dc.0*, %struct.pipe_ctx*, i32)** %70, align 8
  %72 = load %struct.dc*, %struct.dc** %7, align 8
  %73 = bitcast %struct.dc* %72 to %struct.dc.0*
  %74 = load %struct.pipe_ctx*, %struct.pipe_ctx** %9, align 8
  %75 = call i32 %71(%struct.dc.0* %73, %struct.pipe_ctx* %74, i32 1)
  br label %76

76:                                               ; preds = %63, %60
  %77 = load %struct.dc*, %struct.dc** %7, align 8
  %78 = getelementptr inbounds %struct.dc, %struct.dc* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 2
  %80 = load i32 (%struct.pipe_ctx*)*, i32 (%struct.pipe_ctx*)** %79, align 8
  %81 = load %struct.pipe_ctx*, %struct.pipe_ctx** %10, align 8
  %82 = call i32 %80(%struct.pipe_ctx* %81)
  %83 = load %struct.dc*, %struct.dc** %7, align 8
  %84 = getelementptr inbounds %struct.dc, %struct.dc* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 1
  %86 = load i32 (%struct.pipe_ctx*)*, i32 (%struct.pipe_ctx*)** %85, align 8
  %87 = icmp ne i32 (%struct.pipe_ctx*)* %86, null
  br i1 %87, label %88, label %95

88:                                               ; preds = %76
  %89 = load %struct.dc*, %struct.dc** %7, align 8
  %90 = getelementptr inbounds %struct.dc, %struct.dc* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 1
  %92 = load i32 (%struct.pipe_ctx*)*, i32 (%struct.pipe_ctx*)** %91, align 8
  %93 = load %struct.pipe_ctx*, %struct.pipe_ctx** %10, align 8
  %94 = call i32 %92(%struct.pipe_ctx* %93)
  br label %95

95:                                               ; preds = %88, %76
  br label %96

96:                                               ; preds = %95, %59
  %97 = load i32, i32* %6, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %6, align 4
  br label %43

99:                                               ; preds = %43
  %100 = load %struct.pipe_ctx*, %struct.pipe_ctx** %9, align 8
  %101 = icmp ne %struct.pipe_ctx* %100, null
  br i1 %101, label %102, label %111

102:                                              ; preds = %99
  %103 = load %struct.dc*, %struct.dc** %7, align 8
  %104 = getelementptr inbounds %struct.dc, %struct.dc* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 0
  %106 = load i32 (%struct.dc.0*, %struct.pipe_ctx*, i32)*, i32 (%struct.dc.0*, %struct.pipe_ctx*, i32)** %105, align 8
  %107 = load %struct.dc*, %struct.dc** %7, align 8
  %108 = bitcast %struct.dc* %107 to %struct.dc.0*
  %109 = load %struct.pipe_ctx*, %struct.pipe_ctx** %9, align 8
  %110 = call i32 %106(%struct.dc.0* %108, %struct.pipe_ctx* %109, i32 0)
  br label %111

111:                                              ; preds = %102, %99
  store i32 1, i32* %3, align 4
  br label %112

112:                                              ; preds = %111, %26, %18, %13
  %113 = load i32, i32* %3, align 4
  ret i32 %113
}

declare dso_local i32 @dm_error(i8*) #1

declare dso_local i32 @dm_output_to_console(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @delay_cursor_until_vupdate(%struct.pipe_ctx*, %struct.dc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
