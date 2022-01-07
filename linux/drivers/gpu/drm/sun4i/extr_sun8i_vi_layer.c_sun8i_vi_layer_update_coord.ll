; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun8i_vi_layer.c_sun8i_vi_layer_update_coord.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun8i_vi_layer.c_sun8i_vi_layer_update_coord.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sun8i_mixer = type { %struct.TYPE_12__, %struct.TYPE_11__*, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.drm_plane = type { %struct.drm_plane_state* }
%struct.drm_plane_state = type { %struct.TYPE_13__, %struct.TYPE_10__*, %struct.TYPE_13__, %struct.TYPE_8__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.drm_display_mode }
%struct.drm_display_mode = type { i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_8__ = type { %struct.drm_format_info* }
%struct.drm_format_info = type { i32, i32 }

@.str = private unnamed_addr constant [35 x i8] c"Updating VI channel %d overlay %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Layer source offset X: %d Y: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Layer source size W: %d H: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"HW scaling is enabled\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"Using vertical coarse scaling\0A\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"Using horizontal coarse scaling\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"HW scaling is not needed\0A\00", align 1
@.str.7 = private unnamed_addr constant [43 x i8] c"Layer destination coordinates X: %d Y: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"Layer destination size W: %d H: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sun8i_mixer*, i32, i32, %struct.drm_plane*, i32)* @sun8i_vi_layer_update_coord to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun8i_vi_layer_update_coord(%struct.sun8i_mixer* %0, i32 %1, i32 %2, %struct.drm_plane* %3, i32 %4) #0 {
  %6 = alloca %struct.sun8i_mixer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.drm_plane*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.drm_plane_state*, align 8
  %12 = alloca %struct.drm_format_info*, align 8
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
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca %struct.drm_display_mode*, align 8
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  store %struct.sun8i_mixer* %0, %struct.sun8i_mixer** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.drm_plane* %3, %struct.drm_plane** %9, align 8
  store i32 %4, i32* %10, align 4
  %39 = load %struct.drm_plane*, %struct.drm_plane** %9, align 8
  %40 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %39, i32 0, i32 0
  %41 = load %struct.drm_plane_state*, %struct.drm_plane_state** %40, align 8
  store %struct.drm_plane_state* %41, %struct.drm_plane_state** %11, align 8
  %42 = load %struct.drm_plane_state*, %struct.drm_plane_state** %11, align 8
  %43 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %42, i32 0, i32 3
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load %struct.drm_format_info*, %struct.drm_format_info** %45, align 8
  store %struct.drm_format_info* %46, %struct.drm_format_info** %12, align 8
  store i32 0, i32* %23, align 4
  store i32 0, i32* %24, align 4
  store i32 0, i32* %25, align 4
  store i32 0, i32* %26, align 4
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* %8, align 4
  %49 = call i32 (i8*, ...) @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %47, i32 %48)
  %50 = load %struct.sun8i_mixer*, %struct.sun8i_mixer** %6, align 8
  %51 = call i32 @sun8i_blender_base(%struct.sun8i_mixer* %50)
  store i32 %51, i32* %17, align 4
  %52 = load %struct.sun8i_mixer*, %struct.sun8i_mixer** %6, align 8
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @sun8i_channel_base(%struct.sun8i_mixer* %52, i32 %53)
  store i32 %54, i32* %18, align 4
  %55 = load %struct.drm_plane_state*, %struct.drm_plane_state** %11, align 8
  %56 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %55, i32 0, i32 2
  %57 = call i32 @drm_rect_width(%struct.TYPE_13__* %56)
  %58 = ashr i32 %57, 16
  store i32 %58, i32* %13, align 4
  %59 = load %struct.drm_plane_state*, %struct.drm_plane_state** %11, align 8
  %60 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %59, i32 0, i32 2
  %61 = call i32 @drm_rect_height(%struct.TYPE_13__* %60)
  %62 = ashr i32 %61, 16
  store i32 %62, i32* %14, align 4
  %63 = load %struct.drm_plane_state*, %struct.drm_plane_state** %11, align 8
  %64 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %63, i32 0, i32 0
  %65 = call i32 @drm_rect_width(%struct.TYPE_13__* %64)
  store i32 %65, i32* %15, align 4
  %66 = load %struct.drm_plane_state*, %struct.drm_plane_state** %11, align 8
  %67 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %66, i32 0, i32 0
  %68 = call i32 @drm_rect_height(%struct.TYPE_13__* %67)
  store i32 %68, i32* %16, align 4
  %69 = load %struct.drm_plane_state*, %struct.drm_plane_state** %11, align 8
  %70 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = and i32 %72, 65535
  store i32 %73, i32* %21, align 4
  %74 = load %struct.drm_plane_state*, %struct.drm_plane_state** %11, align 8
  %75 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = and i32 %77, 65535
  store i32 %78, i32* %22, align 4
  %79 = load %struct.drm_format_info*, %struct.drm_format_info** %12, align 8
  %80 = getelementptr inbounds %struct.drm_format_info, %struct.drm_format_info* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = icmp sgt i32 %81, 1
  br i1 %82, label %83, label %105

83:                                               ; preds = %5
  %84 = load %struct.drm_format_info*, %struct.drm_format_info** %12, align 8
  %85 = getelementptr inbounds %struct.drm_format_info, %struct.drm_format_info* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = sub nsw i32 %86, 1
  store i32 %87, i32* %28, align 4
  %88 = load %struct.drm_plane_state*, %struct.drm_plane_state** %11, align 8
  %89 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = ashr i32 %91, 16
  %93 = load i32, i32* %28, align 4
  %94 = and i32 %92, %93
  store i32 %94, i32* %29, align 4
  %95 = load i32, i32* %13, align 4
  %96 = load i32, i32* %29, align 4
  %97 = add nsw i32 %95, %96
  %98 = load i32, i32* %28, align 4
  %99 = xor i32 %98, -1
  %100 = and i32 %97, %99
  store i32 %100, i32* %13, align 4
  %101 = load i32, i32* %29, align 4
  %102 = shl i32 %101, 16
  %103 = load i32, i32* %21, align 4
  %104 = add nsw i32 %103, %102
  store i32 %104, i32* %21, align 4
  br label %105

105:                                              ; preds = %83, %5
  %106 = load %struct.drm_format_info*, %struct.drm_format_info** %12, align 8
  %107 = getelementptr inbounds %struct.drm_format_info, %struct.drm_format_info* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = icmp sgt i32 %108, 1
  br i1 %109, label %110, label %132

110:                                              ; preds = %105
  %111 = load %struct.drm_format_info*, %struct.drm_format_info** %12, align 8
  %112 = getelementptr inbounds %struct.drm_format_info, %struct.drm_format_info* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = sub nsw i32 %113, 1
  store i32 %114, i32* %30, align 4
  %115 = load %struct.drm_plane_state*, %struct.drm_plane_state** %11, align 8
  %116 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = ashr i32 %118, 16
  %120 = load i32, i32* %30, align 4
  %121 = and i32 %119, %120
  store i32 %121, i32* %31, align 4
  %122 = load i32, i32* %14, align 4
  %123 = load i32, i32* %31, align 4
  %124 = add nsw i32 %122, %123
  %125 = load i32, i32* %30, align 4
  %126 = xor i32 %125, -1
  %127 = and i32 %124, %126
  store i32 %127, i32* %14, align 4
  %128 = load i32, i32* %31, align 4
  %129 = shl i32 %128, 16
  %130 = load i32, i32* %22, align 4
  %131 = add nsw i32 %130, %129
  store i32 %131, i32* %22, align 4
  br label %132

132:                                              ; preds = %110, %105
  %133 = load i32, i32* %13, align 4
  %134 = load i32, i32* %14, align 4
  %135 = call i32 @SUN8I_MIXER_SIZE(i32 %133, i32 %134)
  store i32 %135, i32* %20, align 4
  %136 = load i32, i32* %15, align 4
  %137 = load i32, i32* %16, align 4
  %138 = call i32 @SUN8I_MIXER_SIZE(i32 %136, i32 %137)
  store i32 %138, i32* %19, align 4
  %139 = load %struct.drm_plane_state*, %struct.drm_plane_state** %11, align 8
  %140 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %139, i32 0, i32 2
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = ashr i32 %142, 16
  %144 = load %struct.drm_format_info*, %struct.drm_format_info** %12, align 8
  %145 = getelementptr inbounds %struct.drm_format_info, %struct.drm_format_info* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = sub nsw i32 %146, 1
  %148 = xor i32 %147, -1
  %149 = and i32 %143, %148
  %150 = load %struct.drm_plane_state*, %struct.drm_plane_state** %11, align 8
  %151 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %150, i32 0, i32 2
  %152 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = ashr i32 %153, 16
  %155 = load %struct.drm_format_info*, %struct.drm_format_info** %12, align 8
  %156 = getelementptr inbounds %struct.drm_format_info, %struct.drm_format_info* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = sub nsw i32 %157, 1
  %159 = xor i32 %158, -1
  %160 = and i32 %154, %159
  %161 = call i32 (i8*, ...) @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %149, i32 %160)
  %162 = load i32, i32* %13, align 4
  %163 = load i32, i32* %14, align 4
  %164 = call i32 (i8*, ...) @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %162, i32 %163)
  %165 = load %struct.sun8i_mixer*, %struct.sun8i_mixer** %6, align 8
  %166 = getelementptr inbounds %struct.sun8i_mixer, %struct.sun8i_mixer* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = load i32, i32* %18, align 4
  %170 = load i32, i32* %8, align 4
  %171 = call i32 @SUN8I_MIXER_CHAN_VI_LAYER_SIZE(i32 %169, i32 %170)
  %172 = load i32, i32* %20, align 4
  %173 = call i32 @regmap_write(i32 %168, i32 %171, i32 %172)
  %174 = load %struct.sun8i_mixer*, %struct.sun8i_mixer** %6, align 8
  %175 = getelementptr inbounds %struct.sun8i_mixer, %struct.sun8i_mixer* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = load i32, i32* %18, align 4
  %179 = call i32 @SUN8I_MIXER_CHAN_VI_OVL_SIZE(i32 %178)
  %180 = load i32, i32* %20, align 4
  %181 = call i32 @regmap_write(i32 %177, i32 %179, i32 %180)
  %182 = load %struct.drm_format_info*, %struct.drm_format_info** %12, align 8
  %183 = getelementptr inbounds %struct.drm_format_info, %struct.drm_format_info* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = icmp sgt i32 %184, 1
  br i1 %185, label %191, label %186

186:                                              ; preds = %132
  %187 = load %struct.drm_format_info*, %struct.drm_format_info** %12, align 8
  %188 = getelementptr inbounds %struct.drm_format_info, %struct.drm_format_info* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = icmp sgt i32 %189, 1
  br label %191

191:                                              ; preds = %186, %132
  %192 = phi i1 [ true, %132 ], [ %190, %186 ]
  %193 = zext i1 %192 to i32
  store i32 %193, i32* %27, align 4
  %194 = load i32, i32* %20, align 4
  %195 = load i32, i32* %19, align 4
  %196 = icmp ne i32 %194, %195
  br i1 %196, label %206, label %197

197:                                              ; preds = %191
  %198 = load i32, i32* %27, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %206, label %200

200:                                              ; preds = %197
  %201 = load i32, i32* %21, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %206, label %203

203:                                              ; preds = %200
  %204 = load i32, i32* %22, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %304

206:                                              ; preds = %203, %200, %197, %191
  %207 = call i32 (i8*, ...) @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %208 = load %struct.drm_plane*, %struct.drm_plane** %9, align 8
  %209 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %208, i32 0, i32 0
  %210 = load %struct.drm_plane_state*, %struct.drm_plane_state** %209, align 8
  %211 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %210, i32 0, i32 1
  %212 = load %struct.TYPE_10__*, %struct.TYPE_10__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %212, i32 0, i32 0
  %214 = load %struct.TYPE_9__*, %struct.TYPE_9__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %214, i32 0, i32 0
  store %struct.drm_display_mode* %215, %struct.drm_display_mode** %34, align 8
  %216 = load %struct.drm_display_mode*, %struct.drm_display_mode** %34, align 8
  %217 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 4
  %219 = mul nsw i32 %218, 1000
  %220 = load %struct.drm_display_mode*, %struct.drm_display_mode** %34, align 8
  %221 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 4
  %223 = load %struct.drm_display_mode*, %struct.drm_display_mode** %34, align 8
  %224 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %223, i32 0, i32 2
  %225 = load i32, i32* %224, align 4
  %226 = mul nsw i32 %222, %225
  %227 = sdiv i32 %219, %226
  store i32 %227, i32* %37, align 4
  %228 = load %struct.sun8i_mixer*, %struct.sun8i_mixer** %6, align 8
  %229 = getelementptr inbounds %struct.sun8i_mixer, %struct.sun8i_mixer* %228, i32 0, i32 2
  %230 = load i32, i32* %229, align 8
  %231 = call i32 @clk_get_rate(i32 %230)
  store i32 %231, i32* %38, align 4
  %232 = load i32, i32* %38, align 4
  %233 = mul nsw i32 %232, 80
  store i32 %233, i32* %38, align 4
  %234 = load i32, i32* %38, align 4
  %235 = load %struct.drm_display_mode*, %struct.drm_display_mode** %34, align 8
  %236 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %235, i32 0, i32 3
  %237 = load i32, i32* %236, align 4
  %238 = load i32, i32* %37, align 4
  %239 = mul nsw i32 %237, %238
  %240 = load i32, i32* %13, align 4
  %241 = load i32, i32* %15, align 4
  %242 = call i32 @max(i32 %240, i32 %241)
  %243 = mul nsw i32 %239, %242
  %244 = call i32 @do_div(i32 %234, i32 %243)
  %245 = load i32, i32* %14, align 4
  %246 = mul nsw i32 %245, 100
  %247 = load i32, i32* %16, align 4
  %248 = sdiv i32 %246, %247
  store i32 %248, i32* %33, align 4
  %249 = load i32, i32* %38, align 4
  %250 = load i32, i32* %33, align 4
  %251 = icmp ult i32 %249, %250
  br i1 %251, label %252, label %260

252:                                              ; preds = %206
  %253 = call i32 (i8*, ...) @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  %254 = load i32, i32* %14, align 4
  store i32 %254, i32* %26, align 4
  %255 = load i32, i32* %38, align 4
  %256 = load i32, i32* %16, align 4
  %257 = mul nsw i32 %255, %256
  %258 = sdiv i32 %257, 100
  store i32 %258, i32* %25, align 4
  %259 = load i32, i32* %25, align 4
  store i32 %259, i32* %14, align 4
  br label %260

260:                                              ; preds = %252, %206
  %261 = load i32, i32* %27, align 4
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %269

263:                                              ; preds = %260
  %264 = load %struct.sun8i_mixer*, %struct.sun8i_mixer** %6, align 8
  %265 = getelementptr inbounds %struct.sun8i_mixer, %struct.sun8i_mixer* %264, i32 0, i32 1
  %266 = load %struct.TYPE_11__*, %struct.TYPE_11__** %265, align 8
  %267 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 4
  br label %270

269:                                              ; preds = %260
  br label %270

270:                                              ; preds = %269, %263
  %271 = phi i32 [ %268, %263 ], [ 2048, %269 ]
  store i32 %271, i32* %32, align 4
  %272 = load i32, i32* %13, align 4
  %273 = load i32, i32* %32, align 4
  %274 = icmp ugt i32 %272, %273
  br i1 %274, label %275, label %280

275:                                              ; preds = %270
  %276 = call i32 (i8*, ...) @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  %277 = load i32, i32* %13, align 4
  store i32 %277, i32* %24, align 4
  %278 = load i32, i32* %32, align 4
  store i32 %278, i32* %23, align 4
  %279 = load i32, i32* %23, align 4
  store i32 %279, i32* %13, align 4
  br label %280

280:                                              ; preds = %275, %270
  %281 = load i32, i32* %13, align 4
  %282 = shl i32 %281, 16
  %283 = load i32, i32* %15, align 4
  %284 = sdiv i32 %282, %283
  store i32 %284, i32* %35, align 4
  %285 = load i32, i32* %14, align 4
  %286 = shl i32 %285, 16
  %287 = load i32, i32* %16, align 4
  %288 = sdiv i32 %286, %287
  store i32 %288, i32* %36, align 4
  %289 = load %struct.sun8i_mixer*, %struct.sun8i_mixer** %6, align 8
  %290 = load i32, i32* %7, align 4
  %291 = load i32, i32* %13, align 4
  %292 = load i32, i32* %14, align 4
  %293 = load i32, i32* %15, align 4
  %294 = load i32, i32* %16, align 4
  %295 = load i32, i32* %35, align 4
  %296 = load i32, i32* %36, align 4
  %297 = load i32, i32* %21, align 4
  %298 = load i32, i32* %22, align 4
  %299 = load %struct.drm_format_info*, %struct.drm_format_info** %12, align 8
  %300 = call i32 @sun8i_vi_scaler_setup(%struct.sun8i_mixer* %289, i32 %290, i32 %291, i32 %292, i32 %293, i32 %294, i32 %295, i32 %296, i32 %297, i32 %298, %struct.drm_format_info* %299)
  %301 = load %struct.sun8i_mixer*, %struct.sun8i_mixer** %6, align 8
  %302 = load i32, i32* %7, align 4
  %303 = call i32 @sun8i_vi_scaler_enable(%struct.sun8i_mixer* %301, i32 %302, i32 1)
  br label %309

304:                                              ; preds = %203
  %305 = call i32 (i8*, ...) @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  %306 = load %struct.sun8i_mixer*, %struct.sun8i_mixer** %6, align 8
  %307 = load i32, i32* %7, align 4
  %308 = call i32 @sun8i_vi_scaler_enable(%struct.sun8i_mixer* %306, i32 %307, i32 0)
  br label %309

309:                                              ; preds = %304, %280
  %310 = load %struct.sun8i_mixer*, %struct.sun8i_mixer** %6, align 8
  %311 = getelementptr inbounds %struct.sun8i_mixer, %struct.sun8i_mixer* %310, i32 0, i32 0
  %312 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %311, i32 0, i32 0
  %313 = load i32, i32* %312, align 8
  %314 = load i32, i32* %18, align 4
  %315 = call i32 @SUN8I_MIXER_CHAN_VI_HDS_Y(i32 %314)
  %316 = load i32, i32* %23, align 4
  %317 = call i32 @SUN8I_MIXER_CHAN_VI_DS_N(i32 %316)
  %318 = load i32, i32* %24, align 4
  %319 = call i32 @SUN8I_MIXER_CHAN_VI_DS_M(i32 %318)
  %320 = or i32 %317, %319
  %321 = call i32 @regmap_write(i32 %313, i32 %315, i32 %320)
  %322 = load %struct.sun8i_mixer*, %struct.sun8i_mixer** %6, align 8
  %323 = getelementptr inbounds %struct.sun8i_mixer, %struct.sun8i_mixer* %322, i32 0, i32 0
  %324 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %323, i32 0, i32 0
  %325 = load i32, i32* %324, align 8
  %326 = load i32, i32* %18, align 4
  %327 = call i32 @SUN8I_MIXER_CHAN_VI_HDS_UV(i32 %326)
  %328 = load i32, i32* %23, align 4
  %329 = call i32 @SUN8I_MIXER_CHAN_VI_DS_N(i32 %328)
  %330 = load i32, i32* %24, align 4
  %331 = call i32 @SUN8I_MIXER_CHAN_VI_DS_M(i32 %330)
  %332 = or i32 %329, %331
  %333 = call i32 @regmap_write(i32 %325, i32 %327, i32 %332)
  %334 = load %struct.sun8i_mixer*, %struct.sun8i_mixer** %6, align 8
  %335 = getelementptr inbounds %struct.sun8i_mixer, %struct.sun8i_mixer* %334, i32 0, i32 0
  %336 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %335, i32 0, i32 0
  %337 = load i32, i32* %336, align 8
  %338 = load i32, i32* %18, align 4
  %339 = call i32 @SUN8I_MIXER_CHAN_VI_VDS_Y(i32 %338)
  %340 = load i32, i32* %25, align 4
  %341 = call i32 @SUN8I_MIXER_CHAN_VI_DS_N(i32 %340)
  %342 = load i32, i32* %26, align 4
  %343 = call i32 @SUN8I_MIXER_CHAN_VI_DS_M(i32 %342)
  %344 = or i32 %341, %343
  %345 = call i32 @regmap_write(i32 %337, i32 %339, i32 %344)
  %346 = load %struct.sun8i_mixer*, %struct.sun8i_mixer** %6, align 8
  %347 = getelementptr inbounds %struct.sun8i_mixer, %struct.sun8i_mixer* %346, i32 0, i32 0
  %348 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %347, i32 0, i32 0
  %349 = load i32, i32* %348, align 8
  %350 = load i32, i32* %18, align 4
  %351 = call i32 @SUN8I_MIXER_CHAN_VI_VDS_UV(i32 %350)
  %352 = load i32, i32* %25, align 4
  %353 = call i32 @SUN8I_MIXER_CHAN_VI_DS_N(i32 %352)
  %354 = load i32, i32* %26, align 4
  %355 = call i32 @SUN8I_MIXER_CHAN_VI_DS_M(i32 %354)
  %356 = or i32 %353, %355
  %357 = call i32 @regmap_write(i32 %349, i32 %351, i32 %356)
  %358 = load %struct.drm_plane_state*, %struct.drm_plane_state** %11, align 8
  %359 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %358, i32 0, i32 0
  %360 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %359, i32 0, i32 0
  %361 = load i32, i32* %360, align 8
  %362 = load %struct.drm_plane_state*, %struct.drm_plane_state** %11, align 8
  %363 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %362, i32 0, i32 0
  %364 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %363, i32 0, i32 1
  %365 = load i32, i32* %364, align 4
  %366 = call i32 (i8*, ...) @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i64 0, i64 0), i32 %361, i32 %365)
  %367 = load i32, i32* %15, align 4
  %368 = load i32, i32* %16, align 4
  %369 = call i32 (i8*, ...) @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0), i32 %367, i32 %368)
  %370 = load %struct.sun8i_mixer*, %struct.sun8i_mixer** %6, align 8
  %371 = getelementptr inbounds %struct.sun8i_mixer, %struct.sun8i_mixer* %370, i32 0, i32 0
  %372 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %371, i32 0, i32 0
  %373 = load i32, i32* %372, align 8
  %374 = load i32, i32* %17, align 4
  %375 = load i32, i32* %10, align 4
  %376 = call i32 @SUN8I_MIXER_BLEND_ATTR_COORD(i32 %374, i32 %375)
  %377 = load %struct.drm_plane_state*, %struct.drm_plane_state** %11, align 8
  %378 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %377, i32 0, i32 0
  %379 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %378, i32 0, i32 0
  %380 = load i32, i32* %379, align 8
  %381 = load %struct.drm_plane_state*, %struct.drm_plane_state** %11, align 8
  %382 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %381, i32 0, i32 0
  %383 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %382, i32 0, i32 1
  %384 = load i32, i32* %383, align 4
  %385 = call i32 @SUN8I_MIXER_COORD(i32 %380, i32 %384)
  %386 = call i32 @regmap_write(i32 %373, i32 %376, i32 %385)
  %387 = load %struct.sun8i_mixer*, %struct.sun8i_mixer** %6, align 8
  %388 = getelementptr inbounds %struct.sun8i_mixer, %struct.sun8i_mixer* %387, i32 0, i32 0
  %389 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %388, i32 0, i32 0
  %390 = load i32, i32* %389, align 8
  %391 = load i32, i32* %17, align 4
  %392 = load i32, i32* %10, align 4
  %393 = call i32 @SUN8I_MIXER_BLEND_ATTR_INSIZE(i32 %391, i32 %392)
  %394 = load i32, i32* %19, align 4
  %395 = call i32 @regmap_write(i32 %390, i32 %393, i32 %394)
  ret i32 0
}

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, ...) #1

declare dso_local i32 @sun8i_blender_base(%struct.sun8i_mixer*) #1

declare dso_local i32 @sun8i_channel_base(%struct.sun8i_mixer*, i32) #1

declare dso_local i32 @drm_rect_width(%struct.TYPE_13__*) #1

declare dso_local i32 @drm_rect_height(%struct.TYPE_13__*) #1

declare dso_local i32 @SUN8I_MIXER_SIZE(i32, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @SUN8I_MIXER_CHAN_VI_LAYER_SIZE(i32, i32) #1

declare dso_local i32 @SUN8I_MIXER_CHAN_VI_OVL_SIZE(i32) #1

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @do_div(i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @sun8i_vi_scaler_setup(%struct.sun8i_mixer*, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.drm_format_info*) #1

declare dso_local i32 @sun8i_vi_scaler_enable(%struct.sun8i_mixer*, i32, i32) #1

declare dso_local i32 @SUN8I_MIXER_CHAN_VI_HDS_Y(i32) #1

declare dso_local i32 @SUN8I_MIXER_CHAN_VI_DS_N(i32) #1

declare dso_local i32 @SUN8I_MIXER_CHAN_VI_DS_M(i32) #1

declare dso_local i32 @SUN8I_MIXER_CHAN_VI_HDS_UV(i32) #1

declare dso_local i32 @SUN8I_MIXER_CHAN_VI_VDS_Y(i32) #1

declare dso_local i32 @SUN8I_MIXER_CHAN_VI_VDS_UV(i32) #1

declare dso_local i32 @SUN8I_MIXER_BLEND_ATTR_COORD(i32, i32) #1

declare dso_local i32 @SUN8I_MIXER_COORD(i32, i32) #1

declare dso_local i32 @SUN8I_MIXER_BLEND_ATTR_INSIZE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
