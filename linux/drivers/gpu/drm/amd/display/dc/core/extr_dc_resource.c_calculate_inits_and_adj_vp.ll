; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_resource.c_calculate_inits_and_adj_vp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_resource.c_calculate_inits_and_adj_vp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pipe_ctx = type { %struct.dc_plane_state*, %struct.TYPE_14__, %struct.dc_stream_state* }
%struct.dc_plane_state = type { %struct.TYPE_16__, i32, i32, %struct.rect }
%struct.TYPE_16__ = type { i32, i32, i32, i32 }
%struct.rect = type { i32, i32, i32, i32 }
%struct.TYPE_14__ = type { %struct.scaler_data }
%struct.scaler_data = type { i64, %struct.TYPE_11__, %struct.TYPE_20__, %struct.TYPE_13__, %struct.TYPE_19__, %struct.TYPE_12__, %struct.TYPE_15__ }
%struct.TYPE_11__ = type { i8*, i8*, i8*, i8* }
%struct.TYPE_20__ = type { i8*, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_13__ = type { i32, i32, i32, i32 }
%struct.TYPE_19__ = type { i64, i64, i64, i64 }
%struct.TYPE_12__ = type { i32, i32, i32, i32 }
%struct.TYPE_15__ = type { i32, i32 }
%struct.dc_stream_state = type { %struct.TYPE_18__, %struct.TYPE_17__ }
%struct.TYPE_18__ = type { i32, i32, i32, i32 }
%struct.TYPE_17__ = type { i32, i32, i32, i32 }

@PIXEL_FORMAT_420BPP8 = common dso_local global i64 0, align 8
@PIXEL_FORMAT_420BPP10 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pipe_ctx*)* @calculate_inits_and_adj_vp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @calculate_inits_and_adj_vp(%struct.pipe_ctx* %0) #0 {
  %2 = alloca %struct.pipe_ctx*, align 8
  %3 = alloca %struct.dc_plane_state*, align 8
  %4 = alloca %struct.dc_stream_state*, align 8
  %5 = alloca %struct.scaler_data*, align 8
  %6 = alloca %struct.rect, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
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
  %19 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %18, i32 0, i32 2
  %20 = load %struct.dc_stream_state*, %struct.dc_stream_state** %19, align 8
  store %struct.dc_stream_state* %20, %struct.dc_stream_state** %4, align 8
  %21 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %22 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 0
  store %struct.scaler_data* %23, %struct.scaler_data** %5, align 8
  %24 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %25 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %24, i32 0, i32 0
  %26 = load %struct.dc_plane_state*, %struct.dc_plane_state** %25, align 8
  %27 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %26, i32 0, i32 3
  %28 = bitcast %struct.rect* %6 to i8*
  %29 = bitcast %struct.rect* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %28, i8* align 4 %29, i64 16, i1 false)
  %30 = load %struct.scaler_data*, %struct.scaler_data** %5, align 8
  %31 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @PIXEL_FORMAT_420BPP8, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %41, label %35

35:                                               ; preds = %1
  %36 = load %struct.scaler_data*, %struct.scaler_data** %5, align 8
  %37 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @PIXEL_FORMAT_420BPP10, align 8
  %40 = icmp eq i64 %38, %39
  br label %41

41:                                               ; preds = %35, %1
  %42 = phi i1 [ true, %1 ], [ %40, %35 ]
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i32 2, i32 1
  store i32 %44, i32* %11, align 4
  %45 = load %struct.dc_plane_state*, %struct.dc_plane_state** %3, align 8
  %46 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.dc_plane_state*, %struct.dc_plane_state** %3, align 8
  %49 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @get_vp_scan_direction(i32 %47, i32 %50, i32* %12, i32* %13, i32* %14)
  %52 = getelementptr inbounds %struct.rect, %struct.rect* %6, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = getelementptr inbounds %struct.rect, %struct.rect* %6, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %53, %55
  store i32 %56, i32* %9, align 4
  %57 = getelementptr inbounds %struct.rect, %struct.rect* %6, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = getelementptr inbounds %struct.rect, %struct.rect* %6, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %58, %60
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %14, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %41
  %65 = getelementptr inbounds %struct.rect, %struct.rect* %6, i32 0, i32 0
  store i32 0, i32* %65, align 4
  br label %66

66:                                               ; preds = %64, %41
  %67 = load i32, i32* %13, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %66
  %70 = getelementptr inbounds %struct.rect, %struct.rect* %6, i32 0, i32 2
  store i32 0, i32* %70, align 4
  br label %71

71:                                               ; preds = %69, %66
  %72 = load i32, i32* %12, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %85

74:                                               ; preds = %71
  %75 = getelementptr inbounds %struct.rect, %struct.rect* %6, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = getelementptr inbounds %struct.rect, %struct.rect* %6, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @swap(i32 %76, i32 %78)
  %80 = getelementptr inbounds %struct.rect, %struct.rect* %6, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = getelementptr inbounds %struct.rect, %struct.rect* %6, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @swap(i32 %81, i32 %83)
  br label %85

85:                                               ; preds = %74, %71
  %86 = load %struct.scaler_data*, %struct.scaler_data** %5, align 8
  %87 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %86, i32 0, i32 6
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.dc_stream_state*, %struct.dc_stream_state** %4, align 8
  %91 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.dc_plane_state*, %struct.dc_plane_state** %3, align 8
  %95 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.dc_stream_state*, %struct.dc_stream_state** %4, align 8
  %99 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = sub nsw i32 %97, %101
  %103 = load %struct.dc_stream_state*, %struct.dc_stream_state** %4, align 8
  %104 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = mul nsw i32 %102, %106
  %108 = load %struct.dc_stream_state*, %struct.dc_stream_state** %4, align 8
  %109 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = sdiv i32 %107, %111
  %113 = add nsw i32 %93, %112
  %114 = getelementptr inbounds %struct.rect, %struct.rect* %6, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.dc_plane_state*, %struct.dc_plane_state** %3, align 8
  %117 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = mul nsw i32 %115, %119
  %121 = getelementptr inbounds %struct.rect, %struct.rect* %6, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = sdiv i32 %120, %122
  %124 = load %struct.dc_stream_state*, %struct.dc_stream_state** %4, align 8
  %125 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = mul nsw i32 %123, %127
  %129 = load %struct.dc_stream_state*, %struct.dc_stream_state** %4, align 8
  %130 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = sdiv i32 %128, %132
  %134 = sub nsw i32 %113, %133
  %135 = sub nsw i32 %89, %134
  store i32 %135, i32* %7, align 4
  %136 = load %struct.scaler_data*, %struct.scaler_data** %5, align 8
  %137 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %136, i32 0, i32 6
  %138 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.dc_stream_state*, %struct.dc_stream_state** %4, align 8
  %141 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.dc_plane_state*, %struct.dc_plane_state** %3, align 8
  %145 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.dc_stream_state*, %struct.dc_stream_state** %4, align 8
  %149 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 4
  %152 = sub nsw i32 %147, %151
  %153 = load %struct.dc_stream_state*, %struct.dc_stream_state** %4, align 8
  %154 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 4
  %157 = mul nsw i32 %152, %156
  %158 = load %struct.dc_stream_state*, %struct.dc_stream_state** %4, align 8
  %159 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %159, i32 0, i32 3
  %161 = load i32, i32* %160, align 4
  %162 = sdiv i32 %157, %161
  %163 = add nsw i32 %143, %162
  %164 = getelementptr inbounds %struct.rect, %struct.rect* %6, i32 0, i32 2
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.dc_plane_state*, %struct.dc_plane_state** %3, align 8
  %167 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %167, i32 0, i32 3
  %169 = load i32, i32* %168, align 4
  %170 = mul nsw i32 %165, %169
  %171 = getelementptr inbounds %struct.rect, %struct.rect* %6, i32 0, i32 3
  %172 = load i32, i32* %171, align 4
  %173 = sdiv i32 %170, %172
  %174 = load %struct.dc_stream_state*, %struct.dc_stream_state** %4, align 8
  %175 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %175, i32 0, i32 3
  %177 = load i32, i32* %176, align 4
  %178 = mul nsw i32 %173, %177
  %179 = load %struct.dc_stream_state*, %struct.dc_stream_state** %4, align 8
  %180 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %180, i32 0, i32 3
  %182 = load i32, i32* %181, align 4
  %183 = sdiv i32 %178, %182
  %184 = sub nsw i32 %163, %183
  %185 = sub nsw i32 %139, %184
  store i32 %185, i32* %8, align 4
  %186 = load i32, i32* %12, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %192

188:                                              ; preds = %85
  %189 = load i32, i32* %7, align 4
  %190 = load i32, i32* %8, align 4
  %191 = call i32 @swap(i32 %189, i32 %190)
  br label %192

192:                                              ; preds = %188, %85
  %193 = load %struct.scaler_data*, %struct.scaler_data** %5, align 8
  %194 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %193, i32 0, i32 1
  %195 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %194, i32 0, i32 0
  %196 = load i8*, i8** %195, align 8
  %197 = load %struct.scaler_data*, %struct.scaler_data** %5, align 8
  %198 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %197, i32 0, i32 4
  %199 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %198, i32 0, i32 3
  %200 = load i64, i64* %199, align 8
  %201 = add nsw i64 %200, 1
  %202 = call i32 @dc_fixpt_add_int(i8* %196, i64 %201)
  %203 = call i8* @dc_fixpt_div_int(i32 %202, i32 2)
  %204 = call i8* @dc_fixpt_truncate(i8* %203, i32 19)
  %205 = load %struct.scaler_data*, %struct.scaler_data** %5, align 8
  %206 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %205, i32 0, i32 2
  %207 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %206, i32 0, i32 5
  store i8* %204, i8** %207, align 8
  %208 = load %struct.scaler_data*, %struct.scaler_data** %5, align 8
  %209 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %208, i32 0, i32 2
  %210 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %209, i32 0, i32 4
  %211 = load i8*, i8** %210, align 8
  %212 = load %struct.scaler_data*, %struct.scaler_data** %5, align 8
  %213 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %212, i32 0, i32 1
  %214 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %213, i32 0, i32 1
  %215 = load i8*, i8** %214, align 8
  %216 = load %struct.scaler_data*, %struct.scaler_data** %5, align 8
  %217 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %216, i32 0, i32 4
  %218 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %217, i32 0, i32 1
  %219 = load i64, i64* %218, align 8
  %220 = add nsw i64 %219, 1
  %221 = call i32 @dc_fixpt_add_int(i8* %215, i64 %220)
  %222 = call i8* @dc_fixpt_div_int(i32 %221, i32 2)
  %223 = call i8* @dc_fixpt_add(i8* %211, i8* %222)
  %224 = call i8* @dc_fixpt_truncate(i8* %223, i32 19)
  %225 = load %struct.scaler_data*, %struct.scaler_data** %5, align 8
  %226 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %225, i32 0, i32 2
  %227 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %226, i32 0, i32 4
  store i8* %224, i8** %227, align 8
  %228 = load %struct.scaler_data*, %struct.scaler_data** %5, align 8
  %229 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %228, i32 0, i32 1
  %230 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %229, i32 0, i32 2
  %231 = load i8*, i8** %230, align 8
  %232 = load %struct.scaler_data*, %struct.scaler_data** %5, align 8
  %233 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %232, i32 0, i32 4
  %234 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %233, i32 0, i32 2
  %235 = load i64, i64* %234, align 8
  %236 = add nsw i64 %235, 1
  %237 = call i32 @dc_fixpt_add_int(i8* %231, i64 %236)
  %238 = call i8* @dc_fixpt_div_int(i32 %237, i32 2)
  %239 = call i8* @dc_fixpt_truncate(i8* %238, i32 19)
  %240 = load %struct.scaler_data*, %struct.scaler_data** %5, align 8
  %241 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %240, i32 0, i32 2
  %242 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %241, i32 0, i32 2
  store i8* %239, i8** %242, align 8
  %243 = load %struct.scaler_data*, %struct.scaler_data** %5, align 8
  %244 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %243, i32 0, i32 2
  %245 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %244, i32 0, i32 0
  %246 = load i8*, i8** %245, align 8
  %247 = load %struct.scaler_data*, %struct.scaler_data** %5, align 8
  %248 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %247, i32 0, i32 1
  %249 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %248, i32 0, i32 3
  %250 = load i8*, i8** %249, align 8
  %251 = load %struct.scaler_data*, %struct.scaler_data** %5, align 8
  %252 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %251, i32 0, i32 4
  %253 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %252, i32 0, i32 0
  %254 = load i64, i64* %253, align 8
  %255 = add nsw i64 %254, 1
  %256 = call i32 @dc_fixpt_add_int(i8* %250, i64 %255)
  %257 = call i8* @dc_fixpt_div_int(i32 %256, i32 2)
  %258 = call i8* @dc_fixpt_add(i8* %246, i8* %257)
  %259 = call i8* @dc_fixpt_truncate(i8* %258, i32 19)
  %260 = load %struct.scaler_data*, %struct.scaler_data** %5, align 8
  %261 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %260, i32 0, i32 2
  %262 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %261, i32 0, i32 0
  store i8* %259, i8** %262, align 8
  %263 = load i32, i32* %14, align 4
  %264 = load i32, i32* %7, align 4
  %265 = load i32, i32* %9, align 4
  %266 = load i32, i32* %12, align 4
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %273

268:                                              ; preds = %192
  %269 = load %struct.scaler_data*, %struct.scaler_data** %5, align 8
  %270 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %269, i32 0, i32 4
  %271 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %270, i32 0, i32 2
  %272 = load i64, i64* %271, align 8
  br label %278

273:                                              ; preds = %192
  %274 = load %struct.scaler_data*, %struct.scaler_data** %5, align 8
  %275 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %274, i32 0, i32 4
  %276 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %275, i32 0, i32 3
  %277 = load i64, i64* %276, align 8
  br label %278

278:                                              ; preds = %273, %268
  %279 = phi i64 [ %272, %268 ], [ %277, %273 ]
  %280 = load i32, i32* %12, align 4
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %287

282:                                              ; preds = %278
  %283 = load %struct.scaler_data*, %struct.scaler_data** %5, align 8
  %284 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %283, i32 0, i32 1
  %285 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %284, i32 0, i32 2
  %286 = load i8*, i8** %285, align 8
  br label %292

287:                                              ; preds = %278
  %288 = load %struct.scaler_data*, %struct.scaler_data** %5, align 8
  %289 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %288, i32 0, i32 1
  %290 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %289, i32 0, i32 0
  %291 = load i8*, i8** %290, align 8
  br label %292

292:                                              ; preds = %287, %282
  %293 = phi i8* [ %286, %282 ], [ %291, %287 ]
  %294 = load i32, i32* %12, align 4
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %296, label %300

296:                                              ; preds = %292
  %297 = load %struct.scaler_data*, %struct.scaler_data** %5, align 8
  %298 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %297, i32 0, i32 2
  %299 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %298, i32 0, i32 2
  br label %304

300:                                              ; preds = %292
  %301 = load %struct.scaler_data*, %struct.scaler_data** %5, align 8
  %302 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %301, i32 0, i32 2
  %303 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %302, i32 0, i32 5
  br label %304

304:                                              ; preds = %300, %296
  %305 = phi i8** [ %299, %296 ], [ %303, %300 ]
  %306 = load %struct.scaler_data*, %struct.scaler_data** %5, align 8
  %307 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %306, i32 0, i32 5
  %308 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %307, i32 0, i32 3
  %309 = load %struct.scaler_data*, %struct.scaler_data** %5, align 8
  %310 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %309, i32 0, i32 5
  %311 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %310, i32 0, i32 2
  %312 = call i32 @adjust_vp_and_init_for_seamless_clip(i32 %263, i32 %264, i32 %265, i64 %279, i8* %293, i8** %305, i32* %308, i32* %311)
  %313 = load i32, i32* %14, align 4
  %314 = load i32, i32* %7, align 4
  %315 = load i32, i32* %9, align 4
  %316 = load i32, i32* %11, align 4
  %317 = sdiv i32 %315, %316
  %318 = load i32, i32* %12, align 4
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %320, label %325

320:                                              ; preds = %304
  %321 = load %struct.scaler_data*, %struct.scaler_data** %5, align 8
  %322 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %321, i32 0, i32 4
  %323 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %322, i32 0, i32 0
  %324 = load i64, i64* %323, align 8
  br label %330

325:                                              ; preds = %304
  %326 = load %struct.scaler_data*, %struct.scaler_data** %5, align 8
  %327 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %326, i32 0, i32 4
  %328 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %327, i32 0, i32 1
  %329 = load i64, i64* %328, align 8
  br label %330

330:                                              ; preds = %325, %320
  %331 = phi i64 [ %324, %320 ], [ %329, %325 ]
  %332 = load i32, i32* %12, align 4
  %333 = icmp ne i32 %332, 0
  br i1 %333, label %334, label %339

334:                                              ; preds = %330
  %335 = load %struct.scaler_data*, %struct.scaler_data** %5, align 8
  %336 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %335, i32 0, i32 1
  %337 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %336, i32 0, i32 3
  %338 = load i8*, i8** %337, align 8
  br label %344

339:                                              ; preds = %330
  %340 = load %struct.scaler_data*, %struct.scaler_data** %5, align 8
  %341 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %340, i32 0, i32 1
  %342 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %341, i32 0, i32 1
  %343 = load i8*, i8** %342, align 8
  br label %344

344:                                              ; preds = %339, %334
  %345 = phi i8* [ %338, %334 ], [ %343, %339 ]
  %346 = load i32, i32* %12, align 4
  %347 = icmp ne i32 %346, 0
  br i1 %347, label %348, label %352

348:                                              ; preds = %344
  %349 = load %struct.scaler_data*, %struct.scaler_data** %5, align 8
  %350 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %349, i32 0, i32 2
  %351 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %350, i32 0, i32 0
  br label %356

352:                                              ; preds = %344
  %353 = load %struct.scaler_data*, %struct.scaler_data** %5, align 8
  %354 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %353, i32 0, i32 2
  %355 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %354, i32 0, i32 4
  br label %356

356:                                              ; preds = %352, %348
  %357 = phi i8** [ %351, %348 ], [ %355, %352 ]
  %358 = load %struct.scaler_data*, %struct.scaler_data** %5, align 8
  %359 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %358, i32 0, i32 3
  %360 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %359, i32 0, i32 3
  %361 = load %struct.scaler_data*, %struct.scaler_data** %5, align 8
  %362 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %361, i32 0, i32 3
  %363 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %362, i32 0, i32 2
  %364 = call i32 @adjust_vp_and_init_for_seamless_clip(i32 %313, i32 %314, i32 %317, i64 %331, i8* %345, i8** %357, i32* %360, i32* %363)
  %365 = load i32, i32* %13, align 4
  %366 = load i32, i32* %8, align 4
  %367 = load i32, i32* %10, align 4
  %368 = load i32, i32* %12, align 4
  %369 = icmp ne i32 %368, 0
  br i1 %369, label %370, label %375

370:                                              ; preds = %356
  %371 = load %struct.scaler_data*, %struct.scaler_data** %5, align 8
  %372 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %371, i32 0, i32 4
  %373 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %372, i32 0, i32 3
  %374 = load i64, i64* %373, align 8
  br label %380

375:                                              ; preds = %356
  %376 = load %struct.scaler_data*, %struct.scaler_data** %5, align 8
  %377 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %376, i32 0, i32 4
  %378 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %377, i32 0, i32 2
  %379 = load i64, i64* %378, align 8
  br label %380

380:                                              ; preds = %375, %370
  %381 = phi i64 [ %374, %370 ], [ %379, %375 ]
  %382 = load i32, i32* %12, align 4
  %383 = icmp ne i32 %382, 0
  br i1 %383, label %384, label %389

384:                                              ; preds = %380
  %385 = load %struct.scaler_data*, %struct.scaler_data** %5, align 8
  %386 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %385, i32 0, i32 1
  %387 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %386, i32 0, i32 0
  %388 = load i8*, i8** %387, align 8
  br label %394

389:                                              ; preds = %380
  %390 = load %struct.scaler_data*, %struct.scaler_data** %5, align 8
  %391 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %390, i32 0, i32 1
  %392 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %391, i32 0, i32 2
  %393 = load i8*, i8** %392, align 8
  br label %394

394:                                              ; preds = %389, %384
  %395 = phi i8* [ %388, %384 ], [ %393, %389 ]
  %396 = load i32, i32* %12, align 4
  %397 = icmp ne i32 %396, 0
  br i1 %397, label %398, label %402

398:                                              ; preds = %394
  %399 = load %struct.scaler_data*, %struct.scaler_data** %5, align 8
  %400 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %399, i32 0, i32 2
  %401 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %400, i32 0, i32 5
  br label %406

402:                                              ; preds = %394
  %403 = load %struct.scaler_data*, %struct.scaler_data** %5, align 8
  %404 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %403, i32 0, i32 2
  %405 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %404, i32 0, i32 2
  br label %406

406:                                              ; preds = %402, %398
  %407 = phi i8** [ %401, %398 ], [ %405, %402 ]
  %408 = load %struct.scaler_data*, %struct.scaler_data** %5, align 8
  %409 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %408, i32 0, i32 5
  %410 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %409, i32 0, i32 1
  %411 = load %struct.scaler_data*, %struct.scaler_data** %5, align 8
  %412 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %411, i32 0, i32 5
  %413 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %412, i32 0, i32 0
  %414 = call i32 @adjust_vp_and_init_for_seamless_clip(i32 %365, i32 %366, i32 %367, i64 %381, i8* %395, i8** %407, i32* %410, i32* %413)
  %415 = load i32, i32* %13, align 4
  %416 = load i32, i32* %8, align 4
  %417 = load i32, i32* %10, align 4
  %418 = load i32, i32* %11, align 4
  %419 = sdiv i32 %417, %418
  %420 = load i32, i32* %12, align 4
  %421 = icmp ne i32 %420, 0
  br i1 %421, label %422, label %427

422:                                              ; preds = %406
  %423 = load %struct.scaler_data*, %struct.scaler_data** %5, align 8
  %424 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %423, i32 0, i32 4
  %425 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %424, i32 0, i32 1
  %426 = load i64, i64* %425, align 8
  br label %432

427:                                              ; preds = %406
  %428 = load %struct.scaler_data*, %struct.scaler_data** %5, align 8
  %429 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %428, i32 0, i32 4
  %430 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %429, i32 0, i32 0
  %431 = load i64, i64* %430, align 8
  br label %432

432:                                              ; preds = %427, %422
  %433 = phi i64 [ %426, %422 ], [ %431, %427 ]
  %434 = load i32, i32* %12, align 4
  %435 = icmp ne i32 %434, 0
  br i1 %435, label %436, label %441

436:                                              ; preds = %432
  %437 = load %struct.scaler_data*, %struct.scaler_data** %5, align 8
  %438 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %437, i32 0, i32 1
  %439 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %438, i32 0, i32 1
  %440 = load i8*, i8** %439, align 8
  br label %446

441:                                              ; preds = %432
  %442 = load %struct.scaler_data*, %struct.scaler_data** %5, align 8
  %443 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %442, i32 0, i32 1
  %444 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %443, i32 0, i32 3
  %445 = load i8*, i8** %444, align 8
  br label %446

446:                                              ; preds = %441, %436
  %447 = phi i8* [ %440, %436 ], [ %445, %441 ]
  %448 = load i32, i32* %12, align 4
  %449 = icmp ne i32 %448, 0
  br i1 %449, label %450, label %454

450:                                              ; preds = %446
  %451 = load %struct.scaler_data*, %struct.scaler_data** %5, align 8
  %452 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %451, i32 0, i32 2
  %453 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %452, i32 0, i32 4
  br label %458

454:                                              ; preds = %446
  %455 = load %struct.scaler_data*, %struct.scaler_data** %5, align 8
  %456 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %455, i32 0, i32 2
  %457 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %456, i32 0, i32 0
  br label %458

458:                                              ; preds = %454, %450
  %459 = phi i8** [ %453, %450 ], [ %457, %454 ]
  %460 = load %struct.scaler_data*, %struct.scaler_data** %5, align 8
  %461 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %460, i32 0, i32 3
  %462 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %461, i32 0, i32 1
  %463 = load %struct.scaler_data*, %struct.scaler_data** %5, align 8
  %464 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %463, i32 0, i32 3
  %465 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %464, i32 0, i32 0
  %466 = call i32 @adjust_vp_and_init_for_seamless_clip(i32 %415, i32 %416, i32 %419, i64 %433, i8* %447, i8** %459, i32* %462, i32* %465)
  %467 = load %struct.scaler_data*, %struct.scaler_data** %5, align 8
  %468 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %467, i32 0, i32 2
  %469 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %468, i32 0, i32 2
  %470 = load i8*, i8** %469, align 8
  %471 = load %struct.scaler_data*, %struct.scaler_data** %5, align 8
  %472 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %471, i32 0, i32 1
  %473 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %472, i32 0, i32 2
  %474 = load i8*, i8** %473, align 8
  %475 = call i8* @dc_fixpt_add(i8* %470, i8* %474)
  %476 = load %struct.scaler_data*, %struct.scaler_data** %5, align 8
  %477 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %476, i32 0, i32 2
  %478 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %477, i32 0, i32 3
  store i8* %475, i8** %478, align 8
  %479 = load %struct.scaler_data*, %struct.scaler_data** %5, align 8
  %480 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %479, i32 0, i32 2
  %481 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %480, i32 0, i32 0
  %482 = load i8*, i8** %481, align 8
  %483 = load %struct.scaler_data*, %struct.scaler_data** %5, align 8
  %484 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %483, i32 0, i32 1
  %485 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %484, i32 0, i32 3
  %486 = load i8*, i8** %485, align 8
  %487 = call i8* @dc_fixpt_add(i8* %482, i8* %486)
  %488 = load %struct.scaler_data*, %struct.scaler_data** %5, align 8
  %489 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %488, i32 0, i32 2
  %490 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %489, i32 0, i32 1
  store i8* %487, i8** %490, align 8
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @get_vp_scan_direction(i32, i32, i32*, i32*, i32*) #2

declare dso_local i32 @swap(i32, i32) #2

declare dso_local i8* @dc_fixpt_truncate(i8*, i32) #2

declare dso_local i8* @dc_fixpt_div_int(i32, i32) #2

declare dso_local i32 @dc_fixpt_add_int(i8*, i64) #2

declare dso_local i8* @dc_fixpt_add(i8*, i8*) #2

declare dso_local i32 @adjust_vp_and_init_for_seamless_clip(i32, i32, i32, i64, i8*, i8**, i32*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
