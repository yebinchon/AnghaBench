; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_resource.c_dc_remove_stream_from_ctx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_resource.c_dc_remove_stream_from_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc = type { %struct.TYPE_8__*, %struct.dc_context* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 (%struct.dc*, %struct.dc_state*, %struct.dc_stream_state*)* }
%struct.dc_context = type { i32 }
%struct.dc_state = type { i32, %struct.pipe_ctx*, %struct.dc_stream_state**, i32 }
%struct.pipe_ctx = type { %struct.pipe_ctx*, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i32 }
%struct.dc_stream_state = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"Pipe not found for stream %p !\0A\00", align 1
@DC_ERROR_UNEXPECTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Context doesn't have stream %p !\0A\00", align 1
@DC_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dc_remove_stream_from_ctx(%struct.dc* %0, %struct.dc_state* %1, %struct.dc_stream_state* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dc*, align 8
  %6 = alloca %struct.dc_state*, align 8
  %7 = alloca %struct.dc_stream_state*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.dc_context*, align 8
  %10 = alloca %struct.pipe_ctx*, align 8
  %11 = alloca %struct.pipe_ctx*, align 8
  %12 = alloca %struct.pipe_ctx*, align 8
  store %struct.dc* %0, %struct.dc** %5, align 8
  store %struct.dc_state* %1, %struct.dc_state** %6, align 8
  store %struct.dc_stream_state* %2, %struct.dc_stream_state** %7, align 8
  %13 = load %struct.dc*, %struct.dc** %5, align 8
  %14 = getelementptr inbounds %struct.dc, %struct.dc* %13, i32 0, i32 1
  %15 = load %struct.dc_context*, %struct.dc_context** %14, align 8
  store %struct.dc_context* %15, %struct.dc_context** %9, align 8
  %16 = load %struct.dc_state*, %struct.dc_state** %6, align 8
  %17 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %16, i32 0, i32 3
  %18 = load %struct.dc_stream_state*, %struct.dc_stream_state** %7, align 8
  %19 = call %struct.pipe_ctx* @resource_get_head_pipe_for_stream(i32* %17, %struct.dc_stream_state* %18)
  store %struct.pipe_ctx* %19, %struct.pipe_ctx** %10, align 8
  %20 = load %struct.pipe_ctx*, %struct.pipe_ctx** %10, align 8
  %21 = icmp ne %struct.pipe_ctx* %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %3
  %23 = load %struct.dc_stream_state*, %struct.dc_stream_state** %7, align 8
  %24 = call i32 @DC_ERROR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), %struct.dc_stream_state* %23)
  %25 = load i32, i32* @DC_ERROR_UNEXPECTED, align 4
  store i32 %25, i32* %4, align 4
  br label %211

26:                                               ; preds = %3
  %27 = load %struct.pipe_ctx*, %struct.pipe_ctx** %10, align 8
  %28 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %27, i32 0, i32 0
  %29 = load %struct.pipe_ctx*, %struct.pipe_ctx** %28, align 8
  store %struct.pipe_ctx* %29, %struct.pipe_ctx** %11, align 8
  %30 = load %struct.pipe_ctx*, %struct.pipe_ctx** %10, align 8
  %31 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @ASSERT(i32 %33)
  %35 = load %struct.dc_state*, %struct.dc_state** %6, align 8
  %36 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %35, i32 0, i32 3
  %37 = load %struct.dc*, %struct.dc** %5, align 8
  %38 = getelementptr inbounds %struct.dc, %struct.dc* %37, i32 0, i32 0
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %38, align 8
  %40 = load %struct.pipe_ctx*, %struct.pipe_ctx** %10, align 8
  %41 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @update_stream_engine_usage(i32* %36, %struct.TYPE_8__* %39, i32 %43, i32 0)
  %45 = load %struct.pipe_ctx*, %struct.pipe_ctx** %10, align 8
  %46 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %61

50:                                               ; preds = %26
  %51 = load %struct.dc_state*, %struct.dc_state** %6, align 8
  %52 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %51, i32 0, i32 3
  %53 = load %struct.dc*, %struct.dc** %5, align 8
  %54 = getelementptr inbounds %struct.dc, %struct.dc* %53, i32 0, i32 0
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %54, align 8
  %56 = load %struct.pipe_ctx*, %struct.pipe_ctx** %10, align 8
  %57 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @update_audio_usage(i32* %52, %struct.TYPE_8__* %55, i64 %59, i32 0)
  br label %61

61:                                               ; preds = %50, %26
  %62 = load %struct.dc_state*, %struct.dc_state** %6, align 8
  %63 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %62, i32 0, i32 3
  %64 = load %struct.dc*, %struct.dc** %5, align 8
  %65 = getelementptr inbounds %struct.dc, %struct.dc* %64, i32 0, i32 0
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %65, align 8
  %67 = load %struct.pipe_ctx*, %struct.pipe_ctx** %10, align 8
  %68 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @resource_unreference_clock_source(i32* %63, %struct.TYPE_8__* %66, i32 %69)
  %71 = load %struct.dc*, %struct.dc** %5, align 8
  %72 = getelementptr inbounds %struct.dc, %struct.dc* %71, i32 0, i32 0
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = load i32 (%struct.dc*, %struct.dc_state*, %struct.dc_stream_state*)*, i32 (%struct.dc*, %struct.dc_state*, %struct.dc_stream_state*)** %76, align 8
  %78 = icmp ne i32 (%struct.dc*, %struct.dc_state*, %struct.dc_stream_state*)* %77, null
  br i1 %78, label %79, label %91

79:                                               ; preds = %61
  %80 = load %struct.dc*, %struct.dc** %5, align 8
  %81 = getelementptr inbounds %struct.dc, %struct.dc* %80, i32 0, i32 0
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = load i32 (%struct.dc*, %struct.dc_state*, %struct.dc_stream_state*)*, i32 (%struct.dc*, %struct.dc_state*, %struct.dc_stream_state*)** %85, align 8
  %87 = load %struct.dc*, %struct.dc** %5, align 8
  %88 = load %struct.dc_state*, %struct.dc_state** %6, align 8
  %89 = load %struct.dc_stream_state*, %struct.dc_stream_state** %7, align 8
  %90 = call i32 %86(%struct.dc* %87, %struct.dc_state* %88, %struct.dc_stream_state* %89)
  br label %91

91:                                               ; preds = %79, %61
  br label %92

92:                                               ; preds = %95, %91
  %93 = load %struct.pipe_ctx*, %struct.pipe_ctx** %11, align 8
  %94 = icmp ne %struct.pipe_ctx* %93, null
  br i1 %94, label %95, label %102

95:                                               ; preds = %92
  %96 = load %struct.pipe_ctx*, %struct.pipe_ctx** %11, align 8
  %97 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %96, i32 0, i32 0
  %98 = load %struct.pipe_ctx*, %struct.pipe_ctx** %97, align 8
  store %struct.pipe_ctx* %98, %struct.pipe_ctx** %12, align 8
  %99 = load %struct.pipe_ctx*, %struct.pipe_ctx** %11, align 8
  %100 = call i32 @memset(%struct.pipe_ctx* %99, i32 0, i32 32)
  %101 = load %struct.pipe_ctx*, %struct.pipe_ctx** %12, align 8
  store %struct.pipe_ctx* %101, %struct.pipe_ctx** %11, align 8
  br label %92

102:                                              ; preds = %92
  %103 = load %struct.pipe_ctx*, %struct.pipe_ctx** %10, align 8
  %104 = call i32 @memset(%struct.pipe_ctx* %103, i32 0, i32 32)
  store i32 0, i32* %8, align 4
  br label %105

105:                                              ; preds = %123, %102
  %106 = load i32, i32* %8, align 4
  %107 = load %struct.dc_state*, %struct.dc_state** %6, align 8
  %108 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = icmp slt i32 %106, %109
  br i1 %110, label %111, label %126

111:                                              ; preds = %105
  %112 = load %struct.dc_state*, %struct.dc_state** %6, align 8
  %113 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %112, i32 0, i32 2
  %114 = load %struct.dc_stream_state**, %struct.dc_stream_state*** %113, align 8
  %115 = load i32, i32* %8, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.dc_stream_state*, %struct.dc_stream_state** %114, i64 %116
  %118 = load %struct.dc_stream_state*, %struct.dc_stream_state** %117, align 8
  %119 = load %struct.dc_stream_state*, %struct.dc_stream_state** %7, align 8
  %120 = icmp eq %struct.dc_stream_state* %118, %119
  br i1 %120, label %121, label %122

121:                                              ; preds = %111
  br label %126

122:                                              ; preds = %111
  br label %123

123:                                              ; preds = %122
  %124 = load i32, i32* %8, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %8, align 4
  br label %105

126:                                              ; preds = %121, %105
  %127 = load %struct.dc_state*, %struct.dc_state** %6, align 8
  %128 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %127, i32 0, i32 2
  %129 = load %struct.dc_stream_state**, %struct.dc_stream_state*** %128, align 8
  %130 = load i32, i32* %8, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.dc_stream_state*, %struct.dc_stream_state** %129, i64 %131
  %133 = load %struct.dc_stream_state*, %struct.dc_stream_state** %132, align 8
  %134 = load %struct.dc_stream_state*, %struct.dc_stream_state** %7, align 8
  %135 = icmp ne %struct.dc_stream_state* %133, %134
  br i1 %135, label %136, label %140

136:                                              ; preds = %126
  %137 = load %struct.dc_stream_state*, %struct.dc_stream_state** %7, align 8
  %138 = call i32 @DC_ERROR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), %struct.dc_stream_state* %137)
  %139 = load i32, i32* @DC_ERROR_UNEXPECTED, align 4
  store i32 %139, i32* %4, align 4
  br label %211

140:                                              ; preds = %126
  %141 = load %struct.dc_state*, %struct.dc_state** %6, align 8
  %142 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %141, i32 0, i32 2
  %143 = load %struct.dc_stream_state**, %struct.dc_stream_state*** %142, align 8
  %144 = load i32, i32* %8, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.dc_stream_state*, %struct.dc_stream_state** %143, i64 %145
  %147 = load %struct.dc_stream_state*, %struct.dc_stream_state** %146, align 8
  %148 = call i32 @dc_stream_release(%struct.dc_stream_state* %147)
  %149 = load %struct.dc_state*, %struct.dc_state** %6, align 8
  %150 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = add nsw i32 %151, -1
  store i32 %152, i32* %150, align 8
  br label %153

153:                                              ; preds = %189, %140
  %154 = load i32, i32* %8, align 4
  %155 = load %struct.dc_state*, %struct.dc_state** %6, align 8
  %156 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = icmp slt i32 %154, %157
  br i1 %158, label %159, label %192

159:                                              ; preds = %153
  %160 = load %struct.dc_state*, %struct.dc_state** %6, align 8
  %161 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %160, i32 0, i32 2
  %162 = load %struct.dc_stream_state**, %struct.dc_stream_state*** %161, align 8
  %163 = load i32, i32* %8, align 4
  %164 = add nsw i32 %163, 1
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.dc_stream_state*, %struct.dc_stream_state** %162, i64 %165
  %167 = load %struct.dc_stream_state*, %struct.dc_stream_state** %166, align 8
  %168 = load %struct.dc_state*, %struct.dc_state** %6, align 8
  %169 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %168, i32 0, i32 2
  %170 = load %struct.dc_stream_state**, %struct.dc_stream_state*** %169, align 8
  %171 = load i32, i32* %8, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.dc_stream_state*, %struct.dc_stream_state** %170, i64 %172
  store %struct.dc_stream_state* %167, %struct.dc_stream_state** %173, align 8
  %174 = load %struct.dc_state*, %struct.dc_state** %6, align 8
  %175 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %174, i32 0, i32 1
  %176 = load %struct.pipe_ctx*, %struct.pipe_ctx** %175, align 8
  %177 = load i32, i32* %8, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %176, i64 %178
  %180 = load %struct.dc_state*, %struct.dc_state** %6, align 8
  %181 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %180, i32 0, i32 1
  %182 = load %struct.pipe_ctx*, %struct.pipe_ctx** %181, align 8
  %183 = load i32, i32* %8, align 4
  %184 = add nsw i32 %183, 1
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %182, i64 %185
  %187 = bitcast %struct.pipe_ctx* %179 to i8*
  %188 = bitcast %struct.pipe_ctx* %186 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %187, i8* align 8 %188, i64 32, i1 false)
  br label %189

189:                                              ; preds = %159
  %190 = load i32, i32* %8, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %8, align 4
  br label %153

192:                                              ; preds = %153
  %193 = load %struct.dc_state*, %struct.dc_state** %6, align 8
  %194 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %193, i32 0, i32 2
  %195 = load %struct.dc_stream_state**, %struct.dc_stream_state*** %194, align 8
  %196 = load %struct.dc_state*, %struct.dc_state** %6, align 8
  %197 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds %struct.dc_stream_state*, %struct.dc_stream_state** %195, i64 %199
  store %struct.dc_stream_state* null, %struct.dc_stream_state** %200, align 8
  %201 = load %struct.dc_state*, %struct.dc_state** %6, align 8
  %202 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %201, i32 0, i32 1
  %203 = load %struct.pipe_ctx*, %struct.pipe_ctx** %202, align 8
  %204 = load %struct.dc_state*, %struct.dc_state** %6, align 8
  %205 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %203, i64 %207
  %209 = call i32 @memset(%struct.pipe_ctx* %208, i32 0, i32 32)
  %210 = load i32, i32* @DC_OK, align 4
  store i32 %210, i32* %4, align 4
  br label %211

211:                                              ; preds = %192, %136, %22
  %212 = load i32, i32* %4, align 4
  ret i32 %212
}

declare dso_local %struct.pipe_ctx* @resource_get_head_pipe_for_stream(i32*, %struct.dc_stream_state*) #1

declare dso_local i32 @DC_ERROR(i8*, %struct.dc_stream_state*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @update_stream_engine_usage(i32*, %struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @update_audio_usage(i32*, %struct.TYPE_8__*, i64, i32) #1

declare dso_local i32 @resource_unreference_clock_source(i32*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @memset(%struct.pipe_ctx*, i32, i32) #1

declare dso_local i32 @dc_stream_release(%struct.dc_stream_state*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
