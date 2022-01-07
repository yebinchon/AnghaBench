; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_hwseq.c_dcn20_blank_pixel_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_hwseq.c_dcn20_blank_pixel_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64 }
%struct.pipe_ctx = type { %struct.stream_resource, %struct.pipe_ctx*, %struct.dc_stream_state* }
%struct.stream_resource = type { %struct.TYPE_16__*, %struct.TYPE_14__*, %struct.TYPE_17__* }
%struct.TYPE_16__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 (%struct.TYPE_16__*, i32)*, i32 (%struct.TYPE_16__*, i64)*, i32 (%struct.TYPE_16__*)* }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_17__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 (%struct.TYPE_17__*, i32, i32, %struct.tg_color*, i32, i32)* }
%struct.tg_color = type { i32 }
%struct.dc_stream_state = type { i32, i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i32, i32, i32 }

@CONTROLLER_DP_TEST_PATTERN_SOLID_COLOR = common dso_local global i32 0, align 4
@VISUAL_CONFIRM_DISABLE = common dso_local global i64 0, align 8
@CONTROLLER_DP_TEST_PATTERN_COLORSQUARES = common dso_local global i32 0, align 4
@CONTROLLER_DP_TEST_PATTERN_VIDEOMODE = common dso_local global i32 0, align 4
@CONTROLLER_DP_TEST_PATTERN_COLORRAMP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dcn20_blank_pixel_data(%struct.dc* %0, %struct.pipe_ctx* %1, i32 %2) #0 {
  %4 = alloca %struct.dc*, align 8
  %5 = alloca %struct.pipe_ctx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.tg_color, align 4
  %8 = alloca %struct.stream_resource*, align 8
  %9 = alloca %struct.dc_stream_state*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.pipe_ctx*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.dc* %0, %struct.dc** %4, align 8
  store %struct.pipe_ctx* %1, %struct.pipe_ctx** %5, align 8
  store i32 %2, i32* %6, align 4
  %16 = bitcast %struct.tg_color* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %16, i8 0, i64 4, i1 false)
  %17 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %18 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %17, i32 0, i32 0
  store %struct.stream_resource* %18, %struct.stream_resource** %8, align 8
  %19 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %20 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %19, i32 0, i32 2
  %21 = load %struct.dc_stream_state*, %struct.dc_stream_state** %20, align 8
  store %struct.dc_stream_state* %21, %struct.dc_stream_state** %9, align 8
  %22 = load %struct.dc_stream_state*, %struct.dc_stream_state** %9, align 8
  %23 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* @CONTROLLER_DP_TEST_PATTERN_SOLID_COLOR, align 4
  store i32 %25, i32* %11, align 4
  store i32 1, i32* %13, align 4
  %26 = load %struct.dc_stream_state*, %struct.dc_stream_state** %9, align 8
  %27 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.dc_stream_state*, %struct.dc_stream_state** %9, align 8
  %31 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %29, %33
  %35 = load %struct.dc_stream_state*, %struct.dc_stream_state** %9, align 8
  %36 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %34, %38
  store i32 %39, i32* %14, align 4
  %40 = load %struct.dc_stream_state*, %struct.dc_stream_state** %9, align 8
  %41 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.dc_stream_state*, %struct.dc_stream_state** %9, align 8
  %45 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %43, %47
  %49 = load %struct.dc_stream_state*, %struct.dc_stream_state** %9, align 8
  %50 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 5
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %48, %52
  store i32 %53, i32* %15, align 4
  %54 = load %struct.dc*, %struct.dc** %4, align 8
  %55 = load i32, i32* %10, align 4
  %56 = call i32 @color_space_to_black_color(%struct.dc* %54, i32 %55, %struct.tg_color* %7)
  %57 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %58 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %57, i32 0, i32 1
  %59 = load %struct.pipe_ctx*, %struct.pipe_ctx** %58, align 8
  store %struct.pipe_ctx* %59, %struct.pipe_ctx** %12, align 8
  br label %60

60:                                               ; preds = %66, %3
  %61 = load %struct.pipe_ctx*, %struct.pipe_ctx** %12, align 8
  %62 = icmp ne %struct.pipe_ctx* %61, null
  br i1 %62, label %63, label %70

63:                                               ; preds = %60
  %64 = load i32, i32* %13, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %13, align 4
  br label %66

66:                                               ; preds = %63
  %67 = load %struct.pipe_ctx*, %struct.pipe_ctx** %12, align 8
  %68 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %67, i32 0, i32 1
  %69 = load %struct.pipe_ctx*, %struct.pipe_ctx** %68, align 8
  store %struct.pipe_ctx* %69, %struct.pipe_ctx** %12, align 8
  br label %60

70:                                               ; preds = %60
  %71 = load i32, i32* %14, align 4
  %72 = load i32, i32* %13, align 4
  %73 = sdiv i32 %71, %72
  store i32 %73, i32* %14, align 4
  %74 = load i32, i32* %6, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %103

76:                                               ; preds = %70
  %77 = load %struct.stream_resource*, %struct.stream_resource** %8, align 8
  %78 = getelementptr inbounds %struct.stream_resource, %struct.stream_resource* %77, i32 0, i32 0
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %78, align 8
  %80 = icmp ne %struct.TYPE_16__* %79, null
  br i1 %80, label %81, label %93

81:                                               ; preds = %76
  %82 = load %struct.stream_resource*, %struct.stream_resource** %8, align 8
  %83 = getelementptr inbounds %struct.stream_resource, %struct.stream_resource* %82, i32 0, i32 0
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 2
  %88 = load i32 (%struct.TYPE_16__*)*, i32 (%struct.TYPE_16__*)** %87, align 8
  %89 = load %struct.stream_resource*, %struct.stream_resource** %8, align 8
  %90 = getelementptr inbounds %struct.stream_resource, %struct.stream_resource* %89, i32 0, i32 0
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %90, align 8
  %92 = call i32 %88(%struct.TYPE_16__* %91)
  br label %93

93:                                               ; preds = %81, %76
  %94 = load %struct.dc*, %struct.dc** %4, align 8
  %95 = getelementptr inbounds %struct.dc, %struct.dc* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @VISUAL_CONFIRM_DISABLE, align 8
  %99 = icmp ne i64 %97, %98
  br i1 %99, label %100, label %102

100:                                              ; preds = %93
  %101 = load i32, i32* @CONTROLLER_DP_TEST_PATTERN_COLORSQUARES, align 4
  store i32 %101, i32* %11, align 4
  br label %102

102:                                              ; preds = %100, %93
  br label %105

103:                                              ; preds = %70
  %104 = load i32, i32* @CONTROLLER_DP_TEST_PATTERN_VIDEOMODE, align 4
  store i32 %104, i32* %11, align 4
  br label %105

105:                                              ; preds = %103, %102
  %106 = load %struct.stream_resource*, %struct.stream_resource** %8, align 8
  %107 = getelementptr inbounds %struct.stream_resource, %struct.stream_resource* %106, i32 0, i32 2
  %108 = load %struct.TYPE_17__*, %struct.TYPE_17__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %108, i32 0, i32 0
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 0
  %112 = load i32 (%struct.TYPE_17__*, i32, i32, %struct.tg_color*, i32, i32)*, i32 (%struct.TYPE_17__*, i32, i32, %struct.tg_color*, i32, i32)** %111, align 8
  %113 = load %struct.stream_resource*, %struct.stream_resource** %8, align 8
  %114 = getelementptr inbounds %struct.stream_resource, %struct.stream_resource* %113, i32 0, i32 2
  %115 = load %struct.TYPE_17__*, %struct.TYPE_17__** %114, align 8
  %116 = load i32, i32* %11, align 4
  %117 = load %struct.dc_stream_state*, %struct.dc_stream_state** %9, align 8
  %118 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %118, i32 0, i32 6
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* %14, align 4
  %122 = load i32, i32* %15, align 4
  %123 = call i32 %112(%struct.TYPE_17__* %115, i32 %116, i32 %120, %struct.tg_color* %7, i32 %121, i32 %122)
  %124 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %125 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %124, i32 0, i32 1
  %126 = load %struct.pipe_ctx*, %struct.pipe_ctx** %125, align 8
  store %struct.pipe_ctx* %126, %struct.pipe_ctx** %12, align 8
  br label %127

127:                                              ; preds = %165, %105
  %128 = load %struct.pipe_ctx*, %struct.pipe_ctx** %12, align 8
  %129 = icmp ne %struct.pipe_ctx* %128, null
  br i1 %129, label %130, label %169

130:                                              ; preds = %127
  %131 = load %struct.pipe_ctx*, %struct.pipe_ctx** %12, align 8
  %132 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.stream_resource, %struct.stream_resource* %132, i32 0, i32 2
  %134 = load %struct.TYPE_17__*, %struct.TYPE_17__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %134, i32 0, i32 0
  %136 = load %struct.TYPE_11__*, %struct.TYPE_11__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 0
  %138 = load i32 (%struct.TYPE_17__*, i32, i32, %struct.tg_color*, i32, i32)*, i32 (%struct.TYPE_17__*, i32, i32, %struct.tg_color*, i32, i32)** %137, align 8
  %139 = load %struct.pipe_ctx*, %struct.pipe_ctx** %12, align 8
  %140 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.stream_resource, %struct.stream_resource* %140, i32 0, i32 2
  %142 = load %struct.TYPE_17__*, %struct.TYPE_17__** %141, align 8
  %143 = load %struct.dc*, %struct.dc** %4, align 8
  %144 = getelementptr inbounds %struct.dc, %struct.dc* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @VISUAL_CONFIRM_DISABLE, align 8
  %148 = icmp ne i64 %146, %147
  br i1 %148, label %149, label %154

149:                                              ; preds = %130
  %150 = load i32, i32* %6, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %154

152:                                              ; preds = %149
  %153 = load i32, i32* @CONTROLLER_DP_TEST_PATTERN_COLORRAMP, align 4
  br label %156

154:                                              ; preds = %149, %130
  %155 = load i32, i32* %11, align 4
  br label %156

156:                                              ; preds = %154, %152
  %157 = phi i32 [ %153, %152 ], [ %155, %154 ]
  %158 = load %struct.dc_stream_state*, %struct.dc_stream_state** %9, align 8
  %159 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %158, i32 0, i32 2
  %160 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %159, i32 0, i32 6
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* %14, align 4
  %163 = load i32, i32* %15, align 4
  %164 = call i32 %138(%struct.TYPE_17__* %142, i32 %157, i32 %161, %struct.tg_color* %7, i32 %162, i32 %163)
  br label %165

165:                                              ; preds = %156
  %166 = load %struct.pipe_ctx*, %struct.pipe_ctx** %12, align 8
  %167 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %166, i32 0, i32 1
  %168 = load %struct.pipe_ctx*, %struct.pipe_ctx** %167, align 8
  store %struct.pipe_ctx* %168, %struct.pipe_ctx** %12, align 8
  br label %127

169:                                              ; preds = %127
  %170 = load i32, i32* %6, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %210, label %172

172:                                              ; preds = %169
  %173 = load %struct.stream_resource*, %struct.stream_resource** %8, align 8
  %174 = getelementptr inbounds %struct.stream_resource, %struct.stream_resource* %173, i32 0, i32 0
  %175 = load %struct.TYPE_16__*, %struct.TYPE_16__** %174, align 8
  %176 = icmp ne %struct.TYPE_16__* %175, null
  br i1 %176, label %177, label %209

177:                                              ; preds = %172
  %178 = load %struct.stream_resource*, %struct.stream_resource** %8, align 8
  %179 = getelementptr inbounds %struct.stream_resource, %struct.stream_resource* %178, i32 0, i32 0
  %180 = load %struct.TYPE_16__*, %struct.TYPE_16__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %180, i32 0, i32 0
  %182 = load %struct.TYPE_15__*, %struct.TYPE_15__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %182, i32 0, i32 1
  %184 = load i32 (%struct.TYPE_16__*, i64)*, i32 (%struct.TYPE_16__*, i64)** %183, align 8
  %185 = load %struct.stream_resource*, %struct.stream_resource** %8, align 8
  %186 = getelementptr inbounds %struct.stream_resource, %struct.stream_resource* %185, i32 0, i32 0
  %187 = load %struct.TYPE_16__*, %struct.TYPE_16__** %186, align 8
  %188 = load %struct.stream_resource*, %struct.stream_resource** %8, align 8
  %189 = getelementptr inbounds %struct.stream_resource, %struct.stream_resource* %188, i32 0, i32 1
  %190 = load %struct.TYPE_14__*, %struct.TYPE_14__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = add nsw i64 %192, 1
  %194 = call i32 %184(%struct.TYPE_16__* %187, i64 %193)
  %195 = load %struct.stream_resource*, %struct.stream_resource** %8, align 8
  %196 = getelementptr inbounds %struct.stream_resource, %struct.stream_resource* %195, i32 0, i32 0
  %197 = load %struct.TYPE_16__*, %struct.TYPE_16__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %197, i32 0, i32 0
  %199 = load %struct.TYPE_15__*, %struct.TYPE_15__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %199, i32 0, i32 0
  %201 = load i32 (%struct.TYPE_16__*, i32)*, i32 (%struct.TYPE_16__*, i32)** %200, align 8
  %202 = load %struct.stream_resource*, %struct.stream_resource** %8, align 8
  %203 = getelementptr inbounds %struct.stream_resource, %struct.stream_resource* %202, i32 0, i32 0
  %204 = load %struct.TYPE_16__*, %struct.TYPE_16__** %203, align 8
  %205 = load %struct.dc_stream_state*, %struct.dc_stream_state** %9, align 8
  %206 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = call i32 %201(%struct.TYPE_16__* %204, i32 %207)
  br label %209

209:                                              ; preds = %177, %172
  br label %210

210:                                              ; preds = %209, %169
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
