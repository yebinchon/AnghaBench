; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/extr_malidp_planes.c_malidp_de_plane_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/extr_malidp_planes.c_malidp_de_plane_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { i32 }
%struct.drm_plane_state = type { i32, i64, i32, i32, i64, i64, i64, %struct.drm_framebuffer*, i32 }
%struct.drm_framebuffer = type { i32*, i32, i32, %struct.TYPE_10__*, i64 }
%struct.TYPE_10__ = type { i64, i32, i64 }
%struct.malidp_plane = type { %struct.TYPE_9__*, %struct.TYPE_7__* }
%struct.TYPE_9__ = type { i64, i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32 (%struct.TYPE_9__*, i64, i64, i64, i32)*, i32 }
%struct.TYPE_7__ = type { i64, i64 }
%struct.malidp_plane_state = type { i64, i32, i32 }

@MALIDP_ROTATED_MASK = common dso_local global i32 0, align 4
@MALIDP_INVALID_FORMAT_ID = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Invalid pitch %u for plane %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [57 x i8] c"Buffer width/height needs to be a multiple of tile sizes\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"Plane src_x/src_y needs to be a multiple of tile sizes\00", align 1
@MALIDP_DEVICE_LV_HAS_3_STRIDES = common dso_local global i32 0, align 4
@DRM_MODE_ROTATE_0 = common dso_local global i32 0, align 4
@ROTATE_NONE = common dso_local global i64 0, align 8
@ROTATE_COMPRESSED = common dso_local global i64 0, align 8
@DRM_FORMAT_RGB888 = common dso_local global i64 0, align 8
@DRM_FORMAT_BGR888 = common dso_local global i64 0, align 8
@DE_SMART = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [46 x i8] c"AFBC framebuffer not supported in SMART layer\00", align 1
@DRM_BLEND_ALPHA_OPAQUE = common dso_local global i64 0, align 8
@DRM_MODE_BLEND_PIXEL_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_plane*, %struct.drm_plane_state*)* @malidp_de_plane_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @malidp_de_plane_check(%struct.drm_plane* %0, %struct.drm_plane_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_plane*, align 8
  %5 = alloca %struct.drm_plane_state*, align 8
  %6 = alloca %struct.malidp_plane*, align 8
  %7 = alloca %struct.malidp_plane_state*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.drm_framebuffer*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.drm_plane* %0, %struct.drm_plane** %4, align 8
  store %struct.drm_plane_state* %1, %struct.drm_plane_state** %5, align 8
  %17 = load %struct.drm_plane*, %struct.drm_plane** %4, align 8
  %18 = call %struct.malidp_plane* @to_malidp_plane(%struct.drm_plane* %17)
  store %struct.malidp_plane* %18, %struct.malidp_plane** %6, align 8
  %19 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %20 = call %struct.malidp_plane_state* @to_malidp_plane_state(%struct.drm_plane_state* %19)
  store %struct.malidp_plane_state* %20, %struct.malidp_plane_state** %7, align 8
  %21 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %22 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @MALIDP_ROTATED_MASK, align 4
  %25 = and i32 %23, %24
  store i32 %25, i32* %8, align 4
  %26 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %27 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %10, align 8
  %29 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %30 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %29, i32 0, i32 8
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %2
  %34 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %35 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %34, i32 0, i32 7
  %36 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %35, align 8
  %37 = icmp ne %struct.drm_framebuffer* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %33, %2
  store i32 0, i32* %3, align 4
  br label %413

39:                                               ; preds = %33
  %40 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %41 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %40, i32 0, i32 7
  %42 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %41, align 8
  store %struct.drm_framebuffer* %42, %struct.drm_framebuffer** %9, align 8
  %43 = load %struct.malidp_plane*, %struct.malidp_plane** %6, align 8
  %44 = getelementptr inbounds %struct.malidp_plane, %struct.malidp_plane* %43, i32 0, i32 0
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 2
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 2
  %49 = load %struct.malidp_plane*, %struct.malidp_plane** %6, align 8
  %50 = getelementptr inbounds %struct.malidp_plane, %struct.malidp_plane* %49, i32 0, i32 1
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %55 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %54, i32 0, i32 3
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %60 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %59, i32 0, i32 4
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  %63 = xor i1 %62, true
  %64 = xor i1 %63, true
  %65 = zext i1 %64 to i32
  %66 = call i64 @malidp_hw_get_format_id(i32* %48, i64 %53, i64 %58, i32 %65)
  %67 = load %struct.malidp_plane_state*, %struct.malidp_plane_state** %7, align 8
  %68 = getelementptr inbounds %struct.malidp_plane_state, %struct.malidp_plane_state* %67, i32 0, i32 0
  store i64 %66, i64* %68, align 8
  %69 = load %struct.malidp_plane_state*, %struct.malidp_plane_state** %7, align 8
  %70 = getelementptr inbounds %struct.malidp_plane_state, %struct.malidp_plane_state* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @MALIDP_INVALID_FORMAT_ID, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %39
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %3, align 4
  br label %413

77:                                               ; preds = %39
  %78 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %79 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %78, i32 0, i32 3
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.malidp_plane_state*, %struct.malidp_plane_state** %7, align 8
  %84 = getelementptr inbounds %struct.malidp_plane_state, %struct.malidp_plane_state* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 8
  store i32 0, i32* %11, align 4
  br label %85

85:                                               ; preds = %132, %77
  %86 = load i32, i32* %11, align 4
  %87 = load %struct.malidp_plane_state*, %struct.malidp_plane_state** %7, align 8
  %88 = getelementptr inbounds %struct.malidp_plane_state, %struct.malidp_plane_state* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = icmp slt i32 %86, %89
  br i1 %90, label %91, label %135

91:                                               ; preds = %85
  %92 = load %struct.malidp_plane*, %struct.malidp_plane** %6, align 8
  %93 = getelementptr inbounds %struct.malidp_plane, %struct.malidp_plane* %92, i32 0, i32 0
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %93, align 8
  %95 = load i32, i32* %8, align 4
  %96 = call i32 @malidp_hw_get_pitch_align(%struct.TYPE_9__* %94, i32 %95)
  store i32 %96, i32* %15, align 4
  %97 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %98 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* %11, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %105 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %104, i32 0, i32 3
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %105, align 8
  %107 = load i32, i32* %11, align 4
  %108 = call i32 @drm_format_info_block_height(%struct.TYPE_10__* %106, i32 %107)
  %109 = mul nsw i32 %103, %108
  %110 = load i32, i32* %15, align 4
  %111 = sub nsw i32 %110, 1
  %112 = and i32 %109, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %131

114:                                              ; preds = %91
  %115 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %116 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %115, i32 0, i32 4
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %131, label %119

119:                                              ; preds = %114
  %120 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %121 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %120, i32 0, i32 0
  %122 = load i32*, i32** %121, align 8
  %123 = load i32, i32* %11, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* %11, align 4
  %128 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %126, i32 %127)
  %129 = load i32, i32* @EINVAL, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %3, align 4
  br label %413

131:                                              ; preds = %114, %91
  br label %132

132:                                              ; preds = %131
  %133 = load i32, i32* %11, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %11, align 4
  br label %85

135:                                              ; preds = %85
  %136 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %137 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %136, i32 0, i32 3
  %138 = load %struct.TYPE_10__*, %struct.TYPE_10__** %137, align 8
  %139 = call i32 @drm_format_info_block_width(%struct.TYPE_10__* %138, i32 0)
  store i32 %139, i32* %13, align 4
  %140 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %141 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %140, i32 0, i32 3
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** %141, align 8
  %143 = call i32 @drm_format_info_block_height(%struct.TYPE_10__* %142, i32 0)
  store i32 %143, i32* %14, align 4
  %144 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %145 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* %13, align 4
  %148 = urem i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %157, label %150

150:                                              ; preds = %135
  %151 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %152 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* %14, align 4
  %155 = urem i32 %153, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %161

157:                                              ; preds = %150, %135
  %158 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0))
  %159 = load i32, i32* @EINVAL, align 4
  %160 = sub nsw i32 0, %159
  store i32 %160, i32* %3, align 4
  br label %413

161:                                              ; preds = %150
  %162 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %163 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 8
  %165 = ashr i32 %164, 16
  %166 = load i32, i32* %13, align 4
  %167 = urem i32 %165, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %177, label %169

169:                                              ; preds = %161
  %170 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %171 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %170, i32 0, i32 3
  %172 = load i32, i32* %171, align 4
  %173 = ashr i32 %172, 16
  %174 = load i32, i32* %14, align 4
  %175 = urem i32 %173, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %181

177:                                              ; preds = %169, %161
  %178 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0))
  %179 = load i32, i32* @EINVAL, align 4
  %180 = sub nsw i32 0, %179
  store i32 %180, i32* %3, align 4
  br label %413

181:                                              ; preds = %169
  %182 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %183 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %182, i32 0, i32 4
  %184 = load i64, i64* %183, align 8
  %185 = load %struct.malidp_plane*, %struct.malidp_plane** %6, align 8
  %186 = getelementptr inbounds %struct.malidp_plane, %struct.malidp_plane* %185, i32 0, i32 0
  %187 = load %struct.TYPE_9__*, %struct.TYPE_9__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = icmp sgt i64 %184, %189
  br i1 %190, label %221, label %191

191:                                              ; preds = %181
  %192 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %193 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %192, i32 0, i32 5
  %194 = load i64, i64* %193, align 8
  %195 = load %struct.malidp_plane*, %struct.malidp_plane** %6, align 8
  %196 = getelementptr inbounds %struct.malidp_plane, %struct.malidp_plane* %195, i32 0, i32 0
  %197 = load %struct.TYPE_9__*, %struct.TYPE_9__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = icmp sgt i64 %194, %199
  br i1 %200, label %221, label %201

201:                                              ; preds = %191
  %202 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %203 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %202, i32 0, i32 4
  %204 = load i64, i64* %203, align 8
  %205 = load %struct.malidp_plane*, %struct.malidp_plane** %6, align 8
  %206 = getelementptr inbounds %struct.malidp_plane, %struct.malidp_plane* %205, i32 0, i32 0
  %207 = load %struct.TYPE_9__*, %struct.TYPE_9__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %207, i32 0, i32 1
  %209 = load i64, i64* %208, align 8
  %210 = icmp slt i64 %204, %209
  br i1 %210, label %221, label %211

211:                                              ; preds = %201
  %212 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %213 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %212, i32 0, i32 5
  %214 = load i64, i64* %213, align 8
  %215 = load %struct.malidp_plane*, %struct.malidp_plane** %6, align 8
  %216 = getelementptr inbounds %struct.malidp_plane, %struct.malidp_plane* %215, i32 0, i32 0
  %217 = load %struct.TYPE_9__*, %struct.TYPE_9__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %217, i32 0, i32 1
  %219 = load i64, i64* %218, align 8
  %220 = icmp slt i64 %214, %219
  br i1 %220, label %221, label %224

221:                                              ; preds = %211, %201, %191, %181
  %222 = load i32, i32* @EINVAL, align 4
  %223 = sub nsw i32 0, %222
  store i32 %223, i32* %3, align 4
  br label %413

224:                                              ; preds = %211
  %225 = load %struct.malidp_plane_state*, %struct.malidp_plane_state** %7, align 8
  %226 = getelementptr inbounds %struct.malidp_plane_state, %struct.malidp_plane_state* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 8
  %228 = icmp eq i32 %227, 3
  br i1 %228, label %229, label %259

229:                                              ; preds = %224
  %230 = load %struct.malidp_plane*, %struct.malidp_plane** %6, align 8
  %231 = getelementptr inbounds %struct.malidp_plane, %struct.malidp_plane* %230, i32 0, i32 0
  %232 = load %struct.TYPE_9__*, %struct.TYPE_9__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %232, i32 0, i32 2
  %234 = load %struct.TYPE_8__*, %struct.TYPE_8__** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 8
  %237 = load i32, i32* @MALIDP_DEVICE_LV_HAS_3_STRIDES, align 4
  %238 = and i32 %236, %237
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %259, label %240

240:                                              ; preds = %229
  %241 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %242 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %241, i32 0, i32 7
  %243 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %242, align 8
  %244 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %243, i32 0, i32 0
  %245 = load i32*, i32** %244, align 8
  %246 = getelementptr inbounds i32, i32* %245, i64 1
  %247 = load i32, i32* %246, align 4
  %248 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %249 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %248, i32 0, i32 7
  %250 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %249, align 8
  %251 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %250, i32 0, i32 0
  %252 = load i32*, i32** %251, align 8
  %253 = getelementptr inbounds i32, i32* %252, i64 2
  %254 = load i32, i32* %253, align 4
  %255 = icmp ne i32 %247, %254
  br i1 %255, label %256, label %259

256:                                              ; preds = %240
  %257 = load i32, i32* @EINVAL, align 4
  %258 = sub nsw i32 0, %257
  store i32 %258, i32* %3, align 4
  br label %413

259:                                              ; preds = %240, %229, %224
  %260 = load %struct.malidp_plane*, %struct.malidp_plane** %6, align 8
  %261 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %262 = call i32 @malidp_se_check_scaling(%struct.malidp_plane* %260, %struct.drm_plane_state* %261)
  store i32 %262, i32* %12, align 4
  %263 = load i32, i32* %12, align 4
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %267

265:                                              ; preds = %259
  %266 = load i32, i32* %12, align 4
  store i32 %266, i32* %3, align 4
  br label %413

267:                                              ; preds = %259
  %268 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %269 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 8
  %271 = load i32, i32* @DRM_MODE_ROTATE_0, align 4
  %272 = icmp ne i32 %270, %271
  br i1 %272, label %273, label %325

273:                                              ; preds = %267
  %274 = load %struct.malidp_plane*, %struct.malidp_plane** %6, align 8
  %275 = getelementptr inbounds %struct.malidp_plane, %struct.malidp_plane* %274, i32 0, i32 1
  %276 = load %struct.TYPE_7__*, %struct.TYPE_7__** %275, align 8
  %277 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %276, i32 0, i32 1
  %278 = load i64, i64* %277, align 8
  %279 = load i64, i64* @ROTATE_NONE, align 8
  %280 = icmp eq i64 %278, %279
  br i1 %280, label %281, label %284

281:                                              ; preds = %273
  %282 = load i32, i32* @EINVAL, align 4
  %283 = sub nsw i32 0, %282
  store i32 %283, i32* %3, align 4
  br label %413

284:                                              ; preds = %273
  %285 = load %struct.malidp_plane*, %struct.malidp_plane** %6, align 8
  %286 = getelementptr inbounds %struct.malidp_plane, %struct.malidp_plane* %285, i32 0, i32 1
  %287 = load %struct.TYPE_7__*, %struct.TYPE_7__** %286, align 8
  %288 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %287, i32 0, i32 1
  %289 = load i64, i64* %288, align 8
  %290 = load i64, i64* @ROTATE_COMPRESSED, align 8
  %291 = icmp eq i64 %289, %290
  br i1 %291, label %292, label %300

292:                                              ; preds = %284
  %293 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %294 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %293, i32 0, i32 4
  %295 = load i64, i64* %294, align 8
  %296 = icmp ne i64 %295, 0
  br i1 %296, label %300, label %297

297:                                              ; preds = %292
  %298 = load i32, i32* @EINVAL, align 4
  %299 = sub nsw i32 0, %298
  store i32 %299, i32* %3, align 4
  br label %413

300:                                              ; preds = %292, %284
  %301 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %302 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %301, i32 0, i32 3
  %303 = load %struct.TYPE_10__*, %struct.TYPE_10__** %302, align 8
  %304 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %303, i32 0, i32 0
  %305 = load i64, i64* %304, align 8
  %306 = load i64, i64* @DRM_FORMAT_RGB888, align 8
  %307 = icmp eq i64 %305, %306
  br i1 %307, label %316, label %308

308:                                              ; preds = %300
  %309 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %310 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %309, i32 0, i32 3
  %311 = load %struct.TYPE_10__*, %struct.TYPE_10__** %310, align 8
  %312 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %311, i32 0, i32 0
  %313 = load i64, i64* %312, align 8
  %314 = load i64, i64* @DRM_FORMAT_BGR888, align 8
  %315 = icmp eq i64 %313, %314
  br i1 %315, label %316, label %324

316:                                              ; preds = %308, %300
  %317 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %318 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %317, i32 0, i32 4
  %319 = load i64, i64* %318, align 8
  %320 = icmp ne i64 %319, 0
  br i1 %320, label %324, label %321

321:                                              ; preds = %316
  %322 = load i32, i32* @EINVAL, align 4
  %323 = sub nsw i32 0, %322
  store i32 %323, i32* %3, align 4
  br label %413

324:                                              ; preds = %316, %308
  br label %325

325:                                              ; preds = %324, %267
  %326 = load %struct.malidp_plane*, %struct.malidp_plane** %6, align 8
  %327 = getelementptr inbounds %struct.malidp_plane, %struct.malidp_plane* %326, i32 0, i32 1
  %328 = load %struct.TYPE_7__*, %struct.TYPE_7__** %327, align 8
  %329 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %328, i32 0, i32 0
  %330 = load i64, i64* %329, align 8
  %331 = load i64, i64* @DE_SMART, align 8
  %332 = icmp eq i64 %330, %331
  br i1 %332, label %333, label %342

333:                                              ; preds = %325
  %334 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %335 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %334, i32 0, i32 4
  %336 = load i64, i64* %335, align 8
  %337 = icmp ne i64 %336, 0
  br i1 %337, label %338, label %342

338:                                              ; preds = %333
  %339 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0))
  %340 = load i32, i32* @EINVAL, align 4
  %341 = sub nsw i32 0, %340
  store i32 %341, i32* %3, align 4
  br label %413

342:                                              ; preds = %333, %325
  %343 = load %struct.malidp_plane_state*, %struct.malidp_plane_state** %7, align 8
  %344 = getelementptr inbounds %struct.malidp_plane_state, %struct.malidp_plane_state* %343, i32 0, i32 2
  store i32 0, i32* %344, align 4
  %345 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %346 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %345, i32 0, i32 0
  %347 = load i32, i32* %346, align 8
  %348 = load i32, i32* @MALIDP_ROTATED_MASK, align 4
  %349 = and i32 %347, %348
  %350 = icmp ne i32 %349, 0
  br i1 %350, label %351, label %389

351:                                              ; preds = %342
  %352 = load %struct.malidp_plane*, %struct.malidp_plane** %6, align 8
  %353 = getelementptr inbounds %struct.malidp_plane, %struct.malidp_plane* %352, i32 0, i32 0
  %354 = load %struct.TYPE_9__*, %struct.TYPE_9__** %353, align 8
  %355 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %354, i32 0, i32 2
  %356 = load %struct.TYPE_8__*, %struct.TYPE_8__** %355, align 8
  %357 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %356, i32 0, i32 1
  %358 = load i32 (%struct.TYPE_9__*, i64, i64, i64, i32)*, i32 (%struct.TYPE_9__*, i64, i64, i64, i32)** %357, align 8
  %359 = load %struct.malidp_plane*, %struct.malidp_plane** %6, align 8
  %360 = getelementptr inbounds %struct.malidp_plane, %struct.malidp_plane* %359, i32 0, i32 0
  %361 = load %struct.TYPE_9__*, %struct.TYPE_9__** %360, align 8
  %362 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %363 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %362, i32 0, i32 4
  %364 = load i64, i64* %363, align 8
  %365 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %366 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %365, i32 0, i32 5
  %367 = load i64, i64* %366, align 8
  %368 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %369 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %368, i32 0, i32 3
  %370 = load %struct.TYPE_10__*, %struct.TYPE_10__** %369, align 8
  %371 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %370, i32 0, i32 0
  %372 = load i64, i64* %371, align 8
  %373 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %374 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %373, i32 0, i32 4
  %375 = load i64, i64* %374, align 8
  %376 = icmp ne i64 %375, 0
  %377 = xor i1 %376, true
  %378 = xor i1 %377, true
  %379 = zext i1 %378 to i32
  %380 = call i32 %358(%struct.TYPE_9__* %361, i64 %364, i64 %367, i64 %372, i32 %379)
  store i32 %380, i32* %16, align 4
  %381 = load i32, i32* %16, align 4
  %382 = icmp slt i32 %381, 0
  br i1 %382, label %383, label %385

383:                                              ; preds = %351
  %384 = load i32, i32* %16, align 4
  store i32 %384, i32* %3, align 4
  br label %413

385:                                              ; preds = %351
  %386 = load i32, i32* %16, align 4
  %387 = load %struct.malidp_plane_state*, %struct.malidp_plane_state** %7, align 8
  %388 = getelementptr inbounds %struct.malidp_plane_state, %struct.malidp_plane_state* %387, i32 0, i32 2
  store i32 %386, i32* %388, align 4
  br label %389

389:                                              ; preds = %385, %342
  %390 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %391 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %390, i32 0, i32 6
  %392 = load i64, i64* %391, align 8
  %393 = load i64, i64* @DRM_BLEND_ALPHA_OPAQUE, align 8
  %394 = icmp ne i64 %392, %393
  br i1 %394, label %395, label %409

395:                                              ; preds = %389
  %396 = load i64, i64* %10, align 8
  %397 = load i64, i64* @DRM_MODE_BLEND_PIXEL_NONE, align 8
  %398 = icmp ne i64 %396, %397
  br i1 %398, label %399, label %409

399:                                              ; preds = %395
  %400 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %401 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %400, i32 0, i32 3
  %402 = load %struct.TYPE_10__*, %struct.TYPE_10__** %401, align 8
  %403 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %402, i32 0, i32 2
  %404 = load i64, i64* %403, align 8
  %405 = icmp ne i64 %404, 0
  br i1 %405, label %406, label %409

406:                                              ; preds = %399
  %407 = load i32, i32* @EINVAL, align 4
  %408 = sub nsw i32 0, %407
  store i32 %408, i32* %3, align 4
  br label %413

409:                                              ; preds = %399, %395, %389
  %410 = load %struct.malidp_plane*, %struct.malidp_plane** %6, align 8
  %411 = load %struct.malidp_plane_state*, %struct.malidp_plane_state** %7, align 8
  %412 = call i32 @malidp_de_prefetch_settings(%struct.malidp_plane* %410, %struct.malidp_plane_state* %411)
  store i32 0, i32* %3, align 4
  br label %413

413:                                              ; preds = %409, %406, %383, %338, %321, %297, %281, %265, %256, %221, %177, %157, %119, %74, %38
  %414 = load i32, i32* %3, align 4
  ret i32 %414
}

declare dso_local %struct.malidp_plane* @to_malidp_plane(%struct.drm_plane*) #1

declare dso_local %struct.malidp_plane_state* @to_malidp_plane_state(%struct.drm_plane_state*) #1

declare dso_local i64 @malidp_hw_get_format_id(i32*, i64, i64, i32) #1

declare dso_local i32 @malidp_hw_get_pitch_align(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @drm_format_info_block_height(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, ...) #1

declare dso_local i32 @drm_format_info_block_width(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @malidp_se_check_scaling(%struct.malidp_plane*, %struct.drm_plane_state*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @malidp_de_prefetch_settings(%struct.malidp_plane*, %struct.malidp_plane_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
