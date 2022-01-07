; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hw_sequencer.c_dcn10_init_pipes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hw_sequencer.c_dcn10_init_pipes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc = type { %struct.TYPE_17__, %struct.TYPE_16__*, %struct.TYPE_24__* }
%struct.TYPE_17__ = type { i32 (%struct.dc.0*, %struct.pipe_ctx*)*, i32 (%struct.dc.1*, %struct.pipe_ctx*)*, i32 (%struct.dc.2*, %struct.timing_generator*)* }
%struct.dc.0 = type opaque
%struct.pipe_ctx = type { i32, %struct.TYPE_27__, %struct.TYPE_28__, i32* }
%struct.TYPE_27__ = type { i64, %struct.hubp*, %struct.dpp* }
%struct.hubp = type { i64, i32, i32 }
%struct.dpp = type { i64, %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i32 (%struct.dpp*)* }
%struct.TYPE_28__ = type { %struct.timing_generator*, %struct.TYPE_15__* }
%struct.timing_generator = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32 (%struct.timing_generator*)*, i32 (%struct.timing_generator*)*, i64 (%struct.timing_generator*)*, i32 (%struct.timing_generator*, i32)*, i32 (%struct.timing_generator*)* }
%struct.TYPE_15__ = type { i32*, %struct.TYPE_26__, i32 }
%struct.TYPE_26__ = type { i32*, i32 }
%struct.dc.1 = type opaque
%struct.dc.2 = type opaque
%struct.TYPE_16__ = type { i32, %struct.TYPE_15__**, %struct.dpp**, %struct.hubp**, %struct.timing_generator**, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32 (%struct.TYPE_19__*, i32)* }
%struct.TYPE_24__ = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { %struct.pipe_ctx* }
%struct.dc_state = type { i32, %struct.TYPE_22__, %struct.TYPE_20__** }
%struct.TYPE_22__ = type { %struct.pipe_ctx* }
%struct.TYPE_20__ = type { i64 }

@OPP_ID_INVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dc*, %struct.dc_state*)* @dcn10_init_pipes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dcn10_init_pipes(%struct.dc* %0, %struct.dc_state* %1) #0 {
  %3 = alloca %struct.dc*, align 8
  %4 = alloca %struct.dc_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.timing_generator*, align 8
  %8 = alloca %struct.pipe_ctx*, align 8
  %9 = alloca %struct.pipe_ctx*, align 8
  %10 = alloca %struct.timing_generator*, align 8
  %11 = alloca %struct.hubp*, align 8
  %12 = alloca %struct.dpp*, align 8
  %13 = alloca %struct.pipe_ctx*, align 8
  store %struct.dc* %0, %struct.dc** %3, align 8
  store %struct.dc_state* %1, %struct.dc_state** %4, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %33, %2
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.dc_state*, %struct.dc_state** %4, align 8
  %17 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %36

20:                                               ; preds = %14
  %21 = load %struct.dc_state*, %struct.dc_state** %4, align 8
  %22 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %21, i32 0, i32 2
  %23 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %23, i64 %25
  %27 = load %struct.TYPE_20__*, %struct.TYPE_20__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %20
  store i32 1, i32* %6, align 4
  br label %36

32:                                               ; preds = %20
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %5, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %5, align 4
  br label %14

36:                                               ; preds = %31, %14
  store i32 0, i32* %5, align 4
  br label %37

37:                                               ; preds = %120, %36
  %38 = load i32, i32* %5, align 4
  %39 = load %struct.dc*, %struct.dc** %3, align 8
  %40 = getelementptr inbounds %struct.dc, %struct.dc* %39, i32 0, i32 1
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp slt i32 %38, %43
  br i1 %44, label %45, label %123

45:                                               ; preds = %37
  %46 = load %struct.dc*, %struct.dc** %3, align 8
  %47 = getelementptr inbounds %struct.dc, %struct.dc* %46, i32 0, i32 1
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i32 0, i32 4
  %50 = load %struct.timing_generator**, %struct.timing_generator*** %49, align 8
  %51 = load i32, i32* %5, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.timing_generator*, %struct.timing_generator** %50, i64 %52
  %54 = load %struct.timing_generator*, %struct.timing_generator** %53, align 8
  store %struct.timing_generator* %54, %struct.timing_generator** %7, align 8
  %55 = load %struct.dc_state*, %struct.dc_state** %4, align 8
  %56 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %56, i32 0, i32 0
  %58 = load %struct.pipe_ctx*, %struct.pipe_ctx** %57, align 8
  %59 = load i32, i32* %5, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %58, i64 %60
  store %struct.pipe_ctx* %61, %struct.pipe_ctx** %8, align 8
  %62 = load %struct.pipe_ctx*, %struct.pipe_ctx** %8, align 8
  %63 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %62, i32 0, i32 3
  %64 = load i32*, i32** %63, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %66, label %70

66:                                               ; preds = %45
  %67 = load i32, i32* %6, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %66
  br label %120

70:                                               ; preds = %66, %45
  %71 = load %struct.timing_generator*, %struct.timing_generator** %7, align 8
  %72 = getelementptr inbounds %struct.timing_generator, %struct.timing_generator* %71, i32 0, i32 0
  %73 = load %struct.TYPE_18__*, %struct.TYPE_18__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %73, i32 0, i32 2
  %75 = load i64 (%struct.timing_generator*)*, i64 (%struct.timing_generator*)** %74, align 8
  %76 = load %struct.timing_generator*, %struct.timing_generator** %7, align 8
  %77 = call i64 %75(%struct.timing_generator* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %119

79:                                               ; preds = %70
  %80 = load %struct.dc*, %struct.dc** %3, align 8
  %81 = getelementptr inbounds %struct.dc, %struct.dc* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %81, i32 0, i32 2
  %83 = load i32 (%struct.dc.2*, %struct.timing_generator*)*, i32 (%struct.dc.2*, %struct.timing_generator*)** %82, align 8
  %84 = icmp ne i32 (%struct.dc.2*, %struct.timing_generator*)* %83, null
  br i1 %84, label %85, label %101

85:                                               ; preds = %79
  %86 = load %struct.dc*, %struct.dc** %3, align 8
  %87 = getelementptr inbounds %struct.dc, %struct.dc* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %87, i32 0, i32 2
  %89 = load i32 (%struct.dc.2*, %struct.timing_generator*)*, i32 (%struct.dc.2*, %struct.timing_generator*)** %88, align 8
  %90 = load %struct.dc*, %struct.dc** %3, align 8
  %91 = bitcast %struct.dc* %90 to %struct.dc.2*
  %92 = load %struct.timing_generator*, %struct.timing_generator** %7, align 8
  %93 = call i32 %89(%struct.dc.2* %91, %struct.timing_generator* %92)
  %94 = load %struct.timing_generator*, %struct.timing_generator** %7, align 8
  %95 = getelementptr inbounds %struct.timing_generator, %struct.timing_generator* %94, i32 0, i32 0
  %96 = load %struct.TYPE_18__*, %struct.TYPE_18__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %96, i32 0, i32 4
  %98 = load i32 (%struct.timing_generator*)*, i32 (%struct.timing_generator*)** %97, align 8
  %99 = load %struct.timing_generator*, %struct.timing_generator** %7, align 8
  %100 = call i32 %98(%struct.timing_generator* %99)
  br label %118

101:                                              ; preds = %79
  %102 = load %struct.timing_generator*, %struct.timing_generator** %7, align 8
  %103 = getelementptr inbounds %struct.timing_generator, %struct.timing_generator* %102, i32 0, i32 0
  %104 = load %struct.TYPE_18__*, %struct.TYPE_18__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %104, i32 0, i32 4
  %106 = load i32 (%struct.timing_generator*)*, i32 (%struct.timing_generator*)** %105, align 8
  %107 = load %struct.timing_generator*, %struct.timing_generator** %7, align 8
  %108 = call i32 %106(%struct.timing_generator* %107)
  %109 = load %struct.timing_generator*, %struct.timing_generator** %7, align 8
  %110 = getelementptr inbounds %struct.timing_generator, %struct.timing_generator* %109, i32 0, i32 0
  %111 = load %struct.TYPE_18__*, %struct.TYPE_18__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %111, i32 0, i32 3
  %113 = load i32 (%struct.timing_generator*, i32)*, i32 (%struct.timing_generator*, i32)** %112, align 8
  %114 = load %struct.timing_generator*, %struct.timing_generator** %7, align 8
  %115 = call i32 %113(%struct.timing_generator* %114, i32 1)
  %116 = load %struct.timing_generator*, %struct.timing_generator** %7, align 8
  %117 = call i32 @hwss_wait_for_blank_complete(%struct.timing_generator* %116)
  br label %118

118:                                              ; preds = %101, %85
  br label %119

119:                                              ; preds = %118, %70
  br label %120

120:                                              ; preds = %119, %69
  %121 = load i32, i32* %5, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %5, align 4
  br label %37

123:                                              ; preds = %37
  store i32 0, i32* %5, align 4
  br label %124

124:                                              ; preds = %165, %123
  %125 = load i32, i32* %5, align 4
  %126 = load %struct.dc*, %struct.dc** %3, align 8
  %127 = getelementptr inbounds %struct.dc, %struct.dc* %126, i32 0, i32 1
  %128 = load %struct.TYPE_16__*, %struct.TYPE_16__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = icmp slt i32 %125, %130
  br i1 %131, label %132, label %168

132:                                              ; preds = %124
  %133 = load %struct.dc_state*, %struct.dc_state** %4, align 8
  %134 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %134, i32 0, i32 0
  %136 = load %struct.pipe_ctx*, %struct.pipe_ctx** %135, align 8
  %137 = load i32, i32* %5, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %136, i64 %138
  store %struct.pipe_ctx* %139, %struct.pipe_ctx** %9, align 8
  %140 = load %struct.pipe_ctx*, %struct.pipe_ctx** %9, align 8
  %141 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %140, i32 0, i32 3
  %142 = load i32*, i32** %141, align 8
  %143 = icmp ne i32* %142, null
  br i1 %143, label %144, label %148

144:                                              ; preds = %132
  %145 = load i32, i32* %6, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %144
  br label %165

148:                                              ; preds = %144, %132
  %149 = load %struct.dc*, %struct.dc** %3, align 8
  %150 = getelementptr inbounds %struct.dc, %struct.dc* %149, i32 0, i32 1
  %151 = load %struct.TYPE_16__*, %struct.TYPE_16__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %151, i32 0, i32 5
  %153 = load %struct.TYPE_19__*, %struct.TYPE_19__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %153, i32 0, i32 0
  %155 = load %struct.TYPE_21__*, %struct.TYPE_21__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %155, i32 0, i32 0
  %157 = load i32 (%struct.TYPE_19__*, i32)*, i32 (%struct.TYPE_19__*, i32)** %156, align 8
  %158 = load %struct.dc*, %struct.dc** %3, align 8
  %159 = getelementptr inbounds %struct.dc, %struct.dc* %158, i32 0, i32 1
  %160 = load %struct.TYPE_16__*, %struct.TYPE_16__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %160, i32 0, i32 5
  %162 = load %struct.TYPE_19__*, %struct.TYPE_19__** %161, align 8
  %163 = load i32, i32* %5, align 4
  %164 = call i32 %157(%struct.TYPE_19__* %162, i32 %163)
  br label %165

165:                                              ; preds = %148, %147
  %166 = load i32, i32* %5, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %5, align 4
  br label %124

168:                                              ; preds = %124
  store i32 0, i32* %5, align 4
  br label %169

169:                                              ; preds = %390, %168
  %170 = load i32, i32* %5, align 4
  %171 = load %struct.dc*, %struct.dc** %3, align 8
  %172 = getelementptr inbounds %struct.dc, %struct.dc* %171, i32 0, i32 1
  %173 = load %struct.TYPE_16__*, %struct.TYPE_16__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = icmp slt i32 %170, %175
  br i1 %176, label %177, label %393

177:                                              ; preds = %169
  %178 = load %struct.dc*, %struct.dc** %3, align 8
  %179 = getelementptr inbounds %struct.dc, %struct.dc* %178, i32 0, i32 1
  %180 = load %struct.TYPE_16__*, %struct.TYPE_16__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %180, i32 0, i32 4
  %182 = load %struct.timing_generator**, %struct.timing_generator*** %181, align 8
  %183 = load i32, i32* %5, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.timing_generator*, %struct.timing_generator** %182, i64 %184
  %186 = load %struct.timing_generator*, %struct.timing_generator** %185, align 8
  store %struct.timing_generator* %186, %struct.timing_generator** %10, align 8
  %187 = load %struct.dc*, %struct.dc** %3, align 8
  %188 = getelementptr inbounds %struct.dc, %struct.dc* %187, i32 0, i32 1
  %189 = load %struct.TYPE_16__*, %struct.TYPE_16__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %189, i32 0, i32 3
  %191 = load %struct.hubp**, %struct.hubp*** %190, align 8
  %192 = load i32, i32* %5, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.hubp*, %struct.hubp** %191, i64 %193
  %195 = load %struct.hubp*, %struct.hubp** %194, align 8
  store %struct.hubp* %195, %struct.hubp** %11, align 8
  %196 = load %struct.dc*, %struct.dc** %3, align 8
  %197 = getelementptr inbounds %struct.dc, %struct.dc* %196, i32 0, i32 1
  %198 = load %struct.TYPE_16__*, %struct.TYPE_16__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %198, i32 0, i32 2
  %200 = load %struct.dpp**, %struct.dpp*** %199, align 8
  %201 = load i32, i32* %5, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds %struct.dpp*, %struct.dpp** %200, i64 %202
  %204 = load %struct.dpp*, %struct.dpp** %203, align 8
  store %struct.dpp* %204, %struct.dpp** %12, align 8
  %205 = load %struct.dc_state*, %struct.dc_state** %4, align 8
  %206 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %205, i32 0, i32 1
  %207 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %206, i32 0, i32 0
  %208 = load %struct.pipe_ctx*, %struct.pipe_ctx** %207, align 8
  %209 = load i32, i32* %5, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %208, i64 %210
  store %struct.pipe_ctx* %211, %struct.pipe_ctx** %13, align 8
  %212 = load i32, i32* %6, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %235

214:                                              ; preds = %177
  %215 = load %struct.pipe_ctx*, %struct.pipe_ctx** %13, align 8
  %216 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %215, i32 0, i32 3
  %217 = load i32*, i32** %216, align 8
  %218 = icmp ne i32* %217, null
  br i1 %218, label %219, label %235

219:                                              ; preds = %214
  %220 = load %struct.pipe_ctx*, %struct.pipe_ctx** %13, align 8
  %221 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %220, i32 0, i32 2
  %222 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %221, i32 0, i32 0
  %223 = load %struct.timing_generator*, %struct.timing_generator** %222, align 8
  %224 = getelementptr inbounds %struct.timing_generator, %struct.timing_generator* %223, i32 0, i32 0
  %225 = load %struct.TYPE_18__*, %struct.TYPE_18__** %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %225, i32 0, i32 2
  %227 = load i64 (%struct.timing_generator*)*, i64 (%struct.timing_generator*)** %226, align 8
  %228 = load %struct.pipe_ctx*, %struct.pipe_ctx** %13, align 8
  %229 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %228, i32 0, i32 2
  %230 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %229, i32 0, i32 0
  %231 = load %struct.timing_generator*, %struct.timing_generator** %230, align 8
  %232 = call i64 %227(%struct.timing_generator* %231)
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %235

234:                                              ; preds = %219
  br label %390

235:                                              ; preds = %219, %214, %177
  %236 = load %struct.dc*, %struct.dc** %3, align 8
  %237 = getelementptr inbounds %struct.dc, %struct.dc* %236, i32 0, i32 2
  %238 = load %struct.TYPE_24__*, %struct.TYPE_24__** %237, align 8
  %239 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %238, i32 0, i32 0
  %240 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %239, i32 0, i32 0
  %241 = load %struct.pipe_ctx*, %struct.pipe_ctx** %240, align 8
  %242 = load i32, i32* %5, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %241, i64 %243
  store %struct.pipe_ctx* %244, %struct.pipe_ctx** %13, align 8
  %245 = load %struct.dpp*, %struct.dpp** %12, align 8
  %246 = getelementptr inbounds %struct.dpp, %struct.dpp* %245, i32 0, i32 1
  %247 = load %struct.TYPE_25__*, %struct.TYPE_25__** %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %247, i32 0, i32 0
  %249 = load i32 (%struct.dpp*)*, i32 (%struct.dpp*)** %248, align 8
  %250 = load %struct.dpp*, %struct.dpp** %12, align 8
  %251 = call i32 %249(%struct.dpp* %250)
  %252 = load %struct.timing_generator*, %struct.timing_generator** %10, align 8
  %253 = load %struct.pipe_ctx*, %struct.pipe_ctx** %13, align 8
  %254 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %253, i32 0, i32 2
  %255 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %254, i32 0, i32 0
  store %struct.timing_generator* %252, %struct.timing_generator** %255, align 8
  %256 = load i32, i32* %5, align 4
  %257 = load %struct.pipe_ctx*, %struct.pipe_ctx** %13, align 8
  %258 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %257, i32 0, i32 0
  store i32 %256, i32* %258, align 8
  %259 = load %struct.hubp*, %struct.hubp** %11, align 8
  %260 = load %struct.pipe_ctx*, %struct.pipe_ctx** %13, align 8
  %261 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %260, i32 0, i32 1
  %262 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %261, i32 0, i32 1
  store %struct.hubp* %259, %struct.hubp** %262, align 8
  %263 = load %struct.dpp*, %struct.dpp** %12, align 8
  %264 = load %struct.pipe_ctx*, %struct.pipe_ctx** %13, align 8
  %265 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %264, i32 0, i32 1
  %266 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %265, i32 0, i32 2
  store %struct.dpp* %263, %struct.dpp** %266, align 8
  %267 = load %struct.dpp*, %struct.dpp** %12, align 8
  %268 = getelementptr inbounds %struct.dpp, %struct.dpp* %267, i32 0, i32 0
  %269 = load i64, i64* %268, align 8
  %270 = load %struct.pipe_ctx*, %struct.pipe_ctx** %13, align 8
  %271 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %270, i32 0, i32 1
  %272 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %271, i32 0, i32 0
  store i64 %269, i64* %272, align 8
  %273 = load %struct.dpp*, %struct.dpp** %12, align 8
  %274 = getelementptr inbounds %struct.dpp, %struct.dpp* %273, i32 0, i32 0
  %275 = load i64, i64* %274, align 8
  %276 = load %struct.hubp*, %struct.hubp** %11, align 8
  %277 = getelementptr inbounds %struct.hubp, %struct.hubp* %276, i32 0, i32 0
  store i64 %275, i64* %277, align 8
  %278 = load i32, i32* @OPP_ID_INVALID, align 4
  %279 = load %struct.hubp*, %struct.hubp** %11, align 8
  %280 = getelementptr inbounds %struct.hubp, %struct.hubp* %279, i32 0, i32 2
  store i32 %278, i32* %280, align 4
  %281 = load %struct.hubp*, %struct.hubp** %11, align 8
  %282 = getelementptr inbounds %struct.hubp, %struct.hubp* %281, i32 0, i32 1
  store i32 0, i32* %282, align 8
  %283 = load %struct.dc*, %struct.dc** %3, align 8
  %284 = getelementptr inbounds %struct.dc, %struct.dc* %283, i32 0, i32 1
  %285 = load %struct.TYPE_16__*, %struct.TYPE_16__** %284, align 8
  %286 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %285, i32 0, i32 1
  %287 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %286, align 8
  %288 = load i32, i32* %5, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %287, i64 %289
  %291 = load %struct.TYPE_15__*, %struct.TYPE_15__** %290, align 8
  %292 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %291, i32 0, i32 2
  %293 = load i32, i32* %292, align 8
  %294 = load %struct.dc*, %struct.dc** %3, align 8
  %295 = getelementptr inbounds %struct.dc, %struct.dc* %294, i32 0, i32 1
  %296 = load %struct.TYPE_16__*, %struct.TYPE_16__** %295, align 8
  %297 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %296, i32 0, i32 1
  %298 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %297, align 8
  %299 = load i32, i32* %5, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %298, i64 %300
  %302 = load %struct.TYPE_15__*, %struct.TYPE_15__** %301, align 8
  %303 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %302, i32 0, i32 1
  %304 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %303, i32 0, i32 1
  store i32 %293, i32* %304, align 8
  %305 = load %struct.dc*, %struct.dc** %3, align 8
  %306 = getelementptr inbounds %struct.dc, %struct.dc* %305, i32 0, i32 1
  %307 = load %struct.TYPE_16__*, %struct.TYPE_16__** %306, align 8
  %308 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %307, i32 0, i32 1
  %309 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %308, align 8
  %310 = load i32, i32* %5, align 4
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %309, i64 %311
  %313 = load %struct.TYPE_15__*, %struct.TYPE_15__** %312, align 8
  %314 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %313, i32 0, i32 1
  %315 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %314, i32 0, i32 0
  store i32* null, i32** %315, align 8
  %316 = load %struct.dc*, %struct.dc** %3, align 8
  %317 = getelementptr inbounds %struct.dc, %struct.dc* %316, i32 0, i32 1
  %318 = load %struct.TYPE_16__*, %struct.TYPE_16__** %317, align 8
  %319 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %318, i32 0, i32 1
  %320 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %319, align 8
  %321 = load i32, i32* %5, align 4
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %320, i64 %322
  %324 = load %struct.TYPE_15__*, %struct.TYPE_15__** %323, align 8
  %325 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %324, i32 0, i32 0
  %326 = load i32*, i32** %325, align 8
  %327 = load %struct.pipe_ctx*, %struct.pipe_ctx** %13, align 8
  %328 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %327, i32 0, i32 1
  %329 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %328, i32 0, i32 0
  %330 = load i64, i64* %329, align 8
  %331 = getelementptr inbounds i32, i32* %326, i64 %330
  store i32 1, i32* %331, align 4
  %332 = load %struct.dc*, %struct.dc** %3, align 8
  %333 = getelementptr inbounds %struct.dc, %struct.dc* %332, i32 0, i32 1
  %334 = load %struct.TYPE_16__*, %struct.TYPE_16__** %333, align 8
  %335 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %334, i32 0, i32 1
  %336 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %335, align 8
  %337 = load i32, i32* %5, align 4
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %336, i64 %338
  %340 = load %struct.TYPE_15__*, %struct.TYPE_15__** %339, align 8
  %341 = load %struct.pipe_ctx*, %struct.pipe_ctx** %13, align 8
  %342 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %341, i32 0, i32 2
  %343 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %342, i32 0, i32 1
  store %struct.TYPE_15__* %340, %struct.TYPE_15__** %343, align 8
  %344 = load %struct.dc*, %struct.dc** %3, align 8
  %345 = getelementptr inbounds %struct.dc, %struct.dc* %344, i32 0, i32 0
  %346 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %345, i32 0, i32 1
  %347 = load i32 (%struct.dc.1*, %struct.pipe_ctx*)*, i32 (%struct.dc.1*, %struct.pipe_ctx*)** %346, align 8
  %348 = load %struct.dc*, %struct.dc** %3, align 8
  %349 = bitcast %struct.dc* %348 to %struct.dc.1*
  %350 = load %struct.pipe_ctx*, %struct.pipe_ctx** %13, align 8
  %351 = call i32 %347(%struct.dc.1* %349, %struct.pipe_ctx* %350)
  %352 = load %struct.timing_generator*, %struct.timing_generator** %10, align 8
  %353 = getelementptr inbounds %struct.timing_generator, %struct.timing_generator* %352, i32 0, i32 0
  %354 = load %struct.TYPE_18__*, %struct.TYPE_18__** %353, align 8
  %355 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %354, i32 0, i32 2
  %356 = load i64 (%struct.timing_generator*)*, i64 (%struct.timing_generator*)** %355, align 8
  %357 = load %struct.timing_generator*, %struct.timing_generator** %10, align 8
  %358 = call i64 %356(%struct.timing_generator* %357)
  %359 = icmp ne i64 %358, 0
  br i1 %359, label %360, label %368

360:                                              ; preds = %235
  %361 = load %struct.timing_generator*, %struct.timing_generator** %10, align 8
  %362 = getelementptr inbounds %struct.timing_generator, %struct.timing_generator* %361, i32 0, i32 0
  %363 = load %struct.TYPE_18__*, %struct.TYPE_18__** %362, align 8
  %364 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %363, i32 0, i32 1
  %365 = load i32 (%struct.timing_generator*)*, i32 (%struct.timing_generator*)** %364, align 8
  %366 = load %struct.timing_generator*, %struct.timing_generator** %10, align 8
  %367 = call i32 %365(%struct.timing_generator* %366)
  br label %368

368:                                              ; preds = %360, %235
  %369 = load %struct.dc*, %struct.dc** %3, align 8
  %370 = getelementptr inbounds %struct.dc, %struct.dc* %369, i32 0, i32 0
  %371 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %370, i32 0, i32 0
  %372 = load i32 (%struct.dc.0*, %struct.pipe_ctx*)*, i32 (%struct.dc.0*, %struct.pipe_ctx*)** %371, align 8
  %373 = load %struct.dc*, %struct.dc** %3, align 8
  %374 = bitcast %struct.dc* %373 to %struct.dc.0*
  %375 = load %struct.pipe_ctx*, %struct.pipe_ctx** %13, align 8
  %376 = call i32 %372(%struct.dc.0* %374, %struct.pipe_ctx* %375)
  %377 = load %struct.pipe_ctx*, %struct.pipe_ctx** %13, align 8
  %378 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %377, i32 0, i32 2
  %379 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %378, i32 0, i32 0
  store %struct.timing_generator* null, %struct.timing_generator** %379, align 8
  %380 = load %struct.pipe_ctx*, %struct.pipe_ctx** %13, align 8
  %381 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %380, i32 0, i32 1
  %382 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %381, i32 0, i32 1
  store %struct.hubp* null, %struct.hubp** %382, align 8
  %383 = load %struct.timing_generator*, %struct.timing_generator** %10, align 8
  %384 = getelementptr inbounds %struct.timing_generator, %struct.timing_generator* %383, i32 0, i32 0
  %385 = load %struct.TYPE_18__*, %struct.TYPE_18__** %384, align 8
  %386 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %385, i32 0, i32 0
  %387 = load i32 (%struct.timing_generator*)*, i32 (%struct.timing_generator*)** %386, align 8
  %388 = load %struct.timing_generator*, %struct.timing_generator** %10, align 8
  %389 = call i32 %387(%struct.timing_generator* %388)
  br label %390

390:                                              ; preds = %368, %234
  %391 = load i32, i32* %5, align 4
  %392 = add nsw i32 %391, 1
  store i32 %392, i32* %5, align 4
  br label %169

393:                                              ; preds = %169
  ret void
}

declare dso_local i32 @hwss_wait_for_blank_complete(%struct.timing_generator*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
