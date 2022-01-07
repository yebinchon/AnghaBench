; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_render_cl.c_vc4_create_rcl_bo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_render_cl.c_vc4_create_rcl_bo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.vc4_exec_info = type { i32, i32, i32, %struct.drm_vc4_submit_cl* }
%struct.drm_vc4_submit_cl = type { i64, i32, i32, i32, i32, i32, %struct.TYPE_12__, i32, i32, i32, i64, i64*, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_12__ = type { i32, i64 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.vc4_rcl_setup = type { i32, %struct.TYPE_15__*, %struct.TYPE_11__*, i32*, i32*, i32*, i64, i64 }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_13__ = type { %struct.TYPE_15__ }
%struct.TYPE_14__ = type { i32 }

@VC4_SUBMIT_CL_FIXED_RCL_ORDER = common dso_local global i32 0, align 4
@VC4_SUBMIT_CL_RCL_ORDER_INCREASING_X = common dso_local global i32 0, align 4
@VC4_SUBMIT_CL_RCL_ORDER_INCREASING_Y = common dso_local global i32 0, align 4
@VC4_PACKET_TILE_RENDERING_MODE_CONFIG_SIZE = common dso_local global i32 0, align 4
@VC4_PACKET_TILE_COORDINATES_SIZE = common dso_local global i32 0, align 4
@VC4_SUBMIT_CL_USE_CLEAR_COLOR = common dso_local global i32 0, align 4
@VC4_PACKET_CLEAR_COLORS_SIZE = common dso_local global i32 0, align 4
@VC4_PACKET_STORE_TILE_BUFFER_GENERAL_SIZE = common dso_local global i32 0, align 4
@VC4_SUBMIT_RCL_SURFACE_READ_IS_FULL_RES = common dso_local global i32 0, align 4
@VC4_PACKET_LOAD_FULL_RES_TILE_BUFFER_SIZE = common dso_local global i64 0, align 8
@VC4_PACKET_LOAD_TILE_BUFFER_GENERAL_SIZE = common dso_local global i64 0, align 8
@VC4_PACKET_WAIT_ON_SEMAPHORE_SIZE = common dso_local global i32 0, align 4
@VC4_PACKET_BRANCH_TO_SUB_LIST_SIZE = common dso_local global i64 0, align 8
@VC4_PACKET_STORE_FULL_RES_TILE_BUFFER_SIZE = common dso_local global i64 0, align 8
@VC4_PACKET_STORE_MS_TILE_BUFFER_SIZE = common dso_local global i64 0, align 8
@VC4_BO_TYPE_RCL = common dso_local global i32 0, align 4
@VC4_PACKET_CLEAR_COLORS = common dso_local global i32 0, align 4
@VC4_PACKET_STORE_TILE_BUFFER_GENERAL = common dso_local global i32 0, align 4
@VC4_LOADSTORE_TILE_BUFFER_NONE = common dso_local global i32 0, align 4
@VC4_PACKET_TILE_RENDERING_MODE_CONFIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, %struct.vc4_exec_info*, %struct.vc4_rcl_setup*)* @vc4_create_rcl_bo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vc4_create_rcl_bo(%struct.drm_device* %0, %struct.vc4_exec_info* %1, %struct.vc4_rcl_setup* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.vc4_exec_info*, align 8
  %7 = alloca %struct.vc4_rcl_setup*, align 8
  %8 = alloca %struct.drm_vc4_submit_cl*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store %struct.vc4_exec_info* %1, %struct.vc4_exec_info** %6, align 8
  store %struct.vc4_rcl_setup* %2, %struct.vc4_rcl_setup** %7, align 8
  %26 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %6, align 8
  %27 = getelementptr inbounds %struct.vc4_exec_info, %struct.vc4_exec_info* %26, i32 0, i32 3
  %28 = load %struct.drm_vc4_submit_cl*, %struct.drm_vc4_submit_cl** %27, align 8
  store %struct.drm_vc4_submit_cl* %28, %struct.drm_vc4_submit_cl** %8, align 8
  %29 = load %struct.drm_vc4_submit_cl*, %struct.drm_vc4_submit_cl** %8, align 8
  %30 = getelementptr inbounds %struct.drm_vc4_submit_cl, %struct.drm_vc4_submit_cl* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %9, align 4
  %34 = load %struct.drm_vc4_submit_cl*, %struct.drm_vc4_submit_cl** %8, align 8
  %35 = getelementptr inbounds %struct.drm_vc4_submit_cl, %struct.drm_vc4_submit_cl* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %10, align 4
  %37 = load %struct.drm_vc4_submit_cl*, %struct.drm_vc4_submit_cl** %8, align 8
  %38 = getelementptr inbounds %struct.drm_vc4_submit_cl, %struct.drm_vc4_submit_cl* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %11, align 4
  %40 = load %struct.drm_vc4_submit_cl*, %struct.drm_vc4_submit_cl** %8, align 8
  %41 = getelementptr inbounds %struct.drm_vc4_submit_cl, %struct.drm_vc4_submit_cl* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  store i32 %42, i32* %12, align 4
  %43 = load %struct.drm_vc4_submit_cl*, %struct.drm_vc4_submit_cl** %8, align 8
  %44 = getelementptr inbounds %struct.drm_vc4_submit_cl, %struct.drm_vc4_submit_cl* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %13, align 4
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* %10, align 4
  %48 = sub nsw i32 %46, %47
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %14, align 4
  %50 = load i32, i32* %13, align 4
  %51 = load i32, i32* %11, align 4
  %52 = sub nsw i32 %50, %51
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %15, align 4
  store i32 1, i32* %20, align 4
  store i32 1, i32* %21, align 4
  %54 = load %struct.drm_vc4_submit_cl*, %struct.drm_vc4_submit_cl** %8, align 8
  %55 = getelementptr inbounds %struct.drm_vc4_submit_cl, %struct.drm_vc4_submit_cl* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @VC4_SUBMIT_CL_FIXED_RCL_ORDER, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %77

60:                                               ; preds = %3
  %61 = load %struct.drm_vc4_submit_cl*, %struct.drm_vc4_submit_cl** %8, align 8
  %62 = getelementptr inbounds %struct.drm_vc4_submit_cl, %struct.drm_vc4_submit_cl* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @VC4_SUBMIT_CL_RCL_ORDER_INCREASING_X, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %60
  store i32 0, i32* %20, align 4
  br label %68

68:                                               ; preds = %67, %60
  %69 = load %struct.drm_vc4_submit_cl*, %struct.drm_vc4_submit_cl** %8, align 8
  %70 = getelementptr inbounds %struct.drm_vc4_submit_cl, %struct.drm_vc4_submit_cl* %69, i32 0, i32 5
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @VC4_SUBMIT_CL_RCL_ORDER_INCREASING_Y, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %68
  store i32 0, i32* %21, align 4
  br label %76

76:                                               ; preds = %75, %68
  br label %77

77:                                               ; preds = %76, %3
  %78 = load i32, i32* @VC4_PACKET_TILE_RENDERING_MODE_CONFIG_SIZE, align 4
  store i32 %78, i32* %18, align 4
  %79 = load i32, i32* @VC4_PACKET_TILE_COORDINATES_SIZE, align 4
  store i32 %79, i32* %19, align 4
  %80 = load %struct.drm_vc4_submit_cl*, %struct.drm_vc4_submit_cl** %8, align 8
  %81 = getelementptr inbounds %struct.drm_vc4_submit_cl, %struct.drm_vc4_submit_cl* %80, i32 0, i32 5
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @VC4_SUBMIT_CL_USE_CLEAR_COLOR, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %94

86:                                               ; preds = %77
  %87 = load i32, i32* @VC4_PACKET_CLEAR_COLORS_SIZE, align 4
  %88 = load i32, i32* @VC4_PACKET_TILE_COORDINATES_SIZE, align 4
  %89 = add nsw i32 %87, %88
  %90 = load i32, i32* @VC4_PACKET_STORE_TILE_BUFFER_GENERAL_SIZE, align 4
  %91 = add nsw i32 %89, %90
  %92 = load i32, i32* %18, align 4
  %93 = add nsw i32 %92, %91
  store i32 %93, i32* %18, align 4
  br label %94

94:                                               ; preds = %86, %77
  %95 = load %struct.vc4_rcl_setup*, %struct.vc4_rcl_setup** %7, align 8
  %96 = getelementptr inbounds %struct.vc4_rcl_setup, %struct.vc4_rcl_setup* %95, i32 0, i32 6
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %120

99:                                               ; preds = %94
  %100 = load %struct.drm_vc4_submit_cl*, %struct.drm_vc4_submit_cl** %8, align 8
  %101 = getelementptr inbounds %struct.drm_vc4_submit_cl, %struct.drm_vc4_submit_cl* %100, i32 0, i32 13
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @VC4_SUBMIT_RCL_SURFACE_READ_IS_FULL_RES, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %99
  %108 = load i64, i64* @VC4_PACKET_LOAD_FULL_RES_TILE_BUFFER_SIZE, align 8
  %109 = load i32, i32* %19, align 4
  %110 = sext i32 %109 to i64
  %111 = add nsw i64 %110, %108
  %112 = trunc i64 %111 to i32
  store i32 %112, i32* %19, align 4
  br label %119

113:                                              ; preds = %99
  %114 = load i64, i64* @VC4_PACKET_LOAD_TILE_BUFFER_GENERAL_SIZE, align 8
  %115 = load i32, i32* %19, align 4
  %116 = sext i32 %115 to i64
  %117 = add nsw i64 %116, %114
  %118 = trunc i64 %117 to i32
  store i32 %118, i32* %19, align 4
  br label %119

119:                                              ; preds = %113, %107
  br label %120

120:                                              ; preds = %119, %94
  %121 = load %struct.vc4_rcl_setup*, %struct.vc4_rcl_setup** %7, align 8
  %122 = getelementptr inbounds %struct.vc4_rcl_setup, %struct.vc4_rcl_setup* %121, i32 0, i32 7
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %158

125:                                              ; preds = %120
  %126 = load %struct.vc4_rcl_setup*, %struct.vc4_rcl_setup** %7, align 8
  %127 = getelementptr inbounds %struct.vc4_rcl_setup, %struct.vc4_rcl_setup* %126, i32 0, i32 6
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %137

130:                                              ; preds = %125
  %131 = load i32, i32* @VC4_PACKET_TILE_COORDINATES_SIZE, align 4
  %132 = load i32, i32* %19, align 4
  %133 = add nsw i32 %132, %131
  store i32 %133, i32* %19, align 4
  %134 = load i32, i32* @VC4_PACKET_STORE_TILE_BUFFER_GENERAL_SIZE, align 4
  %135 = load i32, i32* %19, align 4
  %136 = add nsw i32 %135, %134
  store i32 %136, i32* %19, align 4
  br label %137

137:                                              ; preds = %130, %125
  %138 = load %struct.drm_vc4_submit_cl*, %struct.drm_vc4_submit_cl** %8, align 8
  %139 = getelementptr inbounds %struct.drm_vc4_submit_cl, %struct.drm_vc4_submit_cl* %138, i32 0, i32 12
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* @VC4_SUBMIT_RCL_SURFACE_READ_IS_FULL_RES, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %151

145:                                              ; preds = %137
  %146 = load i64, i64* @VC4_PACKET_LOAD_FULL_RES_TILE_BUFFER_SIZE, align 8
  %147 = load i32, i32* %19, align 4
  %148 = sext i32 %147 to i64
  %149 = add nsw i64 %148, %146
  %150 = trunc i64 %149 to i32
  store i32 %150, i32* %19, align 4
  br label %157

151:                                              ; preds = %137
  %152 = load i64, i64* @VC4_PACKET_LOAD_TILE_BUFFER_GENERAL_SIZE, align 8
  %153 = load i32, i32* %19, align 4
  %154 = sext i32 %153 to i64
  %155 = add nsw i64 %154, %152
  %156 = trunc i64 %155 to i32
  store i32 %156, i32* %19, align 4
  br label %157

157:                                              ; preds = %151, %145
  br label %158

158:                                              ; preds = %157, %120
  %159 = load i32, i32* %9, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %170

161:                                              ; preds = %158
  %162 = load i32, i32* @VC4_PACKET_WAIT_ON_SEMAPHORE_SIZE, align 4
  %163 = load i32, i32* %18, align 4
  %164 = add nsw i32 %163, %162
  store i32 %164, i32* %18, align 4
  %165 = load i64, i64* @VC4_PACKET_BRANCH_TO_SUB_LIST_SIZE, align 8
  %166 = load i32, i32* %19, align 4
  %167 = sext i32 %166 to i64
  %168 = add nsw i64 %167, %165
  %169 = trunc i64 %168 to i32
  store i32 %169, i32* %19, align 4
  br label %170

170:                                              ; preds = %161, %158
  %171 = load %struct.vc4_rcl_setup*, %struct.vc4_rcl_setup** %7, align 8
  %172 = getelementptr inbounds %struct.vc4_rcl_setup, %struct.vc4_rcl_setup* %171, i32 0, i32 5
  %173 = load i32*, i32** %172, align 8
  %174 = icmp ne i32* %173, null
  br i1 %174, label %175, label %181

175:                                              ; preds = %170
  %176 = load i64, i64* @VC4_PACKET_STORE_FULL_RES_TILE_BUFFER_SIZE, align 8
  %177 = load i32, i32* %19, align 4
  %178 = sext i32 %177 to i64
  %179 = add nsw i64 %178, %176
  %180 = trunc i64 %179 to i32
  store i32 %180, i32* %19, align 4
  br label %181

181:                                              ; preds = %175, %170
  %182 = load %struct.vc4_rcl_setup*, %struct.vc4_rcl_setup** %7, align 8
  %183 = getelementptr inbounds %struct.vc4_rcl_setup, %struct.vc4_rcl_setup* %182, i32 0, i32 4
  %184 = load i32*, i32** %183, align 8
  %185 = icmp ne i32* %184, null
  br i1 %185, label %186, label %192

186:                                              ; preds = %181
  %187 = load i64, i64* @VC4_PACKET_STORE_FULL_RES_TILE_BUFFER_SIZE, align 8
  %188 = load i32, i32* %19, align 4
  %189 = sext i32 %188 to i64
  %190 = add nsw i64 %189, %187
  %191 = trunc i64 %190 to i32
  store i32 %191, i32* %19, align 4
  br label %192

192:                                              ; preds = %186, %181
  %193 = load %struct.vc4_rcl_setup*, %struct.vc4_rcl_setup** %7, align 8
  %194 = getelementptr inbounds %struct.vc4_rcl_setup, %struct.vc4_rcl_setup* %193, i32 0, i32 3
  %195 = load i32*, i32** %194, align 8
  %196 = icmp ne i32* %195, null
  br i1 %196, label %197, label %201

197:                                              ; preds = %192
  %198 = load i32, i32* @VC4_PACKET_STORE_TILE_BUFFER_GENERAL_SIZE, align 4
  %199 = load i32, i32* %19, align 4
  %200 = add nsw i32 %199, %198
  store i32 %200, i32* %19, align 4
  br label %201

201:                                              ; preds = %197, %192
  %202 = load %struct.vc4_rcl_setup*, %struct.vc4_rcl_setup** %7, align 8
  %203 = getelementptr inbounds %struct.vc4_rcl_setup, %struct.vc4_rcl_setup* %202, i32 0, i32 2
  %204 = load %struct.TYPE_11__*, %struct.TYPE_11__** %203, align 8
  %205 = icmp ne %struct.TYPE_11__* %204, null
  br i1 %205, label %206, label %212

206:                                              ; preds = %201
  %207 = load i64, i64* @VC4_PACKET_STORE_MS_TILE_BUFFER_SIZE, align 8
  %208 = load i32, i32* %19, align 4
  %209 = sext i32 %208 to i64
  %210 = add nsw i64 %209, %207
  %211 = trunc i64 %210 to i32
  store i32 %211, i32* %19, align 4
  br label %212

212:                                              ; preds = %206, %201
  %213 = load i32, i32* @VC4_PACKET_TILE_COORDINATES_SIZE, align 4
  %214 = load %struct.vc4_rcl_setup*, %struct.vc4_rcl_setup** %7, align 8
  %215 = getelementptr inbounds %struct.vc4_rcl_setup, %struct.vc4_rcl_setup* %214, i32 0, i32 5
  %216 = load i32*, i32** %215, align 8
  %217 = icmp ne i32* %216, null
  %218 = zext i1 %217 to i32
  %219 = load %struct.vc4_rcl_setup*, %struct.vc4_rcl_setup** %7, align 8
  %220 = getelementptr inbounds %struct.vc4_rcl_setup, %struct.vc4_rcl_setup* %219, i32 0, i32 4
  %221 = load i32*, i32** %220, align 8
  %222 = icmp ne i32* %221, null
  %223 = zext i1 %222 to i32
  %224 = add nsw i32 %218, %223
  %225 = load %struct.vc4_rcl_setup*, %struct.vc4_rcl_setup** %7, align 8
  %226 = getelementptr inbounds %struct.vc4_rcl_setup, %struct.vc4_rcl_setup* %225, i32 0, i32 2
  %227 = load %struct.TYPE_11__*, %struct.TYPE_11__** %226, align 8
  %228 = icmp ne %struct.TYPE_11__* %227, null
  %229 = zext i1 %228 to i32
  %230 = add nsw i32 %224, %229
  %231 = load %struct.vc4_rcl_setup*, %struct.vc4_rcl_setup** %7, align 8
  %232 = getelementptr inbounds %struct.vc4_rcl_setup, %struct.vc4_rcl_setup* %231, i32 0, i32 3
  %233 = load i32*, i32** %232, align 8
  %234 = icmp ne i32* %233, null
  %235 = zext i1 %234 to i32
  %236 = add nsw i32 %230, %235
  %237 = sub nsw i32 %236, 1
  %238 = mul nsw i32 %213, %237
  %239 = load i32, i32* %19, align 4
  %240 = add nsw i32 %239, %238
  store i32 %240, i32* %19, align 4
  %241 = load i32, i32* %14, align 4
  %242 = load i32, i32* %15, align 4
  %243 = mul nsw i32 %241, %242
  %244 = load i32, i32* %19, align 4
  %245 = mul nsw i32 %243, %244
  %246 = load i32, i32* %18, align 4
  %247 = add nsw i32 %246, %245
  store i32 %247, i32* %18, align 4
  %248 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %249 = load i32, i32* %18, align 4
  %250 = load i32, i32* @VC4_BO_TYPE_RCL, align 4
  %251 = call %struct.TYPE_13__* @vc4_bo_create(%struct.drm_device* %248, i32 %249, i32 1, i32 %250)
  %252 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %251, i32 0, i32 0
  %253 = load %struct.vc4_rcl_setup*, %struct.vc4_rcl_setup** %7, align 8
  %254 = getelementptr inbounds %struct.vc4_rcl_setup, %struct.vc4_rcl_setup* %253, i32 0, i32 1
  store %struct.TYPE_15__* %252, %struct.TYPE_15__** %254, align 8
  %255 = load %struct.vc4_rcl_setup*, %struct.vc4_rcl_setup** %7, align 8
  %256 = getelementptr inbounds %struct.vc4_rcl_setup, %struct.vc4_rcl_setup* %255, i32 0, i32 1
  %257 = load %struct.TYPE_15__*, %struct.TYPE_15__** %256, align 8
  %258 = call i64 @IS_ERR(%struct.TYPE_15__* %257)
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %260, label %265

260:                                              ; preds = %212
  %261 = load %struct.vc4_rcl_setup*, %struct.vc4_rcl_setup** %7, align 8
  %262 = getelementptr inbounds %struct.vc4_rcl_setup, %struct.vc4_rcl_setup* %261, i32 0, i32 1
  %263 = load %struct.TYPE_15__*, %struct.TYPE_15__** %262, align 8
  %264 = call i32 @PTR_ERR(%struct.TYPE_15__* %263)
  store i32 %264, i32* %4, align 4
  br label %453

265:                                              ; preds = %212
  %266 = load %struct.vc4_rcl_setup*, %struct.vc4_rcl_setup** %7, align 8
  %267 = getelementptr inbounds %struct.vc4_rcl_setup, %struct.vc4_rcl_setup* %266, i32 0, i32 1
  %268 = load %struct.TYPE_15__*, %struct.TYPE_15__** %267, align 8
  %269 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %268, i32 0, i32 1
  %270 = call %struct.TYPE_14__* @to_vc4_bo(i32* %269)
  %271 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %270, i32 0, i32 0
  %272 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %6, align 8
  %273 = getelementptr inbounds %struct.vc4_exec_info, %struct.vc4_exec_info* %272, i32 0, i32 2
  %274 = call i32 @list_add_tail(i32* %271, i32* %273)
  %275 = load %struct.drm_vc4_submit_cl*, %struct.drm_vc4_submit_cl** %8, align 8
  %276 = getelementptr inbounds %struct.drm_vc4_submit_cl, %struct.drm_vc4_submit_cl* %275, i32 0, i32 5
  %277 = load i32, i32* %276, align 8
  %278 = load i32, i32* @VC4_SUBMIT_CL_USE_CLEAR_COLOR, align 4
  %279 = and i32 %277, %278
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %319

281:                                              ; preds = %265
  %282 = load %struct.vc4_rcl_setup*, %struct.vc4_rcl_setup** %7, align 8
  %283 = load i32, i32* @VC4_PACKET_CLEAR_COLORS, align 4
  %284 = call i32 @rcl_u8(%struct.vc4_rcl_setup* %282, i32 %283)
  %285 = load %struct.vc4_rcl_setup*, %struct.vc4_rcl_setup** %7, align 8
  %286 = load %struct.drm_vc4_submit_cl*, %struct.drm_vc4_submit_cl** %8, align 8
  %287 = getelementptr inbounds %struct.drm_vc4_submit_cl, %struct.drm_vc4_submit_cl* %286, i32 0, i32 11
  %288 = load i64*, i64** %287, align 8
  %289 = getelementptr inbounds i64, i64* %288, i64 0
  %290 = load i64, i64* %289, align 8
  %291 = call i32 @rcl_u32(%struct.vc4_rcl_setup* %285, i64 %290)
  %292 = load %struct.vc4_rcl_setup*, %struct.vc4_rcl_setup** %7, align 8
  %293 = load %struct.drm_vc4_submit_cl*, %struct.drm_vc4_submit_cl** %8, align 8
  %294 = getelementptr inbounds %struct.drm_vc4_submit_cl, %struct.drm_vc4_submit_cl* %293, i32 0, i32 11
  %295 = load i64*, i64** %294, align 8
  %296 = getelementptr inbounds i64, i64* %295, i64 1
  %297 = load i64, i64* %296, align 8
  %298 = call i32 @rcl_u32(%struct.vc4_rcl_setup* %292, i64 %297)
  %299 = load %struct.vc4_rcl_setup*, %struct.vc4_rcl_setup** %7, align 8
  %300 = load %struct.drm_vc4_submit_cl*, %struct.drm_vc4_submit_cl** %8, align 8
  %301 = getelementptr inbounds %struct.drm_vc4_submit_cl, %struct.drm_vc4_submit_cl* %300, i32 0, i32 10
  %302 = load i64, i64* %301, align 8
  %303 = call i32 @rcl_u32(%struct.vc4_rcl_setup* %299, i64 %302)
  %304 = load %struct.vc4_rcl_setup*, %struct.vc4_rcl_setup** %7, align 8
  %305 = load %struct.drm_vc4_submit_cl*, %struct.drm_vc4_submit_cl** %8, align 8
  %306 = getelementptr inbounds %struct.drm_vc4_submit_cl, %struct.drm_vc4_submit_cl* %305, i32 0, i32 9
  %307 = load i32, i32* %306, align 8
  %308 = call i32 @rcl_u8(%struct.vc4_rcl_setup* %304, i32 %307)
  %309 = load %struct.vc4_rcl_setup*, %struct.vc4_rcl_setup** %7, align 8
  %310 = call i32 @vc4_tile_coordinates(%struct.vc4_rcl_setup* %309, i32 0, i32 0)
  %311 = load %struct.vc4_rcl_setup*, %struct.vc4_rcl_setup** %7, align 8
  %312 = load i32, i32* @VC4_PACKET_STORE_TILE_BUFFER_GENERAL, align 4
  %313 = call i32 @rcl_u8(%struct.vc4_rcl_setup* %311, i32 %312)
  %314 = load %struct.vc4_rcl_setup*, %struct.vc4_rcl_setup** %7, align 8
  %315 = load i32, i32* @VC4_LOADSTORE_TILE_BUFFER_NONE, align 4
  %316 = call i32 @rcl_u16(%struct.vc4_rcl_setup* %314, i32 %315)
  %317 = load %struct.vc4_rcl_setup*, %struct.vc4_rcl_setup** %7, align 8
  %318 = call i32 @rcl_u32(%struct.vc4_rcl_setup* %317, i64 0)
  br label %319

319:                                              ; preds = %281, %265
  %320 = load %struct.vc4_rcl_setup*, %struct.vc4_rcl_setup** %7, align 8
  %321 = load i32, i32* @VC4_PACKET_TILE_RENDERING_MODE_CONFIG, align 4
  %322 = call i32 @rcl_u8(%struct.vc4_rcl_setup* %320, i32 %321)
  %323 = load %struct.vc4_rcl_setup*, %struct.vc4_rcl_setup** %7, align 8
  %324 = load %struct.vc4_rcl_setup*, %struct.vc4_rcl_setup** %7, align 8
  %325 = getelementptr inbounds %struct.vc4_rcl_setup, %struct.vc4_rcl_setup* %324, i32 0, i32 2
  %326 = load %struct.TYPE_11__*, %struct.TYPE_11__** %325, align 8
  %327 = icmp ne %struct.TYPE_11__* %326, null
  br i1 %327, label %328, label %339

328:                                              ; preds = %319
  %329 = load %struct.vc4_rcl_setup*, %struct.vc4_rcl_setup** %7, align 8
  %330 = getelementptr inbounds %struct.vc4_rcl_setup, %struct.vc4_rcl_setup* %329, i32 0, i32 2
  %331 = load %struct.TYPE_11__*, %struct.TYPE_11__** %330, align 8
  %332 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %331, i32 0, i32 0
  %333 = load i64, i64* %332, align 8
  %334 = load %struct.drm_vc4_submit_cl*, %struct.drm_vc4_submit_cl** %8, align 8
  %335 = getelementptr inbounds %struct.drm_vc4_submit_cl, %struct.drm_vc4_submit_cl* %334, i32 0, i32 6
  %336 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %335, i32 0, i32 1
  %337 = load i64, i64* %336, align 8
  %338 = add nsw i64 %333, %337
  br label %340

339:                                              ; preds = %319
  br label %340

340:                                              ; preds = %339, %328
  %341 = phi i64 [ %338, %328 ], [ 0, %339 ]
  %342 = call i32 @rcl_u32(%struct.vc4_rcl_setup* %323, i64 %341)
  %343 = load %struct.vc4_rcl_setup*, %struct.vc4_rcl_setup** %7, align 8
  %344 = load %struct.drm_vc4_submit_cl*, %struct.drm_vc4_submit_cl** %8, align 8
  %345 = getelementptr inbounds %struct.drm_vc4_submit_cl, %struct.drm_vc4_submit_cl* %344, i32 0, i32 8
  %346 = load i32, i32* %345, align 4
  %347 = call i32 @rcl_u16(%struct.vc4_rcl_setup* %343, i32 %346)
  %348 = load %struct.vc4_rcl_setup*, %struct.vc4_rcl_setup** %7, align 8
  %349 = load %struct.drm_vc4_submit_cl*, %struct.drm_vc4_submit_cl** %8, align 8
  %350 = getelementptr inbounds %struct.drm_vc4_submit_cl, %struct.drm_vc4_submit_cl* %349, i32 0, i32 7
  %351 = load i32, i32* %350, align 8
  %352 = call i32 @rcl_u16(%struct.vc4_rcl_setup* %348, i32 %351)
  %353 = load %struct.vc4_rcl_setup*, %struct.vc4_rcl_setup** %7, align 8
  %354 = load %struct.drm_vc4_submit_cl*, %struct.drm_vc4_submit_cl** %8, align 8
  %355 = getelementptr inbounds %struct.drm_vc4_submit_cl, %struct.drm_vc4_submit_cl* %354, i32 0, i32 6
  %356 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %355, i32 0, i32 0
  %357 = load i32, i32* %356, align 8
  %358 = call i32 @rcl_u16(%struct.vc4_rcl_setup* %353, i32 %357)
  store i32 0, i32* %17, align 4
  br label %359

359:                                              ; preds = %424, %340
  %360 = load i32, i32* %17, align 4
  %361 = load i32, i32* %15, align 4
  %362 = icmp slt i32 %360, %361
  br i1 %362, label %363, label %427

363:                                              ; preds = %359
  %364 = load i32, i32* %21, align 4
  %365 = icmp ne i32 %364, 0
  br i1 %365, label %366, label %370

366:                                              ; preds = %363
  %367 = load i32, i32* %11, align 4
  %368 = load i32, i32* %17, align 4
  %369 = add nsw i32 %367, %368
  br label %374

370:                                              ; preds = %363
  %371 = load i32, i32* %13, align 4
  %372 = load i32, i32* %17, align 4
  %373 = sub nsw i32 %371, %372
  br label %374

374:                                              ; preds = %370, %366
  %375 = phi i32 [ %369, %366 ], [ %373, %370 ]
  store i32 %375, i32* %22, align 4
  store i32 0, i32* %16, align 4
  br label %376

376:                                              ; preds = %420, %374
  %377 = load i32, i32* %16, align 4
  %378 = load i32, i32* %14, align 4
  %379 = icmp slt i32 %377, %378
  br i1 %379, label %380, label %423

380:                                              ; preds = %376
  %381 = load i32, i32* %20, align 4
  %382 = icmp ne i32 %381, 0
  br i1 %382, label %383, label %387

383:                                              ; preds = %380
  %384 = load i32, i32* %10, align 4
  %385 = load i32, i32* %16, align 4
  %386 = add nsw i32 %384, %385
  br label %391

387:                                              ; preds = %380
  %388 = load i32, i32* %12, align 4
  %389 = load i32, i32* %16, align 4
  %390 = sub nsw i32 %388, %389
  br label %391

391:                                              ; preds = %387, %383
  %392 = phi i32 [ %386, %383 ], [ %390, %387 ]
  store i32 %392, i32* %23, align 4
  %393 = load i32, i32* %16, align 4
  %394 = icmp eq i32 %393, 0
  br i1 %394, label %395, label %398

395:                                              ; preds = %391
  %396 = load i32, i32* %17, align 4
  %397 = icmp eq i32 %396, 0
  br label %398

398:                                              ; preds = %395, %391
  %399 = phi i1 [ false, %391 ], [ %397, %395 ]
  %400 = zext i1 %399 to i32
  store i32 %400, i32* %24, align 4
  %401 = load i32, i32* %16, align 4
  %402 = load i32, i32* %14, align 4
  %403 = sub nsw i32 %402, 1
  %404 = icmp eq i32 %401, %403
  br i1 %404, label %405, label %410

405:                                              ; preds = %398
  %406 = load i32, i32* %17, align 4
  %407 = load i32, i32* %15, align 4
  %408 = sub nsw i32 %407, 1
  %409 = icmp eq i32 %406, %408
  br label %410

410:                                              ; preds = %405, %398
  %411 = phi i1 [ false, %398 ], [ %409, %405 ]
  %412 = zext i1 %411 to i32
  store i32 %412, i32* %25, align 4
  %413 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %6, align 8
  %414 = load %struct.vc4_rcl_setup*, %struct.vc4_rcl_setup** %7, align 8
  %415 = load i32, i32* %23, align 4
  %416 = load i32, i32* %22, align 4
  %417 = load i32, i32* %24, align 4
  %418 = load i32, i32* %25, align 4
  %419 = call i32 @emit_tile(%struct.vc4_exec_info* %413, %struct.vc4_rcl_setup* %414, i32 %415, i32 %416, i32 %417, i32 %418)
  br label %420

420:                                              ; preds = %410
  %421 = load i32, i32* %16, align 4
  %422 = add nsw i32 %421, 1
  store i32 %422, i32* %16, align 4
  br label %376

423:                                              ; preds = %376
  br label %424

424:                                              ; preds = %423
  %425 = load i32, i32* %17, align 4
  %426 = add nsw i32 %425, 1
  store i32 %426, i32* %17, align 4
  br label %359

427:                                              ; preds = %359
  %428 = load %struct.vc4_rcl_setup*, %struct.vc4_rcl_setup** %7, align 8
  %429 = getelementptr inbounds %struct.vc4_rcl_setup, %struct.vc4_rcl_setup* %428, i32 0, i32 0
  %430 = load i32, i32* %429, align 8
  %431 = load i32, i32* %18, align 4
  %432 = icmp ne i32 %430, %431
  %433 = zext i1 %432 to i32
  %434 = call i32 @BUG_ON(i32 %433)
  %435 = load %struct.vc4_rcl_setup*, %struct.vc4_rcl_setup** %7, align 8
  %436 = getelementptr inbounds %struct.vc4_rcl_setup, %struct.vc4_rcl_setup* %435, i32 0, i32 1
  %437 = load %struct.TYPE_15__*, %struct.TYPE_15__** %436, align 8
  %438 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %437, i32 0, i32 0
  %439 = load i32, i32* %438, align 4
  %440 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %6, align 8
  %441 = getelementptr inbounds %struct.vc4_exec_info, %struct.vc4_exec_info* %440, i32 0, i32 0
  store i32 %439, i32* %441, align 8
  %442 = load %struct.vc4_rcl_setup*, %struct.vc4_rcl_setup** %7, align 8
  %443 = getelementptr inbounds %struct.vc4_rcl_setup, %struct.vc4_rcl_setup* %442, i32 0, i32 1
  %444 = load %struct.TYPE_15__*, %struct.TYPE_15__** %443, align 8
  %445 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %444, i32 0, i32 0
  %446 = load i32, i32* %445, align 4
  %447 = load %struct.vc4_rcl_setup*, %struct.vc4_rcl_setup** %7, align 8
  %448 = getelementptr inbounds %struct.vc4_rcl_setup, %struct.vc4_rcl_setup* %447, i32 0, i32 0
  %449 = load i32, i32* %448, align 8
  %450 = add nsw i32 %446, %449
  %451 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %6, align 8
  %452 = getelementptr inbounds %struct.vc4_exec_info, %struct.vc4_exec_info* %451, i32 0, i32 1
  store i32 %450, i32* %452, align 4
  store i32 0, i32* %4, align 4
  br label %453

453:                                              ; preds = %427, %260
  %454 = load i32, i32* %4, align 4
  ret i32 %454
}

declare dso_local %struct.TYPE_13__* @vc4_bo_create(%struct.drm_device*, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_15__*) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_15__*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local %struct.TYPE_14__* @to_vc4_bo(i32*) #1

declare dso_local i32 @rcl_u8(%struct.vc4_rcl_setup*, i32) #1

declare dso_local i32 @rcl_u32(%struct.vc4_rcl_setup*, i64) #1

declare dso_local i32 @vc4_tile_coordinates(%struct.vc4_rcl_setup*, i32, i32) #1

declare dso_local i32 @rcl_u16(%struct.vc4_rcl_setup*, i32) #1

declare dso_local i32 @emit_tile(%struct.vc4_exec_info*, %struct.vc4_rcl_setup*, i32, i32, i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
