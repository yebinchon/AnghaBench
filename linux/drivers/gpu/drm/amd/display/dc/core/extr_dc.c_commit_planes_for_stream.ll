; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc.c_commit_planes_for_stream.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc.c_commit_planes_for_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc = type { i32, i32, %struct.TYPE_18__*, %struct.TYPE_20__, %struct.TYPE_17__, %struct.TYPE_16__* }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_20__ = type { i32 (%struct.dc.0*, %struct.pipe_ctx*, i32)*, i32 (%struct.dc.1*, %struct.pipe_ctx*)*, i32 (%struct.dc.2*, %struct.pipe_ctx*, i32)*, i32 (%struct.pipe_ctx*, i32)*, i32 (%struct.dc.3*, %struct.dc_stream_state*, i32, %struct.dc_state*)*, i32 (%struct.dc.4*, %struct.dc_state*)* }
%struct.dc.0 = type opaque
%struct.pipe_ctx = type { %struct.TYPE_15__, %struct.dc_plane_state*, %struct.dc_stream_state*, i64, i32, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 (%struct.TYPE_11__*)* }
%struct.dc_plane_state = type { i32, %struct.TYPE_13__, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.dc.1 = type opaque
%struct.dc.2 = type opaque
%struct.dc.3 = type opaque
%struct.dc.4 = type opaque
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i32 }
%struct.dc_surface_update = type { i64, %struct.dc_plane_state* }
%struct.dc_stream_state = type { i32 }
%struct.dc_stream_update = type { i32 }
%struct.dc_state = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { %struct.pipe_ctx* }
%struct.dc_stream_status = type { i32 }

@UPDATE_TYPE_FULL = common dso_local global i32 0, align 4
@UPDATE_TYPE_FAST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dc*, %struct.dc_surface_update*, i32, %struct.dc_stream_state*, %struct.dc_stream_update*, i32, %struct.dc_state*)* @commit_planes_for_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @commit_planes_for_stream(%struct.dc* %0, %struct.dc_surface_update* %1, i32 %2, %struct.dc_stream_state* %3, %struct.dc_stream_update* %4, i32 %5, %struct.dc_state* %6) #0 {
  %8 = alloca %struct.dc*, align 8
  %9 = alloca %struct.dc_surface_update*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.dc_stream_state*, align 8
  %12 = alloca %struct.dc_stream_update*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.dc_state*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.pipe_ctx*, align 8
  %18 = alloca %struct.pipe_ctx*, align 8
  %19 = alloca %struct.dc_stream_status*, align 8
  %20 = alloca %struct.dc_plane_state*, align 8
  %21 = alloca %struct.pipe_ctx*, align 8
  %22 = alloca %struct.pipe_ctx*, align 8
  store %struct.dc* %0, %struct.dc** %8, align 8
  store %struct.dc_surface_update* %1, %struct.dc_surface_update** %9, align 8
  store i32 %2, i32* %10, align 4
  store %struct.dc_stream_state* %3, %struct.dc_stream_state** %11, align 8
  store %struct.dc_stream_update* %4, %struct.dc_stream_update** %12, align 8
  store i32 %5, i32* %13, align 4
  store %struct.dc_state* %6, %struct.dc_state** %14, align 8
  store %struct.pipe_ctx* null, %struct.pipe_ctx** %17, align 8
  %23 = load %struct.dc*, %struct.dc** %8, align 8
  %24 = getelementptr inbounds %struct.dc, %struct.dc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %43

27:                                               ; preds = %7
  %28 = load i32, i32* %10, align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %43

30:                                               ; preds = %27
  %31 = load %struct.dc_stream_state*, %struct.dc_stream_state** %11, align 8
  %32 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %30
  %36 = load %struct.dc_stream_state*, %struct.dc_stream_state** %11, align 8
  %37 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %36, i32 0, i32 0
  store i32 0, i32* %37, align 4
  %38 = load %struct.dc*, %struct.dc** %8, align 8
  %39 = getelementptr inbounds %struct.dc, %struct.dc* %38, i32 0, i32 0
  store i32 0, i32* %39, align 8
  %40 = load %struct.dc*, %struct.dc** %8, align 8
  %41 = getelementptr inbounds %struct.dc, %struct.dc* %40, i32 0, i32 1
  store i32 1, i32* %41, align 4
  br label %42

42:                                               ; preds = %35, %30
  br label %43

43:                                               ; preds = %42, %27, %7
  %44 = load i32, i32* %13, align 4
  %45 = load i32, i32* @UPDATE_TYPE_FULL, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %64

47:                                               ; preds = %43
  %48 = load %struct.dc*, %struct.dc** %8, align 8
  %49 = getelementptr inbounds %struct.dc, %struct.dc* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %64, label %52

52:                                               ; preds = %47
  %53 = load %struct.dc*, %struct.dc** %8, align 8
  %54 = getelementptr inbounds %struct.dc, %struct.dc* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %54, i32 0, i32 5
  %56 = load i32 (%struct.dc.4*, %struct.dc_state*)*, i32 (%struct.dc.4*, %struct.dc_state*)** %55, align 8
  %57 = load %struct.dc*, %struct.dc** %8, align 8
  %58 = bitcast %struct.dc* %57 to %struct.dc.4*
  %59 = load %struct.dc_state*, %struct.dc_state** %14, align 8
  %60 = call i32 %56(%struct.dc.4* %58, %struct.dc_state* %59)
  %61 = load %struct.dc*, %struct.dc** %8, align 8
  %62 = load %struct.dc_state*, %struct.dc_state** %14, align 8
  %63 = call i32 @context_clock_trace(%struct.dc* %61, %struct.dc_state* %62)
  br label %64

64:                                               ; preds = %52, %47, %43
  %65 = load %struct.dc_stream_update*, %struct.dc_stream_update** %12, align 8
  %66 = icmp ne %struct.dc_stream_update* %65, null
  br i1 %66, label %67, label %74

67:                                               ; preds = %64
  %68 = load %struct.dc*, %struct.dc** %8, align 8
  %69 = load %struct.dc_stream_state*, %struct.dc_stream_state** %11, align 8
  %70 = load %struct.dc_stream_update*, %struct.dc_stream_update** %12, align 8
  %71 = load i32, i32* %13, align 4
  %72 = load %struct.dc_state*, %struct.dc_state** %14, align 8
  %73 = call i32 @commit_planes_do_stream_update(%struct.dc* %68, %struct.dc_stream_state* %69, %struct.dc_stream_update* %70, i32 %71, %struct.dc_state* %72)
  br label %74

74:                                               ; preds = %67, %64
  %75 = load i32, i32* %10, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %87

77:                                               ; preds = %74
  %78 = load %struct.dc*, %struct.dc** %8, align 8
  %79 = getelementptr inbounds %struct.dc, %struct.dc* %78, i32 0, i32 3
  %80 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %79, i32 0, i32 4
  %81 = load i32 (%struct.dc.3*, %struct.dc_stream_state*, i32, %struct.dc_state*)*, i32 (%struct.dc.3*, %struct.dc_stream_state*, i32, %struct.dc_state*)** %80, align 8
  %82 = load %struct.dc*, %struct.dc** %8, align 8
  %83 = bitcast %struct.dc* %82 to %struct.dc.3*
  %84 = load %struct.dc_stream_state*, %struct.dc_stream_state** %11, align 8
  %85 = load %struct.dc_state*, %struct.dc_state** %14, align 8
  %86 = call i32 %81(%struct.dc.3* %83, %struct.dc_stream_state* %84, i32 0, %struct.dc_state* %85)
  br label %317

87:                                               ; preds = %74
  store i32 0, i32* %16, align 4
  br label %88

88:                                               ; preds = %157, %87
  %89 = load i32, i32* %16, align 4
  %90 = load %struct.dc*, %struct.dc** %8, align 8
  %91 = getelementptr inbounds %struct.dc, %struct.dc* %90, i32 0, i32 2
  %92 = load %struct.TYPE_18__*, %struct.TYPE_18__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = icmp slt i32 %89, %94
  br i1 %95, label %96, label %160

96:                                               ; preds = %88
  %97 = load %struct.dc_state*, %struct.dc_state** %14, align 8
  %98 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %98, i32 0, i32 0
  %100 = load %struct.pipe_ctx*, %struct.pipe_ctx** %99, align 8
  %101 = load i32, i32* %16, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %100, i64 %102
  store %struct.pipe_ctx* %103, %struct.pipe_ctx** %18, align 8
  %104 = load %struct.pipe_ctx*, %struct.pipe_ctx** %18, align 8
  %105 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %104, i32 0, i32 5
  %106 = load i32, i32* %105, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %156, label %108

108:                                              ; preds = %96
  %109 = load %struct.pipe_ctx*, %struct.pipe_ctx** %18, align 8
  %110 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 8
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %156, label %113

113:                                              ; preds = %108
  %114 = load %struct.pipe_ctx*, %struct.pipe_ctx** %18, align 8
  %115 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %114, i32 0, i32 2
  %116 = load %struct.dc_stream_state*, %struct.dc_stream_state** %115, align 8
  %117 = icmp ne %struct.dc_stream_state* %116, null
  br i1 %117, label %118, label %156

118:                                              ; preds = %113
  %119 = load %struct.pipe_ctx*, %struct.pipe_ctx** %18, align 8
  %120 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %119, i32 0, i32 2
  %121 = load %struct.dc_stream_state*, %struct.dc_stream_state** %120, align 8
  %122 = load %struct.dc_stream_state*, %struct.dc_stream_state** %11, align 8
  %123 = icmp eq %struct.dc_stream_state* %121, %122
  br i1 %123, label %124, label %156

124:                                              ; preds = %118
  store %struct.dc_stream_status* null, %struct.dc_stream_status** %19, align 8
  %125 = load %struct.pipe_ctx*, %struct.pipe_ctx** %18, align 8
  store %struct.pipe_ctx* %125, %struct.pipe_ctx** %17, align 8
  %126 = load %struct.pipe_ctx*, %struct.pipe_ctx** %18, align 8
  %127 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %126, i32 0, i32 1
  %128 = load %struct.dc_plane_state*, %struct.dc_plane_state** %127, align 8
  %129 = icmp ne %struct.dc_plane_state* %128, null
  br i1 %129, label %131, label %130

130:                                              ; preds = %124
  br label %157

131:                                              ; preds = %124
  %132 = load i32, i32* %13, align 4
  %133 = load i32, i32* @UPDATE_TYPE_FAST, align 4
  %134 = icmp eq i32 %132, %133
  br i1 %134, label %135, label %136

135:                                              ; preds = %131
  br label %157

136:                                              ; preds = %131
  %137 = load %struct.dc_state*, %struct.dc_state** %14, align 8
  %138 = load %struct.pipe_ctx*, %struct.pipe_ctx** %18, align 8
  %139 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %138, i32 0, i32 2
  %140 = load %struct.dc_stream_state*, %struct.dc_stream_state** %139, align 8
  %141 = call %struct.dc_stream_status* @stream_get_status(%struct.dc_state* %137, %struct.dc_stream_state* %140)
  store %struct.dc_stream_status* %141, %struct.dc_stream_status** %19, align 8
  %142 = load %struct.dc*, %struct.dc** %8, align 8
  %143 = getelementptr inbounds %struct.dc, %struct.dc* %142, i32 0, i32 3
  %144 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %143, i32 0, i32 4
  %145 = load i32 (%struct.dc.3*, %struct.dc_stream_state*, i32, %struct.dc_state*)*, i32 (%struct.dc.3*, %struct.dc_stream_state*, i32, %struct.dc_state*)** %144, align 8
  %146 = load %struct.dc*, %struct.dc** %8, align 8
  %147 = bitcast %struct.dc* %146 to %struct.dc.3*
  %148 = load %struct.pipe_ctx*, %struct.pipe_ctx** %18, align 8
  %149 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %148, i32 0, i32 2
  %150 = load %struct.dc_stream_state*, %struct.dc_stream_state** %149, align 8
  %151 = load %struct.dc_stream_status*, %struct.dc_stream_status** %19, align 8
  %152 = getelementptr inbounds %struct.dc_stream_status, %struct.dc_stream_status* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.dc_state*, %struct.dc_state** %14, align 8
  %155 = call i32 %145(%struct.dc.3* %147, %struct.dc_stream_state* %150, i32 %153, %struct.dc_state* %154)
  br label %156

156:                                              ; preds = %136, %118, %113, %108, %96
  br label %157

157:                                              ; preds = %156, %135, %130
  %158 = load i32, i32* %16, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %16, align 4
  br label %88

160:                                              ; preds = %88
  %161 = load i32, i32* %13, align 4
  %162 = load i32, i32* @UPDATE_TYPE_FAST, align 4
  %163 = icmp eq i32 %161, %162
  br i1 %163, label %164, label %247

164:                                              ; preds = %160
  %165 = load %struct.dc*, %struct.dc** %8, align 8
  %166 = getelementptr inbounds %struct.dc, %struct.dc* %165, i32 0, i32 3
  %167 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %166, i32 0, i32 0
  %168 = load i32 (%struct.dc.0*, %struct.pipe_ctx*, i32)*, i32 (%struct.dc.0*, %struct.pipe_ctx*, i32)** %167, align 8
  %169 = load %struct.dc*, %struct.dc** %8, align 8
  %170 = bitcast %struct.dc* %169 to %struct.dc.0*
  %171 = load %struct.pipe_ctx*, %struct.pipe_ctx** %17, align 8
  %172 = call i32 %168(%struct.dc.0* %170, %struct.pipe_ctx* %171, i32 1)
  store i32 0, i32* %15, align 4
  br label %173

173:                                              ; preds = %235, %164
  %174 = load i32, i32* %15, align 4
  %175 = load i32, i32* %10, align 4
  %176 = icmp slt i32 %174, %175
  br i1 %176, label %177, label %238

177:                                              ; preds = %173
  %178 = load %struct.dc_surface_update*, %struct.dc_surface_update** %9, align 8
  %179 = load i32, i32* %15, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %178, i64 %180
  %182 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %181, i32 0, i32 1
  %183 = load %struct.dc_plane_state*, %struct.dc_plane_state** %182, align 8
  store %struct.dc_plane_state* %183, %struct.dc_plane_state** %20, align 8
  store i32 0, i32* %16, align 4
  br label %184

184:                                              ; preds = %231, %177
  %185 = load i32, i32* %16, align 4
  %186 = load %struct.dc*, %struct.dc** %8, align 8
  %187 = getelementptr inbounds %struct.dc, %struct.dc* %186, i32 0, i32 2
  %188 = load %struct.TYPE_18__*, %struct.TYPE_18__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = icmp slt i32 %185, %190
  br i1 %191, label %192, label %234

192:                                              ; preds = %184
  %193 = load %struct.dc_state*, %struct.dc_state** %14, align 8
  %194 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %194, i32 0, i32 0
  %196 = load %struct.pipe_ctx*, %struct.pipe_ctx** %195, align 8
  %197 = load i32, i32* %16, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %196, i64 %198
  store %struct.pipe_ctx* %199, %struct.pipe_ctx** %21, align 8
  %200 = load %struct.pipe_ctx*, %struct.pipe_ctx** %21, align 8
  %201 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %200, i32 0, i32 2
  %202 = load %struct.dc_stream_state*, %struct.dc_stream_state** %201, align 8
  %203 = load %struct.dc_stream_state*, %struct.dc_stream_state** %11, align 8
  %204 = icmp ne %struct.dc_stream_state* %202, %203
  br i1 %204, label %205, label %206

205:                                              ; preds = %192
  br label %231

206:                                              ; preds = %192
  %207 = load %struct.pipe_ctx*, %struct.pipe_ctx** %21, align 8
  %208 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %207, i32 0, i32 1
  %209 = load %struct.dc_plane_state*, %struct.dc_plane_state** %208, align 8
  %210 = load %struct.dc_plane_state*, %struct.dc_plane_state** %20, align 8
  %211 = icmp ne %struct.dc_plane_state* %209, %210
  br i1 %211, label %212, label %213

212:                                              ; preds = %206
  br label %231

213:                                              ; preds = %206
  %214 = load %struct.dc_surface_update*, %struct.dc_surface_update** %9, align 8
  %215 = load i32, i32* %15, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %214, i64 %216
  %218 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %217, i32 0, i32 0
  %219 = load i64, i64* %218, align 8
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %230

221:                                              ; preds = %213
  %222 = load %struct.dc*, %struct.dc** %8, align 8
  %223 = getelementptr inbounds %struct.dc, %struct.dc* %222, i32 0, i32 3
  %224 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %223, i32 0, i32 1
  %225 = load i32 (%struct.dc.1*, %struct.pipe_ctx*)*, i32 (%struct.dc.1*, %struct.pipe_ctx*)** %224, align 8
  %226 = load %struct.dc*, %struct.dc** %8, align 8
  %227 = bitcast %struct.dc* %226 to %struct.dc.1*
  %228 = load %struct.pipe_ctx*, %struct.pipe_ctx** %21, align 8
  %229 = call i32 %225(%struct.dc.1* %227, %struct.pipe_ctx* %228)
  br label %230

230:                                              ; preds = %221, %213
  br label %231

231:                                              ; preds = %230, %212, %205
  %232 = load i32, i32* %16, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %16, align 4
  br label %184

234:                                              ; preds = %184
  br label %235

235:                                              ; preds = %234
  %236 = load i32, i32* %15, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %15, align 4
  br label %173

238:                                              ; preds = %173
  %239 = load %struct.dc*, %struct.dc** %8, align 8
  %240 = getelementptr inbounds %struct.dc, %struct.dc* %239, i32 0, i32 3
  %241 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %240, i32 0, i32 0
  %242 = load i32 (%struct.dc.0*, %struct.pipe_ctx*, i32)*, i32 (%struct.dc.0*, %struct.pipe_ctx*, i32)** %241, align 8
  %243 = load %struct.dc*, %struct.dc** %8, align 8
  %244 = bitcast %struct.dc* %243 to %struct.dc.0*
  %245 = load %struct.pipe_ctx*, %struct.pipe_ctx** %17, align 8
  %246 = call i32 %242(%struct.dc.0* %244, %struct.pipe_ctx* %245, i32 0)
  br label %247

247:                                              ; preds = %238, %160
  store i32 0, i32* %16, align 4
  br label %248

248:                                              ; preds = %314, %247
  %249 = load i32, i32* %16, align 4
  %250 = load %struct.dc*, %struct.dc** %8, align 8
  %251 = getelementptr inbounds %struct.dc, %struct.dc* %250, i32 0, i32 2
  %252 = load %struct.TYPE_18__*, %struct.TYPE_18__** %251, align 8
  %253 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 4
  %255 = icmp slt i32 %249, %254
  br i1 %255, label %256, label %317

256:                                              ; preds = %248
  %257 = load %struct.dc_state*, %struct.dc_state** %14, align 8
  %258 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %257, i32 0, i32 0
  %259 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %258, i32 0, i32 0
  %260 = load %struct.pipe_ctx*, %struct.pipe_ctx** %259, align 8
  %261 = load i32, i32* %16, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %260, i64 %262
  store %struct.pipe_ctx* %263, %struct.pipe_ctx** %22, align 8
  %264 = load %struct.pipe_ctx*, %struct.pipe_ctx** %22, align 8
  %265 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %264, i32 0, i32 3
  %266 = load i64, i64* %265, align 8
  %267 = icmp ne i64 %266, 0
  br i1 %267, label %288, label %268

268:                                              ; preds = %256
  %269 = load %struct.pipe_ctx*, %struct.pipe_ctx** %22, align 8
  %270 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %269, i32 0, i32 2
  %271 = load %struct.dc_stream_state*, %struct.dc_stream_state** %270, align 8
  %272 = icmp ne %struct.dc_stream_state* %271, null
  br i1 %272, label %273, label %288

273:                                              ; preds = %268
  %274 = load %struct.pipe_ctx*, %struct.pipe_ctx** %22, align 8
  %275 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %274, i32 0, i32 2
  %276 = load %struct.dc_stream_state*, %struct.dc_stream_state** %275, align 8
  %277 = load %struct.dc_stream_state*, %struct.dc_stream_state** %11, align 8
  %278 = icmp ne %struct.dc_stream_state* %276, %277
  br i1 %278, label %288, label %279

279:                                              ; preds = %273
  %280 = load %struct.pipe_ctx*, %struct.pipe_ctx** %22, align 8
  %281 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %280, i32 0, i32 1
  %282 = load %struct.dc_plane_state*, %struct.dc_plane_state** %281, align 8
  %283 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %282, i32 0, i32 1
  %284 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %283, i32 0, i32 0
  %285 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 4
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %289, label %288

288:                                              ; preds = %279, %273, %268, %256
  br label %314

289:                                              ; preds = %279
  %290 = load %struct.pipe_ctx*, %struct.pipe_ctx** %22, align 8
  %291 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %290, i32 0, i32 0
  %292 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %291, i32 0, i32 0
  %293 = load %struct.TYPE_11__*, %struct.TYPE_11__** %292, align 8
  %294 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %293, i32 0, i32 0
  %295 = load %struct.TYPE_14__*, %struct.TYPE_14__** %294, align 8
  %296 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %295, i32 0, i32 0
  %297 = load i32 (%struct.TYPE_11__*)*, i32 (%struct.TYPE_11__*)** %296, align 8
  %298 = icmp ne i32 (%struct.TYPE_11__*)* %297, null
  br i1 %298, label %299, label %313

299:                                              ; preds = %289
  %300 = load %struct.pipe_ctx*, %struct.pipe_ctx** %22, align 8
  %301 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %300, i32 0, i32 0
  %302 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %301, i32 0, i32 0
  %303 = load %struct.TYPE_11__*, %struct.TYPE_11__** %302, align 8
  %304 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %303, i32 0, i32 0
  %305 = load %struct.TYPE_14__*, %struct.TYPE_14__** %304, align 8
  %306 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %305, i32 0, i32 0
  %307 = load i32 (%struct.TYPE_11__*)*, i32 (%struct.TYPE_11__*)** %306, align 8
  %308 = load %struct.pipe_ctx*, %struct.pipe_ctx** %22, align 8
  %309 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %308, i32 0, i32 0
  %310 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %309, i32 0, i32 0
  %311 = load %struct.TYPE_11__*, %struct.TYPE_11__** %310, align 8
  %312 = call i32 %307(%struct.TYPE_11__* %311)
  br label %313

313:                                              ; preds = %299, %289
  br label %314

314:                                              ; preds = %313, %288
  %315 = load i32, i32* %16, align 4
  %316 = add nsw i32 %315, 1
  store i32 %316, i32* %16, align 4
  br label %248

317:                                              ; preds = %77, %248
  ret void
}

declare dso_local i32 @context_clock_trace(%struct.dc*, %struct.dc_state*) #1

declare dso_local i32 @commit_planes_do_stream_update(%struct.dc*, %struct.dc_stream_state*, %struct.dc_stream_update*, i32, %struct.dc_state*) #1

declare dso_local %struct.dc_stream_status* @stream_get_status(%struct.dc_state*, %struct.dc_stream_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
