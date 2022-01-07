; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_stream.c_construct.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_stream.c_construct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_stream_state = type { %struct.TYPE_22__*, i32, %struct.TYPE_13__*, %struct.TYPE_21__, %struct.TYPE_18__, i32, i32, i32, i32, i32, %struct.dc_sink* }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_22__*, i32 }
%struct.TYPE_21__ = type { %struct.TYPE_12__, %struct.TYPE_19__ }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i64, i64, i64 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_18__ = type { i64, i32*, %struct.TYPE_17__, i32, i32, i32, i32, i32, %struct.TYPE_15__* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_14__, i32, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.dc_sink = type { %struct.TYPE_20__, %struct.dc_container_id*, i32, i32, %struct.TYPE_22__* }
%struct.TYPE_20__ = type { i64, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_16__*, i32, i32, i32 }
%struct.TYPE_16__ = type { i32, i32, i32, i32 }
%struct.dc_container_id = type { i32* }

@AUDIO_INFO_DISPLAY_NAME_SIZE_IN_CHARS = common dso_local global i32 0, align 4
@TF_TYPE_BYPASS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dc_stream_state*, %struct.dc_sink*)* @construct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @construct(%struct.dc_stream_state* %0, %struct.dc_sink* %1) #0 {
  %3 = alloca %struct.dc_stream_state*, align 8
  %4 = alloca %struct.dc_sink*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.dc_container_id*, align 8
  store %struct.dc_stream_state* %0, %struct.dc_stream_state** %3, align 8
  store %struct.dc_sink* %1, %struct.dc_sink** %4, align 8
  store i64 0, i64* %5, align 8
  %7 = load %struct.dc_sink*, %struct.dc_sink** %4, align 8
  %8 = load %struct.dc_stream_state*, %struct.dc_stream_state** %3, align 8
  %9 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %8, i32 0, i32 10
  store %struct.dc_sink* %7, %struct.dc_sink** %9, align 8
  %10 = load %struct.dc_sink*, %struct.dc_sink** %4, align 8
  %11 = call i32 @dc_sink_retain(%struct.dc_sink* %10)
  %12 = load %struct.dc_sink*, %struct.dc_sink** %4, align 8
  %13 = getelementptr inbounds %struct.dc_sink, %struct.dc_sink* %12, i32 0, i32 4
  %14 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %15 = load %struct.dc_stream_state*, %struct.dc_stream_state** %3, align 8
  %16 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %15, i32 0, i32 0
  store %struct.TYPE_22__* %14, %struct.TYPE_22__** %16, align 8
  %17 = load %struct.dc_sink*, %struct.dc_sink** %4, align 8
  %18 = getelementptr inbounds %struct.dc_sink, %struct.dc_sink* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.dc_stream_state*, %struct.dc_stream_state** %3, align 8
  %21 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %20, i32 0, i32 9
  store i32 %19, i32* %21, align 8
  %22 = load %struct.dc_sink*, %struct.dc_sink** %4, align 8
  %23 = getelementptr inbounds %struct.dc_sink, %struct.dc_sink* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %23, i32 0, i32 11
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.dc_stream_state*, %struct.dc_stream_state** %3, align 8
  %27 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %26, i32 0, i32 8
  store i32 %25, i32* %27, align 4
  %28 = load %struct.dc_sink*, %struct.dc_sink** %4, align 8
  %29 = getelementptr inbounds %struct.dc_sink, %struct.dc_sink* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.dc_stream_state*, %struct.dc_stream_state** %3, align 8
  %32 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %31, i32 0, i32 7
  store i32 %30, i32* %32, align 8
  %33 = load %struct.dc_sink*, %struct.dc_sink** %4, align 8
  %34 = getelementptr inbounds %struct.dc_sink, %struct.dc_sink* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %34, i32 0, i32 10
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.dc_stream_state*, %struct.dc_stream_state** %3, align 8
  %38 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %37, i32 0, i32 6
  store i32 %36, i32* %38, align 4
  %39 = load %struct.dc_sink*, %struct.dc_sink** %4, align 8
  %40 = getelementptr inbounds %struct.dc_sink, %struct.dc_sink* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %40, i32 0, i32 9
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.dc_stream_state*, %struct.dc_stream_state** %3, align 8
  %44 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %43, i32 0, i32 5
  store i32 %42, i32* %44, align 8
  store i64 0, i64* %5, align 8
  br label %45

45:                                               ; preds = %114, %2
  %46 = load i64, i64* %5, align 8
  %47 = load %struct.dc_sink*, %struct.dc_sink** %4, align 8
  %48 = getelementptr inbounds %struct.dc_sink, %struct.dc_sink* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ult i64 %46, %50
  br i1 %51, label %52, label %117

52:                                               ; preds = %45
  %53 = load %struct.dc_sink*, %struct.dc_sink** %4, align 8
  %54 = getelementptr inbounds %struct.dc_sink, %struct.dc_sink* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %54, i32 0, i32 8
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %55, align 8
  %57 = load i64, i64* %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.dc_stream_state*, %struct.dc_stream_state** %3, align 8
  %62 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %61, i32 0, i32 4
  %63 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %62, i32 0, i32 8
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %63, align 8
  %65 = load i64, i64* %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 3
  store i32 %60, i32* %67, align 4
  %68 = load %struct.dc_sink*, %struct.dc_sink** %4, align 8
  %69 = getelementptr inbounds %struct.dc_sink, %struct.dc_sink* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %69, i32 0, i32 8
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %70, align 8
  %72 = load i64, i64* %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.dc_stream_state*, %struct.dc_stream_state** %3, align 8
  %77 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %76, i32 0, i32 4
  %78 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %77, i32 0, i32 8
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %78, align 8
  %80 = load i64, i64* %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 2
  store i32 %75, i32* %82, align 4
  %83 = load %struct.dc_sink*, %struct.dc_sink** %4, align 8
  %84 = getelementptr inbounds %struct.dc_sink, %struct.dc_sink* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %84, i32 0, i32 8
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %85, align 8
  %87 = load i64, i64* %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.dc_stream_state*, %struct.dc_stream_state** %3, align 8
  %92 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %91, i32 0, i32 4
  %93 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %92, i32 0, i32 8
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %93, align 8
  %95 = load i64, i64* %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i32 0, i32 0
  store i32 %90, i32* %98, align 4
  %99 = load %struct.dc_sink*, %struct.dc_sink** %4, align 8
  %100 = getelementptr inbounds %struct.dc_sink, %struct.dc_sink* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %100, i32 0, i32 8
  %102 = load %struct.TYPE_16__*, %struct.TYPE_16__** %101, align 8
  %103 = load i64, i64* %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %102, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.dc_stream_state*, %struct.dc_stream_state** %3, align 8
  %108 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %107, i32 0, i32 4
  %109 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %108, i32 0, i32 8
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** %109, align 8
  %111 = load i64, i64* %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i32 0, i32 0
  store i32 %106, i32* %113, align 4
  br label %114

114:                                              ; preds = %52
  %115 = load i64, i64* %5, align 8
  %116 = add i64 %115, 1
  store i64 %116, i64* %5, align 8
  br label %45

117:                                              ; preds = %45
  %118 = load %struct.dc_sink*, %struct.dc_sink** %4, align 8
  %119 = getelementptr inbounds %struct.dc_sink, %struct.dc_sink* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.dc_stream_state*, %struct.dc_stream_state** %3, align 8
  %123 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %122, i32 0, i32 4
  %124 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %123, i32 0, i32 0
  store i64 %121, i64* %124, align 8
  %125 = load %struct.dc_sink*, %struct.dc_sink** %4, align 8
  %126 = getelementptr inbounds %struct.dc_sink, %struct.dc_sink* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %126, i32 0, i32 7
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.dc_stream_state*, %struct.dc_stream_state** %3, align 8
  %130 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %129, i32 0, i32 4
  %131 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %130, i32 0, i32 7
  store i32 %128, i32* %131, align 4
  %132 = load %struct.dc_sink*, %struct.dc_sink** %4, align 8
  %133 = getelementptr inbounds %struct.dc_sink, %struct.dc_sink* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %133, i32 0, i32 6
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.dc_stream_state*, %struct.dc_stream_state** %3, align 8
  %137 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %136, i32 0, i32 4
  %138 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %137, i32 0, i32 6
  store i32 %135, i32* %138, align 8
  %139 = load %struct.dc_stream_state*, %struct.dc_stream_state** %3, align 8
  %140 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %139, i32 0, i32 4
  %141 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %140, i32 0, i32 5
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.dc_sink*, %struct.dc_sink** %4, align 8
  %144 = getelementptr inbounds %struct.dc_sink, %struct.dc_sink* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %144, i32 0, i32 5
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* @AUDIO_INFO_DISPLAY_NAME_SIZE_IN_CHARS, align 4
  %148 = call i32 @memmove(i32 %142, i32 %146, i32 %147)
  %149 = load %struct.dc_sink*, %struct.dc_sink** %4, align 8
  %150 = getelementptr inbounds %struct.dc_sink, %struct.dc_sink* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %150, i32 0, i32 4
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.dc_stream_state*, %struct.dc_stream_state** %3, align 8
  %154 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %153, i32 0, i32 4
  %155 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %154, i32 0, i32 4
  store i32 %152, i32* %155, align 8
  %156 = load %struct.dc_sink*, %struct.dc_sink** %4, align 8
  %157 = getelementptr inbounds %struct.dc_sink, %struct.dc_sink* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %157, i32 0, i32 3
  %159 = load i32, i32* %158, align 8
  %160 = load %struct.dc_stream_state*, %struct.dc_stream_state** %3, align 8
  %161 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %160, i32 0, i32 4
  %162 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %161, i32 0, i32 3
  store i32 %159, i32* %162, align 4
  %163 = load %struct.dc_sink*, %struct.dc_sink** %4, align 8
  %164 = getelementptr inbounds %struct.dc_sink, %struct.dc_sink* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.dc_stream_state*, %struct.dc_stream_state** %3, align 8
  %168 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %167, i32 0, i32 4
  %169 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %168, i32 0, i32 2
  %170 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %169, i32 0, i32 0
  store i32 %166, i32* %170, align 8
  %171 = load %struct.dc_sink*, %struct.dc_sink** %4, align 8
  %172 = getelementptr inbounds %struct.dc_sink, %struct.dc_sink* %171, i32 0, i32 1
  %173 = load %struct.dc_container_id*, %struct.dc_container_id** %172, align 8
  %174 = icmp ne %struct.dc_container_id* %173, null
  br i1 %174, label %175, label %199

175:                                              ; preds = %117
  %176 = load %struct.dc_sink*, %struct.dc_sink** %4, align 8
  %177 = getelementptr inbounds %struct.dc_sink, %struct.dc_sink* %176, i32 0, i32 1
  %178 = load %struct.dc_container_id*, %struct.dc_container_id** %177, align 8
  store %struct.dc_container_id* %178, %struct.dc_container_id** %6, align 8
  %179 = load %struct.dc_container_id*, %struct.dc_container_id** %6, align 8
  %180 = getelementptr inbounds %struct.dc_container_id, %struct.dc_container_id* %179, i32 0, i32 0
  %181 = load i32*, i32** %180, align 8
  %182 = getelementptr inbounds i32, i32* %181, i64 0
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.dc_stream_state*, %struct.dc_stream_state** %3, align 8
  %185 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %184, i32 0, i32 4
  %186 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %185, i32 0, i32 1
  %187 = load i32*, i32** %186, align 8
  %188 = getelementptr inbounds i32, i32* %187, i64 0
  store i32 %183, i32* %188, align 4
  %189 = load %struct.dc_container_id*, %struct.dc_container_id** %6, align 8
  %190 = getelementptr inbounds %struct.dc_container_id, %struct.dc_container_id* %189, i32 0, i32 0
  %191 = load i32*, i32** %190, align 8
  %192 = getelementptr inbounds i32, i32* %191, i64 1
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.dc_stream_state*, %struct.dc_stream_state** %3, align 8
  %195 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %194, i32 0, i32 4
  %196 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %195, i32 0, i32 1
  %197 = load i32*, i32** %196, align 8
  %198 = getelementptr inbounds i32, i32* %197, i64 1
  store i32 %193, i32* %198, align 4
  br label %210

199:                                              ; preds = %117
  %200 = load %struct.dc_stream_state*, %struct.dc_stream_state** %3, align 8
  %201 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %200, i32 0, i32 4
  %202 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %201, i32 0, i32 1
  %203 = load i32*, i32** %202, align 8
  %204 = getelementptr inbounds i32, i32* %203, i64 0
  store i32 1431864734, i32* %204, align 4
  %205 = load %struct.dc_stream_state*, %struct.dc_stream_state** %3, align 8
  %206 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %205, i32 0, i32 4
  %207 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %206, i32 0, i32 1
  %208 = load i32*, i32** %207, align 8
  %209 = getelementptr inbounds i32, i32* %208, i64 1
  store i32 228103241, i32* %209, align 4
  br label %210

210:                                              ; preds = %199, %175
  %211 = load %struct.dc_sink*, %struct.dc_sink** %4, align 8
  %212 = getelementptr inbounds %struct.dc_sink, %struct.dc_sink* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 8
  %215 = load %struct.dc_stream_state*, %struct.dc_stream_state** %3, align 8
  %216 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %215, i32 0, i32 3
  %217 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %216, i32 0, i32 1
  %218 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %217, i32 0, i32 0
  store i32 %214, i32* %218, align 8
  %219 = load %struct.dc_stream_state*, %struct.dc_stream_state** %3, align 8
  %220 = load %struct.dc_sink*, %struct.dc_sink** %4, align 8
  %221 = call i32 @update_stream_signal(%struct.dc_stream_state* %219, %struct.dc_sink* %220)
  %222 = call %struct.TYPE_13__* (...) @dc_create_transfer_func()
  %223 = load %struct.dc_stream_state*, %struct.dc_stream_state** %3, align 8
  %224 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %223, i32 0, i32 2
  store %struct.TYPE_13__* %222, %struct.TYPE_13__** %224, align 8
  %225 = load i32, i32* @TF_TYPE_BYPASS, align 4
  %226 = load %struct.dc_stream_state*, %struct.dc_stream_state** %3, align 8
  %227 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %226, i32 0, i32 2
  %228 = load %struct.TYPE_13__*, %struct.TYPE_13__** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %228, i32 0, i32 1
  store i32 %225, i32* %229, align 8
  %230 = load %struct.dc_stream_state*, %struct.dc_stream_state** %3, align 8
  %231 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %230, i32 0, i32 0
  %232 = load %struct.TYPE_22__*, %struct.TYPE_22__** %231, align 8
  %233 = load %struct.dc_stream_state*, %struct.dc_stream_state** %3, align 8
  %234 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %233, i32 0, i32 2
  %235 = load %struct.TYPE_13__*, %struct.TYPE_13__** %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %235, i32 0, i32 0
  store %struct.TYPE_22__* %232, %struct.TYPE_22__** %236, align 8
  %237 = load %struct.dc_stream_state*, %struct.dc_stream_state** %3, align 8
  %238 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %237, i32 0, i32 0
  %239 = load %struct.TYPE_22__*, %struct.TYPE_22__** %238, align 8
  %240 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 4
  %242 = load %struct.dc_stream_state*, %struct.dc_stream_state** %3, align 8
  %243 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %242, i32 0, i32 1
  store i32 %241, i32* %243, align 8
  %244 = load %struct.dc_stream_state*, %struct.dc_stream_state** %3, align 8
  %245 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %244, i32 0, i32 0
  %246 = load %struct.TYPE_22__*, %struct.TYPE_22__** %245, align 8
  %247 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 4
  %249 = add nsw i32 %248, 1
  store i32 %249, i32* %247, align 4
  ret void
}

declare dso_local i32 @dc_sink_retain(%struct.dc_sink*) #1

declare dso_local i32 @memmove(i32, i32, i32) #1

declare dso_local i32 @update_stream_signal(%struct.dc_stream_state*, %struct.dc_sink*) #1

declare dso_local %struct.TYPE_13__* @dc_create_transfer_func(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
