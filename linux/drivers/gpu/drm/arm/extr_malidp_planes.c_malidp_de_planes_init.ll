; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/extr_malidp_planes.c_malidp_de_planes_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/extr_malidp_planes.c_malidp_de_planes_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_7__, %struct.malidp_drm* }
%struct.TYPE_7__ = type { i32 }
%struct.malidp_drm = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.malidp_hw_regmap }
%struct.malidp_hw_regmap = type { i32, i32, i32, %struct.TYPE_9__*, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i32, i64 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.malidp_plane = type { i32, %struct.TYPE_9__*, %struct.TYPE_10__* }

@DRM_MODE_ROTATE_0 = common dso_local global i64 0, align 8
@DRM_MODE_ROTATE_90 = common dso_local global i64 0, align 8
@DRM_MODE_ROTATE_180 = common dso_local global i64 0, align 8
@DRM_MODE_ROTATE_270 = common dso_local global i64 0, align 8
@DRM_MODE_REFLECT_X = common dso_local global i64 0, align 8
@DRM_MODE_REFLECT_Y = common dso_local global i64 0, align 8
@DRM_MODE_BLEND_PIXEL_NONE = common dso_local global i32 0, align 4
@DRM_MODE_BLEND_PREMULTI = common dso_local global i32 0, align 4
@DRM_MODE_BLEND_COVERAGE = common dso_local global i32 0, align 4
@MODIFIERS_COUNT_MAX = common dso_local global i32 0, align 4
@malidp_format_modifiers = common dso_local global i32* null, align 8
@MALIDP_DEVICE_AFBC_SUPPORT_SPLIT = common dso_local global i32 0, align 4
@DRM_FORMAT_MOD_INVALID = common dso_local global i32 0, align 4
@AFBC_SPLIT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DRM_PLANE_TYPE_PRIMARY = common dso_local global i32 0, align 4
@DRM_PLANE_TYPE_OVERLAY = common dso_local global i32 0, align 4
@malidp_de_plane_funcs = common dso_local global i32 0, align 4
@DE_SMART = common dso_local global i32 0, align 4
@malidp_de_plane_helper_funcs = common dso_local global i32 0, align 4
@MALIDP_ALPHA_LUT = common dso_local global i32 0, align 4
@MALIDP_LAYER_COMPOSE = common dso_local global i64 0, align 8
@DE_VIDEO1 = common dso_local global i32 0, align 4
@DE_VIDEO2 = common dso_local global i32 0, align 4
@DRM_COLOR_YCBCR_BT601 = common dso_local global i32 0, align 4
@DRM_COLOR_YCBCR_LIMITED_RANGE = common dso_local global i32 0, align 4
@DRM_COLOR_YCBCR_BT709 = common dso_local global i32 0, align 4
@DRM_COLOR_YCBCR_BT2020 = common dso_local global i32 0, align 4
@DRM_COLOR_YCBCR_FULL_RANGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"Failed to create video layer %d color properties\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @malidp_de_planes_init(%struct.drm_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.malidp_drm*, align 8
  %5 = alloca %struct.malidp_hw_regmap*, align 8
  %6 = alloca %struct.malidp_plane*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  %23 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %24 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %23, i32 0, i32 1
  %25 = load %struct.malidp_drm*, %struct.malidp_drm** %24, align 8
  store %struct.malidp_drm* %25, %struct.malidp_drm** %4, align 8
  %26 = load %struct.malidp_drm*, %struct.malidp_drm** %4, align 8
  %27 = getelementptr inbounds %struct.malidp_drm, %struct.malidp_drm* %26, i32 0, i32 0
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  store %struct.malidp_hw_regmap* %31, %struct.malidp_hw_regmap** %5, align 8
  store %struct.malidp_plane* null, %struct.malidp_plane** %6, align 8
  %32 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %33 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = shl i32 1, %35
  %37 = sext i32 %36 to i64
  store i64 %37, i64* %8, align 8
  %38 = load i64, i64* @DRM_MODE_ROTATE_0, align 8
  %39 = load i64, i64* @DRM_MODE_ROTATE_90, align 8
  %40 = or i64 %38, %39
  %41 = load i64, i64* @DRM_MODE_ROTATE_180, align 8
  %42 = or i64 %40, %41
  %43 = load i64, i64* @DRM_MODE_ROTATE_270, align 8
  %44 = or i64 %42, %43
  %45 = load i64, i64* @DRM_MODE_REFLECT_X, align 8
  %46 = or i64 %44, %45
  %47 = load i64, i64* @DRM_MODE_REFLECT_Y, align 8
  %48 = or i64 %46, %47
  store i64 %48, i64* %9, align 8
  %49 = load i32, i32* @DRM_MODE_BLEND_PIXEL_NONE, align 4
  %50 = call i32 @BIT(i32 %49)
  %51 = load i32, i32* @DRM_MODE_BLEND_PREMULTI, align 4
  %52 = call i32 @BIT(i32 %51)
  %53 = or i32 %50, %52
  %54 = load i32, i32* @DRM_MODE_BLEND_COVERAGE, align 4
  %55 = call i32 @BIT(i32 %54)
  %56 = or i32 %53, %55
  store i32 %56, i32* %10, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %57 = load i32, i32* @MODIFIERS_COUNT_MAX, align 4
  %58 = zext i32 %57 to i64
  %59 = call i8* @llvm.stacksave()
  store i8* %59, i8** %16, align 8
  %60 = alloca i32, i64 %58, align 16
  store i64 %58, i64* %17, align 8
  %61 = load i32*, i32** @malidp_format_modifiers, align 8
  store i32* %61, i32** %18, align 8
  %62 = load %struct.malidp_hw_regmap*, %struct.malidp_hw_regmap** %5, align 8
  %63 = getelementptr inbounds %struct.malidp_hw_regmap, %struct.malidp_hw_regmap* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @MALIDP_DEVICE_AFBC_SUPPORT_SPLIT, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %96, label %68

68:                                               ; preds = %1
  br label %69

69:                                               ; preds = %87, %68
  %70 = load i32*, i32** %18, align 8
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @DRM_FORMAT_MOD_INVALID, align 4
  %73 = icmp ne i32 %71, %72
  br i1 %73, label %74, label %90

74:                                               ; preds = %69
  %75 = load i32*, i32** %18, align 8
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @AFBC_SPLIT, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %87, label %80

80:                                               ; preds = %74
  %81 = load i32*, i32** %18, align 8
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %14, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %14, align 4
  %85 = sext i32 %83 to i64
  %86 = getelementptr inbounds i32, i32* %60, i64 %85
  store i32 %82, i32* %86, align 4
  br label %87

87:                                               ; preds = %80, %74
  %88 = load i32*, i32** %18, align 8
  %89 = getelementptr inbounds i32, i32* %88, i32 1
  store i32* %89, i32** %18, align 8
  br label %69

90:                                               ; preds = %69
  %91 = load i32, i32* @DRM_FORMAT_MOD_INVALID, align 4
  %92 = load i32, i32* %14, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %14, align 4
  %94 = sext i32 %92 to i64
  %95 = getelementptr inbounds i32, i32* %60, i64 %94
  store i32 %91, i32* %95, align 4
  store i32* %60, i32** %18, align 8
  br label %96

96:                                               ; preds = %90, %1
  %97 = load %struct.malidp_hw_regmap*, %struct.malidp_hw_regmap** %5, align 8
  %98 = getelementptr inbounds %struct.malidp_hw_regmap, %struct.malidp_hw_regmap* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @GFP_KERNEL, align 4
  %101 = call i32* @kcalloc(i32 %99, i32 4, i32 %100)
  store i32* %101, i32** %11, align 8
  %102 = load i32*, i32** %11, align 8
  %103 = icmp ne i32* %102, null
  br i1 %103, label %107, label %104

104:                                              ; preds = %96
  %105 = load i32, i32* @ENOMEM, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %12, align 4
  br label %287

107:                                              ; preds = %96
  store i32 0, i32* %13, align 4
  br label %108

108:                                              ; preds = %281, %107
  %109 = load i32, i32* %13, align 4
  %110 = load %struct.malidp_hw_regmap*, %struct.malidp_hw_regmap** %5, align 8
  %111 = getelementptr inbounds %struct.malidp_hw_regmap, %struct.malidp_hw_regmap* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = icmp slt i32 %109, %112
  br i1 %113, label %114, label %284

114:                                              ; preds = %108
  %115 = load %struct.malidp_hw_regmap*, %struct.malidp_hw_regmap** %5, align 8
  %116 = getelementptr inbounds %struct.malidp_hw_regmap, %struct.malidp_hw_regmap* %115, i32 0, i32 3
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %116, align 8
  %118 = load i32, i32* %13, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  store i32 %122, i32* %19, align 4
  %123 = load i32, i32* @GFP_KERNEL, align 4
  %124 = call %struct.malidp_plane* @kzalloc(i32 24, i32 %123)
  store %struct.malidp_plane* %124, %struct.malidp_plane** %6, align 8
  %125 = load %struct.malidp_plane*, %struct.malidp_plane** %6, align 8
  %126 = icmp ne %struct.malidp_plane* %125, null
  br i1 %126, label %130, label %127

127:                                              ; preds = %114
  %128 = load i32, i32* @ENOMEM, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %12, align 4
  br label %287

130:                                              ; preds = %114
  store i32 0, i32* %15, align 4
  store i32 0, i32* %14, align 4
  br label %131

131:                                              ; preds = %165, %130
  %132 = load i32, i32* %14, align 4
  %133 = load %struct.malidp_hw_regmap*, %struct.malidp_hw_regmap** %5, align 8
  %134 = getelementptr inbounds %struct.malidp_hw_regmap, %struct.malidp_hw_regmap* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = icmp slt i32 %132, %135
  br i1 %136, label %137, label %168

137:                                              ; preds = %131
  %138 = load %struct.malidp_hw_regmap*, %struct.malidp_hw_regmap** %5, align 8
  %139 = getelementptr inbounds %struct.malidp_hw_regmap, %struct.malidp_hw_regmap* %138, i32 0, i32 4
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %139, align 8
  %141 = load i32, i32* %14, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* %19, align 4
  %147 = and i32 %145, %146
  %148 = load i32, i32* %19, align 4
  %149 = icmp eq i32 %147, %148
  br i1 %149, label %150, label %164

150:                                              ; preds = %137
  %151 = load %struct.malidp_hw_regmap*, %struct.malidp_hw_regmap** %5, align 8
  %152 = getelementptr inbounds %struct.malidp_hw_regmap, %struct.malidp_hw_regmap* %151, i32 0, i32 4
  %153 = load %struct.TYPE_8__*, %struct.TYPE_8__** %152, align 8
  %154 = load i32, i32* %14, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = load i32*, i32** %11, align 8
  %160 = load i32, i32* %15, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %15, align 4
  %162 = sext i32 %160 to i64
  %163 = getelementptr inbounds i32, i32* %159, i64 %162
  store i32 %158, i32* %163, align 4
  br label %164

164:                                              ; preds = %150, %137
  br label %165

165:                                              ; preds = %164
  %166 = load i32, i32* %14, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %14, align 4
  br label %131

168:                                              ; preds = %131
  %169 = load i32, i32* %13, align 4
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %171, label %173

171:                                              ; preds = %168
  %172 = load i32, i32* @DRM_PLANE_TYPE_PRIMARY, align 4
  br label %175

173:                                              ; preds = %168
  %174 = load i32, i32* @DRM_PLANE_TYPE_OVERLAY, align 4
  br label %175

175:                                              ; preds = %173, %171
  %176 = phi i32 [ %172, %171 ], [ %174, %173 ]
  store i32 %176, i32* %7, align 4
  %177 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %178 = load %struct.malidp_plane*, %struct.malidp_plane** %6, align 8
  %179 = getelementptr inbounds %struct.malidp_plane, %struct.malidp_plane* %178, i32 0, i32 0
  %180 = load i64, i64* %8, align 8
  %181 = load i32*, i32** %11, align 8
  %182 = load i32, i32* %15, align 4
  %183 = load i32, i32* %19, align 4
  %184 = load i32, i32* @DE_SMART, align 4
  %185 = icmp eq i32 %183, %184
  br i1 %185, label %186, label %187

186:                                              ; preds = %175
  br label %189

187:                                              ; preds = %175
  %188 = load i32*, i32** %18, align 8
  br label %189

189:                                              ; preds = %187, %186
  %190 = phi i32* [ null, %186 ], [ %188, %187 ]
  %191 = load i32, i32* %7, align 4
  %192 = call i32 @drm_universal_plane_init(%struct.drm_device* %177, i32* %179, i64 %180, i32* @malidp_de_plane_funcs, i32* %181, i32 %182, i32* %190, i32 %191, i32* null)
  store i32 %192, i32* %12, align 4
  %193 = load i32, i32* %12, align 4
  %194 = icmp slt i32 %193, 0
  br i1 %194, label %195, label %196

195:                                              ; preds = %189
  br label %287

196:                                              ; preds = %189
  %197 = load %struct.malidp_plane*, %struct.malidp_plane** %6, align 8
  %198 = getelementptr inbounds %struct.malidp_plane, %struct.malidp_plane* %197, i32 0, i32 0
  %199 = call i32 @drm_plane_helper_add(i32* %198, i32* @malidp_de_plane_helper_funcs)
  %200 = load %struct.malidp_drm*, %struct.malidp_drm** %4, align 8
  %201 = getelementptr inbounds %struct.malidp_drm, %struct.malidp_drm* %200, i32 0, i32 0
  %202 = load %struct.TYPE_10__*, %struct.TYPE_10__** %201, align 8
  %203 = load %struct.malidp_plane*, %struct.malidp_plane** %6, align 8
  %204 = getelementptr inbounds %struct.malidp_plane, %struct.malidp_plane* %203, i32 0, i32 2
  store %struct.TYPE_10__* %202, %struct.TYPE_10__** %204, align 8
  %205 = load %struct.malidp_hw_regmap*, %struct.malidp_hw_regmap** %5, align 8
  %206 = getelementptr inbounds %struct.malidp_hw_regmap, %struct.malidp_hw_regmap* %205, i32 0, i32 3
  %207 = load %struct.TYPE_9__*, %struct.TYPE_9__** %206, align 8
  %208 = load i32, i32* %13, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %207, i64 %209
  %211 = load %struct.malidp_plane*, %struct.malidp_plane** %6, align 8
  %212 = getelementptr inbounds %struct.malidp_plane, %struct.malidp_plane* %211, i32 0, i32 1
  store %struct.TYPE_9__* %210, %struct.TYPE_9__** %212, align 8
  %213 = load %struct.malidp_plane*, %struct.malidp_plane** %6, align 8
  %214 = getelementptr inbounds %struct.malidp_plane, %struct.malidp_plane* %213, i32 0, i32 0
  %215 = call i32 @drm_plane_create_alpha_property(i32* %214)
  %216 = load %struct.malidp_plane*, %struct.malidp_plane** %6, align 8
  %217 = getelementptr inbounds %struct.malidp_plane, %struct.malidp_plane* %216, i32 0, i32 0
  %218 = load i32, i32* %10, align 4
  %219 = call i32 @drm_plane_create_blend_mode_property(i32* %217, i32 %218)
  %220 = load i32, i32* %19, align 4
  %221 = load i32, i32* @DE_SMART, align 4
  %222 = icmp eq i32 %220, %221
  br i1 %222, label %223, label %224

223:                                              ; preds = %196
  br label %281

224:                                              ; preds = %196
  %225 = load %struct.malidp_plane*, %struct.malidp_plane** %6, align 8
  %226 = getelementptr inbounds %struct.malidp_plane, %struct.malidp_plane* %225, i32 0, i32 0
  %227 = load i64, i64* @DRM_MODE_ROTATE_0, align 8
  %228 = load i64, i64* %9, align 8
  %229 = call i32 @drm_plane_create_rotation_property(i32* %226, i64 %227, i64 %228)
  %230 = load %struct.malidp_drm*, %struct.malidp_drm** %4, align 8
  %231 = getelementptr inbounds %struct.malidp_drm, %struct.malidp_drm* %230, i32 0, i32 0
  %232 = load %struct.TYPE_10__*, %struct.TYPE_10__** %231, align 8
  %233 = load i32, i32* @MALIDP_ALPHA_LUT, align 4
  %234 = load %struct.malidp_plane*, %struct.malidp_plane** %6, align 8
  %235 = getelementptr inbounds %struct.malidp_plane, %struct.malidp_plane* %234, i32 0, i32 1
  %236 = load %struct.TYPE_9__*, %struct.TYPE_9__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %236, i32 0, i32 1
  %238 = load i64, i64* %237, align 8
  %239 = load i64, i64* @MALIDP_LAYER_COMPOSE, align 8
  %240 = add nsw i64 %238, %239
  %241 = call i32 @malidp_hw_write(%struct.TYPE_10__* %232, i32 %233, i64 %240)
  %242 = load i32, i32* %19, align 4
  %243 = load i32, i32* @DE_VIDEO1, align 4
  %244 = load i32, i32* @DE_VIDEO2, align 4
  %245 = or i32 %243, %244
  %246 = and i32 %242, %245
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %280

248:                                              ; preds = %224
  %249 = load i32, i32* @DRM_COLOR_YCBCR_BT601, align 4
  store i32 %249, i32* %20, align 4
  %250 = load i32, i32* @DRM_COLOR_YCBCR_LIMITED_RANGE, align 4
  store i32 %250, i32* %21, align 4
  %251 = load %struct.malidp_plane*, %struct.malidp_plane** %6, align 8
  %252 = getelementptr inbounds %struct.malidp_plane, %struct.malidp_plane* %251, i32 0, i32 0
  %253 = load i32, i32* @DRM_COLOR_YCBCR_BT601, align 4
  %254 = call i32 @BIT(i32 %253)
  %255 = load i32, i32* @DRM_COLOR_YCBCR_BT709, align 4
  %256 = call i32 @BIT(i32 %255)
  %257 = or i32 %254, %256
  %258 = load i32, i32* @DRM_COLOR_YCBCR_BT2020, align 4
  %259 = call i32 @BIT(i32 %258)
  %260 = or i32 %257, %259
  %261 = load i32, i32* @DRM_COLOR_YCBCR_LIMITED_RANGE, align 4
  %262 = call i32 @BIT(i32 %261)
  %263 = load i32, i32* @DRM_COLOR_YCBCR_FULL_RANGE, align 4
  %264 = call i32 @BIT(i32 %263)
  %265 = or i32 %262, %264
  %266 = load i32, i32* %20, align 4
  %267 = load i32, i32* %21, align 4
  %268 = call i32 @drm_plane_create_color_properties(i32* %252, i32 %260, i32 %265, i32 %266, i32 %267)
  store i32 %268, i32* %12, align 4
  %269 = load i32, i32* %12, align 4
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %276, label %271

271:                                              ; preds = %248
  %272 = load %struct.malidp_plane*, %struct.malidp_plane** %6, align 8
  %273 = load i32, i32* %20, align 4
  %274 = load i32, i32* %21, align 4
  %275 = call i32 @malidp_de_set_color_encoding(%struct.malidp_plane* %272, i32 %273, i32 %274)
  br label %279

276:                                              ; preds = %248
  %277 = load i32, i32* %19, align 4
  %278 = call i32 @DRM_WARN(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %277)
  br label %279

279:                                              ; preds = %276, %271
  br label %280

280:                                              ; preds = %279, %224
  br label %281

281:                                              ; preds = %280, %223
  %282 = load i32, i32* %13, align 4
  %283 = add nsw i32 %282, 1
  store i32 %283, i32* %13, align 4
  br label %108

284:                                              ; preds = %108
  %285 = load i32*, i32** %11, align 8
  %286 = call i32 @kfree(i32* %285)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %22, align 4
  br label %291

287:                                              ; preds = %195, %127, %104
  %288 = load i32*, i32** %11, align 8
  %289 = call i32 @kfree(i32* %288)
  %290 = load i32, i32* %12, align 4
  store i32 %290, i32* %2, align 4
  store i32 1, i32* %22, align 4
  br label %291

291:                                              ; preds = %287, %284
  %292 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %292)
  %293 = load i32, i32* %2, align 4
  ret i32 %293
}

declare dso_local i32 @BIT(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32* @kcalloc(i32, i32, i32) #1

declare dso_local %struct.malidp_plane* @kzalloc(i32, i32) #1

declare dso_local i32 @drm_universal_plane_init(%struct.drm_device*, i32*, i64, i32*, i32*, i32, i32*, i32, i32*) #1

declare dso_local i32 @drm_plane_helper_add(i32*, i32*) #1

declare dso_local i32 @drm_plane_create_alpha_property(i32*) #1

declare dso_local i32 @drm_plane_create_blend_mode_property(i32*, i32) #1

declare dso_local i32 @drm_plane_create_rotation_property(i32*, i64, i64) #1

declare dso_local i32 @malidp_hw_write(%struct.TYPE_10__*, i32, i64) #1

declare dso_local i32 @drm_plane_create_color_properties(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @malidp_de_set_color_encoding(%struct.malidp_plane*, i32, i32) #1

declare dso_local i32 @DRM_WARN(i8*, i32) #1

declare dso_local i32 @kfree(i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
