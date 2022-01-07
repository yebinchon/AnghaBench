; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_hw_sequencer.c_dce110_apply_ctx_for_surface.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_hw_sequencer.c_dce110_apply_ctx_for_surface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc = type { %struct.TYPE_13__*, %struct.TYPE_22__, %struct.TYPE_21__*, %struct.TYPE_18__* }
%struct.TYPE_13__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 (%struct.TYPE_13__*)* }
%struct.TYPE_22__ = type { i32 (%struct.dc.0*, %struct.pipe_ctx*, i32)*, i32 (%struct.dc.1*, %struct.pipe_ctx*)* }
%struct.dc.0 = type opaque
%struct.pipe_ctx = type { i64, i32, %struct.dc_stream_state*, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 (%struct.TYPE_12__*, i32, i32, i32, i32)* }
%struct.dc.1 = type opaque
%struct.TYPE_21__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { %struct.pipe_ctx* }
%struct.TYPE_18__ = type { i32 }
%struct.dc_stream_state = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32, i32, i32 }
%struct.dc_state = type { %struct.TYPE_19__, i32 }
%struct.TYPE_19__ = type { %struct.pipe_ctx* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dc*, %struct.dc_stream_state*, i32, %struct.dc_state*)* @dce110_apply_ctx_for_surface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dce110_apply_ctx_for_surface(%struct.dc* %0, %struct.dc_stream_state* %1, i32 %2, %struct.dc_state* %3) #0 {
  %5 = alloca %struct.dc*, align 8
  %6 = alloca %struct.dc_stream_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dc_state*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.pipe_ctx*, align 8
  %11 = alloca %struct.pipe_ctx*, align 8
  %12 = alloca %struct.pipe_ctx*, align 8
  %13 = alloca %struct.pipe_ctx*, align 8
  %14 = alloca %struct.pipe_ctx*, align 8
  store %struct.dc* %0, %struct.dc** %5, align 8
  store %struct.dc_stream_state* %1, %struct.dc_stream_state** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.dc_state* %3, %struct.dc_state** %8, align 8
  %15 = load i32, i32* %7, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  br label %239

18:                                               ; preds = %4
  %19 = load %struct.dc*, %struct.dc** %5, align 8
  %20 = getelementptr inbounds %struct.dc, %struct.dc* %19, i32 0, i32 0
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %22 = icmp ne %struct.TYPE_13__* %21, null
  br i1 %22, label %23, label %35

23:                                               ; preds = %18
  %24 = load %struct.dc*, %struct.dc** %5, align 8
  %25 = getelementptr inbounds %struct.dc, %struct.dc* %24, i32 0, i32 0
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 0
  %30 = load i32 (%struct.TYPE_13__*)*, i32 (%struct.TYPE_13__*)** %29, align 8
  %31 = load %struct.dc*, %struct.dc** %5, align 8
  %32 = getelementptr inbounds %struct.dc, %struct.dc* %31, i32 0, i32 0
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %32, align 8
  %34 = call i32 %30(%struct.TYPE_13__* %33)
  br label %35

35:                                               ; preds = %23, %18
  store i32 0, i32* %9, align 4
  br label %36

36:                                               ; preds = %92, %35
  %37 = load i32, i32* %9, align 4
  %38 = load %struct.dc*, %struct.dc** %5, align 8
  %39 = getelementptr inbounds %struct.dc, %struct.dc* %38, i32 0, i32 3
  %40 = load %struct.TYPE_18__*, %struct.TYPE_18__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp slt i32 %37, %42
  br i1 %43, label %44, label %95

44:                                               ; preds = %36
  %45 = load %struct.dc_state*, %struct.dc_state** %8, align 8
  %46 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %46, i32 0, i32 0
  %48 = load %struct.pipe_ctx*, %struct.pipe_ctx** %47, align 8
  %49 = load i32, i32* %9, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %48, i64 %50
  store %struct.pipe_ctx* %51, %struct.pipe_ctx** %10, align 8
  %52 = load %struct.dc*, %struct.dc** %5, align 8
  %53 = getelementptr inbounds %struct.dc, %struct.dc* %52, i32 0, i32 2
  %54 = load %struct.TYPE_21__*, %struct.TYPE_21__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %55, i32 0, i32 0
  %57 = load %struct.pipe_ctx*, %struct.pipe_ctx** %56, align 8
  %58 = load i32, i32* %9, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %57, i64 %59
  store %struct.pipe_ctx* %60, %struct.pipe_ctx** %11, align 8
  %61 = load %struct.dc_stream_state*, %struct.dc_stream_state** %6, align 8
  %62 = load %struct.pipe_ctx*, %struct.pipe_ctx** %10, align 8
  %63 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %62, i32 0, i32 2
  %64 = load %struct.dc_stream_state*, %struct.dc_stream_state** %63, align 8
  %65 = icmp eq %struct.dc_stream_state* %61, %64
  br i1 %65, label %66, label %91

66:                                               ; preds = %44
  %67 = load %struct.pipe_ctx*, %struct.pipe_ctx** %10, align 8
  %68 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %90, label %71

71:                                               ; preds = %66
  %72 = load %struct.pipe_ctx*, %struct.pipe_ctx** %10, align 8
  %73 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %81, label %76

76:                                               ; preds = %71
  %77 = load %struct.pipe_ctx*, %struct.pipe_ctx** %11, align 8
  %78 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %90

81:                                               ; preds = %76, %71
  %82 = load %struct.dc*, %struct.dc** %5, align 8
  %83 = getelementptr inbounds %struct.dc, %struct.dc* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %83, i32 0, i32 0
  %85 = load i32 (%struct.dc.0*, %struct.pipe_ctx*, i32)*, i32 (%struct.dc.0*, %struct.pipe_ctx*, i32)** %84, align 8
  %86 = load %struct.dc*, %struct.dc** %5, align 8
  %87 = bitcast %struct.dc* %86 to %struct.dc.0*
  %88 = load %struct.pipe_ctx*, %struct.pipe_ctx** %10, align 8
  %89 = call i32 %85(%struct.dc.0* %87, %struct.pipe_ctx* %88, i32 1)
  br label %90

90:                                               ; preds = %81, %76, %66
  br label %91

91:                                               ; preds = %90, %44
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %9, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %9, align 4
  br label %36

95:                                               ; preds = %36
  store i32 0, i32* %9, align 4
  br label %96

96:                                               ; preds = %168, %95
  %97 = load i32, i32* %9, align 4
  %98 = load %struct.dc*, %struct.dc** %5, align 8
  %99 = getelementptr inbounds %struct.dc, %struct.dc* %98, i32 0, i32 3
  %100 = load %struct.TYPE_18__*, %struct.TYPE_18__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = icmp slt i32 %97, %102
  br i1 %103, label %104, label %171

104:                                              ; preds = %96
  %105 = load %struct.dc_state*, %struct.dc_state** %8, align 8
  %106 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %106, i32 0, i32 0
  %108 = load %struct.pipe_ctx*, %struct.pipe_ctx** %107, align 8
  %109 = load i32, i32* %9, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %108, i64 %110
  store %struct.pipe_ctx* %111, %struct.pipe_ctx** %12, align 8
  %112 = load %struct.pipe_ctx*, %struct.pipe_ctx** %12, align 8
  %113 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %112, i32 0, i32 2
  %114 = load %struct.dc_stream_state*, %struct.dc_stream_state** %113, align 8
  %115 = load %struct.dc_stream_state*, %struct.dc_stream_state** %6, align 8
  %116 = icmp ne %struct.dc_stream_state* %114, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %104
  br label %168

118:                                              ; preds = %104
  %119 = load %struct.pipe_ctx*, %struct.pipe_ctx** %12, align 8
  %120 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %119, i32 0, i32 3
  %121 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %120, i32 0, i32 0
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 0
  %124 = load %struct.TYPE_15__*, %struct.TYPE_15__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %124, i32 0, i32 0
  %126 = load i32 (%struct.TYPE_12__*, i32, i32, i32, i32)*, i32 (%struct.TYPE_12__*, i32, i32, i32, i32)** %125, align 8
  %127 = load %struct.pipe_ctx*, %struct.pipe_ctx** %12, align 8
  %128 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %127, i32 0, i32 3
  %129 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %128, i32 0, i32 0
  %130 = load %struct.TYPE_12__*, %struct.TYPE_12__** %129, align 8
  %131 = load %struct.pipe_ctx*, %struct.pipe_ctx** %12, align 8
  %132 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %131, i32 0, i32 2
  %133 = load %struct.dc_stream_state*, %struct.dc_stream_state** %132, align 8
  %134 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.pipe_ctx*, %struct.pipe_ctx** %12, align 8
  %138 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %137, i32 0, i32 2
  %139 = load %struct.dc_stream_state*, %struct.dc_stream_state** %138, align 8
  %140 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.pipe_ctx*, %struct.pipe_ctx** %12, align 8
  %144 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %143, i32 0, i32 2
  %145 = load %struct.dc_stream_state*, %struct.dc_stream_state** %144, align 8
  %146 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = sdiv i32 %148, 10
  %150 = load %struct.dc_state*, %struct.dc_state** %8, align 8
  %151 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 8
  %153 = call i32 %126(%struct.TYPE_12__* %130, i32 %136, i32 %142, i32 %149, i32 %152)
  %154 = load %struct.dc*, %struct.dc** %5, align 8
  %155 = load %struct.pipe_ctx*, %struct.pipe_ctx** %12, align 8
  %156 = call i32 @dce110_program_front_end_for_pipe(%struct.dc* %154, %struct.pipe_ctx* %155)
  %157 = load %struct.dc*, %struct.dc** %5, align 8
  %158 = getelementptr inbounds %struct.dc, %struct.dc* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %158, i32 0, i32 1
  %160 = load i32 (%struct.dc.1*, %struct.pipe_ctx*)*, i32 (%struct.dc.1*, %struct.pipe_ctx*)** %159, align 8
  %161 = load %struct.dc*, %struct.dc** %5, align 8
  %162 = bitcast %struct.dc* %161 to %struct.dc.1*
  %163 = load %struct.pipe_ctx*, %struct.pipe_ctx** %12, align 8
  %164 = call i32 %160(%struct.dc.1* %162, %struct.pipe_ctx* %163)
  %165 = load %struct.dc*, %struct.dc** %5, align 8
  %166 = load %struct.pipe_ctx*, %struct.pipe_ctx** %12, align 8
  %167 = call i32 @program_surface_visibility(%struct.dc* %165, %struct.pipe_ctx* %166)
  br label %168

168:                                              ; preds = %118, %117
  %169 = load i32, i32* %9, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %9, align 4
  br label %96

171:                                              ; preds = %96
  store i32 0, i32* %9, align 4
  br label %172

172:                                              ; preds = %227, %171
  %173 = load i32, i32* %9, align 4
  %174 = load %struct.dc*, %struct.dc** %5, align 8
  %175 = getelementptr inbounds %struct.dc, %struct.dc* %174, i32 0, i32 3
  %176 = load %struct.TYPE_18__*, %struct.TYPE_18__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = icmp slt i32 %173, %178
  br i1 %179, label %180, label %230

180:                                              ; preds = %172
  %181 = load %struct.dc_state*, %struct.dc_state** %8, align 8
  %182 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %182, i32 0, i32 0
  %184 = load %struct.pipe_ctx*, %struct.pipe_ctx** %183, align 8
  %185 = load i32, i32* %9, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %184, i64 %186
  store %struct.pipe_ctx* %187, %struct.pipe_ctx** %13, align 8
  %188 = load %struct.dc*, %struct.dc** %5, align 8
  %189 = getelementptr inbounds %struct.dc, %struct.dc* %188, i32 0, i32 2
  %190 = load %struct.TYPE_21__*, %struct.TYPE_21__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %191, i32 0, i32 0
  %193 = load %struct.pipe_ctx*, %struct.pipe_ctx** %192, align 8
  %194 = load i32, i32* %9, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %193, i64 %195
  store %struct.pipe_ctx* %196, %struct.pipe_ctx** %14, align 8
  %197 = load %struct.dc_stream_state*, %struct.dc_stream_state** %6, align 8
  %198 = load %struct.pipe_ctx*, %struct.pipe_ctx** %13, align 8
  %199 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %198, i32 0, i32 2
  %200 = load %struct.dc_stream_state*, %struct.dc_stream_state** %199, align 8
  %201 = icmp eq %struct.dc_stream_state* %197, %200
  br i1 %201, label %202, label %226

202:                                              ; preds = %180
  %203 = load %struct.pipe_ctx*, %struct.pipe_ctx** %13, align 8
  %204 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 8
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %226, label %207

207:                                              ; preds = %202
  %208 = load %struct.pipe_ctx*, %struct.pipe_ctx** %13, align 8
  %209 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %208, i32 0, i32 0
  %210 = load i64, i64* %209, align 8
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %217, label %212

212:                                              ; preds = %207
  %213 = load %struct.pipe_ctx*, %struct.pipe_ctx** %14, align 8
  %214 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %213, i32 0, i32 0
  %215 = load i64, i64* %214, align 8
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %226

217:                                              ; preds = %212, %207
  %218 = load %struct.dc*, %struct.dc** %5, align 8
  %219 = getelementptr inbounds %struct.dc, %struct.dc* %218, i32 0, i32 1
  %220 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %219, i32 0, i32 0
  %221 = load i32 (%struct.dc.0*, %struct.pipe_ctx*, i32)*, i32 (%struct.dc.0*, %struct.pipe_ctx*, i32)** %220, align 8
  %222 = load %struct.dc*, %struct.dc** %5, align 8
  %223 = bitcast %struct.dc* %222 to %struct.dc.0*
  %224 = load %struct.pipe_ctx*, %struct.pipe_ctx** %13, align 8
  %225 = call i32 %221(%struct.dc.0* %223, %struct.pipe_ctx* %224, i32 0)
  br label %226

226:                                              ; preds = %217, %212, %202, %180
  br label %227

227:                                              ; preds = %226
  %228 = load i32, i32* %9, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %9, align 4
  br label %172

230:                                              ; preds = %172
  %231 = load %struct.dc*, %struct.dc** %5, align 8
  %232 = getelementptr inbounds %struct.dc, %struct.dc* %231, i32 0, i32 0
  %233 = load %struct.TYPE_13__*, %struct.TYPE_13__** %232, align 8
  %234 = icmp ne %struct.TYPE_13__* %233, null
  br i1 %234, label %235, label %239

235:                                              ; preds = %230
  %236 = load %struct.dc*, %struct.dc** %5, align 8
  %237 = load %struct.dc_state*, %struct.dc_state** %8, align 8
  %238 = call i32 @enable_fbc(%struct.dc* %236, %struct.dc_state* %237)
  br label %239

239:                                              ; preds = %17, %235, %230
  ret void
}

declare dso_local i32 @dce110_program_front_end_for_pipe(%struct.dc*, %struct.pipe_ctx*) #1

declare dso_local i32 @program_surface_visibility(%struct.dc*, %struct.pipe_ctx*) #1

declare dso_local i32 @enable_fbc(%struct.dc*, %struct.dc_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
