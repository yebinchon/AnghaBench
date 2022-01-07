; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hw_sequencer.c_dcn10_blank_pixel_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hw_sequencer.c_dcn10_blank_pixel_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc = type { i32 }
%struct.pipe_ctx = type { %struct.dc_stream_state*, %struct.stream_resource }
%struct.dc_stream_state = type { i32, i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }
%struct.stream_resource = type { %struct.TYPE_13__*, %struct.TYPE_14__* }
%struct.TYPE_13__ = type { %struct.TYPE_12__*, i64 }
%struct.TYPE_12__ = type { i32 (%struct.TYPE_13__*, i32)*, i32 (%struct.TYPE_13__*, %struct.tg_color*)* }
%struct.tg_color = type { i32, i32, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 (%struct.TYPE_14__*)*, i32 (%struct.TYPE_14__*, i32)*, i32 (%struct.TYPE_14__*, i64)* }

@PIXEL_ENCODING_YCBCR420 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dc*, %struct.pipe_ctx*, i32)* @dcn10_blank_pixel_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dcn10_blank_pixel_data(%struct.dc* %0, %struct.pipe_ctx* %1, i32 %2) #0 {
  %4 = alloca %struct.dc*, align 8
  %5 = alloca %struct.pipe_ctx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.tg_color, align 4
  %9 = alloca %struct.stream_resource*, align 8
  %10 = alloca %struct.dc_stream_state*, align 8
  store %struct.dc* %0, %struct.dc** %4, align 8
  store %struct.pipe_ctx* %1, %struct.pipe_ctx** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = bitcast %struct.tg_color* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %11, i8 0, i64 12, i1 false)
  %12 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %13 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %12, i32 0, i32 1
  store %struct.stream_resource* %13, %struct.stream_resource** %9, align 8
  %14 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %15 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %14, i32 0, i32 0
  %16 = load %struct.dc_stream_state*, %struct.dc_stream_state** %15, align 8
  store %struct.dc_stream_state* %16, %struct.dc_stream_state** %10, align 8
  %17 = load %struct.dc_stream_state*, %struct.dc_stream_state** %10, align 8
  %18 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %7, align 4
  %20 = load %struct.dc*, %struct.dc** %4, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @color_space_to_black_color(%struct.dc* %20, i32 %21, %struct.tg_color* %8)
  %23 = load %struct.dc_stream_state*, %struct.dc_stream_state** %10, align 8
  %24 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @PIXEL_ENCODING_YCBCR420, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %3
  %30 = getelementptr inbounds %struct.tg_color, %struct.tg_color* %8, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.tg_color, %struct.tg_color* %8, i32 0, i32 1
  store i32 %31, i32* %32, align 4
  br label %33

33:                                               ; preds = %29, %3
  %34 = load %struct.stream_resource*, %struct.stream_resource** %9, align 8
  %35 = getelementptr inbounds %struct.stream_resource, %struct.stream_resource* %34, i32 0, i32 0
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 1
  %40 = load i32 (%struct.TYPE_13__*, %struct.tg_color*)*, i32 (%struct.TYPE_13__*, %struct.tg_color*)** %39, align 8
  %41 = icmp ne i32 (%struct.TYPE_13__*, %struct.tg_color*)* %40, null
  br i1 %41, label %42, label %54

42:                                               ; preds = %33
  %43 = load %struct.stream_resource*, %struct.stream_resource** %9, align 8
  %44 = getelementptr inbounds %struct.stream_resource, %struct.stream_resource* %43, i32 0, i32 0
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 1
  %49 = load i32 (%struct.TYPE_13__*, %struct.tg_color*)*, i32 (%struct.TYPE_13__*, %struct.tg_color*)** %48, align 8
  %50 = load %struct.stream_resource*, %struct.stream_resource** %9, align 8
  %51 = getelementptr inbounds %struct.stream_resource, %struct.stream_resource* %50, i32 0, i32 0
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %51, align 8
  %53 = call i32 %49(%struct.TYPE_13__* %52, %struct.tg_color* %8)
  br label %54

54:                                               ; preds = %42, %33
  %55 = load i32, i32* %6, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %117, label %57

57:                                               ; preds = %54
  %58 = load %struct.stream_resource*, %struct.stream_resource** %9, align 8
  %59 = getelementptr inbounds %struct.stream_resource, %struct.stream_resource* %58, i32 0, i32 0
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 0
  %64 = load i32 (%struct.TYPE_13__*, i32)*, i32 (%struct.TYPE_13__*, i32)** %63, align 8
  %65 = icmp ne i32 (%struct.TYPE_13__*, i32)* %64, null
  br i1 %65, label %66, label %79

66:                                               ; preds = %57
  %67 = load %struct.stream_resource*, %struct.stream_resource** %9, align 8
  %68 = getelementptr inbounds %struct.stream_resource, %struct.stream_resource* %67, i32 0, i32 0
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 0
  %73 = load i32 (%struct.TYPE_13__*, i32)*, i32 (%struct.TYPE_13__*, i32)** %72, align 8
  %74 = load %struct.stream_resource*, %struct.stream_resource** %9, align 8
  %75 = getelementptr inbounds %struct.stream_resource, %struct.stream_resource* %74, i32 0, i32 0
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %75, align 8
  %77 = load i32, i32* %6, align 4
  %78 = call i32 %73(%struct.TYPE_13__* %76, i32 %77)
  br label %79

79:                                               ; preds = %66, %57
  %80 = load %struct.stream_resource*, %struct.stream_resource** %9, align 8
  %81 = getelementptr inbounds %struct.stream_resource, %struct.stream_resource* %80, i32 0, i32 1
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %81, align 8
  %83 = icmp ne %struct.TYPE_14__* %82, null
  br i1 %83, label %84, label %116

84:                                               ; preds = %79
  %85 = load %struct.stream_resource*, %struct.stream_resource** %9, align 8
  %86 = getelementptr inbounds %struct.stream_resource, %struct.stream_resource* %85, i32 0, i32 1
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 2
  %91 = load i32 (%struct.TYPE_14__*, i64)*, i32 (%struct.TYPE_14__*, i64)** %90, align 8
  %92 = load %struct.stream_resource*, %struct.stream_resource** %9, align 8
  %93 = getelementptr inbounds %struct.stream_resource, %struct.stream_resource* %92, i32 0, i32 1
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %93, align 8
  %95 = load %struct.stream_resource*, %struct.stream_resource** %9, align 8
  %96 = getelementptr inbounds %struct.stream_resource, %struct.stream_resource* %95, i32 0, i32 0
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = add nsw i64 %99, 1
  %101 = call i32 %91(%struct.TYPE_14__* %94, i64 %100)
  %102 = load %struct.stream_resource*, %struct.stream_resource** %9, align 8
  %103 = getelementptr inbounds %struct.stream_resource, %struct.stream_resource* %102, i32 0, i32 1
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 1
  %108 = load i32 (%struct.TYPE_14__*, i32)*, i32 (%struct.TYPE_14__*, i32)** %107, align 8
  %109 = load %struct.stream_resource*, %struct.stream_resource** %9, align 8
  %110 = getelementptr inbounds %struct.stream_resource, %struct.stream_resource* %109, i32 0, i32 1
  %111 = load %struct.TYPE_14__*, %struct.TYPE_14__** %110, align 8
  %112 = load %struct.dc_stream_state*, %struct.dc_stream_state** %10, align 8
  %113 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = call i32 %108(%struct.TYPE_14__* %111, i32 %114)
  br label %116

116:                                              ; preds = %84, %79
  br label %161

117:                                              ; preds = %54
  %118 = load i32, i32* %6, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %160

120:                                              ; preds = %117
  %121 = load %struct.stream_resource*, %struct.stream_resource** %9, align 8
  %122 = getelementptr inbounds %struct.stream_resource, %struct.stream_resource* %121, i32 0, i32 1
  %123 = load %struct.TYPE_14__*, %struct.TYPE_14__** %122, align 8
  %124 = icmp ne %struct.TYPE_14__* %123, null
  br i1 %124, label %125, label %137

125:                                              ; preds = %120
  %126 = load %struct.stream_resource*, %struct.stream_resource** %9, align 8
  %127 = getelementptr inbounds %struct.stream_resource, %struct.stream_resource* %126, i32 0, i32 1
  %128 = load %struct.TYPE_14__*, %struct.TYPE_14__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %128, i32 0, i32 0
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 0
  %132 = load i32 (%struct.TYPE_14__*)*, i32 (%struct.TYPE_14__*)** %131, align 8
  %133 = load %struct.stream_resource*, %struct.stream_resource** %9, align 8
  %134 = getelementptr inbounds %struct.stream_resource, %struct.stream_resource* %133, i32 0, i32 1
  %135 = load %struct.TYPE_14__*, %struct.TYPE_14__** %134, align 8
  %136 = call i32 %132(%struct.TYPE_14__* %135)
  br label %137

137:                                              ; preds = %125, %120
  %138 = load %struct.stream_resource*, %struct.stream_resource** %9, align 8
  %139 = getelementptr inbounds %struct.stream_resource, %struct.stream_resource* %138, i32 0, i32 0
  %140 = load %struct.TYPE_13__*, %struct.TYPE_13__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %140, i32 0, i32 0
  %142 = load %struct.TYPE_12__*, %struct.TYPE_12__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i32 0, i32 0
  %144 = load i32 (%struct.TYPE_13__*, i32)*, i32 (%struct.TYPE_13__*, i32)** %143, align 8
  %145 = icmp ne i32 (%struct.TYPE_13__*, i32)* %144, null
  br i1 %145, label %146, label %159

146:                                              ; preds = %137
  %147 = load %struct.stream_resource*, %struct.stream_resource** %9, align 8
  %148 = getelementptr inbounds %struct.stream_resource, %struct.stream_resource* %147, i32 0, i32 0
  %149 = load %struct.TYPE_13__*, %struct.TYPE_13__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %149, i32 0, i32 0
  %151 = load %struct.TYPE_12__*, %struct.TYPE_12__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %151, i32 0, i32 0
  %153 = load i32 (%struct.TYPE_13__*, i32)*, i32 (%struct.TYPE_13__*, i32)** %152, align 8
  %154 = load %struct.stream_resource*, %struct.stream_resource** %9, align 8
  %155 = getelementptr inbounds %struct.stream_resource, %struct.stream_resource* %154, i32 0, i32 0
  %156 = load %struct.TYPE_13__*, %struct.TYPE_13__** %155, align 8
  %157 = load i32, i32* %6, align 4
  %158 = call i32 %153(%struct.TYPE_13__* %156, i32 %157)
  br label %159

159:                                              ; preds = %146, %137
  br label %160

160:                                              ; preds = %159, %117
  br label %161

161:                                              ; preds = %160, %116
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @color_space_to_black_color(%struct.dc*, i32, %struct.tg_color*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
