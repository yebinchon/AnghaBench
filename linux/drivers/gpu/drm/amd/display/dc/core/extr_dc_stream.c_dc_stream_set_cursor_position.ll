; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_stream.c_dc_stream_set_cursor_position.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_stream.c_dc_stream_set_cursor_position.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_stream_state = type { %struct.dc_cursor_position, %struct.TYPE_5__* }
%struct.dc_cursor_position = type { i32 }
%struct.TYPE_5__ = type { %struct.dc* }
%struct.dc = type { %struct.TYPE_8__, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i32 (%struct.dc.0*, %struct.pipe_ctx*, i32)*, i32 (%struct.pipe_ctx*)* }
%struct.dc.0 = type opaque
%struct.pipe_ctx = type { %struct.TYPE_7__, i32, %struct.dc_stream_state* }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.resource_context }
%struct.resource_context = type { %struct.pipe_ctx* }

@.str = private unnamed_addr constant [24 x i8] c"DC: dc_stream is NULL!\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"DC: cursor position is NULL!\0A\00", align 1
@MAX_PIPES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dc_stream_set_cursor_position(%struct.dc_stream_state* %0, %struct.dc_cursor_position* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dc_stream_state*, align 8
  %5 = alloca %struct.dc_cursor_position*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dc*, align 8
  %8 = alloca %struct.resource_context*, align 8
  %9 = alloca %struct.pipe_ctx*, align 8
  %10 = alloca %struct.pipe_ctx*, align 8
  store %struct.dc_stream_state* %0, %struct.dc_stream_state** %4, align 8
  store %struct.dc_cursor_position* %1, %struct.dc_cursor_position** %5, align 8
  store %struct.pipe_ctx* null, %struct.pipe_ctx** %9, align 8
  %11 = load %struct.dc_stream_state*, %struct.dc_stream_state** %4, align 8
  %12 = icmp eq %struct.dc_stream_state* null, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = call i32 @dm_error(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %132

15:                                               ; preds = %2
  %16 = load %struct.dc_cursor_position*, %struct.dc_cursor_position** %5, align 8
  %17 = icmp eq %struct.dc_cursor_position* null, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = call i32 @dm_error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %132

20:                                               ; preds = %15
  %21 = load %struct.dc_stream_state*, %struct.dc_stream_state** %4, align 8
  %22 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %21, i32 0, i32 1
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load %struct.dc*, %struct.dc** %24, align 8
  store %struct.dc* %25, %struct.dc** %7, align 8
  %26 = load %struct.dc*, %struct.dc** %7, align 8
  %27 = getelementptr inbounds %struct.dc, %struct.dc* %26, i32 0, i32 1
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  store %struct.resource_context* %29, %struct.resource_context** %8, align 8
  %30 = load %struct.dc_stream_state*, %struct.dc_stream_state** %4, align 8
  %31 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %30, i32 0, i32 0
  %32 = load %struct.dc_cursor_position*, %struct.dc_cursor_position** %5, align 8
  %33 = bitcast %struct.dc_cursor_position* %31 to i8*
  %34 = bitcast %struct.dc_cursor_position* %32 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %33, i8* align 4 %34, i64 4, i1 false)
  store i32 0, i32* %6, align 4
  br label %35

35:                                               ; preds = %116, %20
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @MAX_PIPES, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %119

39:                                               ; preds = %35
  %40 = load %struct.resource_context*, %struct.resource_context** %8, align 8
  %41 = getelementptr inbounds %struct.resource_context, %struct.resource_context* %40, i32 0, i32 0
  %42 = load %struct.pipe_ctx*, %struct.pipe_ctx** %41, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %42, i64 %44
  store %struct.pipe_ctx* %45, %struct.pipe_ctx** %10, align 8
  %46 = load %struct.pipe_ctx*, %struct.pipe_ctx** %10, align 8
  %47 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %46, i32 0, i32 2
  %48 = load %struct.dc_stream_state*, %struct.dc_stream_state** %47, align 8
  %49 = load %struct.dc_stream_state*, %struct.dc_stream_state** %4, align 8
  %50 = icmp ne %struct.dc_stream_state* %48, %49
  br i1 %50, label %92, label %51

51:                                               ; preds = %39
  %52 = load %struct.pipe_ctx*, %struct.pipe_ctx** %10, align 8
  %53 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 8
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %63, label %57

57:                                               ; preds = %51
  %58 = load %struct.pipe_ctx*, %struct.pipe_ctx** %10, align 8
  %59 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %92

63:                                               ; preds = %57, %51
  %64 = load %struct.pipe_ctx*, %struct.pipe_ctx** %10, align 8
  %65 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %92

68:                                               ; preds = %63
  %69 = load %struct.pipe_ctx*, %struct.pipe_ctx** %10, align 8
  %70 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %80, label %74

74:                                               ; preds = %68
  %75 = load %struct.pipe_ctx*, %struct.pipe_ctx** %10, align 8
  %76 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %92

80:                                               ; preds = %74, %68
  %81 = load %struct.pipe_ctx*, %struct.pipe_ctx** %10, align 8
  %82 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %93, label %86

86:                                               ; preds = %80
  %87 = load %struct.pipe_ctx*, %struct.pipe_ctx** %10, align 8
  %88 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %93, label %92

92:                                               ; preds = %86, %74, %63, %57, %39
  br label %116

93:                                               ; preds = %86, %80
  %94 = load %struct.pipe_ctx*, %struct.pipe_ctx** %9, align 8
  %95 = icmp ne %struct.pipe_ctx* %94, null
  br i1 %95, label %109, label %96

96:                                               ; preds = %93
  %97 = load %struct.pipe_ctx*, %struct.pipe_ctx** %10, align 8
  store %struct.pipe_ctx* %97, %struct.pipe_ctx** %9, align 8
  %98 = load %struct.pipe_ctx*, %struct.pipe_ctx** %10, align 8
  %99 = load %struct.dc*, %struct.dc** %7, align 8
  %100 = call i32 @delay_cursor_until_vupdate(%struct.pipe_ctx* %98, %struct.dc* %99)
  %101 = load %struct.dc*, %struct.dc** %7, align 8
  %102 = getelementptr inbounds %struct.dc, %struct.dc* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 0
  %104 = load i32 (%struct.dc.0*, %struct.pipe_ctx*, i32)*, i32 (%struct.dc.0*, %struct.pipe_ctx*, i32)** %103, align 8
  %105 = load %struct.dc*, %struct.dc** %7, align 8
  %106 = bitcast %struct.dc* %105 to %struct.dc.0*
  %107 = load %struct.pipe_ctx*, %struct.pipe_ctx** %9, align 8
  %108 = call i32 %104(%struct.dc.0* %106, %struct.pipe_ctx* %107, i32 1)
  br label %109

109:                                              ; preds = %96, %93
  %110 = load %struct.dc*, %struct.dc** %7, align 8
  %111 = getelementptr inbounds %struct.dc, %struct.dc* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 1
  %113 = load i32 (%struct.pipe_ctx*)*, i32 (%struct.pipe_ctx*)** %112, align 8
  %114 = load %struct.pipe_ctx*, %struct.pipe_ctx** %10, align 8
  %115 = call i32 %113(%struct.pipe_ctx* %114)
  br label %116

116:                                              ; preds = %109, %92
  %117 = load i32, i32* %6, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %6, align 4
  br label %35

119:                                              ; preds = %35
  %120 = load %struct.pipe_ctx*, %struct.pipe_ctx** %9, align 8
  %121 = icmp ne %struct.pipe_ctx* %120, null
  br i1 %121, label %122, label %131

122:                                              ; preds = %119
  %123 = load %struct.dc*, %struct.dc** %7, align 8
  %124 = getelementptr inbounds %struct.dc, %struct.dc* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 0
  %126 = load i32 (%struct.dc.0*, %struct.pipe_ctx*, i32)*, i32 (%struct.dc.0*, %struct.pipe_ctx*, i32)** %125, align 8
  %127 = load %struct.dc*, %struct.dc** %7, align 8
  %128 = bitcast %struct.dc* %127 to %struct.dc.0*
  %129 = load %struct.pipe_ctx*, %struct.pipe_ctx** %9, align 8
  %130 = call i32 %126(%struct.dc.0* %128, %struct.pipe_ctx* %129, i32 0)
  br label %131

131:                                              ; preds = %122, %119
  store i32 1, i32* %3, align 4
  br label %132

132:                                              ; preds = %131, %18, %13
  %133 = load i32, i32* %3, align 4
  ret i32 %133
}

declare dso_local i32 @dm_error(i8*) #1

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
