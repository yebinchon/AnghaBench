; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_fb.c_omap_framebuffer_update_scanout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_fb.c_omap_framebuffer_update_scanout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_framebuffer = type { i32*, %struct.TYPE_4__*, i32*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.drm_plane_state = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.omap_overlay_info = type { i32, i32, i64, i32, i8*, i32, i8*, i32, i32, i32, i32, i32 }
%struct.omap_framebuffer = type { %struct.plane*, %struct.drm_format_info* }
%struct.plane = type { i32 }
%struct.drm_format_info = type { i32* }

@OMAP_BO_TILED = common dso_local global i32 0, align 4
@DRM_FORMAT_UYVY = common dso_local global i32 0, align 4
@DRM_FORMAT_YUYV = common dso_local global i32 0, align 4
@MASK_Y_INVERT = common dso_local global i32 0, align 4
@MASK_X_INVERT = common dso_local global i32 0, align 4
@OMAP_DSS_ROT_TILER = common dso_local global i64 0, align 8
@DRM_MODE_ROTATE_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"rotation '%d' ignored for non-tiled fb\0A\00", align 1
@OMAP_DSS_ROT_NONE = common dso_local global i64 0, align 8
@DRM_FORMAT_NV12 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @omap_framebuffer_update_scanout(%struct.drm_framebuffer* %0, %struct.drm_plane_state* %1, %struct.omap_overlay_info* %2) #0 {
  %4 = alloca %struct.drm_framebuffer*, align 8
  %5 = alloca %struct.drm_plane_state*, align 8
  %6 = alloca %struct.omap_overlay_info*, align 8
  %7 = alloca %struct.omap_framebuffer*, align 8
  %8 = alloca %struct.drm_format_info*, align 8
  %9 = alloca %struct.plane*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.drm_framebuffer* %0, %struct.drm_framebuffer** %4, align 8
  store %struct.drm_plane_state* %1, %struct.drm_plane_state** %5, align 8
  store %struct.omap_overlay_info* %2, %struct.omap_overlay_info** %6, align 8
  %15 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %4, align 8
  %16 = call %struct.omap_framebuffer* @to_omap_framebuffer(%struct.drm_framebuffer* %15)
  store %struct.omap_framebuffer* %16, %struct.omap_framebuffer** %7, align 8
  %17 = load %struct.omap_framebuffer*, %struct.omap_framebuffer** %7, align 8
  %18 = getelementptr inbounds %struct.omap_framebuffer, %struct.omap_framebuffer* %17, i32 0, i32 1
  %19 = load %struct.drm_format_info*, %struct.drm_format_info** %18, align 8
  store %struct.drm_format_info* %19, %struct.drm_format_info** %8, align 8
  %20 = load %struct.omap_framebuffer*, %struct.omap_framebuffer** %7, align 8
  %21 = getelementptr inbounds %struct.omap_framebuffer, %struct.omap_framebuffer* %20, i32 0, i32 0
  %22 = load %struct.plane*, %struct.plane** %21, align 8
  %23 = getelementptr inbounds %struct.plane, %struct.plane* %22, i64 0
  store %struct.plane* %23, %struct.plane** %9, align 8
  store i32 0, i32* %12, align 4
  %24 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %4, align 8
  %25 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %24, i32 0, i32 1
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.omap_overlay_info*, %struct.omap_overlay_info** %6, align 8
  %30 = getelementptr inbounds %struct.omap_overlay_info, %struct.omap_overlay_info* %29, i32 0, i32 11
  store i32 %28, i32* %30, align 8
  %31 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %32 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %31, i32 0, i32 8
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.omap_overlay_info*, %struct.omap_overlay_info** %6, align 8
  %35 = getelementptr inbounds %struct.omap_overlay_info, %struct.omap_overlay_info* %34, i32 0, i32 10
  store i32 %33, i32* %35, align 4
  %36 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %37 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %36, i32 0, i32 7
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.omap_overlay_info*, %struct.omap_overlay_info** %6, align 8
  %40 = getelementptr inbounds %struct.omap_overlay_info, %struct.omap_overlay_info* %39, i32 0, i32 9
  store i32 %38, i32* %40, align 8
  %41 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %42 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %41, i32 0, i32 6
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.omap_overlay_info*, %struct.omap_overlay_info** %6, align 8
  %45 = getelementptr inbounds %struct.omap_overlay_info, %struct.omap_overlay_info* %44, i32 0, i32 8
  store i32 %43, i32* %45, align 4
  %46 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %47 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.omap_overlay_info*, %struct.omap_overlay_info** %6, align 8
  %50 = getelementptr inbounds %struct.omap_overlay_info, %struct.omap_overlay_info* %49, i32 0, i32 7
  store i32 %48, i32* %50, align 8
  %51 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %52 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = ashr i32 %53, 16
  %55 = load %struct.omap_overlay_info*, %struct.omap_overlay_info** %6, align 8
  %56 = getelementptr inbounds %struct.omap_overlay_info, %struct.omap_overlay_info* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %58 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = ashr i32 %59, 16
  %61 = load %struct.omap_overlay_info*, %struct.omap_overlay_info** %6, align 8
  %62 = getelementptr inbounds %struct.omap_overlay_info, %struct.omap_overlay_info* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  %63 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %64 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = call i64 @drm_rotation_90_or_270(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %3
  %69 = load %struct.omap_overlay_info*, %struct.omap_overlay_info** %6, align 8
  %70 = getelementptr inbounds %struct.omap_overlay_info, %struct.omap_overlay_info* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.omap_overlay_info*, %struct.omap_overlay_info** %6, align 8
  %73 = getelementptr inbounds %struct.omap_overlay_info, %struct.omap_overlay_info* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @swap(i32 %71, i32 %74)
  br label %76

76:                                               ; preds = %68, %3
  %77 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %78 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = ashr i32 %79, 16
  store i32 %80, i32* %10, align 4
  %81 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %82 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 4
  %84 = ashr i32 %83, 16
  store i32 %84, i32* %11, align 4
  %85 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %4, align 8
  %86 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @omap_gem_flags(i32 %89)
  %91 = load i32, i32* @OMAP_BO_TILED, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %181

94:                                               ; preds = %76
  %95 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %96 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = ashr i32 %97, 16
  store i32 %98, i32* %13, align 4
  %99 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %100 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = ashr i32 %101, 16
  store i32 %102, i32* %14, align 4
  %103 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %104 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @drm_rotation_to_tiler(i32 %105)
  store i32 %106, i32* %12, align 4
  %107 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %4, align 8
  %108 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %107, i32 0, i32 1
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @DRM_FORMAT_UYVY, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %122, label %114

114:                                              ; preds = %94
  %115 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %4, align 8
  %116 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %115, i32 0, i32 1
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @DRM_FORMAT_YUYV, align 4
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %122, label %127

122:                                              ; preds = %114, %94
  %123 = load i32, i32* %10, align 4
  %124 = sdiv i32 %123, 2
  store i32 %124, i32* %10, align 4
  %125 = load i32, i32* %13, align 4
  %126 = sdiv i32 %125, 2
  store i32 %126, i32* %13, align 4
  br label %127

127:                                              ; preds = %122, %114
  %128 = load i32, i32* %12, align 4
  %129 = load i32, i32* @MASK_Y_INVERT, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %137

132:                                              ; preds = %127
  %133 = load i32, i32* %14, align 4
  %134 = sub nsw i32 %133, 1
  %135 = load i32, i32* %11, align 4
  %136 = add nsw i32 %135, %134
  store i32 %136, i32* %11, align 4
  br label %137

137:                                              ; preds = %132, %127
  %138 = load i32, i32* %12, align 4
  %139 = load i32, i32* @MASK_X_INVERT, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %147

142:                                              ; preds = %137
  %143 = load i32, i32* %13, align 4
  %144 = sub nsw i32 %143, 1
  %145 = load i32, i32* %10, align 4
  %146 = add nsw i32 %145, %144
  store i32 %146, i32* %10, align 4
  br label %147

147:                                              ; preds = %142, %137
  %148 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %4, align 8
  %149 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %148, i32 0, i32 0
  %150 = load i32*, i32** %149, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 0
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* %12, align 4
  %154 = load i32, i32* %10, align 4
  %155 = load i32, i32* %11, align 4
  %156 = load %struct.omap_overlay_info*, %struct.omap_overlay_info** %6, align 8
  %157 = getelementptr inbounds %struct.omap_overlay_info, %struct.omap_overlay_info* %156, i32 0, i32 6
  %158 = call i32 @omap_gem_rotated_dma_addr(i32 %152, i32 %153, i32 %154, i32 %155, i8** %157)
  %159 = load i64, i64* @OMAP_DSS_ROT_TILER, align 8
  %160 = load %struct.omap_overlay_info*, %struct.omap_overlay_info** %6, align 8
  %161 = getelementptr inbounds %struct.omap_overlay_info, %struct.omap_overlay_info* %160, i32 0, i32 2
  store i64 %159, i64* %161, align 8
  %162 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %163 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %147
  br label %168

167:                                              ; preds = %147
  br label %168

168:                                              ; preds = %167, %166
  %169 = phi i32 [ %164, %166 ], [ 128, %167 ]
  %170 = load %struct.omap_overlay_info*, %struct.omap_overlay_info** %6, align 8
  %171 = getelementptr inbounds %struct.omap_overlay_info, %struct.omap_overlay_info* %170, i32 0, i32 3
  store i32 %169, i32* %171, align 8
  %172 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %4, align 8
  %173 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %172, i32 0, i32 0
  %174 = load i32*, i32** %173, align 8
  %175 = getelementptr inbounds i32, i32* %174, i64 0
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* %12, align 4
  %178 = call i32 @omap_gem_tiled_stride(i32 %176, i32 %177)
  %179 = load %struct.omap_overlay_info*, %struct.omap_overlay_info** %6, align 8
  %180 = getelementptr inbounds %struct.omap_overlay_info, %struct.omap_overlay_info* %179, i32 0, i32 5
  store i32 %178, i32* %180, align 8
  br label %218

181:                                              ; preds = %76
  %182 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %183 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* @DRM_MODE_ROTATE_MASK, align 4
  %186 = and i32 %184, %185
  switch i32 %186, label %188 [
    i32 0, label %187
    i32 128, label %187
  ]

187:                                              ; preds = %181, %181
  br label %198

188:                                              ; preds = %181
  %189 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %4, align 8
  %190 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %189, i32 0, i32 3
  %191 = load %struct.TYPE_3__*, %struct.TYPE_3__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %195 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %194, i32 0, i32 2
  %196 = load i32, i32* %195, align 4
  %197 = call i32 @dev_warn(i32 %193, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %196)
  br label %198

198:                                              ; preds = %188, %187
  %199 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %4, align 8
  %200 = load %struct.drm_format_info*, %struct.drm_format_info** %8, align 8
  %201 = load i32, i32* %10, align 4
  %202 = load i32, i32* %11, align 4
  %203 = call i8* @get_linear_addr(%struct.drm_framebuffer* %199, %struct.drm_format_info* %200, i32 0, i32 %201, i32 %202)
  %204 = load %struct.omap_overlay_info*, %struct.omap_overlay_info** %6, align 8
  %205 = getelementptr inbounds %struct.omap_overlay_info, %struct.omap_overlay_info* %204, i32 0, i32 6
  store i8* %203, i8** %205, align 8
  %206 = load i64, i64* @OMAP_DSS_ROT_NONE, align 8
  %207 = load %struct.omap_overlay_info*, %struct.omap_overlay_info** %6, align 8
  %208 = getelementptr inbounds %struct.omap_overlay_info, %struct.omap_overlay_info* %207, i32 0, i32 2
  store i64 %206, i64* %208, align 8
  %209 = load %struct.omap_overlay_info*, %struct.omap_overlay_info** %6, align 8
  %210 = getelementptr inbounds %struct.omap_overlay_info, %struct.omap_overlay_info* %209, i32 0, i32 3
  store i32 128, i32* %210, align 8
  %211 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %4, align 8
  %212 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %211, i32 0, i32 2
  %213 = load i32*, i32** %212, align 8
  %214 = getelementptr inbounds i32, i32* %213, i64 0
  %215 = load i32, i32* %214, align 4
  %216 = load %struct.omap_overlay_info*, %struct.omap_overlay_info** %6, align 8
  %217 = getelementptr inbounds %struct.omap_overlay_info, %struct.omap_overlay_info* %216, i32 0, i32 5
  store i32 %215, i32* %217, align 8
  br label %218

218:                                              ; preds = %198, %168
  %219 = load %struct.drm_format_info*, %struct.drm_format_info** %8, align 8
  %220 = getelementptr inbounds %struct.drm_format_info, %struct.drm_format_info* %219, i32 0, i32 0
  %221 = load i32*, i32** %220, align 8
  %222 = getelementptr inbounds i32, i32* %221, i64 0
  %223 = load i32, i32* %222, align 4
  %224 = load %struct.omap_overlay_info*, %struct.omap_overlay_info** %6, align 8
  %225 = getelementptr inbounds %struct.omap_overlay_info, %struct.omap_overlay_info* %224, i32 0, i32 5
  %226 = load i32, i32* %225, align 8
  %227 = sdiv i32 %226, %223
  store i32 %227, i32* %225, align 8
  %228 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %4, align 8
  %229 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %228, i32 0, i32 1
  %230 = load %struct.TYPE_4__*, %struct.TYPE_4__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 4
  %233 = load i32, i32* @DRM_FORMAT_NV12, align 4
  %234 = icmp eq i32 %232, %233
  br i1 %234, label %235, label %280

235:                                              ; preds = %218
  %236 = load %struct.omap_framebuffer*, %struct.omap_framebuffer** %7, align 8
  %237 = getelementptr inbounds %struct.omap_framebuffer, %struct.omap_framebuffer* %236, i32 0, i32 0
  %238 = load %struct.plane*, %struct.plane** %237, align 8
  %239 = getelementptr inbounds %struct.plane, %struct.plane* %238, i64 1
  store %struct.plane* %239, %struct.plane** %9, align 8
  %240 = load %struct.omap_overlay_info*, %struct.omap_overlay_info** %6, align 8
  %241 = getelementptr inbounds %struct.omap_overlay_info, %struct.omap_overlay_info* %240, i32 0, i32 2
  %242 = load i64, i64* %241, align 8
  %243 = load i64, i64* @OMAP_DSS_ROT_TILER, align 8
  %244 = icmp eq i64 %242, %243
  br i1 %244, label %245, label %271

245:                                              ; preds = %235
  %246 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %4, align 8
  %247 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %246, i32 0, i32 0
  %248 = load i32*, i32** %247, align 8
  %249 = getelementptr inbounds i32, i32* %248, i64 1
  %250 = load i32, i32* %249, align 4
  %251 = call i32 @omap_gem_flags(i32 %250)
  %252 = load i32, i32* @OMAP_BO_TILED, align 4
  %253 = and i32 %251, %252
  %254 = icmp ne i32 %253, 0
  %255 = xor i1 %254, true
  %256 = zext i1 %255 to i32
  %257 = call i32 @WARN_ON(i32 %256)
  %258 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %4, align 8
  %259 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %258, i32 0, i32 0
  %260 = load i32*, i32** %259, align 8
  %261 = getelementptr inbounds i32, i32* %260, i64 1
  %262 = load i32, i32* %261, align 4
  %263 = load i32, i32* %12, align 4
  %264 = load i32, i32* %10, align 4
  %265 = sdiv i32 %264, 2
  %266 = load i32, i32* %11, align 4
  %267 = sdiv i32 %266, 2
  %268 = load %struct.omap_overlay_info*, %struct.omap_overlay_info** %6, align 8
  %269 = getelementptr inbounds %struct.omap_overlay_info, %struct.omap_overlay_info* %268, i32 0, i32 4
  %270 = call i32 @omap_gem_rotated_dma_addr(i32 %262, i32 %263, i32 %265, i32 %267, i8** %269)
  br label %279

271:                                              ; preds = %235
  %272 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %4, align 8
  %273 = load %struct.drm_format_info*, %struct.drm_format_info** %8, align 8
  %274 = load i32, i32* %10, align 4
  %275 = load i32, i32* %11, align 4
  %276 = call i8* @get_linear_addr(%struct.drm_framebuffer* %272, %struct.drm_format_info* %273, i32 1, i32 %274, i32 %275)
  %277 = load %struct.omap_overlay_info*, %struct.omap_overlay_info** %6, align 8
  %278 = getelementptr inbounds %struct.omap_overlay_info, %struct.omap_overlay_info* %277, i32 0, i32 4
  store i8* %276, i8** %278, align 8
  br label %279

279:                                              ; preds = %271, %245
  br label %283

280:                                              ; preds = %218
  %281 = load %struct.omap_overlay_info*, %struct.omap_overlay_info** %6, align 8
  %282 = getelementptr inbounds %struct.omap_overlay_info, %struct.omap_overlay_info* %281, i32 0, i32 4
  store i8* null, i8** %282, align 8
  br label %283

283:                                              ; preds = %280, %279
  ret void
}

declare dso_local %struct.omap_framebuffer* @to_omap_framebuffer(%struct.drm_framebuffer*) #1

declare dso_local i64 @drm_rotation_90_or_270(i32) #1

declare dso_local i32 @swap(i32, i32) #1

declare dso_local i32 @omap_gem_flags(i32) #1

declare dso_local i32 @drm_rotation_to_tiler(i32) #1

declare dso_local i32 @omap_gem_rotated_dma_addr(i32, i32, i32, i32, i8**) #1

declare dso_local i32 @omap_gem_tiled_stride(i32, i32) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

declare dso_local i8* @get_linear_addr(%struct.drm_framebuffer*, %struct.drm_format_info*, i32, i32, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
