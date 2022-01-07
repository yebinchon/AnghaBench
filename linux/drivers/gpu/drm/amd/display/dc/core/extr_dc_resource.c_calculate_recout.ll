; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_resource.c_calculate_recout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_resource.c_calculate_recout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pipe_ctx = type { %struct.TYPE_12__, %struct.dc_plane_state*, %struct.TYPE_9__*, %struct.TYPE_8__*, %struct.dc_stream_state* }
%struct.TYPE_12__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64, i32, i64, i32 }
%struct.dc_plane_state = type { %struct.rect }
%struct.rect = type { i64, i32, i64, i32 }
%struct.TYPE_9__ = type { %struct.dc_plane_state* }
%struct.TYPE_8__ = type { %struct.dc_plane_state* }
%struct.dc_stream_state = type { i64, %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { i64, i32, i64, i32 }
%struct.TYPE_10__ = type { i64, i32, i64, i32 }

@VIEW_3D_FORMAT_TOP_AND_BOTTOM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pipe_ctx*)* @calculate_recout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @calculate_recout(%struct.pipe_ctx* %0) #0 {
  %2 = alloca %struct.pipe_ctx*, align 8
  %3 = alloca %struct.dc_plane_state*, align 8
  %4 = alloca %struct.dc_stream_state*, align 8
  %5 = alloca %struct.rect, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.pipe_ctx* %0, %struct.pipe_ctx** %2, align 8
  %9 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %10 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %9, i32 0, i32 1
  %11 = load %struct.dc_plane_state*, %struct.dc_plane_state** %10, align 8
  store %struct.dc_plane_state* %11, %struct.dc_plane_state** %3, align 8
  %12 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %13 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %12, i32 0, i32 4
  %14 = load %struct.dc_stream_state*, %struct.dc_stream_state** %13, align 8
  store %struct.dc_stream_state* %14, %struct.dc_stream_state** %4, align 8
  %15 = load %struct.dc_plane_state*, %struct.dc_plane_state** %3, align 8
  %16 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %15, i32 0, i32 0
  %17 = bitcast %struct.rect* %5 to i8*
  %18 = bitcast %struct.rect* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %17, i8* align 8 %18, i64 32, i1 false)
  %19 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %20 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %19, i32 0, i32 3
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %22 = icmp ne %struct.TYPE_8__* %21, null
  br i1 %22, label %23, label %33

23:                                               ; preds = %1
  %24 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %25 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %24, i32 0, i32 3
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load %struct.dc_plane_state*, %struct.dc_plane_state** %27, align 8
  %29 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %30 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %29, i32 0, i32 1
  %31 = load %struct.dc_plane_state*, %struct.dc_plane_state** %30, align 8
  %32 = icmp eq %struct.dc_plane_state* %28, %31
  br label %33

33:                                               ; preds = %23, %1
  %34 = phi i1 [ false, %1 ], [ %32, %23 ]
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %6, align 4
  %36 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %37 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %36, i32 0, i32 2
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %37, align 8
  %39 = icmp ne %struct.TYPE_9__* %38, null
  br i1 %39, label %40, label %50

40:                                               ; preds = %33
  %41 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %42 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %41, i32 0, i32 2
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = load %struct.dc_plane_state*, %struct.dc_plane_state** %44, align 8
  %46 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %47 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %46, i32 0, i32 1
  %48 = load %struct.dc_plane_state*, %struct.dc_plane_state** %47, align 8
  %49 = icmp eq %struct.dc_plane_state* %45, %48
  br label %50

50:                                               ; preds = %40, %33
  %51 = phi i1 [ false, %33 ], [ %49, %40 ]
  %52 = zext i1 %51 to i32
  store i32 %52, i32* %7, align 4
  %53 = load %struct.dc_stream_state*, %struct.dc_stream_state** %4, align 8
  %54 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @VIEW_3D_FORMAT_TOP_AND_BOTTOM, align 8
  %57 = icmp eq i64 %55, %56
  %58 = zext i1 %57 to i32
  store i32 %58, i32* %8, align 4
  %59 = load %struct.dc_stream_state*, %struct.dc_stream_state** %4, align 8
  %60 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %64 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 0
  store i64 %62, i64* %67, align 8
  %68 = load %struct.dc_stream_state*, %struct.dc_stream_state** %4, align 8
  %69 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = getelementptr inbounds %struct.rect, %struct.rect* %5, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp slt i64 %71, %73
  br i1 %74, label %75, label %102

75:                                               ; preds = %50
  %76 = getelementptr inbounds %struct.rect, %struct.rect* %5, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.dc_stream_state*, %struct.dc_stream_state** %4, align 8
  %79 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = sub nsw i64 %77, %81
  %83 = load %struct.dc_stream_state*, %struct.dc_stream_state** %4, align 8
  %84 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = sext i32 %86 to i64
  %88 = mul nsw i64 %82, %87
  %89 = load %struct.dc_stream_state*, %struct.dc_stream_state** %4, align 8
  %90 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = sext i32 %92 to i64
  %94 = sdiv i64 %88, %93
  %95 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %96 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = add nsw i64 %100, %94
  store i64 %101, i64* %99, align 8
  br label %102

102:                                              ; preds = %75, %50
  %103 = getelementptr inbounds %struct.rect, %struct.rect* %5, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.dc_stream_state*, %struct.dc_stream_state** %4, align 8
  %106 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = mul nsw i32 %104, %108
  %110 = load %struct.dc_stream_state*, %struct.dc_stream_state** %4, align 8
  %111 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = sdiv i32 %109, %113
  %115 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %116 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %118, i32 0, i32 1
  store i32 %114, i32* %119, align 8
  %120 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %121 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = sext i32 %125 to i64
  %127 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %128 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = add nsw i64 %126, %132
  %134 = load %struct.dc_stream_state*, %struct.dc_stream_state** %4, align 8
  %135 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load %struct.dc_stream_state*, %struct.dc_stream_state** %4, align 8
  %139 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 8
  %142 = sext i32 %141 to i64
  %143 = add nsw i64 %137, %142
  %144 = icmp sgt i64 %133, %143
  br i1 %144, label %145, label %169

145:                                              ; preds = %102
  %146 = load %struct.dc_stream_state*, %struct.dc_stream_state** %4, align 8
  %147 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = load %struct.dc_stream_state*, %struct.dc_stream_state** %4, align 8
  %151 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 8
  %154 = sext i32 %153 to i64
  %155 = add nsw i64 %149, %154
  %156 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %157 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = sub nsw i64 %155, %161
  %163 = trunc i64 %162 to i32
  %164 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %165 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %167, i32 0, i32 1
  store i32 %163, i32* %168, align 8
  br label %169

169:                                              ; preds = %145, %102
  %170 = load %struct.dc_stream_state*, %struct.dc_stream_state** %4, align 8
  %171 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %170, i32 0, i32 1
  %172 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %171, i32 0, i32 2
  %173 = load i64, i64* %172, align 8
  %174 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %175 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %177, i32 0, i32 2
  store i64 %173, i64* %178, align 8
  %179 = load %struct.dc_stream_state*, %struct.dc_stream_state** %4, align 8
  %180 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %179, i32 0, i32 2
  %181 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %180, i32 0, i32 2
  %182 = load i64, i64* %181, align 8
  %183 = getelementptr inbounds %struct.rect, %struct.rect* %5, i32 0, i32 2
  %184 = load i64, i64* %183, align 8
  %185 = icmp slt i64 %182, %184
  br i1 %185, label %186, label %213

186:                                              ; preds = %169
  %187 = getelementptr inbounds %struct.rect, %struct.rect* %5, i32 0, i32 2
  %188 = load i64, i64* %187, align 8
  %189 = load %struct.dc_stream_state*, %struct.dc_stream_state** %4, align 8
  %190 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %189, i32 0, i32 2
  %191 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %190, i32 0, i32 2
  %192 = load i64, i64* %191, align 8
  %193 = sub nsw i64 %188, %192
  %194 = load %struct.dc_stream_state*, %struct.dc_stream_state** %4, align 8
  %195 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %195, i32 0, i32 3
  %197 = load i32, i32* %196, align 8
  %198 = sext i32 %197 to i64
  %199 = mul nsw i64 %193, %198
  %200 = load %struct.dc_stream_state*, %struct.dc_stream_state** %4, align 8
  %201 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %200, i32 0, i32 2
  %202 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %201, i32 0, i32 3
  %203 = load i32, i32* %202, align 8
  %204 = sext i32 %203 to i64
  %205 = sdiv i64 %199, %204
  %206 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %207 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %209, i32 0, i32 2
  %211 = load i64, i64* %210, align 8
  %212 = add nsw i64 %211, %205
  store i64 %212, i64* %210, align 8
  br label %213

213:                                              ; preds = %186, %169
  %214 = getelementptr inbounds %struct.rect, %struct.rect* %5, i32 0, i32 3
  %215 = load i32, i32* %214, align 8
  %216 = load %struct.dc_stream_state*, %struct.dc_stream_state** %4, align 8
  %217 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %216, i32 0, i32 1
  %218 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %217, i32 0, i32 3
  %219 = load i32, i32* %218, align 8
  %220 = mul nsw i32 %215, %219
  %221 = load %struct.dc_stream_state*, %struct.dc_stream_state** %4, align 8
  %222 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %221, i32 0, i32 2
  %223 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %222, i32 0, i32 3
  %224 = load i32, i32* %223, align 8
  %225 = sdiv i32 %220, %224
  %226 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %227 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %228, i32 0, i32 0
  %230 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %229, i32 0, i32 3
  store i32 %225, i32* %230, align 8
  %231 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %232 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %232, i32 0, i32 0
  %234 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %234, i32 0, i32 3
  %236 = load i32, i32* %235, align 8
  %237 = sext i32 %236 to i64
  %238 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %239 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %238, i32 0, i32 0
  %240 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %239, i32 0, i32 0
  %241 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %240, i32 0, i32 0
  %242 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %241, i32 0, i32 2
  %243 = load i64, i64* %242, align 8
  %244 = add nsw i64 %237, %243
  %245 = load %struct.dc_stream_state*, %struct.dc_stream_state** %4, align 8
  %246 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %245, i32 0, i32 1
  %247 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %246, i32 0, i32 2
  %248 = load i64, i64* %247, align 8
  %249 = load %struct.dc_stream_state*, %struct.dc_stream_state** %4, align 8
  %250 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %249, i32 0, i32 1
  %251 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %250, i32 0, i32 3
  %252 = load i32, i32* %251, align 8
  %253 = sext i32 %252 to i64
  %254 = add nsw i64 %248, %253
  %255 = icmp sgt i64 %244, %254
  br i1 %255, label %256, label %280

256:                                              ; preds = %213
  %257 = load %struct.dc_stream_state*, %struct.dc_stream_state** %4, align 8
  %258 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %257, i32 0, i32 1
  %259 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %258, i32 0, i32 2
  %260 = load i64, i64* %259, align 8
  %261 = load %struct.dc_stream_state*, %struct.dc_stream_state** %4, align 8
  %262 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %261, i32 0, i32 1
  %263 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %262, i32 0, i32 3
  %264 = load i32, i32* %263, align 8
  %265 = sext i32 %264 to i64
  %266 = add nsw i64 %260, %265
  %267 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %268 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %267, i32 0, i32 0
  %269 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %268, i32 0, i32 0
  %270 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %269, i32 0, i32 0
  %271 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %270, i32 0, i32 2
  %272 = load i64, i64* %271, align 8
  %273 = sub nsw i64 %266, %272
  %274 = trunc i64 %273 to i32
  %275 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %276 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %275, i32 0, i32 0
  %277 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %276, i32 0, i32 0
  %278 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %277, i32 0, i32 0
  %279 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %278, i32 0, i32 3
  store i32 %274, i32* %279, align 8
  br label %280

280:                                              ; preds = %256, %213
  %281 = load i32, i32* %7, align 4
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %283, label %315

283:                                              ; preds = %280
  %284 = load i32, i32* %8, align 4
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %315

286:                                              ; preds = %283
  %287 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %288 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %287, i32 0, i32 0
  %289 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %288, i32 0, i32 0
  %290 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %289, i32 0, i32 0
  %291 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %290, i32 0, i32 3
  %292 = load i32, i32* %291, align 8
  %293 = sdiv i32 %292, 2
  %294 = sext i32 %293 to i64
  %295 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %296 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %295, i32 0, i32 0
  %297 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %296, i32 0, i32 0
  %298 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %297, i32 0, i32 0
  %299 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %298, i32 0, i32 2
  %300 = load i64, i64* %299, align 8
  %301 = add nsw i64 %300, %294
  store i64 %301, i64* %299, align 8
  %302 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %303 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %302, i32 0, i32 0
  %304 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %303, i32 0, i32 0
  %305 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %304, i32 0, i32 0
  %306 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %305, i32 0, i32 3
  %307 = load i32, i32* %306, align 8
  %308 = add nsw i32 %307, 1
  %309 = sdiv i32 %308, 2
  %310 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %311 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %310, i32 0, i32 0
  %312 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %311, i32 0, i32 0
  %313 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %312, i32 0, i32 0
  %314 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %313, i32 0, i32 3
  store i32 %309, i32* %314, align 8
  br label %375

315:                                              ; preds = %283, %280
  %316 = load i32, i32* %6, align 4
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %318, label %329

318:                                              ; preds = %315
  %319 = load i32, i32* %8, align 4
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %321, label %329

321:                                              ; preds = %318
  %322 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %323 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %322, i32 0, i32 0
  %324 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %323, i32 0, i32 0
  %325 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %324, i32 0, i32 0
  %326 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %325, i32 0, i32 3
  %327 = load i32, i32* %326, align 8
  %328 = sdiv i32 %327, 2
  store i32 %328, i32* %326, align 8
  br label %374

329:                                              ; preds = %318, %315
  %330 = load i32, i32* %7, align 4
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %332, label %361

332:                                              ; preds = %329
  %333 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %334 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %333, i32 0, i32 0
  %335 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %334, i32 0, i32 0
  %336 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %335, i32 0, i32 0
  %337 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %336, i32 0, i32 1
  %338 = load i32, i32* %337, align 8
  %339 = sdiv i32 %338, 2
  %340 = sext i32 %339 to i64
  %341 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %342 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %341, i32 0, i32 0
  %343 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %342, i32 0, i32 0
  %344 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %343, i32 0, i32 0
  %345 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %344, i32 0, i32 0
  %346 = load i64, i64* %345, align 8
  %347 = add nsw i64 %346, %340
  store i64 %347, i64* %345, align 8
  %348 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %349 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %348, i32 0, i32 0
  %350 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %349, i32 0, i32 0
  %351 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %350, i32 0, i32 0
  %352 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %351, i32 0, i32 1
  %353 = load i32, i32* %352, align 8
  %354 = add nsw i32 %353, 1
  %355 = sdiv i32 %354, 2
  %356 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %357 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %356, i32 0, i32 0
  %358 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %357, i32 0, i32 0
  %359 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %358, i32 0, i32 0
  %360 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %359, i32 0, i32 1
  store i32 %355, i32* %360, align 8
  br label %373

361:                                              ; preds = %329
  %362 = load i32, i32* %6, align 4
  %363 = icmp ne i32 %362, 0
  br i1 %363, label %364, label %372

364:                                              ; preds = %361
  %365 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %366 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %365, i32 0, i32 0
  %367 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %366, i32 0, i32 0
  %368 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %367, i32 0, i32 0
  %369 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %368, i32 0, i32 1
  %370 = load i32, i32* %369, align 8
  %371 = sdiv i32 %370, 2
  store i32 %371, i32* %369, align 8
  br label %372

372:                                              ; preds = %364, %361
  br label %373

373:                                              ; preds = %372, %332
  br label %374

374:                                              ; preds = %373, %321
  br label %375

375:                                              ; preds = %374, %286
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
