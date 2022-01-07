; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_hw_sequencer.c_dce110_apply_ctx_to_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_hw_sequencer.c_dce110_apply_ctx_to_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc = type { %struct.TYPE_13__*, %struct.TYPE_12__*, %struct.TYPE_17__*, %struct.TYPE_15__*, %struct.TYPE_14__, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { %struct.pipe_ctx* }
%struct.pipe_ctx = type { i64, i64, i64, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_12__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32 (%struct.TYPE_12__*)* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_15__ = type { %struct.dc_bios* }
%struct.dc_bios = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32 (%struct.dc_bios*, i32)* }
%struct.TYPE_14__ = type { i32 (%struct.dc.0*, i32, %struct.dc_bios*, i32)*, i32 (%struct.dc.1*, %struct.dc_state*)* }
%struct.dc.0 = type opaque
%struct.dc.1 = type opaque
%struct.dc_state = type { i64, %struct.TYPE_19__ }
%struct.TYPE_19__ = type { %struct.pipe_ctx* }

@DC_OK = common dso_local global i32 0, align 4
@PIPE_GATING_CONTROL_DISABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dce110_apply_ctx_to_hw(%struct.dc* %0, %struct.dc_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dc*, align 8
  %5 = alloca %struct.dc_state*, align 8
  %6 = alloca %struct.dc_bios*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.pipe_ctx*, align 8
  %10 = alloca %struct.pipe_ctx*, align 8
  %11 = alloca %struct.pipe_ctx*, align 8
  %12 = alloca %struct.pipe_ctx*, align 8
  store %struct.dc* %0, %struct.dc** %4, align 8
  store %struct.dc_state* %1, %struct.dc_state** %5, align 8
  %13 = load %struct.dc*, %struct.dc** %4, align 8
  %14 = getelementptr inbounds %struct.dc, %struct.dc* %13, i32 0, i32 3
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 0
  %17 = load %struct.dc_bios*, %struct.dc_bios** %16, align 8
  store %struct.dc_bios* %17, %struct.dc_bios** %6, align 8
  %18 = load %struct.dc*, %struct.dc** %4, align 8
  %19 = getelementptr inbounds %struct.dc, %struct.dc* %18, i32 0, i32 4
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 1
  %21 = load i32 (%struct.dc.1*, %struct.dc_state*)*, i32 (%struct.dc.1*, %struct.dc_state*)** %20, align 8
  %22 = load %struct.dc*, %struct.dc** %4, align 8
  %23 = bitcast %struct.dc* %22 to %struct.dc.1*
  %24 = load %struct.dc_state*, %struct.dc_state** %5, align 8
  %25 = call i32 %21(%struct.dc.1* %23, %struct.dc_state* %24)
  %26 = load %struct.dc_state*, %struct.dc_state** %5, align 8
  %27 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp sle i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %2
  %31 = load i32, i32* @DC_OK, align 4
  store i32 %31, i32* %3, align 4
  br label %244

32:                                               ; preds = %2
  %33 = load %struct.dc_bios*, %struct.dc_bios** %6, align 8
  %34 = getelementptr inbounds %struct.dc_bios, %struct.dc_bios* %33, i32 0, i32 0
  %35 = load %struct.TYPE_22__*, %struct.TYPE_22__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %35, i32 0, i32 0
  %37 = load i32 (%struct.dc_bios*, i32)*, i32 (%struct.dc_bios*, i32)** %36, align 8
  %38 = load %struct.dc_bios*, %struct.dc_bios** %6, align 8
  %39 = call i32 %37(%struct.dc_bios* %38, i32 1)
  store i32 0, i32* %8, align 4
  br label %40

40:                                               ; preds = %116, %32
  %41 = load i32, i32* %8, align 4
  %42 = load %struct.dc*, %struct.dc** %4, align 8
  %43 = getelementptr inbounds %struct.dc, %struct.dc* %42, i32 0, i32 2
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp slt i32 %41, %46
  br i1 %47, label %48, label %119

48:                                               ; preds = %40
  %49 = load %struct.dc*, %struct.dc** %4, align 8
  %50 = getelementptr inbounds %struct.dc, %struct.dc* %49, i32 0, i32 0
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %52, i32 0, i32 0
  %54 = load %struct.pipe_ctx*, %struct.pipe_ctx** %53, align 8
  %55 = load i32, i32* %8, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %54, i64 %56
  store %struct.pipe_ctx* %57, %struct.pipe_ctx** %9, align 8
  %58 = load %struct.dc_state*, %struct.dc_state** %5, align 8
  %59 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %59, i32 0, i32 0
  %61 = load %struct.pipe_ctx*, %struct.pipe_ctx** %60, align 8
  %62 = load i32, i32* %8, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %61, i64 %63
  store %struct.pipe_ctx* %64, %struct.pipe_ctx** %10, align 8
  %65 = load %struct.pipe_ctx*, %struct.pipe_ctx** %10, align 8
  %66 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %65, i32 0, i32 3
  %67 = load %struct.TYPE_21__*, %struct.TYPE_21__** %66, align 8
  %68 = icmp eq %struct.TYPE_21__* %67, null
  br i1 %68, label %74, label %69

69:                                               ; preds = %48
  %70 = load %struct.pipe_ctx*, %struct.pipe_ctx** %10, align 8
  %71 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %69, %48
  br label %116

75:                                               ; preds = %69
  %76 = load %struct.pipe_ctx*, %struct.pipe_ctx** %10, align 8
  %77 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %76, i32 0, i32 3
  %78 = load %struct.TYPE_21__*, %struct.TYPE_21__** %77, align 8
  %79 = load %struct.pipe_ctx*, %struct.pipe_ctx** %9, align 8
  %80 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %79, i32 0, i32 3
  %81 = load %struct.TYPE_21__*, %struct.TYPE_21__** %80, align 8
  %82 = icmp eq %struct.TYPE_21__* %78, %81
  br i1 %82, label %83, label %101

83:                                               ; preds = %75
  %84 = load %struct.pipe_ctx*, %struct.pipe_ctx** %9, align 8
  %85 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.pipe_ctx*, %struct.pipe_ctx** %10, align 8
  %88 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %86, %89
  br i1 %90, label %91, label %100

91:                                               ; preds = %83
  %92 = load %struct.dc*, %struct.dc** %4, align 8
  %93 = getelementptr inbounds %struct.dc, %struct.dc* %92, i32 0, i32 5
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.pipe_ctx*, %struct.pipe_ctx** %10, align 8
  %96 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i32, i32* %8, align 4
  %99 = call i32 @dce_crtc_switch_to_clk_src(i32 %94, i64 %97, i32 %98)
  br label %100

100:                                              ; preds = %91, %83
  br label %116

101:                                              ; preds = %75
  %102 = load %struct.dc*, %struct.dc** %4, align 8
  %103 = getelementptr inbounds %struct.dc, %struct.dc* %102, i32 0, i32 4
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 0
  %105 = load i32 (%struct.dc.0*, i32, %struct.dc_bios*, i32)*, i32 (%struct.dc.0*, i32, %struct.dc_bios*, i32)** %104, align 8
  %106 = load %struct.dc*, %struct.dc** %4, align 8
  %107 = bitcast %struct.dc* %106 to %struct.dc.0*
  %108 = load i32, i32* %8, align 4
  %109 = load %struct.dc*, %struct.dc** %4, align 8
  %110 = getelementptr inbounds %struct.dc, %struct.dc* %109, i32 0, i32 3
  %111 = load %struct.TYPE_15__*, %struct.TYPE_15__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %111, i32 0, i32 0
  %113 = load %struct.dc_bios*, %struct.dc_bios** %112, align 8
  %114 = load i32, i32* @PIPE_GATING_CONTROL_DISABLE, align 4
  %115 = call i32 %105(%struct.dc.0* %107, i32 %108, %struct.dc_bios* %113, i32 %114)
  br label %116

116:                                              ; preds = %101, %100, %74
  %117 = load i32, i32* %8, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %8, align 4
  br label %40

119:                                              ; preds = %40
  %120 = load %struct.dc*, %struct.dc** %4, align 8
  %121 = getelementptr inbounds %struct.dc, %struct.dc* %120, i32 0, i32 1
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %121, align 8
  %123 = icmp ne %struct.TYPE_12__* %122, null
  br i1 %123, label %124, label %136

124:                                              ; preds = %119
  %125 = load %struct.dc*, %struct.dc** %4, align 8
  %126 = getelementptr inbounds %struct.dc, %struct.dc* %125, i32 0, i32 1
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 0
  %129 = load %struct.TYPE_16__*, %struct.TYPE_16__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %129, i32 0, i32 0
  %131 = load i32 (%struct.TYPE_12__*)*, i32 (%struct.TYPE_12__*)** %130, align 8
  %132 = load %struct.dc*, %struct.dc** %4, align 8
  %133 = getelementptr inbounds %struct.dc, %struct.dc* %132, i32 0, i32 1
  %134 = load %struct.TYPE_12__*, %struct.TYPE_12__** %133, align 8
  %135 = call i32 %131(%struct.TYPE_12__* %134)
  br label %136

136:                                              ; preds = %124, %119
  %137 = load %struct.dc*, %struct.dc** %4, align 8
  %138 = load %struct.dc_state*, %struct.dc_state** %5, align 8
  %139 = call i32 @dce110_setup_audio_dto(%struct.dc* %137, %struct.dc_state* %138)
  store i32 0, i32* %8, align 4
  br label %140

140:                                              ; preds = %221, %136
  %141 = load i32, i32* %8, align 4
  %142 = load %struct.dc*, %struct.dc** %4, align 8
  %143 = getelementptr inbounds %struct.dc, %struct.dc* %142, i32 0, i32 2
  %144 = load %struct.TYPE_17__*, %struct.TYPE_17__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = icmp slt i32 %141, %146
  br i1 %147, label %148, label %224

148:                                              ; preds = %140
  %149 = load %struct.dc*, %struct.dc** %4, align 8
  %150 = getelementptr inbounds %struct.dc, %struct.dc* %149, i32 0, i32 0
  %151 = load %struct.TYPE_13__*, %struct.TYPE_13__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %152, i32 0, i32 0
  %154 = load %struct.pipe_ctx*, %struct.pipe_ctx** %153, align 8
  %155 = load i32, i32* %8, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %154, i64 %156
  store %struct.pipe_ctx* %157, %struct.pipe_ctx** %11, align 8
  %158 = load %struct.dc_state*, %struct.dc_state** %5, align 8
  %159 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %159, i32 0, i32 0
  %161 = load %struct.pipe_ctx*, %struct.pipe_ctx** %160, align 8
  %162 = load i32, i32* %8, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %161, i64 %163
  store %struct.pipe_ctx* %164, %struct.pipe_ctx** %12, align 8
  %165 = load %struct.pipe_ctx*, %struct.pipe_ctx** %12, align 8
  %166 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %165, i32 0, i32 3
  %167 = load %struct.TYPE_21__*, %struct.TYPE_21__** %166, align 8
  %168 = icmp eq %struct.TYPE_21__* %167, null
  br i1 %168, label %169, label %170

169:                                              ; preds = %148
  br label %221

170:                                              ; preds = %148
  %171 = load %struct.pipe_ctx*, %struct.pipe_ctx** %12, align 8
  %172 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %171, i32 0, i32 3
  %173 = load %struct.TYPE_21__*, %struct.TYPE_21__** %172, align 8
  %174 = load %struct.pipe_ctx*, %struct.pipe_ctx** %11, align 8
  %175 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %174, i32 0, i32 3
  %176 = load %struct.TYPE_21__*, %struct.TYPE_21__** %175, align 8
  %177 = icmp eq %struct.TYPE_21__* %173, %176
  br i1 %177, label %178, label %188

178:                                              ; preds = %170
  %179 = load %struct.pipe_ctx*, %struct.pipe_ctx** %12, align 8
  %180 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %179, i32 0, i32 3
  %181 = load %struct.TYPE_21__*, %struct.TYPE_21__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %181, i32 0, i32 0
  %183 = load %struct.TYPE_20__*, %struct.TYPE_20__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %188

187:                                              ; preds = %178
  br label %221

188:                                              ; preds = %178, %170
  %189 = load %struct.pipe_ctx*, %struct.pipe_ctx** %11, align 8
  %190 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %189, i32 0, i32 3
  %191 = load %struct.TYPE_21__*, %struct.TYPE_21__** %190, align 8
  %192 = icmp ne %struct.TYPE_21__* %191, null
  br i1 %192, label %193, label %199

193:                                              ; preds = %188
  %194 = load %struct.pipe_ctx*, %struct.pipe_ctx** %11, align 8
  %195 = load %struct.pipe_ctx*, %struct.pipe_ctx** %12, align 8
  %196 = call i32 @pipe_need_reprogram(%struct.pipe_ctx* %194, %struct.pipe_ctx* %195)
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %199, label %198

198:                                              ; preds = %193
  br label %221

199:                                              ; preds = %193, %188
  %200 = load %struct.pipe_ctx*, %struct.pipe_ctx** %12, align 8
  %201 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %200, i32 0, i32 2
  %202 = load i64, i64* %201, align 8
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %209, label %204

204:                                              ; preds = %199
  %205 = load %struct.pipe_ctx*, %struct.pipe_ctx** %12, align 8
  %206 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %205, i32 0, i32 1
  %207 = load i64, i64* %206, align 8
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %210

209:                                              ; preds = %204, %199
  br label %221

210:                                              ; preds = %204
  %211 = load %struct.pipe_ctx*, %struct.pipe_ctx** %12, align 8
  %212 = load %struct.dc_state*, %struct.dc_state** %5, align 8
  %213 = load %struct.dc*, %struct.dc** %4, align 8
  %214 = call i32 @apply_single_controller_ctx_to_hw(%struct.pipe_ctx* %211, %struct.dc_state* %212, %struct.dc* %213)
  store i32 %214, i32* %7, align 4
  %215 = load i32, i32* @DC_OK, align 4
  %216 = load i32, i32* %7, align 4
  %217 = icmp ne i32 %215, %216
  br i1 %217, label %218, label %220

218:                                              ; preds = %210
  %219 = load i32, i32* %7, align 4
  store i32 %219, i32* %3, align 4
  br label %244

220:                                              ; preds = %210
  br label %221

221:                                              ; preds = %220, %209, %198, %187, %169
  %222 = load i32, i32* %8, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %8, align 4
  br label %140

224:                                              ; preds = %140
  %225 = load %struct.dc*, %struct.dc** %4, align 8
  %226 = getelementptr inbounds %struct.dc, %struct.dc* %225, i32 0, i32 1
  %227 = load %struct.TYPE_12__*, %struct.TYPE_12__** %226, align 8
  %228 = icmp ne %struct.TYPE_12__* %227, null
  br i1 %228, label %229, label %235

229:                                              ; preds = %224
  %230 = load %struct.dc*, %struct.dc** %4, align 8
  %231 = load %struct.dc*, %struct.dc** %4, align 8
  %232 = getelementptr inbounds %struct.dc, %struct.dc* %231, i32 0, i32 0
  %233 = load %struct.TYPE_13__*, %struct.TYPE_13__** %232, align 8
  %234 = call i32 @enable_fbc(%struct.dc* %230, %struct.TYPE_13__* %233)
  br label %235

235:                                              ; preds = %229, %224
  %236 = load %struct.dc_bios*, %struct.dc_bios** %6, align 8
  %237 = getelementptr inbounds %struct.dc_bios, %struct.dc_bios* %236, i32 0, i32 0
  %238 = load %struct.TYPE_22__*, %struct.TYPE_22__** %237, align 8
  %239 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %238, i32 0, i32 0
  %240 = load i32 (%struct.dc_bios*, i32)*, i32 (%struct.dc_bios*, i32)** %239, align 8
  %241 = load %struct.dc_bios*, %struct.dc_bios** %6, align 8
  %242 = call i32 %240(%struct.dc_bios* %241, i32 0)
  %243 = load i32, i32* @DC_OK, align 4
  store i32 %243, i32* %3, align 4
  br label %244

244:                                              ; preds = %235, %218, %30
  %245 = load i32, i32* %3, align 4
  ret i32 %245
}

declare dso_local i32 @dce_crtc_switch_to_clk_src(i32, i64, i32) #1

declare dso_local i32 @dce110_setup_audio_dto(%struct.dc*, %struct.dc_state*) #1

declare dso_local i32 @pipe_need_reprogram(%struct.pipe_ctx*, %struct.pipe_ctx*) #1

declare dso_local i32 @apply_single_controller_ctx_to_hw(%struct.pipe_ctx*, %struct.dc_state*, %struct.dc*) #1

declare dso_local i32 @enable_fbc(%struct.dc*, %struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
