; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_render_cl.c_emit_tile.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_render_cl.c_emit_tile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc4_exec_info = type { i32, i32, %struct.drm_vc4_submit_cl* }
%struct.drm_vc4_submit_cl = type { i64, %struct.TYPE_5__, %struct.TYPE_8__, %struct.TYPE_8__, %struct.TYPE_8__, %struct.TYPE_8__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.vc4_rcl_setup = type { %struct.TYPE_6__*, %struct.TYPE_7__*, %struct.TYPE_7__*, i64, %struct.TYPE_7__*, %struct.TYPE_7__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@VC4_SUBMIT_RCL_SURFACE_READ_IS_FULL_RES = common dso_local global i32 0, align 4
@VC4_PACKET_LOAD_FULL_RES_TILE_BUFFER = common dso_local global i32 0, align 4
@VC4_LOADSTORE_FULL_RES_DISABLE_ZS = common dso_local global i32 0, align 4
@VC4_PACKET_LOAD_TILE_BUFFER_GENERAL = common dso_local global i32 0, align 4
@VC4_LOADSTORE_FULL_RES_DISABLE_COLOR = common dso_local global i32 0, align 4
@VC4_PACKET_WAIT_ON_SEMAPHORE = common dso_local global i32 0, align 4
@VC4_PACKET_BRANCH_TO_SUB_LIST = common dso_local global i32 0, align 4
@VC4_LOADSTORE_FULL_RES_DISABLE_CLEAR_ALL = common dso_local global i32 0, align 4
@VC4_LOADSTORE_FULL_RES_EOF = common dso_local global i32 0, align 4
@VC4_PACKET_STORE_FULL_RES_TILE_BUFFER = common dso_local global i32 0, align 4
@VC4_PACKET_STORE_TILE_BUFFER_GENERAL = common dso_local global i32 0, align 4
@VC4_STORE_TILE_BUFFER_DISABLE_COLOR_CLEAR = common dso_local global i32 0, align 4
@VC4_LOADSTORE_TILE_BUFFER_EOF = common dso_local global i32 0, align 4
@VC4_PACKET_STORE_MS_TILE_BUFFER_AND_EOF = common dso_local global i32 0, align 4
@VC4_PACKET_STORE_MS_TILE_BUFFER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vc4_exec_info*, %struct.vc4_rcl_setup*, i32, i32, i32, i32)* @emit_tile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_tile(%struct.vc4_exec_info* %0, %struct.vc4_rcl_setup* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.vc4_exec_info*, align 8
  %8 = alloca %struct.vc4_rcl_setup*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.drm_vc4_submit_cl*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.vc4_exec_info* %0, %struct.vc4_exec_info** %7, align 8
  store %struct.vc4_rcl_setup* %1, %struct.vc4_rcl_setup** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %20 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %7, align 8
  %21 = getelementptr inbounds %struct.vc4_exec_info, %struct.vc4_exec_info* %20, i32 0, i32 2
  %22 = load %struct.drm_vc4_submit_cl*, %struct.drm_vc4_submit_cl** %21, align 8
  store %struct.drm_vc4_submit_cl* %22, %struct.drm_vc4_submit_cl** %13, align 8
  %23 = load %struct.drm_vc4_submit_cl*, %struct.drm_vc4_submit_cl** %13, align 8
  %24 = getelementptr inbounds %struct.drm_vc4_submit_cl, %struct.drm_vc4_submit_cl* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %14, align 4
  %28 = load %struct.vc4_rcl_setup*, %struct.vc4_rcl_setup** %8, align 8
  %29 = getelementptr inbounds %struct.vc4_rcl_setup, %struct.vc4_rcl_setup* %28, i32 0, i32 5
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %29, align 8
  %31 = icmp ne %struct.TYPE_7__* %30, null
  br i1 %31, label %32, label %80

32:                                               ; preds = %6
  %33 = load %struct.drm_vc4_submit_cl*, %struct.drm_vc4_submit_cl** %13, align 8
  %34 = getelementptr inbounds %struct.drm_vc4_submit_cl, %struct.drm_vc4_submit_cl* %33, i32 0, i32 5
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @VC4_SUBMIT_RCL_SURFACE_READ_IS_FULL_RES, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %57

40:                                               ; preds = %32
  %41 = load %struct.vc4_rcl_setup*, %struct.vc4_rcl_setup** %8, align 8
  %42 = load i32, i32* @VC4_PACKET_LOAD_FULL_RES_TILE_BUFFER, align 4
  %43 = call i32 @rcl_u8(%struct.vc4_rcl_setup* %41, i32 %42)
  %44 = load %struct.vc4_rcl_setup*, %struct.vc4_rcl_setup** %8, align 8
  %45 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %7, align 8
  %46 = load %struct.vc4_rcl_setup*, %struct.vc4_rcl_setup** %8, align 8
  %47 = getelementptr inbounds %struct.vc4_rcl_setup, %struct.vc4_rcl_setup* %46, i32 0, i32 5
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %47, align 8
  %49 = load %struct.drm_vc4_submit_cl*, %struct.drm_vc4_submit_cl** %13, align 8
  %50 = getelementptr inbounds %struct.drm_vc4_submit_cl, %struct.drm_vc4_submit_cl* %49, i32 0, i32 5
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* %10, align 4
  %53 = call i32 @vc4_full_res_offset(%struct.vc4_exec_info* %45, %struct.TYPE_7__* %48, %struct.TYPE_8__* %50, i32 %51, i32 %52)
  %54 = load i32, i32* @VC4_LOADSTORE_FULL_RES_DISABLE_ZS, align 4
  %55 = or i32 %53, %54
  %56 = call i32 @rcl_u32(%struct.vc4_rcl_setup* %44, i32 %55)
  br label %79

57:                                               ; preds = %32
  %58 = load %struct.vc4_rcl_setup*, %struct.vc4_rcl_setup** %8, align 8
  %59 = load i32, i32* @VC4_PACKET_LOAD_TILE_BUFFER_GENERAL, align 4
  %60 = call i32 @rcl_u8(%struct.vc4_rcl_setup* %58, i32 %59)
  %61 = load %struct.vc4_rcl_setup*, %struct.vc4_rcl_setup** %8, align 8
  %62 = load %struct.drm_vc4_submit_cl*, %struct.drm_vc4_submit_cl** %13, align 8
  %63 = getelementptr inbounds %struct.drm_vc4_submit_cl, %struct.drm_vc4_submit_cl* %62, i32 0, i32 5
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @rcl_u16(%struct.vc4_rcl_setup* %61, i32 %65)
  %67 = load %struct.vc4_rcl_setup*, %struct.vc4_rcl_setup** %8, align 8
  %68 = load %struct.vc4_rcl_setup*, %struct.vc4_rcl_setup** %8, align 8
  %69 = getelementptr inbounds %struct.vc4_rcl_setup, %struct.vc4_rcl_setup* %68, i32 0, i32 5
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.drm_vc4_submit_cl*, %struct.drm_vc4_submit_cl** %13, align 8
  %74 = getelementptr inbounds %struct.drm_vc4_submit_cl, %struct.drm_vc4_submit_cl* %73, i32 0, i32 5
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %72, %76
  %78 = call i32 @rcl_u32(%struct.vc4_rcl_setup* %67, i32 %77)
  br label %79

79:                                               ; preds = %57, %40
  br label %80

80:                                               ; preds = %79, %6
  %81 = load %struct.vc4_rcl_setup*, %struct.vc4_rcl_setup** %8, align 8
  %82 = getelementptr inbounds %struct.vc4_rcl_setup, %struct.vc4_rcl_setup* %81, i32 0, i32 4
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %82, align 8
  %84 = icmp ne %struct.TYPE_7__* %83, null
  br i1 %84, label %85, label %145

85:                                               ; preds = %80
  %86 = load %struct.vc4_rcl_setup*, %struct.vc4_rcl_setup** %8, align 8
  %87 = getelementptr inbounds %struct.vc4_rcl_setup, %struct.vc4_rcl_setup* %86, i32 0, i32 5
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %87, align 8
  %89 = icmp ne %struct.TYPE_7__* %88, null
  br i1 %89, label %90, label %97

90:                                               ; preds = %85
  %91 = load %struct.vc4_rcl_setup*, %struct.vc4_rcl_setup** %8, align 8
  %92 = load i32, i32* %9, align 4
  %93 = load i32, i32* %10, align 4
  %94 = call i32 @vc4_tile_coordinates(%struct.vc4_rcl_setup* %91, i32 %92, i32 %93)
  %95 = load %struct.vc4_rcl_setup*, %struct.vc4_rcl_setup** %8, align 8
  %96 = call i32 @vc4_store_before_load(%struct.vc4_rcl_setup* %95)
  br label %97

97:                                               ; preds = %90, %85
  %98 = load %struct.drm_vc4_submit_cl*, %struct.drm_vc4_submit_cl** %13, align 8
  %99 = getelementptr inbounds %struct.drm_vc4_submit_cl, %struct.drm_vc4_submit_cl* %98, i32 0, i32 4
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @VC4_SUBMIT_RCL_SURFACE_READ_IS_FULL_RES, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %122

105:                                              ; preds = %97
  %106 = load %struct.vc4_rcl_setup*, %struct.vc4_rcl_setup** %8, align 8
  %107 = load i32, i32* @VC4_PACKET_LOAD_FULL_RES_TILE_BUFFER, align 4
  %108 = call i32 @rcl_u8(%struct.vc4_rcl_setup* %106, i32 %107)
  %109 = load %struct.vc4_rcl_setup*, %struct.vc4_rcl_setup** %8, align 8
  %110 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %7, align 8
  %111 = load %struct.vc4_rcl_setup*, %struct.vc4_rcl_setup** %8, align 8
  %112 = getelementptr inbounds %struct.vc4_rcl_setup, %struct.vc4_rcl_setup* %111, i32 0, i32 4
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %112, align 8
  %114 = load %struct.drm_vc4_submit_cl*, %struct.drm_vc4_submit_cl** %13, align 8
  %115 = getelementptr inbounds %struct.drm_vc4_submit_cl, %struct.drm_vc4_submit_cl* %114, i32 0, i32 4
  %116 = load i32, i32* %9, align 4
  %117 = load i32, i32* %10, align 4
  %118 = call i32 @vc4_full_res_offset(%struct.vc4_exec_info* %110, %struct.TYPE_7__* %113, %struct.TYPE_8__* %115, i32 %116, i32 %117)
  %119 = load i32, i32* @VC4_LOADSTORE_FULL_RES_DISABLE_COLOR, align 4
  %120 = or i32 %118, %119
  %121 = call i32 @rcl_u32(%struct.vc4_rcl_setup* %109, i32 %120)
  br label %144

122:                                              ; preds = %97
  %123 = load %struct.vc4_rcl_setup*, %struct.vc4_rcl_setup** %8, align 8
  %124 = load i32, i32* @VC4_PACKET_LOAD_TILE_BUFFER_GENERAL, align 4
  %125 = call i32 @rcl_u8(%struct.vc4_rcl_setup* %123, i32 %124)
  %126 = load %struct.vc4_rcl_setup*, %struct.vc4_rcl_setup** %8, align 8
  %127 = load %struct.drm_vc4_submit_cl*, %struct.drm_vc4_submit_cl** %13, align 8
  %128 = getelementptr inbounds %struct.drm_vc4_submit_cl, %struct.drm_vc4_submit_cl* %127, i32 0, i32 4
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @rcl_u16(%struct.vc4_rcl_setup* %126, i32 %130)
  %132 = load %struct.vc4_rcl_setup*, %struct.vc4_rcl_setup** %8, align 8
  %133 = load %struct.vc4_rcl_setup*, %struct.vc4_rcl_setup** %8, align 8
  %134 = getelementptr inbounds %struct.vc4_rcl_setup, %struct.vc4_rcl_setup* %133, i32 0, i32 4
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.drm_vc4_submit_cl*, %struct.drm_vc4_submit_cl** %13, align 8
  %139 = getelementptr inbounds %struct.drm_vc4_submit_cl, %struct.drm_vc4_submit_cl* %138, i32 0, i32 4
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = add nsw i32 %137, %141
  %143 = call i32 @rcl_u32(%struct.vc4_rcl_setup* %132, i32 %142)
  br label %144

144:                                              ; preds = %122, %105
  br label %145

145:                                              ; preds = %144, %80
  %146 = load %struct.vc4_rcl_setup*, %struct.vc4_rcl_setup** %8, align 8
  %147 = load i32, i32* %9, align 4
  %148 = load i32, i32* %10, align 4
  %149 = call i32 @vc4_tile_coordinates(%struct.vc4_rcl_setup* %146, i32 %147, i32 %148)
  %150 = load i32, i32* %11, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %159

152:                                              ; preds = %145
  %153 = load i32, i32* %14, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %159

155:                                              ; preds = %152
  %156 = load %struct.vc4_rcl_setup*, %struct.vc4_rcl_setup** %8, align 8
  %157 = load i32, i32* @VC4_PACKET_WAIT_ON_SEMAPHORE, align 4
  %158 = call i32 @rcl_u8(%struct.vc4_rcl_setup* %156, i32 %157)
  br label %159

159:                                              ; preds = %155, %152, %145
  %160 = load i32, i32* %14, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %180

162:                                              ; preds = %159
  %163 = load %struct.vc4_rcl_setup*, %struct.vc4_rcl_setup** %8, align 8
  %164 = load i32, i32* @VC4_PACKET_BRANCH_TO_SUB_LIST, align 4
  %165 = call i32 @rcl_u8(%struct.vc4_rcl_setup* %163, i32 %164)
  %166 = load %struct.vc4_rcl_setup*, %struct.vc4_rcl_setup** %8, align 8
  %167 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %7, align 8
  %168 = getelementptr inbounds %struct.vc4_exec_info, %struct.vc4_exec_info* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = load i32, i32* %10, align 4
  %171 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %7, align 8
  %172 = getelementptr inbounds %struct.vc4_exec_info, %struct.vc4_exec_info* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = mul nsw i32 %170, %173
  %175 = load i32, i32* %9, align 4
  %176 = add nsw i32 %174, %175
  %177 = mul nsw i32 %176, 32
  %178 = add nsw i32 %169, %177
  %179 = call i32 @rcl_u32(%struct.vc4_rcl_setup* %166, i32 %178)
  br label %180

180:                                              ; preds = %162, %159
  %181 = load %struct.vc4_rcl_setup*, %struct.vc4_rcl_setup** %8, align 8
  %182 = getelementptr inbounds %struct.vc4_rcl_setup, %struct.vc4_rcl_setup* %181, i32 0, i32 2
  %183 = load %struct.TYPE_7__*, %struct.TYPE_7__** %182, align 8
  %184 = icmp ne %struct.TYPE_7__* %183, null
  br i1 %184, label %185, label %236

185:                                              ; preds = %180
  %186 = load %struct.vc4_rcl_setup*, %struct.vc4_rcl_setup** %8, align 8
  %187 = getelementptr inbounds %struct.vc4_rcl_setup, %struct.vc4_rcl_setup* %186, i32 0, i32 1
  %188 = load %struct.TYPE_7__*, %struct.TYPE_7__** %187, align 8
  %189 = icmp ne %struct.TYPE_7__* %188, null
  br i1 %189, label %201, label %190

190:                                              ; preds = %185
  %191 = load %struct.vc4_rcl_setup*, %struct.vc4_rcl_setup** %8, align 8
  %192 = getelementptr inbounds %struct.vc4_rcl_setup, %struct.vc4_rcl_setup* %191, i32 0, i32 0
  %193 = load %struct.TYPE_6__*, %struct.TYPE_6__** %192, align 8
  %194 = icmp ne %struct.TYPE_6__* %193, null
  br i1 %194, label %201, label %195

195:                                              ; preds = %190
  %196 = load %struct.vc4_rcl_setup*, %struct.vc4_rcl_setup** %8, align 8
  %197 = getelementptr inbounds %struct.vc4_rcl_setup, %struct.vc4_rcl_setup* %196, i32 0, i32 3
  %198 = load i64, i64* %197, align 8
  %199 = icmp ne i64 %198, 0
  %200 = xor i1 %199, true
  br label %201

201:                                              ; preds = %195, %190, %185
  %202 = phi i1 [ false, %190 ], [ false, %185 ], [ %200, %195 ]
  %203 = zext i1 %202 to i32
  store i32 %203, i32* %15, align 4
  %204 = load i32, i32* @VC4_LOADSTORE_FULL_RES_DISABLE_ZS, align 4
  store i32 %204, i32* %16, align 4
  %205 = load i32, i32* %15, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %211, label %207

207:                                              ; preds = %201
  %208 = load i32, i32* @VC4_LOADSTORE_FULL_RES_DISABLE_CLEAR_ALL, align 4
  %209 = load i32, i32* %16, align 4
  %210 = or i32 %209, %208
  store i32 %210, i32* %16, align 4
  br label %219

211:                                              ; preds = %201
  %212 = load i32, i32* %12, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %218

214:                                              ; preds = %211
  %215 = load i32, i32* @VC4_LOADSTORE_FULL_RES_EOF, align 4
  %216 = load i32, i32* %16, align 4
  %217 = or i32 %216, %215
  store i32 %217, i32* %16, align 4
  br label %218

218:                                              ; preds = %214, %211
  br label %219

219:                                              ; preds = %218, %207
  %220 = load %struct.vc4_rcl_setup*, %struct.vc4_rcl_setup** %8, align 8
  %221 = load i32, i32* @VC4_PACKET_STORE_FULL_RES_TILE_BUFFER, align 4
  %222 = call i32 @rcl_u8(%struct.vc4_rcl_setup* %220, i32 %221)
  %223 = load %struct.vc4_rcl_setup*, %struct.vc4_rcl_setup** %8, align 8
  %224 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %7, align 8
  %225 = load %struct.vc4_rcl_setup*, %struct.vc4_rcl_setup** %8, align 8
  %226 = getelementptr inbounds %struct.vc4_rcl_setup, %struct.vc4_rcl_setup* %225, i32 0, i32 2
  %227 = load %struct.TYPE_7__*, %struct.TYPE_7__** %226, align 8
  %228 = load %struct.drm_vc4_submit_cl*, %struct.drm_vc4_submit_cl** %13, align 8
  %229 = getelementptr inbounds %struct.drm_vc4_submit_cl, %struct.drm_vc4_submit_cl* %228, i32 0, i32 3
  %230 = load i32, i32* %9, align 4
  %231 = load i32, i32* %10, align 4
  %232 = call i32 @vc4_full_res_offset(%struct.vc4_exec_info* %224, %struct.TYPE_7__* %227, %struct.TYPE_8__* %229, i32 %230, i32 %231)
  %233 = load i32, i32* %16, align 4
  %234 = or i32 %232, %233
  %235 = call i32 @rcl_u32(%struct.vc4_rcl_setup* %223, i32 %234)
  br label %236

236:                                              ; preds = %219, %180
  %237 = load %struct.vc4_rcl_setup*, %struct.vc4_rcl_setup** %8, align 8
  %238 = getelementptr inbounds %struct.vc4_rcl_setup, %struct.vc4_rcl_setup* %237, i32 0, i32 1
  %239 = load %struct.TYPE_7__*, %struct.TYPE_7__** %238, align 8
  %240 = icmp ne %struct.TYPE_7__* %239, null
  br i1 %240, label %241, label %297

241:                                              ; preds = %236
  %242 = load %struct.vc4_rcl_setup*, %struct.vc4_rcl_setup** %8, align 8
  %243 = getelementptr inbounds %struct.vc4_rcl_setup, %struct.vc4_rcl_setup* %242, i32 0, i32 0
  %244 = load %struct.TYPE_6__*, %struct.TYPE_6__** %243, align 8
  %245 = icmp ne %struct.TYPE_6__* %244, null
  br i1 %245, label %252, label %246

246:                                              ; preds = %241
  %247 = load %struct.vc4_rcl_setup*, %struct.vc4_rcl_setup** %8, align 8
  %248 = getelementptr inbounds %struct.vc4_rcl_setup, %struct.vc4_rcl_setup* %247, i32 0, i32 3
  %249 = load i64, i64* %248, align 8
  %250 = icmp ne i64 %249, 0
  %251 = xor i1 %250, true
  br label %252

252:                                              ; preds = %246, %241
  %253 = phi i1 [ false, %241 ], [ %251, %246 ]
  %254 = zext i1 %253 to i32
  store i32 %254, i32* %17, align 4
  %255 = load i32, i32* @VC4_LOADSTORE_FULL_RES_DISABLE_COLOR, align 4
  store i32 %255, i32* %18, align 4
  %256 = load %struct.vc4_rcl_setup*, %struct.vc4_rcl_setup** %8, align 8
  %257 = getelementptr inbounds %struct.vc4_rcl_setup, %struct.vc4_rcl_setup* %256, i32 0, i32 2
  %258 = load %struct.TYPE_7__*, %struct.TYPE_7__** %257, align 8
  %259 = icmp ne %struct.TYPE_7__* %258, null
  br i1 %259, label %260, label %265

260:                                              ; preds = %252
  %261 = load %struct.vc4_rcl_setup*, %struct.vc4_rcl_setup** %8, align 8
  %262 = load i32, i32* %9, align 4
  %263 = load i32, i32* %10, align 4
  %264 = call i32 @vc4_tile_coordinates(%struct.vc4_rcl_setup* %261, i32 %262, i32 %263)
  br label %265

265:                                              ; preds = %260, %252
  %266 = load i32, i32* %17, align 4
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %272, label %268

268:                                              ; preds = %265
  %269 = load i32, i32* @VC4_LOADSTORE_FULL_RES_DISABLE_CLEAR_ALL, align 4
  %270 = load i32, i32* %18, align 4
  %271 = or i32 %270, %269
  store i32 %271, i32* %18, align 4
  br label %280

272:                                              ; preds = %265
  %273 = load i32, i32* %12, align 4
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %279

275:                                              ; preds = %272
  %276 = load i32, i32* @VC4_LOADSTORE_FULL_RES_EOF, align 4
  %277 = load i32, i32* %18, align 4
  %278 = or i32 %277, %276
  store i32 %278, i32* %18, align 4
  br label %279

279:                                              ; preds = %275, %272
  br label %280

280:                                              ; preds = %279, %268
  %281 = load %struct.vc4_rcl_setup*, %struct.vc4_rcl_setup** %8, align 8
  %282 = load i32, i32* @VC4_PACKET_STORE_FULL_RES_TILE_BUFFER, align 4
  %283 = call i32 @rcl_u8(%struct.vc4_rcl_setup* %281, i32 %282)
  %284 = load %struct.vc4_rcl_setup*, %struct.vc4_rcl_setup** %8, align 8
  %285 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %7, align 8
  %286 = load %struct.vc4_rcl_setup*, %struct.vc4_rcl_setup** %8, align 8
  %287 = getelementptr inbounds %struct.vc4_rcl_setup, %struct.vc4_rcl_setup* %286, i32 0, i32 1
  %288 = load %struct.TYPE_7__*, %struct.TYPE_7__** %287, align 8
  %289 = load %struct.drm_vc4_submit_cl*, %struct.drm_vc4_submit_cl** %13, align 8
  %290 = getelementptr inbounds %struct.drm_vc4_submit_cl, %struct.drm_vc4_submit_cl* %289, i32 0, i32 2
  %291 = load i32, i32* %9, align 4
  %292 = load i32, i32* %10, align 4
  %293 = call i32 @vc4_full_res_offset(%struct.vc4_exec_info* %285, %struct.TYPE_7__* %288, %struct.TYPE_8__* %290, i32 %291, i32 %292)
  %294 = load i32, i32* %18, align 4
  %295 = or i32 %293, %294
  %296 = call i32 @rcl_u32(%struct.vc4_rcl_setup* %284, i32 %295)
  br label %297

297:                                              ; preds = %280, %236
  %298 = load %struct.vc4_rcl_setup*, %struct.vc4_rcl_setup** %8, align 8
  %299 = getelementptr inbounds %struct.vc4_rcl_setup, %struct.vc4_rcl_setup* %298, i32 0, i32 0
  %300 = load %struct.TYPE_6__*, %struct.TYPE_6__** %299, align 8
  %301 = icmp ne %struct.TYPE_6__* %300, null
  br i1 %301, label %302, label %364

302:                                              ; preds = %297
  %303 = load %struct.vc4_rcl_setup*, %struct.vc4_rcl_setup** %8, align 8
  %304 = getelementptr inbounds %struct.vc4_rcl_setup, %struct.vc4_rcl_setup* %303, i32 0, i32 3
  %305 = load i64, i64* %304, align 8
  %306 = icmp ne i64 %305, 0
  %307 = xor i1 %306, true
  %308 = zext i1 %307 to i32
  store i32 %308, i32* %19, align 4
  %309 = load %struct.vc4_rcl_setup*, %struct.vc4_rcl_setup** %8, align 8
  %310 = getelementptr inbounds %struct.vc4_rcl_setup, %struct.vc4_rcl_setup* %309, i32 0, i32 2
  %311 = load %struct.TYPE_7__*, %struct.TYPE_7__** %310, align 8
  %312 = icmp ne %struct.TYPE_7__* %311, null
  br i1 %312, label %318, label %313

313:                                              ; preds = %302
  %314 = load %struct.vc4_rcl_setup*, %struct.vc4_rcl_setup** %8, align 8
  %315 = getelementptr inbounds %struct.vc4_rcl_setup, %struct.vc4_rcl_setup* %314, i32 0, i32 1
  %316 = load %struct.TYPE_7__*, %struct.TYPE_7__** %315, align 8
  %317 = icmp ne %struct.TYPE_7__* %316, null
  br i1 %317, label %318, label %323

318:                                              ; preds = %313, %302
  %319 = load %struct.vc4_rcl_setup*, %struct.vc4_rcl_setup** %8, align 8
  %320 = load i32, i32* %9, align 4
  %321 = load i32, i32* %10, align 4
  %322 = call i32 @vc4_tile_coordinates(%struct.vc4_rcl_setup* %319, i32 %320, i32 %321)
  br label %323

323:                                              ; preds = %318, %313
  %324 = load %struct.vc4_rcl_setup*, %struct.vc4_rcl_setup** %8, align 8
  %325 = load i32, i32* @VC4_PACKET_STORE_TILE_BUFFER_GENERAL, align 4
  %326 = call i32 @rcl_u8(%struct.vc4_rcl_setup* %324, i32 %325)
  %327 = load %struct.vc4_rcl_setup*, %struct.vc4_rcl_setup** %8, align 8
  %328 = load %struct.drm_vc4_submit_cl*, %struct.drm_vc4_submit_cl** %13, align 8
  %329 = getelementptr inbounds %struct.drm_vc4_submit_cl, %struct.drm_vc4_submit_cl* %328, i32 0, i32 1
  %330 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %329, i32 0, i32 0
  %331 = load i32, i32* %330, align 8
  %332 = load i32, i32* %19, align 4
  %333 = icmp ne i32 %332, 0
  br i1 %333, label %334, label %335

334:                                              ; preds = %323
  br label %337

335:                                              ; preds = %323
  %336 = load i32, i32* @VC4_STORE_TILE_BUFFER_DISABLE_COLOR_CLEAR, align 4
  br label %337

337:                                              ; preds = %335, %334
  %338 = phi i32 [ 0, %334 ], [ %336, %335 ]
  %339 = or i32 %331, %338
  %340 = call i32 @rcl_u16(%struct.vc4_rcl_setup* %327, i32 %339)
  %341 = load %struct.vc4_rcl_setup*, %struct.vc4_rcl_setup** %8, align 8
  %342 = load %struct.vc4_rcl_setup*, %struct.vc4_rcl_setup** %8, align 8
  %343 = getelementptr inbounds %struct.vc4_rcl_setup, %struct.vc4_rcl_setup* %342, i32 0, i32 0
  %344 = load %struct.TYPE_6__*, %struct.TYPE_6__** %343, align 8
  %345 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %344, i32 0, i32 0
  %346 = load i32, i32* %345, align 4
  %347 = load %struct.drm_vc4_submit_cl*, %struct.drm_vc4_submit_cl** %13, align 8
  %348 = getelementptr inbounds %struct.drm_vc4_submit_cl, %struct.drm_vc4_submit_cl* %347, i32 0, i32 1
  %349 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %348, i32 0, i32 1
  %350 = load i32, i32* %349, align 4
  %351 = add nsw i32 %346, %350
  %352 = load i32, i32* %12, align 4
  %353 = icmp ne i32 %352, 0
  br i1 %353, label %354, label %359

354:                                              ; preds = %337
  %355 = load i32, i32* %19, align 4
  %356 = icmp ne i32 %355, 0
  br i1 %356, label %357, label %359

357:                                              ; preds = %354
  %358 = load i32, i32* @VC4_LOADSTORE_TILE_BUFFER_EOF, align 4
  br label %360

359:                                              ; preds = %354, %337
  br label %360

360:                                              ; preds = %359, %357
  %361 = phi i32 [ %358, %357 ], [ 0, %359 ]
  %362 = or i32 %351, %361
  %363 = call i32 @rcl_u32(%struct.vc4_rcl_setup* %341, i32 %362)
  br label %364

364:                                              ; preds = %360, %297
  %365 = load %struct.vc4_rcl_setup*, %struct.vc4_rcl_setup** %8, align 8
  %366 = getelementptr inbounds %struct.vc4_rcl_setup, %struct.vc4_rcl_setup* %365, i32 0, i32 3
  %367 = load i64, i64* %366, align 8
  %368 = icmp ne i64 %367, 0
  br i1 %368, label %369, label %401

369:                                              ; preds = %364
  %370 = load %struct.vc4_rcl_setup*, %struct.vc4_rcl_setup** %8, align 8
  %371 = getelementptr inbounds %struct.vc4_rcl_setup, %struct.vc4_rcl_setup* %370, i32 0, i32 2
  %372 = load %struct.TYPE_7__*, %struct.TYPE_7__** %371, align 8
  %373 = icmp ne %struct.TYPE_7__* %372, null
  br i1 %373, label %384, label %374

374:                                              ; preds = %369
  %375 = load %struct.vc4_rcl_setup*, %struct.vc4_rcl_setup** %8, align 8
  %376 = getelementptr inbounds %struct.vc4_rcl_setup, %struct.vc4_rcl_setup* %375, i32 0, i32 1
  %377 = load %struct.TYPE_7__*, %struct.TYPE_7__** %376, align 8
  %378 = icmp ne %struct.TYPE_7__* %377, null
  br i1 %378, label %384, label %379

379:                                              ; preds = %374
  %380 = load %struct.vc4_rcl_setup*, %struct.vc4_rcl_setup** %8, align 8
  %381 = getelementptr inbounds %struct.vc4_rcl_setup, %struct.vc4_rcl_setup* %380, i32 0, i32 0
  %382 = load %struct.TYPE_6__*, %struct.TYPE_6__** %381, align 8
  %383 = icmp ne %struct.TYPE_6__* %382, null
  br i1 %383, label %384, label %389

384:                                              ; preds = %379, %374, %369
  %385 = load %struct.vc4_rcl_setup*, %struct.vc4_rcl_setup** %8, align 8
  %386 = load i32, i32* %9, align 4
  %387 = load i32, i32* %10, align 4
  %388 = call i32 @vc4_tile_coordinates(%struct.vc4_rcl_setup* %385, i32 %386, i32 %387)
  br label %389

389:                                              ; preds = %384, %379
  %390 = load i32, i32* %12, align 4
  %391 = icmp ne i32 %390, 0
  br i1 %391, label %392, label %396

392:                                              ; preds = %389
  %393 = load %struct.vc4_rcl_setup*, %struct.vc4_rcl_setup** %8, align 8
  %394 = load i32, i32* @VC4_PACKET_STORE_MS_TILE_BUFFER_AND_EOF, align 4
  %395 = call i32 @rcl_u8(%struct.vc4_rcl_setup* %393, i32 %394)
  br label %400

396:                                              ; preds = %389
  %397 = load %struct.vc4_rcl_setup*, %struct.vc4_rcl_setup** %8, align 8
  %398 = load i32, i32* @VC4_PACKET_STORE_MS_TILE_BUFFER, align 4
  %399 = call i32 @rcl_u8(%struct.vc4_rcl_setup* %397, i32 %398)
  br label %400

400:                                              ; preds = %396, %392
  br label %401

401:                                              ; preds = %400, %364
  ret void
}

declare dso_local i32 @rcl_u8(%struct.vc4_rcl_setup*, i32) #1

declare dso_local i32 @rcl_u32(%struct.vc4_rcl_setup*, i32) #1

declare dso_local i32 @vc4_full_res_offset(%struct.vc4_exec_info*, %struct.TYPE_7__*, %struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @rcl_u16(%struct.vc4_rcl_setup*, i32) #1

declare dso_local i32 @vc4_tile_coordinates(%struct.vc4_rcl_setup*, i32, i32) #1

declare dso_local i32 @vc4_store_before_load(%struct.vc4_rcl_setup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
