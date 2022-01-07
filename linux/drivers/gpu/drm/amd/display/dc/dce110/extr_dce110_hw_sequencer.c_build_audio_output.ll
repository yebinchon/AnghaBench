; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_hw_sequencer.c_build_audio_output.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_hw_sequencer.c_build_audio_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_state = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32 (%struct.TYPE_13__*)* }
%struct.pipe_ctx = type { %struct.TYPE_12__, %struct.TYPE_21__, %struct.dc_stream_state* }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_21__ = type { %struct.TYPE_20__*, %struct.TYPE_18__, %struct.TYPE_14__* }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_18__ = type { i32, i64 }
%struct.TYPE_14__ = type { i32 }
%struct.dc_stream_state = type { i64, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32, i32, i32, i32, %struct.TYPE_15__, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_15__ = type { i32 }
%struct.audio_output = type { i64, %struct.TYPE_22__, %struct.TYPE_17__, i32 }
%struct.TYPE_22__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_17__ = type { i32, i32, i32, i32, i32, i32, i32, i64, i64 }

@PIXEL_ENCODING_YCBCR420 = common dso_local global i64 0, align 8
@SIGNAL_TYPE_DISPLAY_PORT = common dso_local global i64 0, align 8
@SIGNAL_TYPE_DISPLAY_PORT_MST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dc_state*, %struct.pipe_ctx*, %struct.audio_output*)* @build_audio_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @build_audio_output(%struct.dc_state* %0, %struct.pipe_ctx* %1, %struct.audio_output* %2) #0 {
  %4 = alloca %struct.dc_state*, align 8
  %5 = alloca %struct.pipe_ctx*, align 8
  %6 = alloca %struct.audio_output*, align 8
  %7 = alloca %struct.dc_stream_state*, align 8
  store %struct.dc_state* %0, %struct.dc_state** %4, align 8
  store %struct.pipe_ctx* %1, %struct.pipe_ctx** %5, align 8
  store %struct.audio_output* %2, %struct.audio_output** %6, align 8
  %8 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %9 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %8, i32 0, i32 2
  %10 = load %struct.dc_stream_state*, %struct.dc_stream_state** %9, align 8
  store %struct.dc_stream_state* %10, %struct.dc_stream_state** %7, align 8
  %11 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %12 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %12, i32 0, i32 2
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.audio_output*, %struct.audio_output** %6, align 8
  %18 = getelementptr inbounds %struct.audio_output, %struct.audio_output* %17, i32 0, i32 3
  store i32 %16, i32* %18, align 8
  %19 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %20 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %19, i32 0, i32 2
  %21 = load %struct.dc_stream_state*, %struct.dc_stream_state** %20, align 8
  %22 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.audio_output*, %struct.audio_output** %6, align 8
  %25 = getelementptr inbounds %struct.audio_output, %struct.audio_output* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  %26 = load %struct.dc_stream_state*, %struct.dc_stream_state** %7, align 8
  %27 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.audio_output*, %struct.audio_output** %6, align 8
  %31 = getelementptr inbounds %struct.audio_output, %struct.audio_output* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 0
  store i32 %29, i32* %32, align 8
  %33 = load %struct.dc_stream_state*, %struct.dc_stream_state** %7, align 8
  %34 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 10
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.dc_stream_state*, %struct.dc_stream_state** %7, align 8
  %38 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 9
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %36, %40
  %42 = load %struct.dc_stream_state*, %struct.dc_stream_state** %7, align 8
  %43 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 8
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %41, %45
  %47 = load %struct.audio_output*, %struct.audio_output** %6, align 8
  %48 = getelementptr inbounds %struct.audio_output, %struct.audio_output* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i32 0, i32 8
  store i64 %46, i64* %49, align 8
  %50 = load %struct.dc_stream_state*, %struct.dc_stream_state** %7, align 8
  %51 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 7
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.dc_stream_state*, %struct.dc_stream_state** %7, align 8
  %55 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 6
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %53, %57
  %59 = load %struct.dc_stream_state*, %struct.dc_stream_state** %7, align 8
  %60 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 5
  %62 = load i64, i64* %61, align 8
  %63 = add nsw i64 %58, %62
  %64 = load %struct.audio_output*, %struct.audio_output** %6, align 8
  %65 = getelementptr inbounds %struct.audio_output, %struct.audio_output* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i32 0, i32 7
  store i64 %63, i64* %66, align 8
  %67 = load %struct.audio_output*, %struct.audio_output** %6, align 8
  %68 = getelementptr inbounds %struct.audio_output, %struct.audio_output* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 1
  store i32 1, i32* %69, align 4
  %70 = load %struct.dc_stream_state*, %struct.dc_stream_state** %7, align 8
  %71 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 4
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.audio_output*, %struct.audio_output** %6, align 8
  %76 = getelementptr inbounds %struct.audio_output, %struct.audio_output* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %76, i32 0, i32 6
  store i32 %74, i32* %77, align 8
  %78 = load %struct.dc_stream_state*, %struct.dc_stream_state** %7, align 8
  %79 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = mul nsw i32 %81, 100
  %83 = load %struct.dc_stream_state*, %struct.dc_stream_state** %7, align 8
  %84 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.dc_stream_state*, %struct.dc_stream_state** %7, align 8
  %88 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = mul nsw i32 %86, %90
  %92 = sdiv i32 %82, %91
  %93 = load %struct.audio_output*, %struct.audio_output** %6, align 8
  %94 = getelementptr inbounds %struct.audio_output, %struct.audio_output* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %94, i32 0, i32 2
  store i32 %92, i32* %95, align 8
  %96 = load %struct.dc_stream_state*, %struct.dc_stream_state** %7, align 8
  %97 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.audio_output*, %struct.audio_output** %6, align 8
  %101 = getelementptr inbounds %struct.audio_output, %struct.audio_output* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %101, i32 0, i32 5
  store i32 %99, i32* %102, align 4
  %103 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %104 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.audio_output*, %struct.audio_output** %6, align 8
  %109 = getelementptr inbounds %struct.audio_output, %struct.audio_output* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %109, i32 0, i32 3
  store i32 %107, i32* %110, align 4
  %111 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %112 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.audio_output*, %struct.audio_output** %6, align 8
  %117 = getelementptr inbounds %struct.audio_output, %struct.audio_output* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %117, i32 0, i32 4
  store i32 %115, i32* %118, align 8
  %119 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %120 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %119, i32 0, i32 2
  %121 = load %struct.dc_stream_state*, %struct.dc_stream_state** %120, align 8
  %122 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = call i64 @dc_is_hdmi_signal(i64 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %163

126:                                              ; preds = %3
  %127 = load %struct.audio_output*, %struct.audio_output** %6, align 8
  %128 = getelementptr inbounds %struct.audio_output, %struct.audio_output* %127, i32 0, i32 2
  %129 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.dc_stream_state*, %struct.dc_stream_state** %7, align 8
  %132 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = icmp eq i32 %130, %134
  br i1 %135, label %136, label %163

136:                                              ; preds = %126
  %137 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %138 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @PIXEL_ENCODING_YCBCR420, align 8
  %143 = icmp eq i64 %141, %142
  br i1 %143, label %144, label %162

144:                                              ; preds = %136
  %145 = load %struct.audio_output*, %struct.audio_output** %6, align 8
  %146 = getelementptr inbounds %struct.audio_output, %struct.audio_output* %145, i32 0, i32 2
  %147 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 4
  %149 = sdiv i32 %148, 2
  %150 = load %struct.audio_output*, %struct.audio_output** %6, align 8
  %151 = getelementptr inbounds %struct.audio_output, %struct.audio_output* %150, i32 0, i32 2
  %152 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %151, i32 0, i32 3
  store i32 %149, i32* %152, align 4
  %153 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %154 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = sdiv i32 %157, 2
  %159 = load %struct.audio_output*, %struct.audio_output** %6, align 8
  %160 = getelementptr inbounds %struct.audio_output, %struct.audio_output* %159, i32 0, i32 2
  %161 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %160, i32 0, i32 4
  store i32 %158, i32* %161, align 8
  br label %162

162:                                              ; preds = %144, %136
  br label %163

163:                                              ; preds = %162, %126, %3
  %164 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %165 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %164, i32 0, i32 2
  %166 = load %struct.dc_stream_state*, %struct.dc_stream_state** %165, align 8
  %167 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = load i64, i64* @SIGNAL_TYPE_DISPLAY_PORT, align 8
  %170 = icmp eq i64 %168, %169
  br i1 %170, label %179, label %171

171:                                              ; preds = %163
  %172 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %173 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %172, i32 0, i32 2
  %174 = load %struct.dc_stream_state*, %struct.dc_stream_state** %173, align 8
  %175 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = load i64, i64* @SIGNAL_TYPE_DISPLAY_PORT_MST, align 8
  %178 = icmp eq i64 %176, %177
  br i1 %178, label %179, label %194

179:                                              ; preds = %171, %163
  %180 = load %struct.dc_state*, %struct.dc_state** %4, align 8
  %181 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %180, i32 0, i32 0
  %182 = load %struct.TYPE_13__*, %struct.TYPE_13__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %182, i32 0, i32 0
  %184 = load %struct.TYPE_19__*, %struct.TYPE_19__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %184, i32 0, i32 0
  %186 = load i32 (%struct.TYPE_13__*)*, i32 (%struct.TYPE_13__*)** %185, align 8
  %187 = load %struct.dc_state*, %struct.dc_state** %4, align 8
  %188 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %187, i32 0, i32 0
  %189 = load %struct.TYPE_13__*, %struct.TYPE_13__** %188, align 8
  %190 = call i32 %186(%struct.TYPE_13__* %189)
  %191 = load %struct.audio_output*, %struct.audio_output** %6, align 8
  %192 = getelementptr inbounds %struct.audio_output, %struct.audio_output* %191, i32 0, i32 1
  %193 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %192, i32 0, i32 4
  store i32 %190, i32* %193, align 8
  br label %194

194:                                              ; preds = %179, %171
  %195 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %196 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.audio_output*, %struct.audio_output** %6, align 8
  %200 = getelementptr inbounds %struct.audio_output, %struct.audio_output* %199, i32 0, i32 1
  %201 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %200, i32 0, i32 3
  store i32 %198, i32* %201, align 4
  %202 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %203 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %202, i32 0, i32 1
  %204 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %203, i32 0, i32 0
  %205 = load %struct.TYPE_20__*, %struct.TYPE_20__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = add nsw i64 %207, 1
  %209 = call i32 @translate_to_dto_source(i64 %208)
  %210 = load %struct.audio_output*, %struct.audio_output** %6, align 8
  %211 = getelementptr inbounds %struct.audio_output, %struct.audio_output* %210, i32 0, i32 1
  %212 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %211, i32 0, i32 2
  store i32 %209, i32* %212, align 8
  %213 = load %struct.audio_output*, %struct.audio_output** %6, align 8
  %214 = getelementptr inbounds %struct.audio_output, %struct.audio_output* %213, i32 0, i32 1
  %215 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %214, i32 0, i32 0
  store i32 1, i32* %215, align 8
  %216 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %217 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = load %struct.audio_output*, %struct.audio_output** %6, align 8
  %221 = getelementptr inbounds %struct.audio_output, %struct.audio_output* %220, i32 0, i32 1
  %222 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %221, i32 0, i32 1
  store i32 %219, i32* %222, align 4
  ret void
}

declare dso_local i64 @dc_is_hdmi_signal(i64) #1

declare dso_local i32 @translate_to_dto_source(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
