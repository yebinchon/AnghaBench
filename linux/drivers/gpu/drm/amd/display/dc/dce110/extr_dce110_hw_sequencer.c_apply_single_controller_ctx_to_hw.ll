; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_hw_sequencer.c_apply_single_controller_ctx_to_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_hw_sequencer.c_apply_single_controller_ctx_to_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pipe_ctx = type { i64, %struct.dc_stream_state*, %struct.TYPE_32__, %struct.pipe_ctx*, %struct.TYPE_25__ }
%struct.dc_stream_state = type { %struct.TYPE_33__*, i32, i32, i32, i32, %struct.TYPE_23__, %struct.TYPE_36__, i32, i32 }
%struct.TYPE_33__ = type { i32 }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_36__ = type { i64, i64 }
%struct.TYPE_32__ = type { %struct.TYPE_31__ }
%struct.TYPE_31__ = type { %struct.TYPE_30__ }
%struct.TYPE_30__ = type { i32 }
%struct.TYPE_25__ = type { %struct.TYPE_29__*, %struct.TYPE_27__*, %struct.TYPE_26__*, %struct.TYPE_28__* }
%struct.TYPE_29__ = type { %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i32 (%struct.TYPE_29__*, i32*, i32*)*, i32 (%struct.TYPE_29__*, i32, i32, i32)* }
%struct.TYPE_27__ = type { i32, %struct.TYPE_37__* }
%struct.TYPE_37__ = type { i32 (%struct.TYPE_27__*, i32)*, i32 (%struct.TYPE_27__*, %struct.drr_params*)* }
%struct.drr_params = type { i64, i64, i32 }
%struct.TYPE_26__ = type { %struct.TYPE_38__* }
%struct.TYPE_38__ = type { i32 (%struct.TYPE_26__*, i32)*, i32 (%struct.TYPE_26__*, i32, i32*, i32*)*, i32 (%struct.TYPE_26__*, i32, i32*)* }
%struct.TYPE_28__ = type { %struct.TYPE_34__*, i32 }
%struct.TYPE_34__ = type { i32 (%struct.TYPE_28__*, i32, i32*, i32*)* }
%struct.dc_state = type { i32 }
%struct.dc = type { %struct.TYPE_35__ }
%struct.TYPE_35__ = type { i32 (%struct.pipe_ctx*)*, i32 (%struct.pipe_ctx*, %struct.dc_state*, %struct.dc.0*)*, i32 (%struct.dc.1*, %struct.pipe_ctx*)* }
%struct.dc.0 = type opaque
%struct.dc.1 = type opaque
%struct.audio_output = type { i32 }

@COLOR_SPACE_YCBCR601 = common dso_local global i32 0, align 4
@DC_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pipe_ctx*, %struct.dc_state*, %struct.dc*)* @apply_single_controller_ctx_to_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apply_single_controller_ctx_to_hw(%struct.pipe_ctx* %0, %struct.dc_state* %1, %struct.dc* %2) #0 {
  %4 = alloca %struct.pipe_ctx*, align 8
  %5 = alloca %struct.dc_state*, align 8
  %6 = alloca %struct.dc*, align 8
  %7 = alloca %struct.dc_stream_state*, align 8
  %8 = alloca %struct.drr_params, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.audio_output, align 4
  store %struct.pipe_ctx* %0, %struct.pipe_ctx** %4, align 8
  store %struct.dc_state* %1, %struct.dc_state** %5, align 8
  store %struct.dc* %2, %struct.dc** %6, align 8
  %11 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %12 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %11, i32 0, i32 1
  %13 = load %struct.dc_stream_state*, %struct.dc_stream_state** %12, align 8
  store %struct.dc_stream_state* %13, %struct.dc_stream_state** %7, align 8
  %14 = bitcast %struct.drr_params* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %14, i8 0, i64 24, i1 false)
  store i32 0, i32* %9, align 4
  %15 = load %struct.dc*, %struct.dc** %6, align 8
  %16 = getelementptr inbounds %struct.dc, %struct.dc* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %16, i32 0, i32 2
  %18 = load i32 (%struct.dc.1*, %struct.pipe_ctx*)*, i32 (%struct.dc.1*, %struct.pipe_ctx*)** %17, align 8
  %19 = icmp ne i32 (%struct.dc.1*, %struct.pipe_ctx*)* %18, null
  br i1 %19, label %20, label %29

20:                                               ; preds = %3
  %21 = load %struct.dc*, %struct.dc** %6, align 8
  %22 = getelementptr inbounds %struct.dc, %struct.dc* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %22, i32 0, i32 2
  %24 = load i32 (%struct.dc.1*, %struct.pipe_ctx*)*, i32 (%struct.dc.1*, %struct.pipe_ctx*)** %23, align 8
  %25 = load %struct.dc*, %struct.dc** %6, align 8
  %26 = bitcast %struct.dc* %25 to %struct.dc.1*
  %27 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %28 = call i32 %24(%struct.dc.1* %26, %struct.pipe_ctx* %27)
  br label %29

29:                                               ; preds = %20, %3
  %30 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %31 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %30, i32 0, i32 4
  %32 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %31, i32 0, i32 3
  %33 = load %struct.TYPE_28__*, %struct.TYPE_28__** %32, align 8
  %34 = icmp ne %struct.TYPE_28__* %33, null
  br i1 %34, label %35, label %119

35:                                               ; preds = %29
  %36 = load %struct.dc_state*, %struct.dc_state** %5, align 8
  %37 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %38 = call i32 @build_audio_output(%struct.dc_state* %36, %struct.pipe_ctx* %37, %struct.audio_output* %10)
  %39 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %40 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %39, i32 0, i32 1
  %41 = load %struct.dc_stream_state*, %struct.dc_stream_state** %40, align 8
  %42 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @dc_is_dp_signal(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %70

46:                                               ; preds = %35
  %47 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %48 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %47, i32 0, i32 4
  %49 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %48, i32 0, i32 2
  %50 = load %struct.TYPE_26__*, %struct.TYPE_26__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_38__*, %struct.TYPE_38__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %52, i32 0, i32 2
  %54 = load i32 (%struct.TYPE_26__*, i32, i32*)*, i32 (%struct.TYPE_26__*, i32, i32*)** %53, align 8
  %55 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %56 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %55, i32 0, i32 4
  %57 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %56, i32 0, i32 2
  %58 = load %struct.TYPE_26__*, %struct.TYPE_26__** %57, align 8
  %59 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %60 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %59, i32 0, i32 4
  %61 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %60, i32 0, i32 3
  %62 = load %struct.TYPE_28__*, %struct.TYPE_28__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %66 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %65, i32 0, i32 1
  %67 = load %struct.dc_stream_state*, %struct.dc_stream_state** %66, align 8
  %68 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %67, i32 0, i32 8
  %69 = call i32 %54(%struct.TYPE_26__* %58, i32 %64, i32* %68)
  br label %95

70:                                               ; preds = %35
  %71 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %72 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %71, i32 0, i32 4
  %73 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %72, i32 0, i32 2
  %74 = load %struct.TYPE_26__*, %struct.TYPE_26__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_38__*, %struct.TYPE_38__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %76, i32 0, i32 1
  %78 = load i32 (%struct.TYPE_26__*, i32, i32*, i32*)*, i32 (%struct.TYPE_26__*, i32, i32*, i32*)** %77, align 8
  %79 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %80 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %79, i32 0, i32 4
  %81 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %80, i32 0, i32 2
  %82 = load %struct.TYPE_26__*, %struct.TYPE_26__** %81, align 8
  %83 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %84 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %83, i32 0, i32 4
  %85 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %84, i32 0, i32 3
  %86 = load %struct.TYPE_28__*, %struct.TYPE_28__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %90 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %89, i32 0, i32 1
  %91 = load %struct.dc_stream_state*, %struct.dc_stream_state** %90, align 8
  %92 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %91, i32 0, i32 8
  %93 = getelementptr inbounds %struct.audio_output, %struct.audio_output* %10, i32 0, i32 0
  %94 = call i32 %78(%struct.TYPE_26__* %82, i32 %88, i32* %92, i32* %93)
  br label %95

95:                                               ; preds = %70, %46
  %96 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %97 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %96, i32 0, i32 4
  %98 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %97, i32 0, i32 3
  %99 = load %struct.TYPE_28__*, %struct.TYPE_28__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_34__*, %struct.TYPE_34__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %101, i32 0, i32 0
  %103 = load i32 (%struct.TYPE_28__*, i32, i32*, i32*)*, i32 (%struct.TYPE_28__*, i32, i32*, i32*)** %102, align 8
  %104 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %105 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %104, i32 0, i32 4
  %106 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %105, i32 0, i32 3
  %107 = load %struct.TYPE_28__*, %struct.TYPE_28__** %106, align 8
  %108 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %109 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %108, i32 0, i32 1
  %110 = load %struct.dc_stream_state*, %struct.dc_stream_state** %109, align 8
  %111 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 4
  %113 = getelementptr inbounds %struct.audio_output, %struct.audio_output* %10, i32 0, i32 0
  %114 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %115 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %114, i32 0, i32 1
  %116 = load %struct.dc_stream_state*, %struct.dc_stream_state** %115, align 8
  %117 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %116, i32 0, i32 8
  %118 = call i32 %103(%struct.TYPE_28__* %107, i32 %112, i32* %113, i32* %117)
  br label %119

119:                                              ; preds = %95, %29
  %120 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %121 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %120, i32 0, i32 1
  %122 = load %struct.dc_stream_state*, %struct.dc_stream_state** %121, align 8
  %123 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %122, i32 0, i32 7
  %124 = load i32, i32* %123, align 8
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %136, label %126

126:                                              ; preds = %119
  %127 = load %struct.dc*, %struct.dc** %6, align 8
  %128 = getelementptr inbounds %struct.dc, %struct.dc* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %128, i32 0, i32 1
  %130 = load i32 (%struct.pipe_ctx*, %struct.dc_state*, %struct.dc.0*)*, i32 (%struct.pipe_ctx*, %struct.dc_state*, %struct.dc.0*)** %129, align 8
  %131 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %132 = load %struct.dc_state*, %struct.dc_state** %5, align 8
  %133 = load %struct.dc*, %struct.dc** %6, align 8
  %134 = bitcast %struct.dc* %133 to %struct.dc.0*
  %135 = call i32 %130(%struct.pipe_ctx* %131, %struct.dc_state* %132, %struct.dc.0* %134)
  br label %136

136:                                              ; preds = %126, %119
  %137 = load %struct.dc*, %struct.dc** %6, align 8
  %138 = getelementptr inbounds %struct.dc, %struct.dc* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %138, i32 0, i32 0
  %140 = load i32 (%struct.pipe_ctx*)*, i32 (%struct.pipe_ctx*)** %139, align 8
  %141 = icmp ne i32 (%struct.pipe_ctx*)* %140, null
  br i1 %141, label %142, label %149

142:                                              ; preds = %136
  %143 = load %struct.dc*, %struct.dc** %6, align 8
  %144 = getelementptr inbounds %struct.dc, %struct.dc* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %144, i32 0, i32 0
  %146 = load i32 (%struct.pipe_ctx*)*, i32 (%struct.pipe_ctx*)** %145, align 8
  %147 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %148 = call i32 %146(%struct.pipe_ctx* %147)
  br label %149

149:                                              ; preds = %142, %136
  %150 = load %struct.dc_stream_state*, %struct.dc_stream_state** %7, align 8
  %151 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %150, i32 0, i32 6
  %152 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = getelementptr inbounds %struct.drr_params, %struct.drr_params* %8, i32 0, i32 0
  store i64 %153, i64* %154, align 8
  %155 = load %struct.dc_stream_state*, %struct.dc_stream_state** %7, align 8
  %156 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %155, i32 0, i32 6
  %157 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = getelementptr inbounds %struct.drr_params, %struct.drr_params* %8, i32 0, i32 1
  store i64 %158, i64* %159, align 8
  %160 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %161 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %160, i32 0, i32 4
  %162 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %161, i32 0, i32 1
  %163 = load %struct.TYPE_27__*, %struct.TYPE_27__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %163, i32 0, i32 1
  %165 = load %struct.TYPE_37__*, %struct.TYPE_37__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %165, i32 0, i32 1
  %167 = load i32 (%struct.TYPE_27__*, %struct.drr_params*)*, i32 (%struct.TYPE_27__*, %struct.drr_params*)** %166, align 8
  %168 = icmp ne i32 (%struct.TYPE_27__*, %struct.drr_params*)* %167, null
  br i1 %168, label %169, label %183

169:                                              ; preds = %149
  %170 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %171 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %170, i32 0, i32 4
  %172 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %171, i32 0, i32 1
  %173 = load %struct.TYPE_27__*, %struct.TYPE_27__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %173, i32 0, i32 1
  %175 = load %struct.TYPE_37__*, %struct.TYPE_37__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %175, i32 0, i32 1
  %177 = load i32 (%struct.TYPE_27__*, %struct.drr_params*)*, i32 (%struct.TYPE_27__*, %struct.drr_params*)** %176, align 8
  %178 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %179 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %178, i32 0, i32 4
  %180 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %179, i32 0, i32 1
  %181 = load %struct.TYPE_27__*, %struct.TYPE_27__** %180, align 8
  %182 = call i32 %177(%struct.TYPE_27__* %181, %struct.drr_params* %8)
  br label %183

183:                                              ; preds = %169, %149
  %184 = load %struct.dc_stream_state*, %struct.dc_stream_state** %7, align 8
  %185 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %184, i32 0, i32 6
  %186 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %196

189:                                              ; preds = %183
  %190 = load %struct.dc_stream_state*, %struct.dc_stream_state** %7, align 8
  %191 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %190, i32 0, i32 6
  %192 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %191, i32 0, i32 1
  %193 = load i64, i64* %192, align 8
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %196

195:                                              ; preds = %189
  store i32 128, i32* %9, align 4
  br label %196

196:                                              ; preds = %195, %189, %183
  %197 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %198 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %197, i32 0, i32 4
  %199 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %198, i32 0, i32 1
  %200 = load %struct.TYPE_27__*, %struct.TYPE_27__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %200, i32 0, i32 1
  %202 = load %struct.TYPE_37__*, %struct.TYPE_37__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %202, i32 0, i32 0
  %204 = load i32 (%struct.TYPE_27__*, i32)*, i32 (%struct.TYPE_27__*, i32)** %203, align 8
  %205 = icmp ne i32 (%struct.TYPE_27__*, i32)* %204, null
  br i1 %205, label %206, label %221

206:                                              ; preds = %196
  %207 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %208 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %207, i32 0, i32 4
  %209 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %208, i32 0, i32 1
  %210 = load %struct.TYPE_27__*, %struct.TYPE_27__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %210, i32 0, i32 1
  %212 = load %struct.TYPE_37__*, %struct.TYPE_37__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %212, i32 0, i32 0
  %214 = load i32 (%struct.TYPE_27__*, i32)*, i32 (%struct.TYPE_27__*, i32)** %213, align 8
  %215 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %216 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %215, i32 0, i32 4
  %217 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %216, i32 0, i32 1
  %218 = load %struct.TYPE_27__*, %struct.TYPE_27__** %217, align 8
  %219 = load i32, i32* %9, align 4
  %220 = call i32 %214(%struct.TYPE_27__* %218, i32 %219)
  br label %221

221:                                              ; preds = %206, %196
  %222 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %223 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %222, i32 0, i32 1
  %224 = load %struct.dc_stream_state*, %struct.dc_stream_state** %223, align 8
  %225 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %224, i32 0, i32 4
  %226 = load i32, i32* %225, align 4
  %227 = call i32 @dc_is_virtual_signal(i32 %226)
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %249, label %229

229:                                              ; preds = %221
  %230 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %231 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %230, i32 0, i32 4
  %232 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %231, i32 0, i32 2
  %233 = load %struct.TYPE_26__*, %struct.TYPE_26__** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %233, i32 0, i32 0
  %235 = load %struct.TYPE_38__*, %struct.TYPE_38__** %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %235, i32 0, i32 0
  %237 = load i32 (%struct.TYPE_26__*, i32)*, i32 (%struct.TYPE_26__*, i32)** %236, align 8
  %238 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %239 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %238, i32 0, i32 4
  %240 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %239, i32 0, i32 2
  %241 = load %struct.TYPE_26__*, %struct.TYPE_26__** %240, align 8
  %242 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %243 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %242, i32 0, i32 4
  %244 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %243, i32 0, i32 1
  %245 = load %struct.TYPE_27__*, %struct.TYPE_27__** %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 8
  %248 = call i32 %237(%struct.TYPE_26__* %241, i32 %247)
  br label %249

249:                                              ; preds = %229, %221
  %250 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %251 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %250, i32 0, i32 4
  %252 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %251, i32 0, i32 0
  %253 = load %struct.TYPE_29__*, %struct.TYPE_29__** %252, align 8
  %254 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %253, i32 0, i32 0
  %255 = load %struct.TYPE_24__*, %struct.TYPE_24__** %254, align 8
  %256 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %255, i32 0, i32 1
  %257 = load i32 (%struct.TYPE_29__*, i32, i32, i32)*, i32 (%struct.TYPE_29__*, i32, i32, i32)** %256, align 8
  %258 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %259 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %258, i32 0, i32 4
  %260 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %259, i32 0, i32 0
  %261 = load %struct.TYPE_29__*, %struct.TYPE_29__** %260, align 8
  %262 = load i32, i32* @COLOR_SPACE_YCBCR601, align 4
  %263 = load %struct.dc_stream_state*, %struct.dc_stream_state** %7, align 8
  %264 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %263, i32 0, i32 5
  %265 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 8
  %267 = load %struct.dc_stream_state*, %struct.dc_stream_state** %7, align 8
  %268 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %267, i32 0, i32 4
  %269 = load i32, i32* %268, align 4
  %270 = call i32 %257(%struct.TYPE_29__* %261, i32 %262, i32 %266, i32 %269)
  %271 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %272 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %271, i32 0, i32 4
  %273 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %272, i32 0, i32 0
  %274 = load %struct.TYPE_29__*, %struct.TYPE_29__** %273, align 8
  %275 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %274, i32 0, i32 0
  %276 = load %struct.TYPE_24__*, %struct.TYPE_24__** %275, align 8
  %277 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %276, i32 0, i32 0
  %278 = load i32 (%struct.TYPE_29__*, i32*, i32*)*, i32 (%struct.TYPE_29__*, i32*, i32*)** %277, align 8
  %279 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %280 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %279, i32 0, i32 4
  %281 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %280, i32 0, i32 0
  %282 = load %struct.TYPE_29__*, %struct.TYPE_29__** %281, align 8
  %283 = load %struct.dc_stream_state*, %struct.dc_stream_state** %7, align 8
  %284 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %283, i32 0, i32 3
  %285 = load %struct.dc_stream_state*, %struct.dc_stream_state** %7, align 8
  %286 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %285, i32 0, i32 2
  %287 = call i32 %278(%struct.TYPE_29__* %282, i32* %284, i32* %286)
  %288 = load %struct.dc_stream_state*, %struct.dc_stream_state** %7, align 8
  %289 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %288, i32 0, i32 1
  %290 = load i32, i32* %289, align 8
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %296, label %292

292:                                              ; preds = %249
  %293 = load %struct.dc_state*, %struct.dc_state** %5, align 8
  %294 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %295 = call i32 @core_link_enable_stream(%struct.dc_state* %293, %struct.pipe_ctx* %294)
  br label %296

296:                                              ; preds = %292, %249
  %297 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %298 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %297, i32 0, i32 0
  %299 = load i64, i64* %298, align 8
  %300 = icmp ne i64 %299, 0
  %301 = zext i1 %300 to i32
  %302 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %303 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %302, i32 0, i32 2
  %304 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %303, i32 0, i32 0
  %305 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %304, i32 0, i32 0
  %306 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %305, i32 0, i32 0
  store i32 %301, i32* %306, align 8
  %307 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %308 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %307, i32 0, i32 1
  %309 = load %struct.dc_stream_state*, %struct.dc_stream_state** %308, align 8
  %310 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %309, i32 0, i32 0
  %311 = load %struct.TYPE_33__*, %struct.TYPE_33__** %310, align 8
  %312 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %311, i32 0, i32 0
  store i32 0, i32* %312, align 4
  %313 = load i32, i32* @DC_OK, align 4
  ret i32 %313
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @build_audio_output(%struct.dc_state*, %struct.pipe_ctx*, %struct.audio_output*) #2

declare dso_local i64 @dc_is_dp_signal(i32) #2

declare dso_local i32 @dc_is_virtual_signal(i32) #2

declare dso_local i32 @core_link_enable_stream(%struct.dc_state*, %struct.pipe_ctx*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
