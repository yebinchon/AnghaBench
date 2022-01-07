; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_resource.c_calculate_viewport.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_resource.c_calculate_viewport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pipe_ctx = type { %struct.dc_plane_state*, %struct.TYPE_14__*, %struct.TYPE_13__*, %struct.TYPE_12__, %struct.dc_stream_state* }
%struct.dc_plane_state = type { i32, i32, %struct.TYPE_16__, %struct.rect, %struct.rect }
%struct.TYPE_16__ = type { i64, i64, i64, i64 }
%struct.rect = type { i32, i32, i32, i32 }
%struct.TYPE_14__ = type { %struct.dc_plane_state* }
%struct.TYPE_13__ = type { %struct.dc_plane_state* }
%struct.TYPE_12__ = type { %struct.scaler_data }
%struct.scaler_data = type { i64, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_11__ = type { i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i8*, i8* }
%struct.dc_stream_state = type { i64, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i64, i64, i64, i64 }

@PIXEL_FORMAT_420BPP8 = common dso_local global i64 0, align 8
@PIXEL_FORMAT_420BPP10 = common dso_local global i64 0, align 8
@VIEW_3D_FORMAT_SIDE_BY_SIDE = common dso_local global i64 0, align 8
@VIEW_3D_FORMAT_TOP_AND_BOTTOM = common dso_local global i64 0, align 8
@dc_fixpt_half = common dso_local global i8* null, align 8
@dc_fixpt_zero = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pipe_ctx*)* @calculate_viewport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @calculate_viewport(%struct.pipe_ctx* %0) #0 {
  %2 = alloca %struct.pipe_ctx*, align 8
  %3 = alloca %struct.dc_plane_state*, align 8
  %4 = alloca %struct.dc_stream_state*, align 8
  %5 = alloca %struct.scaler_data*, align 8
  %6 = alloca %struct.rect, align 4
  %7 = alloca %struct.rect, align 4
  %8 = alloca %struct.rect, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.pipe_ctx* %0, %struct.pipe_ctx** %2, align 8
  %15 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %16 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %15, i32 0, i32 0
  %17 = load %struct.dc_plane_state*, %struct.dc_plane_state** %16, align 8
  store %struct.dc_plane_state* %17, %struct.dc_plane_state** %3, align 8
  %18 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %19 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %18, i32 0, i32 4
  %20 = load %struct.dc_stream_state*, %struct.dc_stream_state** %19, align 8
  store %struct.dc_stream_state* %20, %struct.dc_stream_state** %4, align 8
  %21 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %22 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  store %struct.scaler_data* %23, %struct.scaler_data** %5, align 8
  %24 = load %struct.dc_plane_state*, %struct.dc_plane_state** %3, align 8
  %25 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %24, i32 0, i32 4
  %26 = bitcast %struct.rect* %6 to i8*
  %27 = bitcast %struct.rect* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %26, i8* align 8 %27, i64 16, i1 false)
  %28 = load %struct.scaler_data*, %struct.scaler_data** %5, align 8
  %29 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @PIXEL_FORMAT_420BPP8, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %39, label %33

33:                                               ; preds = %1
  %34 = load %struct.scaler_data*, %struct.scaler_data** %5, align 8
  %35 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @PIXEL_FORMAT_420BPP10, align 8
  %38 = icmp eq i64 %36, %37
  br label %39

39:                                               ; preds = %33, %1
  %40 = phi i1 [ true, %1 ], [ %38, %33 ]
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i32 2, i32 1
  store i32 %42, i32* %9, align 4
  %43 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %44 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %43, i32 0, i32 2
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %44, align 8
  %46 = icmp ne %struct.TYPE_13__* %45, null
  br i1 %46, label %47, label %57

47:                                               ; preds = %39
  %48 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %49 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %48, i32 0, i32 2
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 0
  %52 = load %struct.dc_plane_state*, %struct.dc_plane_state** %51, align 8
  %53 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %54 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %53, i32 0, i32 0
  %55 = load %struct.dc_plane_state*, %struct.dc_plane_state** %54, align 8
  %56 = icmp eq %struct.dc_plane_state* %52, %55
  br label %57

57:                                               ; preds = %47, %39
  %58 = phi i1 [ false, %39 ], [ %56, %47 ]
  %59 = zext i1 %58 to i32
  store i32 %59, i32* %10, align 4
  %60 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %61 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %60, i32 0, i32 1
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %61, align 8
  %63 = icmp ne %struct.TYPE_14__* %62, null
  br i1 %63, label %64, label %74

64:                                               ; preds = %57
  %65 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %66 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %65, i32 0, i32 1
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 0
  %69 = load %struct.dc_plane_state*, %struct.dc_plane_state** %68, align 8
  %70 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %71 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %70, i32 0, i32 0
  %72 = load %struct.dc_plane_state*, %struct.dc_plane_state** %71, align 8
  %73 = icmp eq %struct.dc_plane_state* %69, %72
  br label %74

74:                                               ; preds = %64, %57
  %75 = phi i1 [ false, %57 ], [ %73, %64 ]
  %76 = zext i1 %75 to i32
  store i32 %76, i32* %11, align 4
  %77 = load %struct.dc_stream_state*, %struct.dc_stream_state** %4, align 8
  %78 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @VIEW_3D_FORMAT_SIDE_BY_SIDE, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %88, label %82

82:                                               ; preds = %74
  %83 = load %struct.dc_stream_state*, %struct.dc_stream_state** %4, align 8
  %84 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @VIEW_3D_FORMAT_TOP_AND_BOTTOM, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %82, %74
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %89

89:                                               ; preds = %88, %82
  %90 = load %struct.dc_plane_state*, %struct.dc_plane_state** %3, align 8
  %91 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %90, i32 0, i32 3
  %92 = bitcast %struct.rect* %8 to i8*
  %93 = bitcast %struct.rect* %91 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %92, i8* align 8 %93, i64 16, i1 false)
  %94 = load %struct.dc_stream_state*, %struct.dc_stream_state** %4, align 8
  %95 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.dc_plane_state*, %struct.dc_plane_state** %3, align 8
  %99 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = icmp sgt i64 %97, %101
  br i1 %102, label %103, label %108

103:                                              ; preds = %89
  %104 = load %struct.dc_stream_state*, %struct.dc_stream_state** %4, align 8
  %105 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  br label %113

108:                                              ; preds = %89
  %109 = load %struct.dc_plane_state*, %struct.dc_plane_state** %3, align 8
  %110 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  br label %113

113:                                              ; preds = %108, %103
  %114 = phi i64 [ %107, %103 ], [ %112, %108 ]
  %115 = trunc i64 %114 to i32
  %116 = getelementptr inbounds %struct.rect, %struct.rect* %7, i32 0, i32 0
  store i32 %115, i32* %116, align 4
  %117 = load %struct.dc_stream_state*, %struct.dc_stream_state** %4, align 8
  %118 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.dc_stream_state*, %struct.dc_stream_state** %4, align 8
  %122 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = add nsw i64 %120, %124
  %126 = load %struct.dc_plane_state*, %struct.dc_plane_state** %3, align 8
  %127 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %126, i32 0, i32 2
  %128 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load %struct.dc_plane_state*, %struct.dc_plane_state** %3, align 8
  %131 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %130, i32 0, i32 2
  %132 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = add nsw i64 %129, %133
  %135 = icmp slt i64 %125, %134
  br i1 %135, label %136, label %150

136:                                              ; preds = %113
  %137 = load %struct.dc_stream_state*, %struct.dc_stream_state** %4, align 8
  %138 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load %struct.dc_stream_state*, %struct.dc_stream_state** %4, align 8
  %142 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = add nsw i64 %140, %144
  %146 = getelementptr inbounds %struct.rect, %struct.rect* %7, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = sext i32 %147 to i64
  %149 = sub nsw i64 %145, %148
  br label %164

150:                                              ; preds = %113
  %151 = load %struct.dc_plane_state*, %struct.dc_plane_state** %3, align 8
  %152 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %151, i32 0, i32 2
  %153 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = load %struct.dc_plane_state*, %struct.dc_plane_state** %3, align 8
  %156 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %155, i32 0, i32 2
  %157 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = add nsw i64 %154, %158
  %160 = getelementptr inbounds %struct.rect, %struct.rect* %7, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = sext i32 %161 to i64
  %163 = sub nsw i64 %159, %162
  br label %164

164:                                              ; preds = %150, %136
  %165 = phi i64 [ %149, %136 ], [ %163, %150 ]
  %166 = trunc i64 %165 to i32
  %167 = getelementptr inbounds %struct.rect, %struct.rect* %7, i32 0, i32 1
  store i32 %166, i32* %167, align 4
  %168 = load %struct.dc_stream_state*, %struct.dc_stream_state** %4, align 8
  %169 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %169, i32 0, i32 2
  %171 = load i64, i64* %170, align 8
  %172 = load %struct.dc_plane_state*, %struct.dc_plane_state** %3, align 8
  %173 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %172, i32 0, i32 2
  %174 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %173, i32 0, i32 2
  %175 = load i64, i64* %174, align 8
  %176 = icmp sgt i64 %171, %175
  br i1 %176, label %177, label %182

177:                                              ; preds = %164
  %178 = load %struct.dc_stream_state*, %struct.dc_stream_state** %4, align 8
  %179 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %178, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %179, i32 0, i32 2
  %181 = load i64, i64* %180, align 8
  br label %187

182:                                              ; preds = %164
  %183 = load %struct.dc_plane_state*, %struct.dc_plane_state** %3, align 8
  %184 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %183, i32 0, i32 2
  %185 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %184, i32 0, i32 2
  %186 = load i64, i64* %185, align 8
  br label %187

187:                                              ; preds = %182, %177
  %188 = phi i64 [ %181, %177 ], [ %186, %182 ]
  %189 = trunc i64 %188 to i32
  %190 = getelementptr inbounds %struct.rect, %struct.rect* %7, i32 0, i32 2
  store i32 %189, i32* %190, align 4
  %191 = load %struct.dc_stream_state*, %struct.dc_stream_state** %4, align 8
  %192 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %191, i32 0, i32 1
  %193 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %192, i32 0, i32 2
  %194 = load i64, i64* %193, align 8
  %195 = load %struct.dc_stream_state*, %struct.dc_stream_state** %4, align 8
  %196 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %195, i32 0, i32 1
  %197 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %196, i32 0, i32 3
  %198 = load i64, i64* %197, align 8
  %199 = add nsw i64 %194, %198
  %200 = load %struct.dc_plane_state*, %struct.dc_plane_state** %3, align 8
  %201 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %200, i32 0, i32 2
  %202 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %201, i32 0, i32 2
  %203 = load i64, i64* %202, align 8
  %204 = load %struct.dc_plane_state*, %struct.dc_plane_state** %3, align 8
  %205 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %204, i32 0, i32 2
  %206 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %205, i32 0, i32 3
  %207 = load i64, i64* %206, align 8
  %208 = add nsw i64 %203, %207
  %209 = icmp slt i64 %199, %208
  br i1 %209, label %210, label %224

210:                                              ; preds = %187
  %211 = load %struct.dc_stream_state*, %struct.dc_stream_state** %4, align 8
  %212 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %211, i32 0, i32 1
  %213 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %212, i32 0, i32 2
  %214 = load i64, i64* %213, align 8
  %215 = load %struct.dc_stream_state*, %struct.dc_stream_state** %4, align 8
  %216 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %215, i32 0, i32 1
  %217 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %216, i32 0, i32 3
  %218 = load i64, i64* %217, align 8
  %219 = add nsw i64 %214, %218
  %220 = getelementptr inbounds %struct.rect, %struct.rect* %7, i32 0, i32 2
  %221 = load i32, i32* %220, align 4
  %222 = sext i32 %221 to i64
  %223 = sub nsw i64 %219, %222
  br label %238

224:                                              ; preds = %187
  %225 = load %struct.dc_plane_state*, %struct.dc_plane_state** %3, align 8
  %226 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %225, i32 0, i32 2
  %227 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %226, i32 0, i32 2
  %228 = load i64, i64* %227, align 8
  %229 = load %struct.dc_plane_state*, %struct.dc_plane_state** %3, align 8
  %230 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %229, i32 0, i32 2
  %231 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %230, i32 0, i32 3
  %232 = load i64, i64* %231, align 8
  %233 = add nsw i64 %228, %232
  %234 = getelementptr inbounds %struct.rect, %struct.rect* %7, i32 0, i32 2
  %235 = load i32, i32* %234, align 4
  %236 = sext i32 %235 to i64
  %237 = sub nsw i64 %233, %236
  br label %238

238:                                              ; preds = %224, %210
  %239 = phi i64 [ %223, %210 ], [ %237, %224 ]
  %240 = trunc i64 %239 to i32
  %241 = getelementptr inbounds %struct.rect, %struct.rect* %7, i32 0, i32 3
  store i32 %240, i32* %241, align 4
  %242 = load %struct.dc_plane_state*, %struct.dc_plane_state** %3, align 8
  %243 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %242, i32 0, i32 1
  %244 = load i32, i32* %243, align 4
  %245 = load %struct.dc_plane_state*, %struct.dc_plane_state** %3, align 8
  %246 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 8
  %248 = call i32 @get_vp_scan_direction(i32 %244, i32 %247, i32* %12, i32* %13, i32* %14)
  %249 = load i32, i32* %12, align 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %272

251:                                              ; preds = %238
  %252 = getelementptr inbounds %struct.rect, %struct.rect* %7, i32 0, i32 0
  %253 = load i32, i32* %252, align 4
  %254 = getelementptr inbounds %struct.rect, %struct.rect* %7, i32 0, i32 2
  %255 = load i32, i32* %254, align 4
  %256 = call i32 @swap(i32 %253, i32 %255)
  %257 = getelementptr inbounds %struct.rect, %struct.rect* %7, i32 0, i32 1
  %258 = load i32, i32* %257, align 4
  %259 = getelementptr inbounds %struct.rect, %struct.rect* %7, i32 0, i32 3
  %260 = load i32, i32* %259, align 4
  %261 = call i32 @swap(i32 %258, i32 %260)
  %262 = getelementptr inbounds %struct.rect, %struct.rect* %8, i32 0, i32 0
  %263 = load i32, i32* %262, align 4
  %264 = getelementptr inbounds %struct.rect, %struct.rect* %8, i32 0, i32 2
  %265 = load i32, i32* %264, align 4
  %266 = call i32 @swap(i32 %263, i32 %265)
  %267 = getelementptr inbounds %struct.rect, %struct.rect* %8, i32 0, i32 1
  %268 = load i32, i32* %267, align 4
  %269 = getelementptr inbounds %struct.rect, %struct.rect* %8, i32 0, i32 3
  %270 = load i32, i32* %269, align 4
  %271 = call i32 @swap(i32 %268, i32 %270)
  br label %272

272:                                              ; preds = %251, %238
  %273 = load i32, i32* %14, align 4
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %289

275:                                              ; preds = %272
  %276 = getelementptr inbounds %struct.rect, %struct.rect* %8, i32 0, i32 0
  %277 = load i32, i32* %276, align 4
  %278 = getelementptr inbounds %struct.rect, %struct.rect* %8, i32 0, i32 1
  %279 = load i32, i32* %278, align 4
  %280 = add nsw i32 %277, %279
  %281 = getelementptr inbounds %struct.rect, %struct.rect* %7, i32 0, i32 0
  %282 = load i32, i32* %281, align 4
  %283 = sub nsw i32 %280, %282
  %284 = getelementptr inbounds %struct.rect, %struct.rect* %7, i32 0, i32 1
  %285 = load i32, i32* %284, align 4
  %286 = sub nsw i32 %283, %285
  %287 = getelementptr inbounds %struct.rect, %struct.rect* %7, i32 0, i32 0
  store i32 %286, i32* %287, align 4
  %288 = getelementptr inbounds %struct.rect, %struct.rect* %8, i32 0, i32 0
  store i32 0, i32* %288, align 4
  br label %289

289:                                              ; preds = %275, %272
  %290 = load i32, i32* %13, align 4
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %306

292:                                              ; preds = %289
  %293 = getelementptr inbounds %struct.rect, %struct.rect* %8, i32 0, i32 2
  %294 = load i32, i32* %293, align 4
  %295 = getelementptr inbounds %struct.rect, %struct.rect* %8, i32 0, i32 3
  %296 = load i32, i32* %295, align 4
  %297 = add nsw i32 %294, %296
  %298 = getelementptr inbounds %struct.rect, %struct.rect* %7, i32 0, i32 2
  %299 = load i32, i32* %298, align 4
  %300 = sub nsw i32 %297, %299
  %301 = getelementptr inbounds %struct.rect, %struct.rect* %7, i32 0, i32 3
  %302 = load i32, i32* %301, align 4
  %303 = sub nsw i32 %300, %302
  %304 = getelementptr inbounds %struct.rect, %struct.rect* %7, i32 0, i32 2
  store i32 %303, i32* %304, align 4
  %305 = getelementptr inbounds %struct.rect, %struct.rect* %8, i32 0, i32 2
  store i32 0, i32* %305, align 4
  br label %306

306:                                              ; preds = %292, %289
  %307 = getelementptr inbounds %struct.rect, %struct.rect* %6, i32 0, i32 0
  %308 = load i32, i32* %307, align 4
  %309 = getelementptr inbounds %struct.rect, %struct.rect* %7, i32 0, i32 0
  %310 = load i32, i32* %309, align 4
  %311 = getelementptr inbounds %struct.rect, %struct.rect* %8, i32 0, i32 0
  %312 = load i32, i32* %311, align 4
  %313 = sub nsw i32 %310, %312
  %314 = getelementptr inbounds %struct.rect, %struct.rect* %6, i32 0, i32 1
  %315 = load i32, i32* %314, align 4
  %316 = mul nsw i32 %313, %315
  %317 = getelementptr inbounds %struct.rect, %struct.rect* %8, i32 0, i32 1
  %318 = load i32, i32* %317, align 4
  %319 = sdiv i32 %316, %318
  %320 = add nsw i32 %308, %319
  %321 = load %struct.scaler_data*, %struct.scaler_data** %5, align 8
  %322 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %321, i32 0, i32 1
  %323 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %322, i32 0, i32 0
  store i32 %320, i32* %323, align 8
  %324 = getelementptr inbounds %struct.rect, %struct.rect* %7, i32 0, i32 1
  %325 = load i32, i32* %324, align 4
  %326 = getelementptr inbounds %struct.rect, %struct.rect* %6, i32 0, i32 1
  %327 = load i32, i32* %326, align 4
  %328 = mul nsw i32 %325, %327
  %329 = getelementptr inbounds %struct.rect, %struct.rect* %8, i32 0, i32 1
  %330 = load i32, i32* %329, align 4
  %331 = sdiv i32 %328, %330
  %332 = load %struct.scaler_data*, %struct.scaler_data** %5, align 8
  %333 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %332, i32 0, i32 1
  %334 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %333, i32 0, i32 1
  store i32 %331, i32* %334, align 4
  %335 = getelementptr inbounds %struct.rect, %struct.rect* %6, i32 0, i32 2
  %336 = load i32, i32* %335, align 4
  %337 = getelementptr inbounds %struct.rect, %struct.rect* %7, i32 0, i32 2
  %338 = load i32, i32* %337, align 4
  %339 = getelementptr inbounds %struct.rect, %struct.rect* %8, i32 0, i32 2
  %340 = load i32, i32* %339, align 4
  %341 = sub nsw i32 %338, %340
  %342 = getelementptr inbounds %struct.rect, %struct.rect* %6, i32 0, i32 3
  %343 = load i32, i32* %342, align 4
  %344 = mul nsw i32 %341, %343
  %345 = getelementptr inbounds %struct.rect, %struct.rect* %8, i32 0, i32 3
  %346 = load i32, i32* %345, align 4
  %347 = sdiv i32 %344, %346
  %348 = add nsw i32 %336, %347
  %349 = load %struct.scaler_data*, %struct.scaler_data** %5, align 8
  %350 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %349, i32 0, i32 1
  %351 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %350, i32 0, i32 2
  store i32 %348, i32* %351, align 8
  %352 = getelementptr inbounds %struct.rect, %struct.rect* %7, i32 0, i32 3
  %353 = load i32, i32* %352, align 4
  %354 = getelementptr inbounds %struct.rect, %struct.rect* %6, i32 0, i32 3
  %355 = load i32, i32* %354, align 4
  %356 = mul nsw i32 %353, %355
  %357 = getelementptr inbounds %struct.rect, %struct.rect* %8, i32 0, i32 3
  %358 = load i32, i32* %357, align 4
  %359 = sdiv i32 %356, %358
  %360 = load %struct.scaler_data*, %struct.scaler_data** %5, align 8
  %361 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %360, i32 0, i32 1
  %362 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %361, i32 0, i32 3
  store i32 %359, i32* %362, align 4
  %363 = load i32, i32* %10, align 4
  %364 = icmp ne i32 %363, 0
  br i1 %364, label %368, label %365

365:                                              ; preds = %306
  %366 = load i32, i32* %11, align 4
  %367 = icmp ne i32 %366, 0
  br i1 %367, label %368, label %434

368:                                              ; preds = %365, %306
  %369 = load i32, i32* %12, align 4
  %370 = icmp ne i32 %369, 0
  br i1 %370, label %371, label %402

371:                                              ; preds = %368
  %372 = load i32, i32* %13, align 4
  %373 = load i32, i32* %10, align 4
  %374 = icmp ne i32 %372, %373
  br i1 %374, label %375, label %381

375:                                              ; preds = %371
  %376 = load %struct.scaler_data*, %struct.scaler_data** %5, align 8
  %377 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %376, i32 0, i32 1
  %378 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %377, i32 0, i32 3
  %379 = load i32, i32* %378, align 4
  %380 = sdiv i32 %379, 2
  store i32 %380, i32* %378, align 4
  br label %401

381:                                              ; preds = %371
  %382 = load %struct.scaler_data*, %struct.scaler_data** %5, align 8
  %383 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %382, i32 0, i32 1
  %384 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %383, i32 0, i32 3
  %385 = load i32, i32* %384, align 4
  %386 = sdiv i32 %385, 2
  %387 = load %struct.scaler_data*, %struct.scaler_data** %5, align 8
  %388 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %387, i32 0, i32 1
  %389 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %388, i32 0, i32 2
  %390 = load i32, i32* %389, align 8
  %391 = add nsw i32 %390, %386
  store i32 %391, i32* %389, align 8
  %392 = load %struct.scaler_data*, %struct.scaler_data** %5, align 8
  %393 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %392, i32 0, i32 1
  %394 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %393, i32 0, i32 3
  %395 = load i32, i32* %394, align 4
  %396 = add nsw i32 %395, 1
  %397 = sdiv i32 %396, 2
  %398 = load %struct.scaler_data*, %struct.scaler_data** %5, align 8
  %399 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %398, i32 0, i32 1
  %400 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %399, i32 0, i32 3
  store i32 %397, i32* %400, align 4
  br label %401

401:                                              ; preds = %381, %375
  br label %433

402:                                              ; preds = %368
  %403 = load i32, i32* %14, align 4
  %404 = load i32, i32* %10, align 4
  %405 = icmp ne i32 %403, %404
  br i1 %405, label %406, label %412

406:                                              ; preds = %402
  %407 = load %struct.scaler_data*, %struct.scaler_data** %5, align 8
  %408 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %407, i32 0, i32 1
  %409 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %408, i32 0, i32 1
  %410 = load i32, i32* %409, align 4
  %411 = sdiv i32 %410, 2
  store i32 %411, i32* %409, align 4
  br label %432

412:                                              ; preds = %402
  %413 = load %struct.scaler_data*, %struct.scaler_data** %5, align 8
  %414 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %413, i32 0, i32 1
  %415 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %414, i32 0, i32 1
  %416 = load i32, i32* %415, align 4
  %417 = sdiv i32 %416, 2
  %418 = load %struct.scaler_data*, %struct.scaler_data** %5, align 8
  %419 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %418, i32 0, i32 1
  %420 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %419, i32 0, i32 0
  %421 = load i32, i32* %420, align 8
  %422 = add nsw i32 %421, %417
  store i32 %422, i32* %420, align 8
  %423 = load %struct.scaler_data*, %struct.scaler_data** %5, align 8
  %424 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %423, i32 0, i32 1
  %425 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %424, i32 0, i32 1
  %426 = load i32, i32* %425, align 4
  %427 = add nsw i32 %426, 1
  %428 = sdiv i32 %427, 2
  %429 = load %struct.scaler_data*, %struct.scaler_data** %5, align 8
  %430 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %429, i32 0, i32 1
  %431 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %430, i32 0, i32 1
  store i32 %428, i32* %431, align 4
  br label %432

432:                                              ; preds = %412, %406
  br label %433

433:                                              ; preds = %432, %401
  br label %434

434:                                              ; preds = %433, %365
  %435 = load %struct.scaler_data*, %struct.scaler_data** %5, align 8
  %436 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %435, i32 0, i32 1
  %437 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %436, i32 0, i32 0
  %438 = load i32, i32* %437, align 8
  %439 = load i32, i32* %9, align 4
  %440 = sdiv i32 %438, %439
  %441 = load %struct.scaler_data*, %struct.scaler_data** %5, align 8
  %442 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %441, i32 0, i32 2
  %443 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %442, i32 0, i32 0
  store i32 %440, i32* %443, align 8
  %444 = load %struct.scaler_data*, %struct.scaler_data** %5, align 8
  %445 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %444, i32 0, i32 1
  %446 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %445, i32 0, i32 2
  %447 = load i32, i32* %446, align 8
  %448 = load i32, i32* %9, align 4
  %449 = sdiv i32 %447, %448
  %450 = load %struct.scaler_data*, %struct.scaler_data** %5, align 8
  %451 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %450, i32 0, i32 2
  %452 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %451, i32 0, i32 1
  store i32 %449, i32* %452, align 4
  %453 = load %struct.scaler_data*, %struct.scaler_data** %5, align 8
  %454 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %453, i32 0, i32 1
  %455 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %454, i32 0, i32 0
  %456 = load i32, i32* %455, align 8
  %457 = load i32, i32* %9, align 4
  %458 = srem i32 %456, %457
  %459 = icmp ne i32 %458, 0
  br i1 %459, label %460, label %462

460:                                              ; preds = %434
  %461 = load i8*, i8** @dc_fixpt_half, align 8
  br label %464

462:                                              ; preds = %434
  %463 = load i8*, i8** @dc_fixpt_zero, align 8
  br label %464

464:                                              ; preds = %462, %460
  %465 = phi i8* [ %461, %460 ], [ %463, %462 ]
  %466 = load %struct.scaler_data*, %struct.scaler_data** %5, align 8
  %467 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %466, i32 0, i32 3
  %468 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %467, i32 0, i32 1
  store i8* %465, i8** %468, align 8
  %469 = load %struct.scaler_data*, %struct.scaler_data** %5, align 8
  %470 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %469, i32 0, i32 1
  %471 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %470, i32 0, i32 2
  %472 = load i32, i32* %471, align 8
  %473 = load i32, i32* %9, align 4
  %474 = srem i32 %472, %473
  %475 = icmp ne i32 %474, 0
  br i1 %475, label %476, label %478

476:                                              ; preds = %464
  %477 = load i8*, i8** @dc_fixpt_half, align 8
  br label %480

478:                                              ; preds = %464
  %479 = load i8*, i8** @dc_fixpt_zero, align 8
  br label %480

480:                                              ; preds = %478, %476
  %481 = phi i8* [ %477, %476 ], [ %479, %478 ]
  %482 = load %struct.scaler_data*, %struct.scaler_data** %5, align 8
  %483 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %482, i32 0, i32 3
  %484 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %483, i32 0, i32 0
  store i8* %481, i8** %484, align 8
  %485 = load %struct.scaler_data*, %struct.scaler_data** %5, align 8
  %486 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %485, i32 0, i32 1
  %487 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %486, i32 0, i32 1
  %488 = load i32, i32* %487, align 4
  %489 = load i32, i32* %9, align 4
  %490 = add nsw i32 %488, %489
  %491 = sub nsw i32 %490, 1
  %492 = load i32, i32* %9, align 4
  %493 = sdiv i32 %491, %492
  %494 = load %struct.scaler_data*, %struct.scaler_data** %5, align 8
  %495 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %494, i32 0, i32 2
  %496 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %495, i32 0, i32 2
  store i32 %493, i32* %496, align 8
  %497 = load %struct.scaler_data*, %struct.scaler_data** %5, align 8
  %498 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %497, i32 0, i32 1
  %499 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %498, i32 0, i32 3
  %500 = load i32, i32* %499, align 4
  %501 = load i32, i32* %9, align 4
  %502 = add nsw i32 %500, %501
  %503 = sub nsw i32 %502, 1
  %504 = load i32, i32* %9, align 4
  %505 = sdiv i32 %503, %504
  %506 = load %struct.scaler_data*, %struct.scaler_data** %5, align 8
  %507 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %506, i32 0, i32 2
  %508 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %507, i32 0, i32 3
  store i32 %505, i32* %508, align 4
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @get_vp_scan_direction(i32, i32, i32*, i32*, i32*) #2

declare dso_local i32 @swap(i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
