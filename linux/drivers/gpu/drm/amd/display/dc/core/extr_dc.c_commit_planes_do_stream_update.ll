; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc.c_commit_planes_do_stream_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc.c_commit_planes_do_stream_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc = type { %struct.TYPE_25__, i32, i32, %struct.TYPE_23__, %struct.TYPE_20__* }
%struct.TYPE_25__ = type { i32 (%struct.dc.0*, %struct.pipe_ctx*, i32)*, i32 (%struct.dc.1*, i32)*, i32 (%struct.dc.2*, i32)*, i32 (%struct.dc.3*, %struct.pipe_ctx*, i32)*, i32 (%struct.pipe_ctx*)*, i32 (%struct.pipe_ctx*, i32)* }
%struct.dc.0 = type opaque
%struct.pipe_ctx = type { %struct.TYPE_28__, %struct.pipe_ctx*, %struct.dc_stream_state*, i32, i32 }
%struct.TYPE_28__ = type { %struct.TYPE_18__*, %struct.TYPE_19__*, %struct.TYPE_16__*, %struct.TYPE_17__* }
%struct.TYPE_18__ = type { %struct.TYPE_27__* }
%struct.TYPE_27__ = type { i32 (%struct.TYPE_18__*, i32)* }
%struct.TYPE_19__ = type { %struct.TYPE_26__* }
%struct.TYPE_26__ = type { i32 (%struct.TYPE_19__*)* }
%struct.TYPE_16__ = type { %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i32 (%struct.TYPE_16__*)* }
%struct.TYPE_17__ = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32 (%struct.TYPE_17__*, i32*, i32*)* }
%struct.dc.1 = type opaque
%struct.dc.2 = type opaque
%struct.dc.3 = type opaque
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_20__ = type { i32 }
%struct.dc_stream_state = type { i32, i32, i32, i32 }
%struct.dc_stream_update = type { i64, i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.dc_state = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { %struct.pipe_ctx* }

@VLINE0 = common dso_local global i32 0, align 4
@VLINE1 = common dso_local global i32 0, align 4
@UPDATE_TYPE_FAST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dc*, %struct.dc_stream_state*, %struct.dc_stream_update*, i32, %struct.dc_state*)* @commit_planes_do_stream_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @commit_planes_do_stream_update(%struct.dc* %0, %struct.dc_stream_state* %1, %struct.dc_stream_update* %2, i32 %3, %struct.dc_state* %4) #0 {
  %6 = alloca %struct.dc*, align 8
  %7 = alloca %struct.dc_stream_state*, align 8
  %8 = alloca %struct.dc_stream_update*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.dc_state*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.pipe_ctx*, align 8
  store %struct.dc* %0, %struct.dc** %6, align 8
  store %struct.dc_stream_state* %1, %struct.dc_stream_state** %7, align 8
  store %struct.dc_stream_update* %2, %struct.dc_stream_update** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.dc_state* %4, %struct.dc_state** %10, align 8
  store i32 0, i32* %11, align 4
  br label %13

13:                                               ; preds = %333, %5
  %14 = load i32, i32* %11, align 4
  %15 = load %struct.dc*, %struct.dc** %6, align 8
  %16 = getelementptr inbounds %struct.dc, %struct.dc* %15, i32 0, i32 4
  %17 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp slt i32 %14, %19
  br i1 %20, label %21, label %336

21:                                               ; preds = %13
  %22 = load %struct.dc_state*, %struct.dc_state** %10, align 8
  %23 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %23, i32 0, i32 0
  %25 = load %struct.pipe_ctx*, %struct.pipe_ctx** %24, align 8
  %26 = load i32, i32* %11, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %25, i64 %27
  store %struct.pipe_ctx* %28, %struct.pipe_ctx** %12, align 8
  %29 = load %struct.pipe_ctx*, %struct.pipe_ctx** %12, align 8
  %30 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %332, label %33

33:                                               ; preds = %21
  %34 = load %struct.pipe_ctx*, %struct.pipe_ctx** %12, align 8
  %35 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %332, label %38

38:                                               ; preds = %33
  %39 = load %struct.pipe_ctx*, %struct.pipe_ctx** %12, align 8
  %40 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %39, i32 0, i32 2
  %41 = load %struct.dc_stream_state*, %struct.dc_stream_state** %40, align 8
  %42 = load %struct.dc_stream_state*, %struct.dc_stream_state** %7, align 8
  %43 = icmp eq %struct.dc_stream_state* %41, %42
  br i1 %43, label %44, label %332

44:                                               ; preds = %38
  %45 = load %struct.dc_stream_update*, %struct.dc_stream_update** %8, align 8
  %46 = getelementptr inbounds %struct.dc_stream_update, %struct.dc_stream_update* %45, i32 0, i32 11
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %63

49:                                               ; preds = %44
  %50 = load %struct.dc*, %struct.dc** %6, align 8
  %51 = getelementptr inbounds %struct.dc, %struct.dc* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %51, i32 0, i32 5
  %53 = load i32 (%struct.pipe_ctx*, i32)*, i32 (%struct.pipe_ctx*, i32)** %52, align 8
  %54 = icmp ne i32 (%struct.pipe_ctx*, i32)* %53, null
  br i1 %54, label %55, label %63

55:                                               ; preds = %49
  %56 = load %struct.dc*, %struct.dc** %6, align 8
  %57 = getelementptr inbounds %struct.dc, %struct.dc* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %57, i32 0, i32 5
  %59 = load i32 (%struct.pipe_ctx*, i32)*, i32 (%struct.pipe_ctx*, i32)** %58, align 8
  %60 = load %struct.pipe_ctx*, %struct.pipe_ctx** %12, align 8
  %61 = load i32, i32* @VLINE0, align 4
  %62 = call i32 %59(%struct.pipe_ctx* %60, i32 %61)
  br label %63

63:                                               ; preds = %55, %49, %44
  %64 = load %struct.dc_stream_update*, %struct.dc_stream_update** %8, align 8
  %65 = getelementptr inbounds %struct.dc_stream_update, %struct.dc_stream_update* %64, i32 0, i32 10
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %82

68:                                               ; preds = %63
  %69 = load %struct.dc*, %struct.dc** %6, align 8
  %70 = getelementptr inbounds %struct.dc, %struct.dc* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %70, i32 0, i32 5
  %72 = load i32 (%struct.pipe_ctx*, i32)*, i32 (%struct.pipe_ctx*, i32)** %71, align 8
  %73 = icmp ne i32 (%struct.pipe_ctx*, i32)* %72, null
  br i1 %73, label %74, label %82

74:                                               ; preds = %68
  %75 = load %struct.dc*, %struct.dc** %6, align 8
  %76 = getelementptr inbounds %struct.dc, %struct.dc* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %76, i32 0, i32 5
  %78 = load i32 (%struct.pipe_ctx*, i32)*, i32 (%struct.pipe_ctx*, i32)** %77, align 8
  %79 = load %struct.pipe_ctx*, %struct.pipe_ctx** %12, align 8
  %80 = load i32, i32* @VLINE1, align 4
  %81 = call i32 %78(%struct.pipe_ctx* %79, i32 %80)
  br label %82

82:                                               ; preds = %74, %68, %63
  %83 = load %struct.dc_stream_update*, %struct.dc_stream_update** %8, align 8
  %84 = getelementptr inbounds %struct.dc_stream_update, %struct.dc_stream_update* %83, i32 0, i32 9
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %82
  %88 = load %struct.dc_stream_state*, %struct.dc_stream_state** %7, align 8
  %89 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %107

92:                                               ; preds = %87, %82
  %93 = load %struct.dc_stream_update*, %struct.dc_stream_update** %8, align 8
  %94 = getelementptr inbounds %struct.dc_stream_update, %struct.dc_stream_update* %93, i32 0, i32 8
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %107, label %97

97:                                               ; preds = %92
  %98 = load %struct.dc_stream_update*, %struct.dc_stream_update** %8, align 8
  %99 = getelementptr inbounds %struct.dc_stream_update, %struct.dc_stream_update* %98, i32 0, i32 7
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %107, label %102

102:                                              ; preds = %97
  %103 = load %struct.dc_stream_update*, %struct.dc_stream_update** %8, align 8
  %104 = getelementptr inbounds %struct.dc_stream_update, %struct.dc_stream_update* %103, i32 0, i32 6
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %116

107:                                              ; preds = %102, %97, %92, %87
  %108 = load %struct.pipe_ctx*, %struct.pipe_ctx** %12, align 8
  %109 = call i32 @resource_build_info_frame(%struct.pipe_ctx* %108)
  %110 = load %struct.dc*, %struct.dc** %6, align 8
  %111 = getelementptr inbounds %struct.dc, %struct.dc* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %111, i32 0, i32 4
  %113 = load i32 (%struct.pipe_ctx*)*, i32 (%struct.pipe_ctx*)** %112, align 8
  %114 = load %struct.pipe_ctx*, %struct.pipe_ctx** %12, align 8
  %115 = call i32 %113(%struct.pipe_ctx* %114)
  br label %116

116:                                              ; preds = %107, %102
  %117 = load %struct.dc_stream_update*, %struct.dc_stream_update** %8, align 8
  %118 = getelementptr inbounds %struct.dc_stream_update, %struct.dc_stream_update* %117, i32 0, i32 5
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %116
  %122 = load %struct.dc*, %struct.dc** %6, align 8
  %123 = load %struct.dc_stream_state*, %struct.dc_stream_state** %7, align 8
  %124 = call i32 @dc_stream_set_gamut_remap(%struct.dc* %122, %struct.dc_stream_state* %123)
  br label %125

125:                                              ; preds = %121, %116
  %126 = load %struct.dc_stream_update*, %struct.dc_stream_update** %8, align 8
  %127 = getelementptr inbounds %struct.dc_stream_update, %struct.dc_stream_update* %126, i32 0, i32 4
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %125
  %131 = load %struct.dc*, %struct.dc** %6, align 8
  %132 = load %struct.dc_stream_state*, %struct.dc_stream_state** %7, align 8
  %133 = call i32 @dc_stream_program_csc_matrix(%struct.dc* %131, %struct.dc_stream_state* %132)
  br label %134

134:                                              ; preds = %130, %125
  %135 = load %struct.dc_stream_update*, %struct.dc_stream_update** %8, align 8
  %136 = getelementptr inbounds %struct.dc_stream_update, %struct.dc_stream_update* %135, i32 0, i32 3
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %165

139:                                              ; preds = %134
  %140 = load %struct.pipe_ctx*, %struct.pipe_ctx** %12, align 8
  %141 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %140, i32 0, i32 2
  %142 = load %struct.dc_stream_state*, %struct.dc_stream_state** %141, align 8
  %143 = load %struct.pipe_ctx*, %struct.pipe_ctx** %12, align 8
  %144 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %143, i32 0, i32 2
  %145 = load %struct.dc_stream_state*, %struct.dc_stream_state** %144, align 8
  %146 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %145, i32 0, i32 2
  %147 = call i32 @resource_build_bit_depth_reduction_params(%struct.dc_stream_state* %142, i32* %146)
  %148 = load %struct.pipe_ctx*, %struct.pipe_ctx** %12, align 8
  %149 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %149, i32 0, i32 3
  %151 = load %struct.TYPE_17__*, %struct.TYPE_17__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %151, i32 0, i32 0
  %153 = load %struct.TYPE_22__*, %struct.TYPE_22__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %153, i32 0, i32 0
  %155 = load i32 (%struct.TYPE_17__*, i32*, i32*)*, i32 (%struct.TYPE_17__*, i32*, i32*)** %154, align 8
  %156 = load %struct.pipe_ctx*, %struct.pipe_ctx** %12, align 8
  %157 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %157, i32 0, i32 3
  %159 = load %struct.TYPE_17__*, %struct.TYPE_17__** %158, align 8
  %160 = load %struct.dc_stream_state*, %struct.dc_stream_state** %7, align 8
  %161 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %160, i32 0, i32 2
  %162 = load %struct.dc_stream_state*, %struct.dc_stream_state** %7, align 8
  %163 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %162, i32 0, i32 1
  %164 = call i32 %155(%struct.TYPE_17__* %159, i32* %161, i32* %163)
  br label %165

165:                                              ; preds = %139, %134
  %166 = load i32, i32* %9, align 4
  %167 = load i32, i32* @UPDATE_TYPE_FAST, align 4
  %168 = icmp eq i32 %166, %167
  br i1 %168, label %169, label %170

169:                                              ; preds = %165
  br label %333

170:                                              ; preds = %165
  %171 = load %struct.dc_stream_update*, %struct.dc_stream_update** %8, align 8
  %172 = getelementptr inbounds %struct.dc_stream_update, %struct.dc_stream_update* %171, i32 0, i32 1
  %173 = load i64*, i64** %172, align 8
  %174 = icmp ne i64* %173, null
  br i1 %174, label %175, label %259

175:                                              ; preds = %170
  %176 = load %struct.dc*, %struct.dc** %6, align 8
  %177 = getelementptr inbounds %struct.dc, %struct.dc* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %177, i32 0, i32 0
  %179 = load i32 (%struct.dc.0*, %struct.pipe_ctx*, i32)*, i32 (%struct.dc.0*, %struct.pipe_ctx*, i32)** %178, align 8
  %180 = load %struct.dc*, %struct.dc** %6, align 8
  %181 = bitcast %struct.dc* %180 to %struct.dc.0*
  %182 = load %struct.pipe_ctx*, %struct.pipe_ctx** %12, align 8
  %183 = call i32 %179(%struct.dc.0* %181, %struct.pipe_ctx* %182, i32 1)
  %184 = load %struct.dc_stream_update*, %struct.dc_stream_update** %8, align 8
  %185 = getelementptr inbounds %struct.dc_stream_update, %struct.dc_stream_update* %184, i32 0, i32 1
  %186 = load i64*, i64** %185, align 8
  %187 = load i64, i64* %186, align 8
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %228

189:                                              ; preds = %175
  %190 = load %struct.pipe_ctx*, %struct.pipe_ctx** %12, align 8
  %191 = call i32 @core_link_disable_stream(%struct.pipe_ctx* %190)
  %192 = load %struct.pipe_ctx*, %struct.pipe_ctx** %12, align 8
  %193 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %193, i32 0, i32 2
  %195 = load %struct.TYPE_16__*, %struct.TYPE_16__** %194, align 8
  %196 = icmp ne %struct.TYPE_16__* %195, null
  br i1 %196, label %197, label %217

197:                                              ; preds = %189
  %198 = load %struct.dc*, %struct.dc** %6, align 8
  %199 = getelementptr inbounds %struct.dc, %struct.dc* %198, i32 0, i32 3
  %200 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %217, label %203

203:                                              ; preds = %197
  %204 = load %struct.pipe_ctx*, %struct.pipe_ctx** %12, align 8
  %205 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %205, i32 0, i32 2
  %207 = load %struct.TYPE_16__*, %struct.TYPE_16__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %207, i32 0, i32 0
  %209 = load %struct.TYPE_24__*, %struct.TYPE_24__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %209, i32 0, i32 0
  %211 = load i32 (%struct.TYPE_16__*)*, i32 (%struct.TYPE_16__*)** %210, align 8
  %212 = load %struct.pipe_ctx*, %struct.pipe_ctx** %12, align 8
  %213 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %213, i32 0, i32 2
  %215 = load %struct.TYPE_16__*, %struct.TYPE_16__** %214, align 8
  %216 = call i32 %211(%struct.TYPE_16__* %215)
  br label %217

217:                                              ; preds = %203, %197, %189
  %218 = load %struct.dc*, %struct.dc** %6, align 8
  %219 = getelementptr inbounds %struct.dc, %struct.dc* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %219, i32 0, i32 2
  %221 = load i32 (%struct.dc.2*, i32)*, i32 (%struct.dc.2*, i32)** %220, align 8
  %222 = load %struct.dc*, %struct.dc** %6, align 8
  %223 = bitcast %struct.dc* %222 to %struct.dc.2*
  %224 = load %struct.dc*, %struct.dc** %6, align 8
  %225 = getelementptr inbounds %struct.dc, %struct.dc* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 8
  %227 = call i32 %221(%struct.dc.2* %223, i32 %226)
  br label %250

228:                                              ; preds = %175
  %229 = load %struct.dc*, %struct.dc** %6, align 8
  %230 = getelementptr inbounds %struct.dc, %struct.dc* %229, i32 0, i32 2
  %231 = load i32, i32* %230, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %244, label %233

233:                                              ; preds = %228
  %234 = load %struct.dc*, %struct.dc** %6, align 8
  %235 = getelementptr inbounds %struct.dc, %struct.dc* %234, i32 0, i32 0
  %236 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %235, i32 0, i32 1
  %237 = load i32 (%struct.dc.1*, i32)*, i32 (%struct.dc.1*, i32)** %236, align 8
  %238 = load %struct.dc*, %struct.dc** %6, align 8
  %239 = bitcast %struct.dc* %238 to %struct.dc.1*
  %240 = load %struct.dc*, %struct.dc** %6, align 8
  %241 = getelementptr inbounds %struct.dc, %struct.dc* %240, i32 0, i32 1
  %242 = load i32, i32* %241, align 8
  %243 = call i32 %237(%struct.dc.1* %239, i32 %242)
  br label %244

244:                                              ; preds = %233, %228
  %245 = load %struct.dc*, %struct.dc** %6, align 8
  %246 = getelementptr inbounds %struct.dc, %struct.dc* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 8
  %248 = load %struct.pipe_ctx*, %struct.pipe_ctx** %12, align 8
  %249 = call i32 @core_link_enable_stream(i32 %247, %struct.pipe_ctx* %248)
  br label %250

250:                                              ; preds = %244, %217
  %251 = load %struct.dc*, %struct.dc** %6, align 8
  %252 = getelementptr inbounds %struct.dc, %struct.dc* %251, i32 0, i32 0
  %253 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %252, i32 0, i32 0
  %254 = load i32 (%struct.dc.0*, %struct.pipe_ctx*, i32)*, i32 (%struct.dc.0*, %struct.pipe_ctx*, i32)** %253, align 8
  %255 = load %struct.dc*, %struct.dc** %6, align 8
  %256 = bitcast %struct.dc* %255 to %struct.dc.0*
  %257 = load %struct.pipe_ctx*, %struct.pipe_ctx** %12, align 8
  %258 = call i32 %254(%struct.dc.0* %256, %struct.pipe_ctx* %257, i32 0)
  br label %259

259:                                              ; preds = %250, %170
  %260 = load %struct.dc_stream_update*, %struct.dc_stream_update** %8, align 8
  %261 = getelementptr inbounds %struct.dc_stream_update, %struct.dc_stream_update* %260, i32 0, i32 0
  %262 = load i64, i64* %261, align 8
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %264, label %331

264:                                              ; preds = %259
  %265 = load %struct.pipe_ctx*, %struct.pipe_ctx** %12, align 8
  %266 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %265, i32 0, i32 0
  %267 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %266, i32 0, i32 0
  %268 = load %struct.TYPE_18__*, %struct.TYPE_18__** %267, align 8
  %269 = icmp ne %struct.TYPE_18__* %268, null
  br i1 %269, label %270, label %331

270:                                              ; preds = %264
  %271 = load %struct.pipe_ctx*, %struct.pipe_ctx** %12, align 8
  %272 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %271, i32 0, i32 0
  %273 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %272, i32 0, i32 1
  %274 = load %struct.TYPE_19__*, %struct.TYPE_19__** %273, align 8
  %275 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %274, i32 0, i32 0
  %276 = load %struct.TYPE_26__*, %struct.TYPE_26__** %275, align 8
  %277 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %276, i32 0, i32 0
  %278 = load i32 (%struct.TYPE_19__*)*, i32 (%struct.TYPE_19__*)** %277, align 8
  %279 = icmp ne i32 (%struct.TYPE_19__*)* %278, null
  br i1 %279, label %280, label %313

280:                                              ; preds = %270
  %281 = load %struct.pipe_ctx*, %struct.pipe_ctx** %12, align 8
  %282 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %281, i32 0, i32 0
  %283 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %282, i32 0, i32 1
  %284 = load %struct.TYPE_19__*, %struct.TYPE_19__** %283, align 8
  %285 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %284, i32 0, i32 0
  %286 = load %struct.TYPE_26__*, %struct.TYPE_26__** %285, align 8
  %287 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %286, i32 0, i32 0
  %288 = load i32 (%struct.TYPE_19__*)*, i32 (%struct.TYPE_19__*)** %287, align 8
  %289 = load %struct.pipe_ctx*, %struct.pipe_ctx** %12, align 8
  %290 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %289, i32 0, i32 0
  %291 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %290, i32 0, i32 1
  %292 = load %struct.TYPE_19__*, %struct.TYPE_19__** %291, align 8
  %293 = call i32 %288(%struct.TYPE_19__* %292)
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %312, label %295

295:                                              ; preds = %280
  %296 = load %struct.pipe_ctx*, %struct.pipe_ctx** %12, align 8
  %297 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %296, i32 0, i32 0
  %298 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %297, i32 0, i32 0
  %299 = load %struct.TYPE_18__*, %struct.TYPE_18__** %298, align 8
  %300 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %299, i32 0, i32 0
  %301 = load %struct.TYPE_27__*, %struct.TYPE_27__** %300, align 8
  %302 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %301, i32 0, i32 0
  %303 = load i32 (%struct.TYPE_18__*, i32)*, i32 (%struct.TYPE_18__*, i32)** %302, align 8
  %304 = load %struct.pipe_ctx*, %struct.pipe_ctx** %12, align 8
  %305 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %304, i32 0, i32 0
  %306 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %305, i32 0, i32 0
  %307 = load %struct.TYPE_18__*, %struct.TYPE_18__** %306, align 8
  %308 = load %struct.dc_stream_state*, %struct.dc_stream_state** %7, align 8
  %309 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %308, i32 0, i32 0
  %310 = load i32, i32* %309, align 4
  %311 = call i32 %303(%struct.TYPE_18__* %307, i32 %310)
  br label %312

312:                                              ; preds = %295, %280
  br label %330

313:                                              ; preds = %270
  %314 = load %struct.pipe_ctx*, %struct.pipe_ctx** %12, align 8
  %315 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %314, i32 0, i32 0
  %316 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %315, i32 0, i32 0
  %317 = load %struct.TYPE_18__*, %struct.TYPE_18__** %316, align 8
  %318 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %317, i32 0, i32 0
  %319 = load %struct.TYPE_27__*, %struct.TYPE_27__** %318, align 8
  %320 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %319, i32 0, i32 0
  %321 = load i32 (%struct.TYPE_18__*, i32)*, i32 (%struct.TYPE_18__*, i32)** %320, align 8
  %322 = load %struct.pipe_ctx*, %struct.pipe_ctx** %12, align 8
  %323 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %322, i32 0, i32 0
  %324 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %323, i32 0, i32 0
  %325 = load %struct.TYPE_18__*, %struct.TYPE_18__** %324, align 8
  %326 = load %struct.dc_stream_state*, %struct.dc_stream_state** %7, align 8
  %327 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %326, i32 0, i32 0
  %328 = load i32, i32* %327, align 4
  %329 = call i32 %321(%struct.TYPE_18__* %325, i32 %328)
  br label %330

330:                                              ; preds = %313, %312
  br label %331

331:                                              ; preds = %330, %264, %259
  br label %332

332:                                              ; preds = %331, %38, %33, %21
  br label %333

333:                                              ; preds = %332, %169
  %334 = load i32, i32* %11, align 4
  %335 = add nsw i32 %334, 1
  store i32 %335, i32* %11, align 4
  br label %13

336:                                              ; preds = %13
  ret void
}

declare dso_local i32 @resource_build_info_frame(%struct.pipe_ctx*) #1

declare dso_local i32 @dc_stream_set_gamut_remap(%struct.dc*, %struct.dc_stream_state*) #1

declare dso_local i32 @dc_stream_program_csc_matrix(%struct.dc*, %struct.dc_stream_state*) #1

declare dso_local i32 @resource_build_bit_depth_reduction_params(%struct.dc_stream_state*, i32*) #1

declare dso_local i32 @core_link_disable_stream(%struct.pipe_ctx*) #1

declare dso_local i32 @core_link_enable_stream(i32, %struct.pipe_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
