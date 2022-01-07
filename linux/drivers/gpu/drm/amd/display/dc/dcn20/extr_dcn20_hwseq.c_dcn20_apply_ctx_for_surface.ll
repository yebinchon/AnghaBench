; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_hwseq.c_dcn20_apply_ctx_for_surface.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_hwseq.c_dcn20_apply_ctx_for_surface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc = type { %struct.dc_state*, %struct.TYPE_24__*, %struct.TYPE_21__, %struct.TYPE_17__* }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_21__ = type { i32 (%struct.dc.0*, %struct.dc_stream_state*, %struct.dc_state*)*, i32 (%struct.dc.1*, %struct.pipe_ctx*)*, i32 (%struct.dc.2*, %struct.pipe_ctx*)*, i32 (%struct.dc.3*, %struct.pipe_ctx*, i32)* }
%struct.dc.0 = type opaque
%struct.dc.1 = type opaque
%struct.pipe_ctx = type { %struct.TYPE_23__, %struct.TYPE_14__*, i32, i32, %struct.dc_stream_state*, i32, %struct.TYPE_20__ }
%struct.TYPE_23__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i64, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i64 (%struct.TYPE_16__*)*, i32 (%struct.TYPE_16__*, i32*, i32*)* }
%struct.TYPE_14__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_20__ = type { %struct.timing_generator*, i32 }
%struct.timing_generator = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32 (%struct.timing_generator*)* }
%struct.dc.2 = type opaque
%struct.dc.3 = type opaque
%struct.TYPE_17__ = type { i32 }
%struct.dc_stream_state = type { i64 }
%struct.dc_state = type { %struct.TYPE_25__ }
%struct.TYPE_25__ = type { %struct.pipe_ctx* }

@OPP_ID_INVALID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"Reset mpcc for pipe %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dc*, %struct.dc_stream_state*, i32, %struct.dc_state*)* @dcn20_apply_ctx_for_surface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dcn20_apply_ctx_for_surface(%struct.dc* %0, %struct.dc_stream_state* %1, i32 %2, %struct.dc_state* %3) #0 {
  %5 = alloca %struct.dc*, align 8
  %6 = alloca %struct.dc_stream_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dc_state*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.timing_generator*, align 8
  %12 = alloca [6 x i32], align 16
  %13 = alloca i32, align 4
  %14 = alloca %struct.pipe_ctx*, align 8
  %15 = alloca %struct.pipe_ctx*, align 8
  %16 = alloca %struct.pipe_ctx*, align 8
  %17 = alloca %struct.pipe_ctx*, align 8
  %18 = alloca %struct.pipe_ctx*, align 8
  %19 = alloca %struct.pipe_ctx*, align 8
  %20 = alloca %struct.pipe_ctx*, align 8
  store %struct.dc* %0, %struct.dc** %5, align 8
  store %struct.dc_stream_state* %1, %struct.dc_stream_state** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.dc_state* %3, %struct.dc_state** %8, align 8
  store i32 100, i32* %9, align 4
  %21 = bitcast [6 x i32]* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %21, i8 0, i64 24, i1 false)
  store i32 0, i32* %13, align 4
  %22 = load %struct.dc*, %struct.dc** %5, align 8
  %23 = load %struct.dc_state*, %struct.dc_state** %8, align 8
  %24 = load %struct.dc_stream_state*, %struct.dc_stream_state** %6, align 8
  %25 = call %struct.pipe_ctx* @find_top_pipe_for_stream(%struct.dc* %22, %struct.dc_state* %23, %struct.dc_stream_state* %24)
  store %struct.pipe_ctx* %25, %struct.pipe_ctx** %14, align 8
  %26 = load %struct.dc*, %struct.dc** %5, align 8
  %27 = load %struct.dc*, %struct.dc** %5, align 8
  %28 = getelementptr inbounds %struct.dc, %struct.dc* %27, i32 0, i32 0
  %29 = load %struct.dc_state*, %struct.dc_state** %28, align 8
  %30 = load %struct.dc_stream_state*, %struct.dc_stream_state** %6, align 8
  %31 = call %struct.pipe_ctx* @find_top_pipe_for_stream(%struct.dc* %26, %struct.dc_state* %29, %struct.dc_stream_state* %30)
  store %struct.pipe_ctx* %31, %struct.pipe_ctx** %15, align 8
  %32 = load %struct.dc*, %struct.dc** %5, align 8
  %33 = getelementptr inbounds %struct.dc, %struct.dc* %32, i32 0, i32 3
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @DC_LOGGER_INIT(i32 %36)
  %38 = load %struct.pipe_ctx*, %struct.pipe_ctx** %14, align 8
  %39 = icmp ne %struct.pipe_ctx* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %4
  br label %427

41:                                               ; preds = %4
  store i32 0, i32* %10, align 4
  br label %42

42:                                               ; preds = %89, %41
  %43 = load i32, i32* %10, align 4
  %44 = load %struct.dc*, %struct.dc** %5, align 8
  %45 = getelementptr inbounds %struct.dc, %struct.dc* %44, i32 0, i32 1
  %46 = load %struct.TYPE_24__*, %struct.TYPE_24__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp slt i32 %43, %48
  br i1 %49, label %50, label %92

50:                                               ; preds = %42
  %51 = load %struct.dc_state*, %struct.dc_state** %8, align 8
  %52 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %52, i32 0, i32 0
  %54 = load %struct.pipe_ctx*, %struct.pipe_ctx** %53, align 8
  %55 = load i32, i32* %10, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %54, i64 %56
  store %struct.pipe_ctx* %57, %struct.pipe_ctx** %16, align 8
  %58 = load %struct.dc*, %struct.dc** %5, align 8
  %59 = getelementptr inbounds %struct.dc, %struct.dc* %58, i32 0, i32 0
  %60 = load %struct.dc_state*, %struct.dc_state** %59, align 8
  %61 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %61, i32 0, i32 0
  %63 = load %struct.pipe_ctx*, %struct.pipe_ctx** %62, align 8
  %64 = load i32, i32* %10, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %63, i64 %65
  store %struct.pipe_ctx* %66, %struct.pipe_ctx** %17, align 8
  %67 = load %struct.pipe_ctx*, %struct.pipe_ctx** %16, align 8
  %68 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %67, i32 0, i32 4
  %69 = load %struct.dc_stream_state*, %struct.dc_stream_state** %68, align 8
  %70 = load %struct.dc_stream_state*, %struct.dc_stream_state** %6, align 8
  %71 = icmp eq %struct.dc_stream_state* %69, %70
  br i1 %71, label %72, label %88

72:                                               ; preds = %50
  %73 = load %struct.pipe_ctx*, %struct.pipe_ctx** %16, align 8
  %74 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %73, i32 0, i32 4
  %75 = load %struct.dc_stream_state*, %struct.dc_stream_state** %74, align 8
  %76 = load %struct.pipe_ctx*, %struct.pipe_ctx** %17, align 8
  %77 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %76, i32 0, i32 4
  %78 = load %struct.dc_stream_state*, %struct.dc_stream_state** %77, align 8
  %79 = icmp eq %struct.dc_stream_state* %75, %78
  br i1 %79, label %80, label %88

80:                                               ; preds = %72
  %81 = load %struct.pipe_ctx*, %struct.pipe_ctx** %17, align 8
  %82 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %81, i32 0, i32 6
  %83 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.pipe_ctx*, %struct.pipe_ctx** %16, align 8
  %86 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %85, i32 0, i32 6
  %87 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %86, i32 0, i32 1
  store i32 %84, i32* %87, align 8
  br label %88

88:                                               ; preds = %80, %72, %50
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %10, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %10, align 4
  br label %42

92:                                               ; preds = %42
  %93 = load %struct.pipe_ctx*, %struct.pipe_ctx** %14, align 8
  %94 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %93, i32 0, i32 6
  %95 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %94, i32 0, i32 0
  %96 = load %struct.timing_generator*, %struct.timing_generator** %95, align 8
  store %struct.timing_generator* %96, %struct.timing_generator** %11, align 8
  %97 = load %struct.pipe_ctx*, %struct.pipe_ctx** %14, align 8
  %98 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %97, i32 0, i32 1
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %98, align 8
  %100 = icmp ne %struct.TYPE_14__* %99, null
  br i1 %100, label %101, label %110

101:                                              ; preds = %92
  %102 = load %struct.pipe_ctx*, %struct.pipe_ctx** %14, align 8
  %103 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %102, i32 0, i32 1
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br label %110

110:                                              ; preds = %101, %92
  %111 = phi i1 [ false, %92 ], [ %109, %101 ]
  %112 = zext i1 %111 to i32
  store i32 %112, i32* %13, align 4
  %113 = load i32, i32* %13, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %110
  %116 = load %struct.dc*, %struct.dc** %5, align 8
  %117 = load %struct.dc_state*, %struct.dc_state** %8, align 8
  %118 = call i32 @lock_all_pipes(%struct.dc* %116, %struct.dc_state* %117, i32 1)
  br label %123

119:                                              ; preds = %110
  %120 = load %struct.dc*, %struct.dc** %5, align 8
  %121 = load %struct.pipe_ctx*, %struct.pipe_ctx** %14, align 8
  %122 = call i32 @dcn20_pipe_control_lock(%struct.dc* %120, %struct.pipe_ctx* %121, i32 1)
  br label %123

123:                                              ; preds = %119, %115
  %124 = load i32, i32* %7, align 4
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %135

126:                                              ; preds = %123
  %127 = load %struct.dc*, %struct.dc** %5, align 8
  %128 = getelementptr inbounds %struct.dc, %struct.dc* %127, i32 0, i32 2
  %129 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %128, i32 0, i32 3
  %130 = load i32 (%struct.dc.3*, %struct.pipe_ctx*, i32)*, i32 (%struct.dc.3*, %struct.pipe_ctx*, i32)** %129, align 8
  %131 = load %struct.dc*, %struct.dc** %5, align 8
  %132 = bitcast %struct.dc* %131 to %struct.dc.3*
  %133 = load %struct.pipe_ctx*, %struct.pipe_ctx** %14, align 8
  %134 = call i32 %130(%struct.dc.3* %132, %struct.pipe_ctx* %133, i32 1)
  br label %135

135:                                              ; preds = %126, %123
  store i32 0, i32* %10, align 4
  br label %136

136:                                              ; preds = %246, %135
  %137 = load i32, i32* %10, align 4
  %138 = load %struct.dc*, %struct.dc** %5, align 8
  %139 = getelementptr inbounds %struct.dc, %struct.dc* %138, i32 0, i32 1
  %140 = load %struct.TYPE_24__*, %struct.TYPE_24__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = icmp slt i32 %137, %142
  br i1 %143, label %144, label %249

144:                                              ; preds = %136
  %145 = load %struct.dc_state*, %struct.dc_state** %8, align 8
  %146 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %146, i32 0, i32 0
  %148 = load %struct.pipe_ctx*, %struct.pipe_ctx** %147, align 8
  %149 = load i32, i32* %10, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %148, i64 %150
  store %struct.pipe_ctx* %151, %struct.pipe_ctx** %18, align 8
  %152 = load %struct.dc*, %struct.dc** %5, align 8
  %153 = getelementptr inbounds %struct.dc, %struct.dc* %152, i32 0, i32 0
  %154 = load %struct.dc_state*, %struct.dc_state** %153, align 8
  %155 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %155, i32 0, i32 0
  %157 = load %struct.pipe_ctx*, %struct.pipe_ctx** %156, align 8
  %158 = load i32, i32* %10, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %157, i64 %159
  store %struct.pipe_ctx* %160, %struct.pipe_ctx** %19, align 8
  %161 = load %struct.pipe_ctx*, %struct.pipe_ctx** %18, align 8
  %162 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %161, i32 0, i32 1
  %163 = load %struct.TYPE_14__*, %struct.TYPE_14__** %162, align 8
  %164 = icmp ne %struct.TYPE_14__* %163, null
  br i1 %164, label %165, label %202

165:                                              ; preds = %144
  %166 = load %struct.pipe_ctx*, %struct.pipe_ctx** %19, align 8
  %167 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %166, i32 0, i32 1
  %168 = load %struct.TYPE_14__*, %struct.TYPE_14__** %167, align 8
  %169 = icmp ne %struct.TYPE_14__* %168, null
  br i1 %169, label %202, label %170

170:                                              ; preds = %165
  %171 = load %struct.pipe_ctx*, %struct.pipe_ctx** %19, align 8
  %172 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %171, i32 0, i32 6
  %173 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %172, i32 0, i32 0
  %174 = load %struct.timing_generator*, %struct.timing_generator** %173, align 8
  %175 = load %struct.timing_generator*, %struct.timing_generator** %11, align 8
  %176 = icmp eq %struct.timing_generator* %174, %175
  br i1 %176, label %177, label %201

177:                                              ; preds = %170
  %178 = load %struct.pipe_ctx*, %struct.pipe_ctx** %19, align 8
  %179 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %179, i32 0, i32 0
  %181 = load %struct.TYPE_16__*, %struct.TYPE_16__** %180, align 8
  %182 = icmp ne %struct.TYPE_16__* %181, null
  br i1 %182, label %183, label %201

183:                                              ; preds = %177
  %184 = load %struct.pipe_ctx*, %struct.pipe_ctx** %19, align 8
  %185 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %185, i32 0, i32 0
  %187 = load %struct.TYPE_16__*, %struct.TYPE_16__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = load i64, i64* @OPP_ID_INVALID, align 8
  %191 = icmp ne i64 %189, %190
  br i1 %191, label %192, label %201

192:                                              ; preds = %183
  %193 = load %struct.dc*, %struct.dc** %5, align 8
  %194 = getelementptr inbounds %struct.dc, %struct.dc* %193, i32 0, i32 2
  %195 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %194, i32 0, i32 2
  %196 = load i32 (%struct.dc.2*, %struct.pipe_ctx*)*, i32 (%struct.dc.2*, %struct.pipe_ctx*)** %195, align 8
  %197 = load %struct.dc*, %struct.dc** %5, align 8
  %198 = bitcast %struct.dc* %197 to %struct.dc.2*
  %199 = load %struct.pipe_ctx*, %struct.pipe_ctx** %19, align 8
  %200 = call i32 %196(%struct.dc.2* %198, %struct.pipe_ctx* %199)
  br label %201

201:                                              ; preds = %192, %183, %177, %170
  br label %202

202:                                              ; preds = %201, %165, %144
  %203 = load %struct.pipe_ctx*, %struct.pipe_ctx** %18, align 8
  %204 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %203, i32 0, i32 1
  %205 = load %struct.TYPE_14__*, %struct.TYPE_14__** %204, align 8
  %206 = icmp ne %struct.TYPE_14__* %205, null
  br i1 %206, label %207, label %217

207:                                              ; preds = %202
  %208 = load %struct.pipe_ctx*, %struct.pipe_ctx** %18, align 8
  %209 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %208, i32 0, i32 6
  %210 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %209, i32 0, i32 0
  %211 = load %struct.timing_generator*, %struct.timing_generator** %210, align 8
  %212 = load %struct.pipe_ctx*, %struct.pipe_ctx** %19, align 8
  %213 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %212, i32 0, i32 6
  %214 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %213, i32 0, i32 0
  %215 = load %struct.timing_generator*, %struct.timing_generator** %214, align 8
  %216 = icmp ne %struct.timing_generator* %211, %215
  br i1 %216, label %217, label %245

217:                                              ; preds = %207, %202
  %218 = load %struct.pipe_ctx*, %struct.pipe_ctx** %19, align 8
  %219 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %218, i32 0, i32 1
  %220 = load %struct.TYPE_14__*, %struct.TYPE_14__** %219, align 8
  %221 = icmp ne %struct.TYPE_14__* %220, null
  br i1 %221, label %222, label %245

222:                                              ; preds = %217
  %223 = load %struct.pipe_ctx*, %struct.pipe_ctx** %19, align 8
  %224 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %223, i32 0, i32 6
  %225 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %224, i32 0, i32 0
  %226 = load %struct.timing_generator*, %struct.timing_generator** %225, align 8
  %227 = load %struct.timing_generator*, %struct.timing_generator** %11, align 8
  %228 = icmp eq %struct.timing_generator* %226, %227
  br i1 %228, label %229, label %245

229:                                              ; preds = %222
  %230 = load %struct.dc*, %struct.dc** %5, align 8
  %231 = getelementptr inbounds %struct.dc, %struct.dc* %230, i32 0, i32 2
  %232 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %231, i32 0, i32 1
  %233 = load i32 (%struct.dc.1*, %struct.pipe_ctx*)*, i32 (%struct.dc.1*, %struct.pipe_ctx*)** %232, align 8
  %234 = load %struct.dc*, %struct.dc** %5, align 8
  %235 = bitcast %struct.dc* %234 to %struct.dc.1*
  %236 = load %struct.pipe_ctx*, %struct.pipe_ctx** %19, align 8
  %237 = call i32 %233(%struct.dc.1* %235, %struct.pipe_ctx* %236)
  %238 = load i32, i32* %10, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds [6 x i32], [6 x i32]* %12, i64 0, i64 %239
  store i32 1, i32* %240, align 4
  %241 = load %struct.pipe_ctx*, %struct.pipe_ctx** %19, align 8
  %242 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %241, i32 0, i32 5
  %243 = load i32, i32* %242, align 8
  %244 = call i32 @DC_LOG_DC(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %243)
  br label %245

245:                                              ; preds = %229, %222, %217, %207
  br label %246

246:                                              ; preds = %245
  %247 = load i32, i32* %10, align 4
  %248 = add nsw i32 %247, 1
  store i32 %248, i32* %10, align 4
  br label %136

249:                                              ; preds = %136
  %250 = load i32, i32* %7, align 4
  %251 = icmp sgt i32 %250, 0
  br i1 %251, label %252, label %257

252:                                              ; preds = %249
  %253 = load %struct.dc*, %struct.dc** %5, align 8
  %254 = load %struct.pipe_ctx*, %struct.pipe_ctx** %14, align 8
  %255 = load %struct.dc_state*, %struct.dc_state** %8, align 8
  %256 = call i32 @dcn20_program_all_pipe_in_tree(%struct.dc* %253, %struct.pipe_ctx* %254, %struct.dc_state* %255)
  br label %257

257:                                              ; preds = %252, %249
  %258 = load %struct.dc_stream_state*, %struct.dc_stream_state** %6, align 8
  %259 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %258, i32 0, i32 0
  %260 = load i64, i64* %259, align 8
  %261 = icmp sgt i64 %260, 0
  br i1 %261, label %262, label %278

262:                                              ; preds = %257
  %263 = load %struct.dc*, %struct.dc** %5, align 8
  %264 = getelementptr inbounds %struct.dc, %struct.dc* %263, i32 0, i32 2
  %265 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %264, i32 0, i32 0
  %266 = load i32 (%struct.dc.0*, %struct.dc_stream_state*, %struct.dc_state*)*, i32 (%struct.dc.0*, %struct.dc_stream_state*, %struct.dc_state*)** %265, align 8
  %267 = icmp ne i32 (%struct.dc.0*, %struct.dc_stream_state*, %struct.dc_state*)* %266, null
  br i1 %267, label %268, label %278

268:                                              ; preds = %262
  %269 = load %struct.dc*, %struct.dc** %5, align 8
  %270 = getelementptr inbounds %struct.dc, %struct.dc* %269, i32 0, i32 2
  %271 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %270, i32 0, i32 0
  %272 = load i32 (%struct.dc.0*, %struct.dc_stream_state*, %struct.dc_state*)*, i32 (%struct.dc.0*, %struct.dc_stream_state*, %struct.dc_state*)** %271, align 8
  %273 = load %struct.dc*, %struct.dc** %5, align 8
  %274 = bitcast %struct.dc* %273 to %struct.dc.0*
  %275 = load %struct.dc_stream_state*, %struct.dc_stream_state** %6, align 8
  %276 = load %struct.dc_state*, %struct.dc_state** %8, align 8
  %277 = call i32 %272(%struct.dc.0* %274, %struct.dc_stream_state* %275, %struct.dc_state* %276)
  br label %278

278:                                              ; preds = %268, %262, %257
  %279 = load i32, i32* %13, align 4
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %345

281:                                              ; preds = %278
  store i32 0, i32* %10, align 4
  br label %282

282:                                              ; preds = %341, %281
  %283 = load i32, i32* %10, align 4
  %284 = load %struct.dc*, %struct.dc** %5, align 8
  %285 = getelementptr inbounds %struct.dc, %struct.dc* %284, i32 0, i32 1
  %286 = load %struct.TYPE_24__*, %struct.TYPE_24__** %285, align 8
  %287 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 4
  %289 = icmp slt i32 %283, %288
  br i1 %289, label %290, label %344

290:                                              ; preds = %282
  %291 = load %struct.dc_state*, %struct.dc_state** %8, align 8
  %292 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %291, i32 0, i32 0
  %293 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %292, i32 0, i32 0
  %294 = load %struct.pipe_ctx*, %struct.pipe_ctx** %293, align 8
  %295 = load i32, i32* %10, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %294, i64 %296
  store %struct.pipe_ctx* %297, %struct.pipe_ctx** %20, align 8
  %298 = load %struct.pipe_ctx*, %struct.pipe_ctx** %20, align 8
  %299 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %298, i32 0, i32 4
  %300 = load %struct.dc_stream_state*, %struct.dc_stream_state** %299, align 8
  %301 = icmp ne %struct.dc_stream_state* %300, null
  br i1 %301, label %302, label %322

302:                                              ; preds = %290
  %303 = load %struct.pipe_ctx*, %struct.pipe_ctx** %20, align 8
  %304 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %303, i32 0, i32 4
  %305 = load %struct.dc_stream_state*, %struct.dc_stream_state** %304, align 8
  %306 = load %struct.dc_stream_state*, %struct.dc_stream_state** %6, align 8
  %307 = icmp eq %struct.dc_stream_state* %305, %306
  br i1 %307, label %322, label %308

308:                                              ; preds = %302
  %309 = load %struct.pipe_ctx*, %struct.pipe_ctx** %20, align 8
  %310 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %309, i32 0, i32 1
  %311 = load %struct.TYPE_14__*, %struct.TYPE_14__** %310, align 8
  %312 = icmp ne %struct.TYPE_14__* %311, null
  br i1 %312, label %313, label %322

313:                                              ; preds = %308
  %314 = load %struct.timing_generator*, %struct.timing_generator** %11, align 8
  %315 = getelementptr inbounds %struct.timing_generator, %struct.timing_generator* %314, i32 0, i32 0
  %316 = load %struct.TYPE_22__*, %struct.TYPE_22__** %315, align 8
  %317 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %316, i32 0, i32 0
  %318 = load i32 (%struct.timing_generator*)*, i32 (%struct.timing_generator*)** %317, align 8
  %319 = load %struct.timing_generator*, %struct.timing_generator** %11, align 8
  %320 = call i32 %318(%struct.timing_generator* %319)
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %323, label %322

322:                                              ; preds = %313, %308, %302, %290
  br label %341

323:                                              ; preds = %313
  %324 = load %struct.pipe_ctx*, %struct.pipe_ctx** %20, align 8
  %325 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %324, i32 0, i32 0
  %326 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %325, i32 0, i32 0
  %327 = load %struct.TYPE_16__*, %struct.TYPE_16__** %326, align 8
  %328 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %327, i32 0, i32 1
  %329 = load %struct.TYPE_15__*, %struct.TYPE_15__** %328, align 8
  %330 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %329, i32 0, i32 1
  %331 = load i32 (%struct.TYPE_16__*, i32*, i32*)*, i32 (%struct.TYPE_16__*, i32*, i32*)** %330, align 8
  %332 = load %struct.pipe_ctx*, %struct.pipe_ctx** %20, align 8
  %333 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %332, i32 0, i32 0
  %334 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %333, i32 0, i32 0
  %335 = load %struct.TYPE_16__*, %struct.TYPE_16__** %334, align 8
  %336 = load %struct.pipe_ctx*, %struct.pipe_ctx** %20, align 8
  %337 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %336, i32 0, i32 3
  %338 = load %struct.pipe_ctx*, %struct.pipe_ctx** %20, align 8
  %339 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %338, i32 0, i32 2
  %340 = call i32 %331(%struct.TYPE_16__* %335, i32* %337, i32* %339)
  br label %341

341:                                              ; preds = %323, %322
  %342 = load i32, i32* %10, align 4
  %343 = add nsw i32 %342, 1
  store i32 %343, i32* %10, align 4
  br label %282

344:                                              ; preds = %282
  br label %345

345:                                              ; preds = %344, %278
  %346 = load i32, i32* %13, align 4
  %347 = icmp ne i32 %346, 0
  br i1 %347, label %348, label %352

348:                                              ; preds = %345
  %349 = load %struct.dc*, %struct.dc** %5, align 8
  %350 = load %struct.dc_state*, %struct.dc_state** %8, align 8
  %351 = call i32 @lock_all_pipes(%struct.dc* %349, %struct.dc_state* %350, i32 0)
  br label %356

352:                                              ; preds = %345
  %353 = load %struct.dc*, %struct.dc** %5, align 8
  %354 = load %struct.pipe_ctx*, %struct.pipe_ctx** %14, align 8
  %355 = call i32 @dcn20_pipe_control_lock(%struct.dc* %353, %struct.pipe_ctx* %354, i32 0)
  br label %356

356:                                              ; preds = %352, %348
  store i32 0, i32* %10, align 4
  br label %357

357:                                              ; preds = %384, %356
  %358 = load i32, i32* %10, align 4
  %359 = load %struct.dc*, %struct.dc** %5, align 8
  %360 = getelementptr inbounds %struct.dc, %struct.dc* %359, i32 0, i32 1
  %361 = load %struct.TYPE_24__*, %struct.TYPE_24__** %360, align 8
  %362 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %361, i32 0, i32 0
  %363 = load i32, i32* %362, align 4
  %364 = icmp slt i32 %358, %363
  br i1 %364, label %365, label %387

365:                                              ; preds = %357
  %366 = load i32, i32* %10, align 4
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds [6 x i32], [6 x i32]* %12, i64 0, i64 %367
  %369 = load i32, i32* %368, align 4
  %370 = icmp ne i32 %369, 0
  br i1 %370, label %371, label %383

371:                                              ; preds = %365
  %372 = load %struct.dc*, %struct.dc** %5, align 8
  %373 = load %struct.dc*, %struct.dc** %5, align 8
  %374 = getelementptr inbounds %struct.dc, %struct.dc* %373, i32 0, i32 0
  %375 = load %struct.dc_state*, %struct.dc_state** %374, align 8
  %376 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %375, i32 0, i32 0
  %377 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %376, i32 0, i32 0
  %378 = load %struct.pipe_ctx*, %struct.pipe_ctx** %377, align 8
  %379 = load i32, i32* %10, align 4
  %380 = sext i32 %379 to i64
  %381 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %378, i64 %380
  %382 = call i32 @dcn20_disable_plane(%struct.dc* %372, %struct.pipe_ctx* %381)
  br label %383

383:                                              ; preds = %371, %365
  br label %384

384:                                              ; preds = %383
  %385 = load i32, i32* %10, align 4
  %386 = add nsw i32 %385, 1
  store i32 %386, i32* %10, align 4
  br label %357

387:                                              ; preds = %357
  store i32 0, i32* %10, align 4
  %388 = load i32, i32* %7, align 4
  %389 = icmp sgt i32 %388, 0
  br i1 %389, label %390, label %427

390:                                              ; preds = %387
  %391 = load %struct.pipe_ctx*, %struct.pipe_ctx** %14, align 8
  %392 = icmp ne %struct.pipe_ctx* %391, null
  br i1 %392, label %393, label %427

393:                                              ; preds = %390
  %394 = load %struct.pipe_ctx*, %struct.pipe_ctx** %15, align 8
  %395 = icmp eq %struct.pipe_ctx* %394, null
  br i1 %395, label %401, label %396

396:                                              ; preds = %393
  %397 = load %struct.pipe_ctx*, %struct.pipe_ctx** %15, align 8
  %398 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %397, i32 0, i32 1
  %399 = load %struct.TYPE_14__*, %struct.TYPE_14__** %398, align 8
  %400 = icmp eq %struct.TYPE_14__* %399, null
  br i1 %400, label %401, label %427

401:                                              ; preds = %396, %393
  br label %402

402:                                              ; preds = %422, %401
  %403 = load i32, i32* %10, align 4
  %404 = icmp ult i32 %403, 100
  br i1 %404, label %405, label %420

405:                                              ; preds = %402
  %406 = load %struct.pipe_ctx*, %struct.pipe_ctx** %14, align 8
  %407 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %406, i32 0, i32 0
  %408 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %407, i32 0, i32 0
  %409 = load %struct.TYPE_16__*, %struct.TYPE_16__** %408, align 8
  %410 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %409, i32 0, i32 1
  %411 = load %struct.TYPE_15__*, %struct.TYPE_15__** %410, align 8
  %412 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %411, i32 0, i32 0
  %413 = load i64 (%struct.TYPE_16__*)*, i64 (%struct.TYPE_16__*)** %412, align 8
  %414 = load %struct.pipe_ctx*, %struct.pipe_ctx** %14, align 8
  %415 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %414, i32 0, i32 0
  %416 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %415, i32 0, i32 0
  %417 = load %struct.TYPE_16__*, %struct.TYPE_16__** %416, align 8
  %418 = call i64 %413(%struct.TYPE_16__* %417)
  %419 = icmp ne i64 %418, 0
  br label %420

420:                                              ; preds = %405, %402
  %421 = phi i1 [ false, %402 ], [ %419, %405 ]
  br i1 %421, label %422, label %426

422:                                              ; preds = %420
  %423 = load i32, i32* %10, align 4
  %424 = add nsw i32 %423, 1
  store i32 %424, i32* %10, align 4
  %425 = call i32 @msleep(i32 1)
  br label %402

426:                                              ; preds = %420
  br label %427

427:                                              ; preds = %40, %426, %396, %390, %387
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.pipe_ctx* @find_top_pipe_for_stream(%struct.dc*, %struct.dc_state*, %struct.dc_stream_state*) #2

declare dso_local i32 @DC_LOGGER_INIT(i32) #2

declare dso_local i32 @lock_all_pipes(%struct.dc*, %struct.dc_state*, i32) #2

declare dso_local i32 @dcn20_pipe_control_lock(%struct.dc*, %struct.pipe_ctx*, i32) #2

declare dso_local i32 @DC_LOG_DC(i8*, i32) #2

declare dso_local i32 @dcn20_program_all_pipe_in_tree(%struct.dc*, %struct.pipe_ctx*, %struct.dc_state*) #2

declare dso_local i32 @dcn20_disable_plane(%struct.dc*, %struct.pipe_ctx*) #2

declare dso_local i32 @msleep(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
