; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun8i_ui_layer.c_sun8i_ui_layer_update_coord.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun8i_ui_layer.c_sun8i_ui_layer_update_coord.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sun8i_mixer = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.drm_plane = type { i64, %struct.drm_plane_state* }
%struct.drm_plane_state = type { i64, i64, i64, i64, %struct.TYPE_11__, %struct.TYPE_11__, %struct.TYPE_9__* }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"Updating UI channel %d overlay %d\0A\00", align 1
@DRM_PLANE_TYPE_PRIMARY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [49 x i8] c"Primary layer, updating global size W: %u H: %u\0A\00", align 1
@SUN8I_MIXER_GLOBAL_SIZE = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_INTERLACE = common dso_local global i32 0, align 4
@SUN8I_MIXER_BLEND_OUTCTL_INTERLACED = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [44 x i8] c"Switching display mixer interlaced mode %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"Layer source offset X: %d Y: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"Layer source size W: %d H: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"HW scaling is enabled\0A\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"HW scaling is not needed\0A\00", align 1
@.str.9 = private unnamed_addr constant [43 x i8] c"Layer destination coordinates X: %d Y: %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [36 x i8] c"Layer destination size W: %d H: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sun8i_mixer*, i32, i32, %struct.drm_plane*, i32)* @sun8i_ui_layer_update_coord to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun8i_ui_layer_update_coord(%struct.sun8i_mixer* %0, i32 %1, i32 %2, %struct.drm_plane* %3, i32 %4) #0 {
  %6 = alloca %struct.sun8i_mixer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.drm_plane*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.drm_plane_state*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  store %struct.sun8i_mixer* %0, %struct.sun8i_mixer** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.drm_plane* %3, %struct.drm_plane** %9, align 8
  store i32 %4, i32* %10, align 4
  %26 = load %struct.drm_plane*, %struct.drm_plane** %9, align 8
  %27 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %26, i32 0, i32 1
  %28 = load %struct.drm_plane_state*, %struct.drm_plane_state** %27, align 8
  store %struct.drm_plane_state* %28, %struct.drm_plane_state** %11, align 8
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %8, align 4
  %31 = call i32 (i8*, ...) @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %30)
  %32 = load %struct.sun8i_mixer*, %struct.sun8i_mixer** %6, align 8
  %33 = call i64 @sun8i_blender_base(%struct.sun8i_mixer* %32)
  store i64 %33, i64* %16, align 8
  %34 = load %struct.sun8i_mixer*, %struct.sun8i_mixer** %6, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call i64 @sun8i_channel_base(%struct.sun8i_mixer* %34, i32 %35)
  store i64 %36, i64* %17, align 8
  %37 = load %struct.drm_plane_state*, %struct.drm_plane_state** %11, align 8
  %38 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %37, i32 0, i32 5
  %39 = call i32 @drm_rect_width(%struct.TYPE_11__* %38)
  %40 = ashr i32 %39, 16
  %41 = sext i32 %40 to i64
  store i64 %41, i64* %12, align 8
  %42 = load %struct.drm_plane_state*, %struct.drm_plane_state** %11, align 8
  %43 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %42, i32 0, i32 5
  %44 = call i32 @drm_rect_height(%struct.TYPE_11__* %43)
  %45 = ashr i32 %44, 16
  %46 = sext i32 %45 to i64
  store i64 %46, i64* %13, align 8
  %47 = load %struct.drm_plane_state*, %struct.drm_plane_state** %11, align 8
  %48 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %47, i32 0, i32 4
  %49 = call i32 @drm_rect_width(%struct.TYPE_11__* %48)
  %50 = sext i32 %49 to i64
  store i64 %50, i64* %14, align 8
  %51 = load %struct.drm_plane_state*, %struct.drm_plane_state** %11, align 8
  %52 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %51, i32 0, i32 4
  %53 = call i32 @drm_rect_height(%struct.TYPE_11__* %52)
  %54 = sext i32 %53 to i64
  store i64 %54, i64* %15, align 8
  %55 = load %struct.drm_plane_state*, %struct.drm_plane_state** %11, align 8
  %56 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %55, i32 0, i32 5
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = and i32 %58, 65535
  %60 = sext i32 %59 to i64
  store i64 %60, i64* %20, align 8
  %61 = load %struct.drm_plane_state*, %struct.drm_plane_state** %11, align 8
  %62 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %61, i32 0, i32 5
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = and i32 %64, 65535
  %66 = sext i32 %65 to i64
  store i64 %66, i64* %21, align 8
  %67 = load i64, i64* %12, align 8
  %68 = load i64, i64* %13, align 8
  %69 = call i64 @SUN8I_MIXER_SIZE(i64 %67, i64 %68)
  store i64 %69, i64* %19, align 8
  %70 = load i64, i64* %14, align 8
  %71 = load i64, i64* %15, align 8
  %72 = call i64 @SUN8I_MIXER_SIZE(i64 %70, i64 %71)
  store i64 %72, i64* %18, align 8
  %73 = load %struct.drm_plane*, %struct.drm_plane** %9, align 8
  %74 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @DRM_PLANE_TYPE_PRIMARY, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %133

78:                                               ; preds = %5
  store i32 0, i32* %22, align 4
  %79 = load i64, i64* %14, align 8
  %80 = load i64, i64* %15, align 8
  %81 = call i32 (i8*, ...) @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i64 %79, i64 %80)
  %82 = load %struct.sun8i_mixer*, %struct.sun8i_mixer** %6, align 8
  %83 = getelementptr inbounds %struct.sun8i_mixer, %struct.sun8i_mixer* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @SUN8I_MIXER_GLOBAL_SIZE, align 4
  %87 = load i64, i64* %18, align 8
  %88 = call i32 @regmap_write(i32 %85, i32 %86, i64 %87)
  %89 = load %struct.sun8i_mixer*, %struct.sun8i_mixer** %6, align 8
  %90 = getelementptr inbounds %struct.sun8i_mixer, %struct.sun8i_mixer* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i64, i64* %16, align 8
  %94 = call i32 @SUN8I_MIXER_BLEND_OUTSIZE(i64 %93)
  %95 = load i64, i64* %18, align 8
  %96 = call i32 @regmap_write(i32 %92, i32 %94, i64 %95)
  %97 = load %struct.drm_plane_state*, %struct.drm_plane_state** %11, align 8
  %98 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %97, i32 0, i32 6
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %98, align 8
  %100 = icmp ne %struct.TYPE_9__* %99, null
  br i1 %100, label %101, label %112

101:                                              ; preds = %78
  %102 = load %struct.drm_plane_state*, %struct.drm_plane_state** %11, align 8
  %103 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %102, i32 0, i32 6
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @DRM_MODE_FLAG_INTERLACE, align 4
  %111 = and i32 %109, %110
  store i32 %111, i32* %22, align 4
  br label %112

112:                                              ; preds = %101, %78
  %113 = load i32, i32* %22, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %112
  %116 = load i64, i64* @SUN8I_MIXER_BLEND_OUTCTL_INTERLACED, align 8
  store i64 %116, i64* %23, align 8
  br label %118

117:                                              ; preds = %112
  store i64 0, i64* %23, align 8
  br label %118

118:                                              ; preds = %117, %115
  %119 = load %struct.sun8i_mixer*, %struct.sun8i_mixer** %6, align 8
  %120 = getelementptr inbounds %struct.sun8i_mixer, %struct.sun8i_mixer* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i64, i64* %16, align 8
  %124 = call i32 @SUN8I_MIXER_BLEND_OUTCTL(i64 %123)
  %125 = load i64, i64* @SUN8I_MIXER_BLEND_OUTCTL_INTERLACED, align 8
  %126 = load i64, i64* %23, align 8
  %127 = call i32 @regmap_update_bits(i32 %122, i32 %124, i64 %125, i64 %126)
  %128 = load i32, i32* %22, align 4
  %129 = icmp ne i32 %128, 0
  %130 = zext i1 %129 to i64
  %131 = select i1 %129, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)
  %132 = call i32 (i8*, ...) @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i8* %131)
  br label %133

133:                                              ; preds = %118, %5
  %134 = load %struct.drm_plane_state*, %struct.drm_plane_state** %11, align 8
  %135 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %134, i32 0, i32 5
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = ashr i32 %137, 16
  %139 = load %struct.drm_plane_state*, %struct.drm_plane_state** %11, align 8
  %140 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %139, i32 0, i32 5
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = ashr i32 %142, 16
  %144 = call i32 (i8*, ...) @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i32 %138, i32 %143)
  %145 = load i64, i64* %12, align 8
  %146 = load i64, i64* %13, align 8
  %147 = call i32 (i8*, ...) @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i64 %145, i64 %146)
  %148 = load %struct.sun8i_mixer*, %struct.sun8i_mixer** %6, align 8
  %149 = getelementptr inbounds %struct.sun8i_mixer, %struct.sun8i_mixer* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load i64, i64* %17, align 8
  %153 = load i32, i32* %8, align 4
  %154 = call i32 @SUN8I_MIXER_CHAN_UI_LAYER_SIZE(i64 %152, i32 %153)
  %155 = load i64, i64* %19, align 8
  %156 = call i32 @regmap_write(i32 %151, i32 %154, i64 %155)
  %157 = load %struct.sun8i_mixer*, %struct.sun8i_mixer** %6, align 8
  %158 = getelementptr inbounds %struct.sun8i_mixer, %struct.sun8i_mixer* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = load i64, i64* %17, align 8
  %162 = call i32 @SUN8I_MIXER_CHAN_UI_OVL_SIZE(i64 %161)
  %163 = load i64, i64* %19, align 8
  %164 = call i32 @regmap_write(i32 %160, i32 %162, i64 %163)
  %165 = load i64, i64* %19, align 8
  %166 = load i64, i64* %18, align 8
  %167 = icmp ne i64 %165, %166
  br i1 %167, label %174, label %168

168:                                              ; preds = %133
  %169 = load i64, i64* %20, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %174, label %171

171:                                              ; preds = %168
  %172 = load i64, i64* %21, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %204

174:                                              ; preds = %171, %168, %133
  %175 = call i32 (i8*, ...) @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  %176 = load %struct.drm_plane_state*, %struct.drm_plane_state** %11, align 8
  %177 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = load %struct.drm_plane_state*, %struct.drm_plane_state** %11, align 8
  %180 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %179, i32 0, i32 1
  %181 = load i64, i64* %180, align 8
  %182 = sdiv i64 %178, %181
  store i64 %182, i64* %24, align 8
  %183 = load %struct.drm_plane_state*, %struct.drm_plane_state** %11, align 8
  %184 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %183, i32 0, i32 2
  %185 = load i64, i64* %184, align 8
  %186 = load %struct.drm_plane_state*, %struct.drm_plane_state** %11, align 8
  %187 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %186, i32 0, i32 3
  %188 = load i64, i64* %187, align 8
  %189 = sdiv i64 %185, %188
  store i64 %189, i64* %25, align 8
  %190 = load %struct.sun8i_mixer*, %struct.sun8i_mixer** %6, align 8
  %191 = load i32, i32* %7, align 4
  %192 = load i64, i64* %12, align 8
  %193 = load i64, i64* %13, align 8
  %194 = load i64, i64* %14, align 8
  %195 = load i64, i64* %15, align 8
  %196 = load i64, i64* %24, align 8
  %197 = load i64, i64* %25, align 8
  %198 = load i64, i64* %20, align 8
  %199 = load i64, i64* %21, align 8
  %200 = call i32 @sun8i_ui_scaler_setup(%struct.sun8i_mixer* %190, i32 %191, i64 %192, i64 %193, i64 %194, i64 %195, i64 %196, i64 %197, i64 %198, i64 %199)
  %201 = load %struct.sun8i_mixer*, %struct.sun8i_mixer** %6, align 8
  %202 = load i32, i32* %7, align 4
  %203 = call i32 @sun8i_ui_scaler_enable(%struct.sun8i_mixer* %201, i32 %202, i32 1)
  br label %209

204:                                              ; preds = %171
  %205 = call i32 (i8*, ...) @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0))
  %206 = load %struct.sun8i_mixer*, %struct.sun8i_mixer** %6, align 8
  %207 = load i32, i32* %7, align 4
  %208 = call i32 @sun8i_ui_scaler_enable(%struct.sun8i_mixer* %206, i32 %207, i32 0)
  br label %209

209:                                              ; preds = %204, %174
  %210 = load %struct.drm_plane_state*, %struct.drm_plane_state** %11, align 8
  %211 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %210, i32 0, i32 4
  %212 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = load %struct.drm_plane_state*, %struct.drm_plane_state** %11, align 8
  %215 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %214, i32 0, i32 4
  %216 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 4
  %218 = call i32 (i8*, ...) @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.9, i64 0, i64 0), i32 %213, i32 %217)
  %219 = load i64, i64* %14, align 8
  %220 = load i64, i64* %15, align 8
  %221 = call i32 (i8*, ...) @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10, i64 0, i64 0), i64 %219, i64 %220)
  %222 = load %struct.sun8i_mixer*, %struct.sun8i_mixer** %6, align 8
  %223 = getelementptr inbounds %struct.sun8i_mixer, %struct.sun8i_mixer* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 4
  %226 = load i64, i64* %16, align 8
  %227 = load i32, i32* %10, align 4
  %228 = call i32 @SUN8I_MIXER_BLEND_ATTR_COORD(i64 %226, i32 %227)
  %229 = load %struct.drm_plane_state*, %struct.drm_plane_state** %11, align 8
  %230 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %229, i32 0, i32 4
  %231 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = sext i32 %232 to i64
  %234 = load %struct.drm_plane_state*, %struct.drm_plane_state** %11, align 8
  %235 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %234, i32 0, i32 4
  %236 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %235, i32 0, i32 1
  %237 = load i32, i32* %236, align 4
  %238 = sext i32 %237 to i64
  %239 = call i64 @SUN8I_MIXER_COORD(i64 %233, i64 %238)
  %240 = call i32 @regmap_write(i32 %225, i32 %228, i64 %239)
  %241 = load %struct.sun8i_mixer*, %struct.sun8i_mixer** %6, align 8
  %242 = getelementptr inbounds %struct.sun8i_mixer, %struct.sun8i_mixer* %241, i32 0, i32 0
  %243 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 4
  %245 = load i64, i64* %16, align 8
  %246 = load i32, i32* %10, align 4
  %247 = call i32 @SUN8I_MIXER_BLEND_ATTR_INSIZE(i64 %245, i32 %246)
  %248 = load i64, i64* %18, align 8
  %249 = call i32 @regmap_write(i32 %244, i32 %247, i64 %248)
  ret i32 0
}

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, ...) #1

declare dso_local i64 @sun8i_blender_base(%struct.sun8i_mixer*) #1

declare dso_local i64 @sun8i_channel_base(%struct.sun8i_mixer*, i32) #1

declare dso_local i32 @drm_rect_width(%struct.TYPE_11__*) #1

declare dso_local i32 @drm_rect_height(%struct.TYPE_11__*) #1

declare dso_local i64 @SUN8I_MIXER_SIZE(i64, i64) #1

declare dso_local i32 @regmap_write(i32, i32, i64) #1

declare dso_local i32 @SUN8I_MIXER_BLEND_OUTSIZE(i64) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i64, i64) #1

declare dso_local i32 @SUN8I_MIXER_BLEND_OUTCTL(i64) #1

declare dso_local i32 @SUN8I_MIXER_CHAN_UI_LAYER_SIZE(i64, i32) #1

declare dso_local i32 @SUN8I_MIXER_CHAN_UI_OVL_SIZE(i64) #1

declare dso_local i32 @sun8i_ui_scaler_setup(%struct.sun8i_mixer*, i32, i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @sun8i_ui_scaler_enable(%struct.sun8i_mixer*, i32, i32) #1

declare dso_local i32 @SUN8I_MIXER_BLEND_ATTR_COORD(i64, i32) #1

declare dso_local i64 @SUN8I_MIXER_COORD(i64, i64) #1

declare dso_local i32 @SUN8I_MIXER_BLEND_ATTR_INSIZE(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
