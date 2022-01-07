; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hw_sequencer.c_dcn10_apply_ctx_for_surface.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hw_sequencer.c_dcn10_apply_ctx_for_surface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc = type { %struct.TYPE_24__*, %struct.TYPE_23__*, %struct.TYPE_21__, %struct.TYPE_20__*, %struct.TYPE_29__, %struct.TYPE_26__* }
%struct.TYPE_24__ = type { i32, i32 }
%struct.TYPE_23__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i64 }
%struct.TYPE_21__ = type { i32 (%struct.dc.0*, %struct.dc_state*)*, i32 (%struct.dc.1*, %struct.pipe_ctx*)*, i32 (%struct.dc.2*, %struct.dc_stream_state*, %struct.dc_state*)*, i32 (%struct.dc.3*, %struct.pipe_ctx*)*, i32 (%struct.dc.4*, %struct.pipe_ctx*, i32)*, i32 (%struct.dc.5*, %struct.pipe_ctx*)* }
%struct.dc.0 = type opaque
%struct.dc.1 = type opaque
%struct.pipe_ctx = type { i32, i32, %struct.TYPE_18__, %struct.TYPE_32__*, %struct.dc_stream_state*, i32, %struct.TYPE_30__ }
%struct.TYPE_18__ = type { %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i64, %struct.TYPE_34__* }
%struct.TYPE_34__ = type { i32 (%struct.TYPE_25__*, i32*, i32*)* }
%struct.TYPE_32__ = type { %struct.TYPE_28__ }
%struct.TYPE_28__ = type { %struct.TYPE_27__ }
%struct.TYPE_27__ = type { i64 }
%struct.TYPE_30__ = type { %struct.timing_generator* }
%struct.timing_generator = type { %struct.TYPE_33__* }
%struct.TYPE_33__ = type { i32 (%struct.timing_generator*)* }
%struct.dc.2 = type opaque
%struct.dc.3 = type opaque
%struct.dc.4 = type opaque
%struct.dc.5 = type opaque
%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { %struct.pipe_ctx* }
%struct.TYPE_29__ = type { i32 }
%struct.TYPE_26__ = type { i32 }
%struct.dc_stream_state = type { i64 }
%struct.dc_state = type { %struct.TYPE_31__ }
%struct.TYPE_31__ = type { %struct.pipe_ctx* }

@OPP_ID_INVALID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"Reset mpcc for pipe %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dc*, %struct.dc_stream_state*, i32, %struct.dc_state*)* @dcn10_apply_ctx_for_surface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dcn10_apply_ctx_for_surface(%struct.dc* %0, %struct.dc_stream_state* %1, i32 %2, %struct.dc_state* %3) #0 {
  %5 = alloca %struct.dc*, align 8
  %6 = alloca %struct.dc_stream_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dc_state*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.timing_generator*, align 8
  %11 = alloca i32, align 4
  %12 = alloca [4 x i32], align 16
  %13 = alloca i32, align 4
  %14 = alloca %struct.pipe_ctx*, align 8
  %15 = alloca %struct.pipe_ctx*, align 8
  %16 = alloca %struct.pipe_ctx*, align 8
  %17 = alloca %struct.pipe_ctx*, align 8
  store %struct.dc* %0, %struct.dc** %5, align 8
  store %struct.dc_stream_state* %1, %struct.dc_stream_state** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.dc_state* %3, %struct.dc_state** %8, align 8
  %18 = bitcast [4 x i32]* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %18, i8 0, i64 16, i1 false)
  store i32 0, i32* %13, align 4
  %19 = load %struct.dc*, %struct.dc** %5, align 8
  %20 = load %struct.dc_state*, %struct.dc_state** %8, align 8
  %21 = load %struct.dc_stream_state*, %struct.dc_stream_state** %6, align 8
  %22 = call %struct.pipe_ctx* @find_top_pipe_for_stream(%struct.dc* %19, %struct.dc_state* %20, %struct.dc_stream_state* %21)
  store %struct.pipe_ctx* %22, %struct.pipe_ctx** %14, align 8
  %23 = load %struct.dc*, %struct.dc** %5, align 8
  %24 = getelementptr inbounds %struct.dc, %struct.dc* %23, i32 0, i32 5
  %25 = load %struct.TYPE_26__*, %struct.TYPE_26__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @DC_LOGGER_INIT(i32 %27)
  %29 = load %struct.pipe_ctx*, %struct.pipe_ctx** %14, align 8
  %30 = icmp ne %struct.pipe_ctx* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %4
  br label %410

32:                                               ; preds = %4
  %33 = load %struct.pipe_ctx*, %struct.pipe_ctx** %14, align 8
  %34 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %33, i32 0, i32 6
  %35 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %34, i32 0, i32 0
  %36 = load %struct.timing_generator*, %struct.timing_generator** %35, align 8
  store %struct.timing_generator* %36, %struct.timing_generator** %10, align 8
  %37 = load %struct.pipe_ctx*, %struct.pipe_ctx** %14, align 8
  %38 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %37, i32 0, i32 3
  %39 = load %struct.TYPE_32__*, %struct.TYPE_32__** %38, align 8
  %40 = icmp ne %struct.TYPE_32__* %39, null
  br i1 %40, label %41, label %50

41:                                               ; preds = %32
  %42 = load %struct.pipe_ctx*, %struct.pipe_ctx** %14, align 8
  %43 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %42, i32 0, i32 3
  %44 = load %struct.TYPE_32__*, %struct.TYPE_32__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br label %50

50:                                               ; preds = %41, %32
  %51 = phi i1 [ false, %32 ], [ %49, %41 ]
  %52 = zext i1 %51 to i32
  store i32 %52, i32* %13, align 4
  %53 = load %struct.dc*, %struct.dc** %5, align 8
  %54 = getelementptr inbounds %struct.dc, %struct.dc* %53, i32 0, i32 4
  %55 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* %11, align 4
  %58 = icmp ne i32 %57, -1
  br i1 %58, label %59, label %75

59:                                               ; preds = %50
  %60 = load %struct.dc*, %struct.dc** %5, align 8
  %61 = getelementptr inbounds %struct.dc, %struct.dc* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %61, i32 0, i32 5
  %63 = load i32 (%struct.dc.5*, %struct.pipe_ctx*)*, i32 (%struct.dc.5*, %struct.pipe_ctx*)** %62, align 8
  %64 = icmp ne i32 (%struct.dc.5*, %struct.pipe_ctx*)* %63, null
  br i1 %64, label %65, label %75

65:                                               ; preds = %59
  %66 = load %struct.dc*, %struct.dc** %5, align 8
  %67 = getelementptr inbounds %struct.dc, %struct.dc* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %67, i32 0, i32 5
  %69 = load i32 (%struct.dc.5*, %struct.pipe_ctx*)*, i32 (%struct.dc.5*, %struct.pipe_ctx*)** %68, align 8
  %70 = load %struct.dc*, %struct.dc** %5, align 8
  %71 = bitcast %struct.dc* %70 to %struct.dc.5*
  %72 = load %struct.pipe_ctx*, %struct.pipe_ctx** %14, align 8
  %73 = call i32 %69(%struct.dc.5* %71, %struct.pipe_ctx* %72)
  %74 = call i32 @ASSERT(i32 %73)
  br label %75

75:                                               ; preds = %65, %59, %50
  %76 = load i32, i32* %13, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %75
  %79 = load %struct.dc*, %struct.dc** %5, align 8
  %80 = load %struct.dc_state*, %struct.dc_state** %8, align 8
  %81 = call i32 @lock_all_pipes(%struct.dc* %79, %struct.dc_state* %80, i32 1)
  br label %86

82:                                               ; preds = %75
  %83 = load %struct.dc*, %struct.dc** %5, align 8
  %84 = load %struct.pipe_ctx*, %struct.pipe_ctx** %14, align 8
  %85 = call i32 @dcn10_pipe_control_lock(%struct.dc* %83, %struct.pipe_ctx* %84, i32 1)
  br label %86

86:                                               ; preds = %82, %78
  %87 = load i32, i32* %11, align 4
  %88 = icmp ne i32 %87, -1
  br i1 %88, label %89, label %92

89:                                               ; preds = %86
  %90 = load i32, i32* %11, align 4
  %91 = call i32 @udelay(i32 %90)
  br label %92

92:                                               ; preds = %89, %86
  %93 = load i32, i32* %11, align 4
  %94 = icmp ne i32 %93, -1
  br i1 %94, label %95, label %111

95:                                               ; preds = %92
  %96 = load %struct.dc*, %struct.dc** %5, align 8
  %97 = getelementptr inbounds %struct.dc, %struct.dc* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %97, i32 0, i32 5
  %99 = load i32 (%struct.dc.5*, %struct.pipe_ctx*)*, i32 (%struct.dc.5*, %struct.pipe_ctx*)** %98, align 8
  %100 = icmp ne i32 (%struct.dc.5*, %struct.pipe_ctx*)* %99, null
  br i1 %100, label %101, label %111

101:                                              ; preds = %95
  %102 = load %struct.dc*, %struct.dc** %5, align 8
  %103 = getelementptr inbounds %struct.dc, %struct.dc* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %103, i32 0, i32 5
  %105 = load i32 (%struct.dc.5*, %struct.pipe_ctx*)*, i32 (%struct.dc.5*, %struct.pipe_ctx*)** %104, align 8
  %106 = load %struct.dc*, %struct.dc** %5, align 8
  %107 = bitcast %struct.dc* %106 to %struct.dc.5*
  %108 = load %struct.pipe_ctx*, %struct.pipe_ctx** %14, align 8
  %109 = call i32 %105(%struct.dc.5* %107, %struct.pipe_ctx* %108)
  %110 = call i32 @ASSERT(i32 %109)
  br label %111

111:                                              ; preds = %101, %95, %92
  %112 = load i32, i32* %7, align 4
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %123

114:                                              ; preds = %111
  %115 = load %struct.dc*, %struct.dc** %5, align 8
  %116 = getelementptr inbounds %struct.dc, %struct.dc* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %116, i32 0, i32 4
  %118 = load i32 (%struct.dc.4*, %struct.pipe_ctx*, i32)*, i32 (%struct.dc.4*, %struct.pipe_ctx*, i32)** %117, align 8
  %119 = load %struct.dc*, %struct.dc** %5, align 8
  %120 = bitcast %struct.dc* %119 to %struct.dc.4*
  %121 = load %struct.pipe_ctx*, %struct.pipe_ctx** %14, align 8
  %122 = call i32 %118(%struct.dc.4* %120, %struct.pipe_ctx* %121, i32 1)
  br label %123

123:                                              ; preds = %114, %111
  store i32 0, i32* %9, align 4
  br label %124

124:                                              ; preds = %234, %123
  %125 = load i32, i32* %9, align 4
  %126 = load %struct.dc*, %struct.dc** %5, align 8
  %127 = getelementptr inbounds %struct.dc, %struct.dc* %126, i32 0, i32 0
  %128 = load %struct.TYPE_24__*, %struct.TYPE_24__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = icmp slt i32 %125, %130
  br i1 %131, label %132, label %237

132:                                              ; preds = %124
  %133 = load %struct.dc_state*, %struct.dc_state** %8, align 8
  %134 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %134, i32 0, i32 0
  %136 = load %struct.pipe_ctx*, %struct.pipe_ctx** %135, align 8
  %137 = load i32, i32* %9, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %136, i64 %138
  store %struct.pipe_ctx* %139, %struct.pipe_ctx** %15, align 8
  %140 = load %struct.dc*, %struct.dc** %5, align 8
  %141 = getelementptr inbounds %struct.dc, %struct.dc* %140, i32 0, i32 3
  %142 = load %struct.TYPE_20__*, %struct.TYPE_20__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %143, i32 0, i32 0
  %145 = load %struct.pipe_ctx*, %struct.pipe_ctx** %144, align 8
  %146 = load i32, i32* %9, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %145, i64 %147
  store %struct.pipe_ctx* %148, %struct.pipe_ctx** %16, align 8
  %149 = load %struct.pipe_ctx*, %struct.pipe_ctx** %15, align 8
  %150 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %149, i32 0, i32 3
  %151 = load %struct.TYPE_32__*, %struct.TYPE_32__** %150, align 8
  %152 = icmp ne %struct.TYPE_32__* %151, null
  br i1 %152, label %153, label %190

153:                                              ; preds = %132
  %154 = load %struct.pipe_ctx*, %struct.pipe_ctx** %16, align 8
  %155 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %154, i32 0, i32 3
  %156 = load %struct.TYPE_32__*, %struct.TYPE_32__** %155, align 8
  %157 = icmp ne %struct.TYPE_32__* %156, null
  br i1 %157, label %190, label %158

158:                                              ; preds = %153
  %159 = load %struct.pipe_ctx*, %struct.pipe_ctx** %16, align 8
  %160 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %159, i32 0, i32 6
  %161 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %160, i32 0, i32 0
  %162 = load %struct.timing_generator*, %struct.timing_generator** %161, align 8
  %163 = load %struct.timing_generator*, %struct.timing_generator** %10, align 8
  %164 = icmp eq %struct.timing_generator* %162, %163
  br i1 %164, label %165, label %189

165:                                              ; preds = %158
  %166 = load %struct.pipe_ctx*, %struct.pipe_ctx** %16, align 8
  %167 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %166, i32 0, i32 2
  %168 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %167, i32 0, i32 0
  %169 = load %struct.TYPE_25__*, %struct.TYPE_25__** %168, align 8
  %170 = icmp ne %struct.TYPE_25__* %169, null
  br i1 %170, label %171, label %189

171:                                              ; preds = %165
  %172 = load %struct.pipe_ctx*, %struct.pipe_ctx** %16, align 8
  %173 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %172, i32 0, i32 2
  %174 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %173, i32 0, i32 0
  %175 = load %struct.TYPE_25__*, %struct.TYPE_25__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = load i64, i64* @OPP_ID_INVALID, align 8
  %179 = icmp ne i64 %177, %178
  br i1 %179, label %180, label %189

180:                                              ; preds = %171
  %181 = load %struct.dc*, %struct.dc** %5, align 8
  %182 = getelementptr inbounds %struct.dc, %struct.dc* %181, i32 0, i32 2
  %183 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %182, i32 0, i32 1
  %184 = load i32 (%struct.dc.1*, %struct.pipe_ctx*)*, i32 (%struct.dc.1*, %struct.pipe_ctx*)** %183, align 8
  %185 = load %struct.dc*, %struct.dc** %5, align 8
  %186 = bitcast %struct.dc* %185 to %struct.dc.1*
  %187 = load %struct.pipe_ctx*, %struct.pipe_ctx** %16, align 8
  %188 = call i32 %184(%struct.dc.1* %186, %struct.pipe_ctx* %187)
  br label %189

189:                                              ; preds = %180, %171, %165, %158
  br label %190

190:                                              ; preds = %189, %153, %132
  %191 = load %struct.pipe_ctx*, %struct.pipe_ctx** %15, align 8
  %192 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %191, i32 0, i32 3
  %193 = load %struct.TYPE_32__*, %struct.TYPE_32__** %192, align 8
  %194 = icmp ne %struct.TYPE_32__* %193, null
  br i1 %194, label %195, label %205

195:                                              ; preds = %190
  %196 = load %struct.pipe_ctx*, %struct.pipe_ctx** %15, align 8
  %197 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %196, i32 0, i32 6
  %198 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %197, i32 0, i32 0
  %199 = load %struct.timing_generator*, %struct.timing_generator** %198, align 8
  %200 = load %struct.pipe_ctx*, %struct.pipe_ctx** %16, align 8
  %201 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %200, i32 0, i32 6
  %202 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %201, i32 0, i32 0
  %203 = load %struct.timing_generator*, %struct.timing_generator** %202, align 8
  %204 = icmp ne %struct.timing_generator* %199, %203
  br i1 %204, label %205, label %233

205:                                              ; preds = %195, %190
  %206 = load %struct.pipe_ctx*, %struct.pipe_ctx** %16, align 8
  %207 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %206, i32 0, i32 3
  %208 = load %struct.TYPE_32__*, %struct.TYPE_32__** %207, align 8
  %209 = icmp ne %struct.TYPE_32__* %208, null
  br i1 %209, label %210, label %233

210:                                              ; preds = %205
  %211 = load %struct.pipe_ctx*, %struct.pipe_ctx** %16, align 8
  %212 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %211, i32 0, i32 6
  %213 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %212, i32 0, i32 0
  %214 = load %struct.timing_generator*, %struct.timing_generator** %213, align 8
  %215 = load %struct.timing_generator*, %struct.timing_generator** %10, align 8
  %216 = icmp eq %struct.timing_generator* %214, %215
  br i1 %216, label %217, label %233

217:                                              ; preds = %210
  %218 = load %struct.dc*, %struct.dc** %5, align 8
  %219 = getelementptr inbounds %struct.dc, %struct.dc* %218, i32 0, i32 2
  %220 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %219, i32 0, i32 3
  %221 = load i32 (%struct.dc.3*, %struct.pipe_ctx*)*, i32 (%struct.dc.3*, %struct.pipe_ctx*)** %220, align 8
  %222 = load %struct.dc*, %struct.dc** %5, align 8
  %223 = bitcast %struct.dc* %222 to %struct.dc.3*
  %224 = load %struct.pipe_ctx*, %struct.pipe_ctx** %16, align 8
  %225 = call i32 %221(%struct.dc.3* %223, %struct.pipe_ctx* %224)
  %226 = load i32, i32* %9, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 %227
  store i32 1, i32* %228, align 4
  %229 = load %struct.pipe_ctx*, %struct.pipe_ctx** %16, align 8
  %230 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %229, i32 0, i32 5
  %231 = load i32, i32* %230, align 8
  %232 = call i32 @DC_LOG_DC(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %231)
  br label %233

233:                                              ; preds = %217, %210, %205, %195
  br label %234

234:                                              ; preds = %233
  %235 = load i32, i32* %9, align 4
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %9, align 4
  br label %124

237:                                              ; preds = %124
  %238 = load i32, i32* %7, align 4
  %239 = icmp sgt i32 %238, 0
  br i1 %239, label %240, label %245

240:                                              ; preds = %237
  %241 = load %struct.dc*, %struct.dc** %5, align 8
  %242 = load %struct.pipe_ctx*, %struct.pipe_ctx** %14, align 8
  %243 = load %struct.dc_state*, %struct.dc_state** %8, align 8
  %244 = call i32 @program_all_pipe_in_tree(%struct.dc* %241, %struct.pipe_ctx* %242, %struct.dc_state* %243)
  br label %245

245:                                              ; preds = %240, %237
  %246 = load i32, i32* %13, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %312

248:                                              ; preds = %245
  store i32 0, i32* %9, align 4
  br label %249

249:                                              ; preds = %308, %248
  %250 = load i32, i32* %9, align 4
  %251 = load %struct.dc*, %struct.dc** %5, align 8
  %252 = getelementptr inbounds %struct.dc, %struct.dc* %251, i32 0, i32 0
  %253 = load %struct.TYPE_24__*, %struct.TYPE_24__** %252, align 8
  %254 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 4
  %256 = icmp slt i32 %250, %255
  br i1 %256, label %257, label %311

257:                                              ; preds = %249
  %258 = load %struct.dc_state*, %struct.dc_state** %8, align 8
  %259 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %258, i32 0, i32 0
  %260 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %259, i32 0, i32 0
  %261 = load %struct.pipe_ctx*, %struct.pipe_ctx** %260, align 8
  %262 = load i32, i32* %9, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %261, i64 %263
  store %struct.pipe_ctx* %264, %struct.pipe_ctx** %17, align 8
  %265 = load %struct.pipe_ctx*, %struct.pipe_ctx** %17, align 8
  %266 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %265, i32 0, i32 4
  %267 = load %struct.dc_stream_state*, %struct.dc_stream_state** %266, align 8
  %268 = icmp ne %struct.dc_stream_state* %267, null
  br i1 %268, label %269, label %289

269:                                              ; preds = %257
  %270 = load %struct.pipe_ctx*, %struct.pipe_ctx** %17, align 8
  %271 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %270, i32 0, i32 4
  %272 = load %struct.dc_stream_state*, %struct.dc_stream_state** %271, align 8
  %273 = load %struct.dc_stream_state*, %struct.dc_stream_state** %6, align 8
  %274 = icmp eq %struct.dc_stream_state* %272, %273
  br i1 %274, label %289, label %275

275:                                              ; preds = %269
  %276 = load %struct.pipe_ctx*, %struct.pipe_ctx** %17, align 8
  %277 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %276, i32 0, i32 3
  %278 = load %struct.TYPE_32__*, %struct.TYPE_32__** %277, align 8
  %279 = icmp ne %struct.TYPE_32__* %278, null
  br i1 %279, label %280, label %289

280:                                              ; preds = %275
  %281 = load %struct.timing_generator*, %struct.timing_generator** %10, align 8
  %282 = getelementptr inbounds %struct.timing_generator, %struct.timing_generator* %281, i32 0, i32 0
  %283 = load %struct.TYPE_33__*, %struct.TYPE_33__** %282, align 8
  %284 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %283, i32 0, i32 0
  %285 = load i32 (%struct.timing_generator*)*, i32 (%struct.timing_generator*)** %284, align 8
  %286 = load %struct.timing_generator*, %struct.timing_generator** %10, align 8
  %287 = call i32 %285(%struct.timing_generator* %286)
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %290, label %289

289:                                              ; preds = %280, %275, %269, %257
  br label %308

290:                                              ; preds = %280
  %291 = load %struct.pipe_ctx*, %struct.pipe_ctx** %17, align 8
  %292 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %291, i32 0, i32 2
  %293 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %292, i32 0, i32 0
  %294 = load %struct.TYPE_25__*, %struct.TYPE_25__** %293, align 8
  %295 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %294, i32 0, i32 1
  %296 = load %struct.TYPE_34__*, %struct.TYPE_34__** %295, align 8
  %297 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %296, i32 0, i32 0
  %298 = load i32 (%struct.TYPE_25__*, i32*, i32*)*, i32 (%struct.TYPE_25__*, i32*, i32*)** %297, align 8
  %299 = load %struct.pipe_ctx*, %struct.pipe_ctx** %17, align 8
  %300 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %299, i32 0, i32 2
  %301 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %300, i32 0, i32 0
  %302 = load %struct.TYPE_25__*, %struct.TYPE_25__** %301, align 8
  %303 = load %struct.pipe_ctx*, %struct.pipe_ctx** %17, align 8
  %304 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %303, i32 0, i32 1
  %305 = load %struct.pipe_ctx*, %struct.pipe_ctx** %17, align 8
  %306 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %305, i32 0, i32 0
  %307 = call i32 %298(%struct.TYPE_25__* %302, i32* %304, i32* %306)
  br label %308

308:                                              ; preds = %290, %289
  %309 = load i32, i32* %9, align 4
  %310 = add nsw i32 %309, 1
  store i32 %310, i32* %9, align 4
  br label %249

311:                                              ; preds = %249
  br label %312

312:                                              ; preds = %311, %245
  %313 = load i32, i32* %13, align 4
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %319

315:                                              ; preds = %312
  %316 = load %struct.dc*, %struct.dc** %5, align 8
  %317 = load %struct.dc_state*, %struct.dc_state** %8, align 8
  %318 = call i32 @lock_all_pipes(%struct.dc* %316, %struct.dc_state* %317, i32 0)
  br label %323

319:                                              ; preds = %312
  %320 = load %struct.dc*, %struct.dc** %5, align 8
  %321 = load %struct.pipe_ctx*, %struct.pipe_ctx** %14, align 8
  %322 = call i32 @dcn10_pipe_control_lock(%struct.dc* %320, %struct.pipe_ctx* %321, i32 0)
  br label %323

323:                                              ; preds = %319, %315
  %324 = load i32, i32* %7, align 4
  %325 = icmp eq i32 %324, 0
  br i1 %325, label %326, label %331

326:                                              ; preds = %323
  %327 = load %struct.dc*, %struct.dc** %5, align 8
  %328 = load %struct.dc_stream_state*, %struct.dc_stream_state** %6, align 8
  %329 = load %struct.timing_generator*, %struct.timing_generator** %10, align 8
  %330 = call i32 @false_optc_underflow_wa(%struct.dc* %327, %struct.dc_stream_state* %328, %struct.timing_generator* %329)
  br label %331

331:                                              ; preds = %326, %323
  store i32 0, i32* %9, align 4
  br label %332

332:                                              ; preds = %364, %331
  %333 = load i32, i32* %9, align 4
  %334 = load %struct.dc*, %struct.dc** %5, align 8
  %335 = getelementptr inbounds %struct.dc, %struct.dc* %334, i32 0, i32 0
  %336 = load %struct.TYPE_24__*, %struct.TYPE_24__** %335, align 8
  %337 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %336, i32 0, i32 0
  %338 = load i32, i32* %337, align 4
  %339 = icmp slt i32 %333, %338
  br i1 %339, label %340, label %367

340:                                              ; preds = %332
  %341 = load i32, i32* %9, align 4
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 %342
  %344 = load i32, i32* %343, align 4
  %345 = icmp ne i32 %344, 0
  br i1 %345, label %346, label %363

346:                                              ; preds = %340
  %347 = load %struct.dc*, %struct.dc** %5, align 8
  %348 = getelementptr inbounds %struct.dc, %struct.dc* %347, i32 0, i32 2
  %349 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %348, i32 0, i32 1
  %350 = load i32 (%struct.dc.1*, %struct.pipe_ctx*)*, i32 (%struct.dc.1*, %struct.pipe_ctx*)** %349, align 8
  %351 = load %struct.dc*, %struct.dc** %5, align 8
  %352 = bitcast %struct.dc* %351 to %struct.dc.1*
  %353 = load %struct.dc*, %struct.dc** %5, align 8
  %354 = getelementptr inbounds %struct.dc, %struct.dc* %353, i32 0, i32 3
  %355 = load %struct.TYPE_20__*, %struct.TYPE_20__** %354, align 8
  %356 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %355, i32 0, i32 0
  %357 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %356, i32 0, i32 0
  %358 = load %struct.pipe_ctx*, %struct.pipe_ctx** %357, align 8
  %359 = load i32, i32* %9, align 4
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %358, i64 %360
  %362 = call i32 %350(%struct.dc.1* %352, %struct.pipe_ctx* %361)
  br label %363

363:                                              ; preds = %346, %340
  br label %364

364:                                              ; preds = %363
  %365 = load i32, i32* %9, align 4
  %366 = add nsw i32 %365, 1
  store i32 %366, i32* %9, align 4
  br label %332

367:                                              ; preds = %332
  store i32 0, i32* %9, align 4
  br label %368

368:                                              ; preds = %392, %367
  %369 = load i32, i32* %9, align 4
  %370 = load %struct.dc*, %struct.dc** %5, align 8
  %371 = getelementptr inbounds %struct.dc, %struct.dc* %370, i32 0, i32 0
  %372 = load %struct.TYPE_24__*, %struct.TYPE_24__** %371, align 8
  %373 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %372, i32 0, i32 0
  %374 = load i32, i32* %373, align 4
  %375 = icmp slt i32 %369, %374
  br i1 %375, label %376, label %395

376:                                              ; preds = %368
  %377 = load i32, i32* %9, align 4
  %378 = sext i32 %377 to i64
  %379 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 %378
  %380 = load i32, i32* %379, align 4
  %381 = icmp ne i32 %380, 0
  br i1 %381, label %382, label %391

382:                                              ; preds = %376
  %383 = load %struct.dc*, %struct.dc** %5, align 8
  %384 = getelementptr inbounds %struct.dc, %struct.dc* %383, i32 0, i32 2
  %385 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %384, i32 0, i32 0
  %386 = load i32 (%struct.dc.0*, %struct.dc_state*)*, i32 (%struct.dc.0*, %struct.dc_state*)** %385, align 8
  %387 = load %struct.dc*, %struct.dc** %5, align 8
  %388 = bitcast %struct.dc* %387 to %struct.dc.0*
  %389 = load %struct.dc_state*, %struct.dc_state** %8, align 8
  %390 = call i32 %386(%struct.dc.0* %388, %struct.dc_state* %389)
  br label %395

391:                                              ; preds = %376
  br label %392

392:                                              ; preds = %391
  %393 = load i32, i32* %9, align 4
  %394 = add nsw i32 %393, 1
  store i32 %394, i32* %9, align 4
  br label %368

395:                                              ; preds = %382, %368
  %396 = load %struct.dc*, %struct.dc** %5, align 8
  %397 = getelementptr inbounds %struct.dc, %struct.dc* %396, i32 0, i32 1
  %398 = load %struct.TYPE_23__*, %struct.TYPE_23__** %397, align 8
  %399 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %398, i32 0, i32 0
  %400 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %399, i32 0, i32 0
  %401 = load i64, i64* %400, align 8
  %402 = icmp ne i64 %401, 0
  br i1 %402, label %403, label %410

403:                                              ; preds = %395
  %404 = load %struct.dc*, %struct.dc** %5, align 8
  %405 = getelementptr inbounds %struct.dc, %struct.dc* %404, i32 0, i32 0
  %406 = load %struct.TYPE_24__*, %struct.TYPE_24__** %405, align 8
  %407 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %406, i32 0, i32 1
  %408 = load i32, i32* %407, align 4
  %409 = call i32 @hubbub1_wm_change_req_wa(i32 %408)
  br label %410

410:                                              ; preds = %31, %403, %395
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.pipe_ctx* @find_top_pipe_for_stream(%struct.dc*, %struct.dc_state*, %struct.dc_stream_state*) #2

declare dso_local i32 @DC_LOGGER_INIT(i32) #2

declare dso_local i32 @ASSERT(i32) #2

declare dso_local i32 @lock_all_pipes(%struct.dc*, %struct.dc_state*, i32) #2

declare dso_local i32 @dcn10_pipe_control_lock(%struct.dc*, %struct.pipe_ctx*, i32) #2

declare dso_local i32 @udelay(i32) #2

declare dso_local i32 @DC_LOG_DC(i8*, i32) #2

declare dso_local i32 @program_all_pipe_in_tree(%struct.dc*, %struct.pipe_ctx*, %struct.dc_state*) #2

declare dso_local i32 @false_optc_underflow_wa(%struct.dc*, %struct.dc_stream_state*, %struct.timing_generator*) #2

declare dso_local i32 @hubbub1_wm_change_req_wa(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
