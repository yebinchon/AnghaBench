; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_plane.c_vc4_plane_mode_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_plane.c_vc4_plane_mode_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { i32 }
%struct.drm_plane_state = type { i32, %struct.TYPE_9__*, i32, %struct.drm_framebuffer* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.drm_framebuffer = type { i32*, %struct.TYPE_10__*, i64 }
%struct.TYPE_10__ = type { i32, i32, i32, i32*, i64, i32 }
%struct.vc4_dev = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.vc4_plane_state = type { i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i64*, i64*, i32*, i32, i64, i64, i64 }
%struct.hvs_format = type { i32, i32 }

@DRM_MODE_ROTATE_0 = common dso_local global i32 0, align 4
@DRM_MODE_REFLECT_X = common dso_local global i32 0, align 4
@DRM_MODE_REFLECT_Y = common dso_local global i32 0, align 4
@SCALER_CTL0_TILING_LINEAR = common dso_local global i32 0, align 4
@SCALER_SRC_PITCH = common dso_local global i32 0, align 4
@SCALER_PITCH0_TILE_LINE_DIR = common dso_local global i32 0, align 4
@SCALER_CTL0_TILING_256B_OR_T = common dso_local global i32 0, align 4
@SCALER_PITCH0_SINK_PIX = common dso_local global i32 0, align 4
@SCALER_PITCH0_TILE_Y_OFFSET = common dso_local global i32 0, align 4
@SCALER_PITCH0_TILE_WIDTH_L = common dso_local global i32 0, align 4
@SCALER_PITCH0_TILE_WIDTH_R = common dso_local global i32 0, align 4
@SCALER_PITCH0_TILE_INITIAL_LINE_DIR = common dso_local global i32 0, align 4
@HVS_PIXEL_FORMAT_H264 = common dso_local global i32 0, align 4
@SCALER_CTL0_TILING_64B = common dso_local global i32 0, align 4
@SCALER_CTL0_TILING_128B = common dso_local global i32 0, align 4
@SCALER_TILE_HEIGHT_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"SAND height too large (%d)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SCALER_TILE_HEIGHT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Unsupported FB tiling flag 0x%16llx\00", align 1
@SCALER_CTL0_VALID = common dso_local global i32 0, align 4
@SCALER_CTL0_HFLIP = common dso_local global i32 0, align 4
@SCALER_CTL0_VFLIP = common dso_local global i32 0, align 4
@SCALER_CTL0_RGBA_EXPAND_ROUND = common dso_local global i32 0, align 4
@SCALER_CTL0_RGBA_EXPAND = common dso_local global i32 0, align 4
@SCALER_CTL0_ORDER_SHIFT = common dso_local global i32 0, align 4
@SCALER_CTL0_PIXEL_FORMAT_SHIFT = common dso_local global i32 0, align 4
@SCALER_CTL0_TILING = common dso_local global i32 0, align 4
@SCALER_CTL0_UNITY = common dso_local global i32 0, align 4
@SCALER_CTL0_SCL0 = common dso_local global i32 0, align 4
@SCALER_CTL0_SCL1 = common dso_local global i32 0, align 4
@SCALER_POS0_FIXED_ALPHA = common dso_local global i32 0, align 4
@SCALER_POS0_START_X = common dso_local global i32 0, align 4
@SCALER_POS0_START_Y = common dso_local global i32 0, align 4
@SCALER_POS1_SCL_WIDTH = common dso_local global i32 0, align 4
@SCALER_POS1_SCL_HEIGHT = common dso_local global i32 0, align 4
@DRM_BLEND_ALPHA_OPAQUE = common dso_local global i32 0, align 4
@SCALER_POS2_ALPHA_MODE_PIPELINE = common dso_local global i32 0, align 4
@SCALER_POS2_ALPHA_MODE_FIXED = common dso_local global i32 0, align 4
@SCALER_POS2_ALPHA_MODE = common dso_local global i32 0, align 4
@SCALER_POS2_ALPHA_MIX = common dso_local global i32 0, align 4
@SCALER_POS2_ALPHA_PREMULT = common dso_local global i32 0, align 4
@SCALER_POS2_WIDTH = common dso_local global i32 0, align 4
@SCALER_POS2_HEIGHT = common dso_local global i32 0, align 4
@SCALER_CSC0_ITR_R_601_5 = common dso_local global i32 0, align 4
@SCALER_CSC1_ITR_R_601_5 = common dso_local global i32 0, align 4
@SCALER_CSC2_ITR_R_601_5 = common dso_local global i32 0, align 4
@VC4_SCALING_NONE = common dso_local global i64 0, align 8
@VC4_SCALING_PPF = common dso_local global i64 0, align 8
@SCALER_PPF_KERNEL_OFFSET = common dso_local global i32 0, align 4
@SCALER_CTL0_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_plane*, %struct.drm_plane_state*)* @vc4_plane_mode_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vc4_plane_mode_set(%struct.drm_plane* %0, %struct.drm_plane_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_plane*, align 8
  %5 = alloca %struct.drm_plane_state*, align 8
  %6 = alloca %struct.vc4_dev*, align 8
  %7 = alloca %struct.vc4_plane_state*, align 8
  %8 = alloca %struct.drm_framebuffer*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.hvs_format*, align 8
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
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = alloca i32, align 4
  store %struct.drm_plane* %0, %struct.drm_plane** %4, align 8
  store %struct.drm_plane_state* %1, %struct.drm_plane_state** %5, align 8
  %46 = load %struct.drm_plane*, %struct.drm_plane** %4, align 8
  %47 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call %struct.vc4_dev* @to_vc4_dev(i32 %48)
  store %struct.vc4_dev* %49, %struct.vc4_dev** %6, align 8
  %50 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %51 = call %struct.vc4_plane_state* @to_vc4_plane_state(%struct.drm_plane_state* %50)
  store %struct.vc4_plane_state* %51, %struct.vc4_plane_state** %7, align 8
  %52 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %53 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %52, i32 0, i32 3
  %54 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %53, align 8
  store %struct.drm_framebuffer* %54, %struct.drm_framebuffer** %8, align 8
  %55 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %7, align 8
  %56 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  store i32 %57, i32* %9, align 4
  %58 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %59 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %58, i32 0, i32 1
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 5
  %62 = load i32, i32* %61, align 8
  %63 = call %struct.hvs_format* @vc4_get_hvs_format(i32 %62)
  store %struct.hvs_format* %63, %struct.hvs_format** %10, align 8
  %64 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %65 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @fourcc_mod_broadcom_mod(i64 %66)
  store i32 %67, i32* %11, align 4
  %68 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %69 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %68, i32 0, i32 1
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  store i32 %72, i32* %12, align 4
  %73 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %74 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %73, i32 0, i32 1
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %13, align 4
  %78 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %79 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %78, i32 0, i32 1
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  store i32 %82, i32* %14, align 4
  %83 = load %struct.hvs_format*, %struct.hvs_format** %10, align 8
  %84 = getelementptr inbounds %struct.hvs_format, %struct.hvs_format* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  store i32 %85, i32* %22, align 4
  %86 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %7, align 8
  %87 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %940

91:                                               ; preds = %2
  %92 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %93 = call i32 @vc4_plane_setup_clipping_and_scaling(%struct.drm_plane_state* %92)
  store i32 %93, i32* %24, align 4
  %94 = load i32, i32* %24, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %91
  %97 = load i32, i32* %24, align 4
  store i32 %97, i32* %3, align 4
  br label %940

98:                                               ; preds = %91
  %99 = load i32, i32* %12, align 4
  %100 = icmp eq i32 %99, 1
  br i1 %100, label %101, label %105

101:                                              ; preds = %98
  %102 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %103 = call i32 @vc4_get_scl_field(%struct.drm_plane_state* %102, i32 0)
  store i32 %103, i32* %17, align 4
  %104 = load i32, i32* %17, align 4
  store i32 %104, i32* %18, align 4
  br label %110

105:                                              ; preds = %98
  %106 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %107 = call i32 @vc4_get_scl_field(%struct.drm_plane_state* %106, i32 1)
  store i32 %107, i32* %17, align 4
  %108 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %109 = call i32 @vc4_get_scl_field(%struct.drm_plane_state* %108, i32 0)
  store i32 %109, i32* %18, align 4
  br label %110

110:                                              ; preds = %105, %101
  %111 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %112 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @DRM_MODE_ROTATE_0, align 4
  %115 = load i32, i32* @DRM_MODE_REFLECT_X, align 4
  %116 = or i32 %114, %115
  %117 = load i32, i32* @DRM_MODE_REFLECT_Y, align 4
  %118 = or i32 %116, %117
  %119 = call i32 @drm_rotation_simplify(i32 %113, i32 %118)
  store i32 %119, i32* %23, align 4
  %120 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %7, align 8
  %121 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  store i32 %122, i32* %21, align 4
  %123 = load i32, i32* %23, align 4
  %124 = load i32, i32* @DRM_MODE_REFLECT_Y, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %136

127:                                              ; preds = %110
  %128 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %7, align 8
  %129 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %128, i32 0, i32 3
  %130 = load i32*, i32** %129, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 0
  %132 = load i32, i32* %131, align 4
  %133 = sub nsw i32 %132, 1
  %134 = load i32, i32* %21, align 4
  %135 = add nsw i32 %134, %133
  store i32 %135, i32* %21, align 4
  br label %136

136:                                              ; preds = %127, %110
  %137 = load i32, i32* %11, align 4
  switch i32 %137, label %483 [
    i32 128, label %138
    i32 129, label %210
    i32 130, label %368
    i32 132, label %368
    i32 131, label %368
  ]

138:                                              ; preds = %136
  %139 = load i32, i32* @SCALER_CTL0_TILING_LINEAR, align 4
  store i32 %139, i32* %20, align 4
  %140 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %141 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %140, i32 0, i32 0
  %142 = load i32*, i32** %141, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 0
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @SCALER_SRC_PITCH, align 4
  %146 = call i32 @VC4_SET_FIELD(i32 %144, i32 %145)
  store i32 %146, i32* %19, align 4
  store i32 0, i32* %25, align 4
  br label %147

147:                                              ; preds = %206, %138
  %148 = load i32, i32* %25, align 4
  %149 = load i32, i32* %12, align 4
  %150 = icmp slt i32 %148, %149
  br i1 %150, label %151, label %209

151:                                              ; preds = %147
  %152 = load i32, i32* %21, align 4
  %153 = load i32, i32* %25, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %157

155:                                              ; preds = %151
  %156 = load i32, i32* %14, align 4
  br label %158

157:                                              ; preds = %151
  br label %158

158:                                              ; preds = %157, %155
  %159 = phi i32 [ %156, %155 ], [ 1, %157 ]
  %160 = sdiv i32 %152, %159
  %161 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %162 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %161, i32 0, i32 0
  %163 = load i32*, i32** %162, align 8
  %164 = load i32, i32* %25, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32, i32* %163, i64 %165
  %167 = load i32, i32* %166, align 4
  %168 = mul nsw i32 %160, %167
  %169 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %7, align 8
  %170 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %169, i32 0, i32 4
  %171 = load i32*, i32** %170, align 8
  %172 = load i32, i32* %25, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32, i32* %171, i64 %173
  %175 = load i32, i32* %174, align 4
  %176 = add nsw i32 %175, %168
  store i32 %176, i32* %174, align 4
  %177 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %7, align 8
  %178 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %177, i32 0, i32 5
  %179 = load i32, i32* %178, align 8
  %180 = load i32, i32* %25, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %184

182:                                              ; preds = %158
  %183 = load i32, i32* %13, align 4
  br label %185

184:                                              ; preds = %158
  br label %185

185:                                              ; preds = %184, %182
  %186 = phi i32 [ %183, %182 ], [ 1, %184 ]
  %187 = sdiv i32 %179, %186
  %188 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %189 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %188, i32 0, i32 1
  %190 = load %struct.TYPE_10__*, %struct.TYPE_10__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %190, i32 0, i32 3
  %192 = load i32*, i32** %191, align 8
  %193 = load i32, i32* %25, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %192, i64 %194
  %196 = load i32, i32* %195, align 4
  %197 = mul nsw i32 %187, %196
  %198 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %7, align 8
  %199 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %198, i32 0, i32 4
  %200 = load i32*, i32** %199, align 8
  %201 = load i32, i32* %25, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i32, i32* %200, i64 %202
  %204 = load i32, i32* %203, align 4
  %205 = add nsw i32 %204, %197
  store i32 %205, i32* %203, align 4
  br label %206

206:                                              ; preds = %185
  %207 = load i32, i32* %25, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %25, align 4
  br label %147

209:                                              ; preds = %147
  br label %490

210:                                              ; preds = %136
  store i32 12, i32* %26, align 4
  %211 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %212 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %211, i32 0, i32 1
  %213 = load %struct.TYPE_10__*, %struct.TYPE_10__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %213, i32 0, i32 3
  %215 = load i32*, i32** %214, align 8
  %216 = getelementptr inbounds i32, i32* %215, i64 0
  %217 = load i32, i32* %216, align 4
  %218 = icmp eq i32 %217, 2
  %219 = zext i1 %218 to i64
  %220 = select i1 %218, i32 6, i32 5
  store i32 %220, i32* %27, align 4
  store i32 5, i32* %28, align 4
  %221 = load i32, i32* %27, align 4
  %222 = shl i32 1, %221
  %223 = sub nsw i32 %222, 1
  store i32 %223, i32* %29, align 4
  %224 = load i32, i32* %28, align 4
  %225 = shl i32 2, %224
  %226 = sub nsw i32 %225, 1
  store i32 %226, i32* %30, align 4
  %227 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %228 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %227, i32 0, i32 0
  %229 = load i32*, i32** %228, align 8
  %230 = getelementptr inbounds i32, i32* %229, i64 0
  %231 = load i32, i32* %230, align 4
  %232 = load i32, i32* %26, align 4
  %233 = load i32, i32* %28, align 4
  %234 = sub nsw i32 %232, %233
  %235 = ashr i32 %231, %234
  store i32 %235, i32* %31, align 4
  %236 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %7, align 8
  %237 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %236, i32 0, i32 5
  %238 = load i32, i32* %237, align 8
  %239 = load i32, i32* %27, align 4
  %240 = ashr i32 %238, %239
  store i32 %240, i32* %32, align 4
  %241 = load i32, i32* %31, align 4
  %242 = load i32, i32* %32, align 4
  %243 = sub nsw i32 %241, %242
  store i32 %243, i32* %33, align 4
  %244 = load i32, i32* %21, align 4
  %245 = load i32, i32* %28, align 4
  %246 = ashr i32 %244, %245
  store i32 %246, i32* %34, align 4
  %247 = load i32, i32* %21, align 4
  %248 = ashr i32 %247, 4
  %249 = and i32 %248, 1
  store i32 %249, i32* %35, align 4
  %250 = load i32, i32* %21, align 4
  %251 = ashr i32 %250, 2
  %252 = and i32 %251, 3
  store i32 %252, i32* %36, align 4
  %253 = load i32, i32* %21, align 4
  %254 = and i32 %253, 3
  store i32 %254, i32* %37, align 4
  %255 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %7, align 8
  %256 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %255, i32 0, i32 5
  %257 = load i32, i32* %256, align 8
  %258 = load i32, i32* %29, align 4
  %259 = and i32 %257, %258
  store i32 %259, i32* %38, align 4
  %260 = load i32, i32* %21, align 4
  %261 = load i32, i32* %30, align 4
  %262 = and i32 %260, %261
  store i32 %262, i32* %39, align 4
  %263 = load i32, i32* %23, align 4
  %264 = load i32, i32* @DRM_MODE_REFLECT_Y, align 4
  %265 = and i32 %263, %264
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %272

267:                                              ; preds = %210
  %268 = load i32, i32* %30, align 4
  %269 = load i32, i32* %39, align 4
  %270 = sub nsw i32 %268, %269
  store i32 %270, i32* %39, align 4
  %271 = load i32, i32* @SCALER_PITCH0_TILE_LINE_DIR, align 4
  store i32 %271, i32* %19, align 4
  br label %273

272:                                              ; preds = %210
  store i32 0, i32* %19, align 4
  br label %273

273:                                              ; preds = %272, %267
  %274 = load i32, i32* @SCALER_CTL0_TILING_256B_OR_T, align 4
  store i32 %274, i32* %20, align 4
  %275 = load i32, i32* %38, align 4
  %276 = load i32, i32* @SCALER_PITCH0_SINK_PIX, align 4
  %277 = call i32 @VC4_SET_FIELD(i32 %275, i32 %276)
  %278 = load i32, i32* %39, align 4
  %279 = load i32, i32* @SCALER_PITCH0_TILE_Y_OFFSET, align 4
  %280 = call i32 @VC4_SET_FIELD(i32 %278, i32 %279)
  %281 = or i32 %277, %280
  %282 = load i32, i32* %32, align 4
  %283 = load i32, i32* @SCALER_PITCH0_TILE_WIDTH_L, align 4
  %284 = call i32 @VC4_SET_FIELD(i32 %282, i32 %283)
  %285 = or i32 %281, %284
  %286 = load i32, i32* %33, align 4
  %287 = load i32, i32* @SCALER_PITCH0_TILE_WIDTH_R, align 4
  %288 = call i32 @VC4_SET_FIELD(i32 %286, i32 %287)
  %289 = or i32 %285, %288
  %290 = load i32, i32* %19, align 4
  %291 = or i32 %290, %289
  store i32 %291, i32* %19, align 4
  %292 = load i32, i32* %34, align 4
  %293 = load i32, i32* %31, align 4
  %294 = load i32, i32* %26, align 4
  %295 = shl i32 %293, %294
  %296 = mul nsw i32 %292, %295
  %297 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %7, align 8
  %298 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %297, i32 0, i32 4
  %299 = load i32*, i32** %298, align 8
  %300 = getelementptr inbounds i32, i32* %299, i64 0
  %301 = load i32, i32* %300, align 4
  %302 = add nsw i32 %301, %296
  store i32 %302, i32* %300, align 4
  %303 = load i32, i32* %36, align 4
  %304 = shl i32 %303, 8
  %305 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %7, align 8
  %306 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %305, i32 0, i32 4
  %307 = load i32*, i32** %306, align 8
  %308 = getelementptr inbounds i32, i32* %307, i64 0
  %309 = load i32, i32* %308, align 4
  %310 = add nsw i32 %309, %304
  store i32 %310, i32* %308, align 4
  %311 = load i32, i32* %37, align 4
  %312 = shl i32 %311, 4
  %313 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %7, align 8
  %314 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %313, i32 0, i32 4
  %315 = load i32*, i32** %314, align 8
  %316 = getelementptr inbounds i32, i32* %315, i64 0
  %317 = load i32, i32* %316, align 4
  %318 = add nsw i32 %317, %312
  store i32 %318, i32* %316, align 4
  %319 = load i32, i32* %34, align 4
  %320 = and i32 %319, 1
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %322, label %349

322:                                              ; preds = %273
  %323 = load i32, i32* @SCALER_PITCH0_TILE_INITIAL_LINE_DIR, align 4
  %324 = load i32, i32* %19, align 4
  %325 = or i32 %324, %323
  store i32 %325, i32* %19, align 4
  %326 = load i32, i32* %31, align 4
  %327 = load i32, i32* %32, align 4
  %328 = sub nsw i32 %326, %327
  %329 = load i32, i32* %26, align 4
  %330 = shl i32 %328, %329
  %331 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %7, align 8
  %332 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %331, i32 0, i32 4
  %333 = load i32*, i32** %332, align 8
  %334 = getelementptr inbounds i32, i32* %333, i64 0
  %335 = load i32, i32* %334, align 4
  %336 = add nsw i32 %335, %330
  store i32 %336, i32* %334, align 4
  %337 = load i32, i32* %35, align 4
  %338 = icmp ne i32 %337, 0
  %339 = xor i1 %338, true
  %340 = zext i1 %339 to i32
  %341 = add nsw i32 1, %340
  %342 = shl i32 %341, 10
  %343 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %7, align 8
  %344 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %343, i32 0, i32 4
  %345 = load i32*, i32** %344, align 8
  %346 = getelementptr inbounds i32, i32* %345, i64 0
  %347 = load i32, i32* %346, align 4
  %348 = sub nsw i32 %347, %342
  store i32 %348, i32* %346, align 4
  br label %367

349:                                              ; preds = %273
  %350 = load i32, i32* %32, align 4
  %351 = load i32, i32* %26, align 4
  %352 = shl i32 %350, %351
  %353 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %7, align 8
  %354 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %353, i32 0, i32 4
  %355 = load i32*, i32** %354, align 8
  %356 = getelementptr inbounds i32, i32* %355, i64 0
  %357 = load i32, i32* %356, align 4
  %358 = add nsw i32 %357, %352
  store i32 %358, i32* %356, align 4
  %359 = load i32, i32* %35, align 4
  %360 = shl i32 %359, 10
  %361 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %7, align 8
  %362 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %361, i32 0, i32 4
  %363 = load i32*, i32** %362, align 8
  %364 = getelementptr inbounds i32, i32* %363, i64 0
  %365 = load i32, i32* %364, align 4
  %366 = add nsw i32 %365, %360
  store i32 %366, i32* %364, align 4
  br label %367

367:                                              ; preds = %349, %322
  br label %490

368:                                              ; preds = %136, %136, %136
  %369 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %370 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %369, i32 0, i32 2
  %371 = load i64, i64* %370, align 8
  %372 = call i32 @fourcc_mod_broadcom_param(i64 %371)
  store i32 %372, i32* %40, align 4
  %373 = load i32, i32* @HVS_PIXEL_FORMAT_H264, align 4
  store i32 %373, i32* %22, align 4
  %374 = load i32, i32* %11, align 4
  switch i32 %374, label %381 [
    i32 130, label %375
    i32 132, label %377
    i32 131, label %379
  ]

375:                                              ; preds = %368
  %376 = load i32, i32* @SCALER_CTL0_TILING_64B, align 4
  store i32 %376, i32* %20, align 4
  store i32 64, i32* %41, align 4
  br label %382

377:                                              ; preds = %368
  %378 = load i32, i32* @SCALER_CTL0_TILING_128B, align 4
  store i32 %378, i32* %20, align 4
  store i32 128, i32* %41, align 4
  br label %382

379:                                              ; preds = %368
  %380 = load i32, i32* @SCALER_CTL0_TILING_256B_OR_T, align 4
  store i32 %380, i32* %20, align 4
  store i32 256, i32* %41, align 4
  br label %382

381:                                              ; preds = %368
  br label %382

382:                                              ; preds = %381, %379, %377, %375
  %383 = load i32, i32* %40, align 4
  %384 = load i32, i32* @SCALER_TILE_HEIGHT_MASK, align 4
  %385 = icmp sgt i32 %383, %384
  br i1 %385, label %386, label %392

386:                                              ; preds = %382
  %387 = load i32, i32* %40, align 4
  %388 = sext i32 %387 to i64
  %389 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %388)
  %390 = load i32, i32* @EINVAL, align 4
  %391 = sub nsw i32 0, %390
  store i32 %391, i32* %3, align 4
  br label %940

392:                                              ; preds = %382
  %393 = load i32, i32* %41, align 4
  %394 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %395 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %394, i32 0, i32 1
  %396 = load %struct.TYPE_10__*, %struct.TYPE_10__** %395, align 8
  %397 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %396, i32 0, i32 3
  %398 = load i32*, i32** %397, align 8
  %399 = getelementptr inbounds i32, i32* %398, i64 0
  %400 = load i32, i32* %399, align 4
  %401 = sdiv i32 %393, %400
  store i32 %401, i32* %44, align 4
  %402 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %7, align 8
  %403 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %402, i32 0, i32 5
  %404 = load i32, i32* %403, align 8
  %405 = load i32, i32* %44, align 4
  %406 = sdiv i32 %404, %405
  store i32 %406, i32* %42, align 4
  %407 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %7, align 8
  %408 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %407, i32 0, i32 5
  %409 = load i32, i32* %408, align 8
  %410 = load i32, i32* %44, align 4
  %411 = srem i32 %409, %410
  store i32 %411, i32* %43, align 4
  store i32 0, i32* %25, align 4
  br label %412

412:                                              ; preds = %476, %392
  %413 = load i32, i32* %25, align 4
  %414 = load i32, i32* %12, align 4
  %415 = icmp slt i32 %413, %414
  br i1 %415, label %416, label %479

416:                                              ; preds = %412
  %417 = load i32, i32* %40, align 4
  %418 = load i32, i32* %41, align 4
  %419 = mul nsw i32 %417, %418
  %420 = load i32, i32* %42, align 4
  %421 = mul nsw i32 %419, %420
  %422 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %7, align 8
  %423 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %422, i32 0, i32 4
  %424 = load i32*, i32** %423, align 8
  %425 = load i32, i32* %25, align 4
  %426 = sext i32 %425 to i64
  %427 = getelementptr inbounds i32, i32* %424, i64 %426
  %428 = load i32, i32* %427, align 4
  %429 = add nsw i32 %428, %421
  store i32 %429, i32* %427, align 4
  %430 = load i32, i32* %21, align 4
  %431 = load i32, i32* %25, align 4
  %432 = icmp ne i32 %431, 0
  br i1 %432, label %433, label %435

433:                                              ; preds = %416
  %434 = load i32, i32* %14, align 4
  br label %436

435:                                              ; preds = %416
  br label %436

436:                                              ; preds = %435, %433
  %437 = phi i32 [ %434, %433 ], [ 1, %435 ]
  %438 = sdiv i32 %430, %437
  %439 = load i32, i32* %41, align 4
  %440 = mul nsw i32 %438, %439
  %441 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %7, align 8
  %442 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %441, i32 0, i32 4
  %443 = load i32*, i32** %442, align 8
  %444 = load i32, i32* %25, align 4
  %445 = sext i32 %444 to i64
  %446 = getelementptr inbounds i32, i32* %443, i64 %445
  %447 = load i32, i32* %446, align 4
  %448 = add nsw i32 %447, %440
  store i32 %448, i32* %446, align 4
  %449 = load i32, i32* %43, align 4
  %450 = load i32, i32* %25, align 4
  %451 = icmp ne i32 %450, 0
  br i1 %451, label %452, label %454

452:                                              ; preds = %436
  %453 = load i32, i32* %13, align 4
  br label %455

454:                                              ; preds = %436
  br label %455

455:                                              ; preds = %454, %452
  %456 = phi i32 [ %453, %452 ], [ 1, %454 ]
  %457 = sdiv i32 %449, %456
  %458 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %459 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %458, i32 0, i32 1
  %460 = load %struct.TYPE_10__*, %struct.TYPE_10__** %459, align 8
  %461 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %460, i32 0, i32 3
  %462 = load i32*, i32** %461, align 8
  %463 = load i32, i32* %25, align 4
  %464 = sext i32 %463 to i64
  %465 = getelementptr inbounds i32, i32* %462, i64 %464
  %466 = load i32, i32* %465, align 4
  %467 = mul nsw i32 %457, %466
  %468 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %7, align 8
  %469 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %468, i32 0, i32 4
  %470 = load i32*, i32** %469, align 8
  %471 = load i32, i32* %25, align 4
  %472 = sext i32 %471 to i64
  %473 = getelementptr inbounds i32, i32* %470, i64 %472
  %474 = load i32, i32* %473, align 4
  %475 = add nsw i32 %474, %467
  store i32 %475, i32* %473, align 4
  br label %476

476:                                              ; preds = %455
  %477 = load i32, i32* %25, align 4
  %478 = add nsw i32 %477, 1
  store i32 %478, i32* %25, align 4
  br label %412

479:                                              ; preds = %412
  %480 = load i32, i32* %40, align 4
  %481 = load i32, i32* @SCALER_TILE_HEIGHT, align 4
  %482 = call i32 @VC4_SET_FIELD(i32 %480, i32 %481)
  store i32 %482, i32* %19, align 4
  br label %490

483:                                              ; preds = %136
  %484 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %485 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %484, i32 0, i32 2
  %486 = load i64, i64* %485, align 8
  %487 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i64 %486)
  %488 = load i32, i32* @EINVAL, align 4
  %489 = sub nsw i32 0, %488
  store i32 %489, i32* %3, align 4
  br label %940

490:                                              ; preds = %479, %367, %209
  %491 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %7, align 8
  %492 = load i32, i32* @SCALER_CTL0_VALID, align 4
  %493 = load i32, i32* %23, align 4
  %494 = load i32, i32* @DRM_MODE_REFLECT_X, align 4
  %495 = and i32 %493, %494
  %496 = icmp ne i32 %495, 0
  br i1 %496, label %497, label %499

497:                                              ; preds = %490
  %498 = load i32, i32* @SCALER_CTL0_HFLIP, align 4
  br label %500

499:                                              ; preds = %490
  br label %500

500:                                              ; preds = %499, %497
  %501 = phi i32 [ %498, %497 ], [ 0, %499 ]
  %502 = or i32 %492, %501
  %503 = load i32, i32* %23, align 4
  %504 = load i32, i32* @DRM_MODE_REFLECT_Y, align 4
  %505 = and i32 %503, %504
  %506 = icmp ne i32 %505, 0
  br i1 %506, label %507, label %509

507:                                              ; preds = %500
  %508 = load i32, i32* @SCALER_CTL0_VFLIP, align 4
  br label %510

509:                                              ; preds = %500
  br label %510

510:                                              ; preds = %509, %507
  %511 = phi i32 [ %508, %507 ], [ 0, %509 ]
  %512 = or i32 %502, %511
  %513 = load i32, i32* @SCALER_CTL0_RGBA_EXPAND_ROUND, align 4
  %514 = load i32, i32* @SCALER_CTL0_RGBA_EXPAND, align 4
  %515 = call i32 @VC4_SET_FIELD(i32 %513, i32 %514)
  %516 = or i32 %512, %515
  %517 = load %struct.hvs_format*, %struct.hvs_format** %10, align 8
  %518 = getelementptr inbounds %struct.hvs_format, %struct.hvs_format* %517, i32 0, i32 1
  %519 = load i32, i32* %518, align 4
  %520 = load i32, i32* @SCALER_CTL0_ORDER_SHIFT, align 4
  %521 = shl i32 %519, %520
  %522 = or i32 %516, %521
  %523 = load i32, i32* %22, align 4
  %524 = load i32, i32* @SCALER_CTL0_PIXEL_FORMAT_SHIFT, align 4
  %525 = shl i32 %523, %524
  %526 = or i32 %522, %525
  %527 = load i32, i32* %20, align 4
  %528 = load i32, i32* @SCALER_CTL0_TILING, align 4
  %529 = call i32 @VC4_SET_FIELD(i32 %527, i32 %528)
  %530 = or i32 %526, %529
  %531 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %7, align 8
  %532 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %531, i32 0, i32 20
  %533 = load i64, i64* %532, align 8
  %534 = icmp ne i64 %533, 0
  br i1 %534, label %535, label %537

535:                                              ; preds = %510
  %536 = load i32, i32* @SCALER_CTL0_UNITY, align 4
  br label %538

537:                                              ; preds = %510
  br label %538

538:                                              ; preds = %537, %535
  %539 = phi i32 [ %536, %535 ], [ 0, %537 ]
  %540 = or i32 %530, %539
  %541 = load i32, i32* %17, align 4
  %542 = load i32, i32* @SCALER_CTL0_SCL0, align 4
  %543 = call i32 @VC4_SET_FIELD(i32 %541, i32 %542)
  %544 = or i32 %540, %543
  %545 = load i32, i32* %18, align 4
  %546 = load i32, i32* @SCALER_CTL0_SCL1, align 4
  %547 = call i32 @VC4_SET_FIELD(i32 %545, i32 %546)
  %548 = or i32 %544, %547
  %549 = call i32 @vc4_dlist_write(%struct.vc4_plane_state* %491, i32 %548)
  %550 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %7, align 8
  %551 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %550, i32 0, i32 0
  %552 = load i32, i32* %551, align 8
  %553 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %7, align 8
  %554 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %553, i32 0, i32 6
  store i32 %552, i32* %554, align 4
  %555 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %7, align 8
  %556 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %557 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %556, i32 0, i32 0
  %558 = load i32, i32* %557, align 8
  %559 = ashr i32 %558, 8
  %560 = load i32, i32* @SCALER_POS0_FIXED_ALPHA, align 4
  %561 = call i32 @VC4_SET_FIELD(i32 %559, i32 %560)
  %562 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %7, align 8
  %563 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %562, i32 0, i32 7
  %564 = load i32, i32* %563, align 8
  %565 = load i32, i32* @SCALER_POS0_START_X, align 4
  %566 = call i32 @VC4_SET_FIELD(i32 %564, i32 %565)
  %567 = or i32 %561, %566
  %568 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %7, align 8
  %569 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %568, i32 0, i32 8
  %570 = load i32, i32* %569, align 4
  %571 = load i32, i32* @SCALER_POS0_START_Y, align 4
  %572 = call i32 @VC4_SET_FIELD(i32 %570, i32 %571)
  %573 = or i32 %567, %572
  %574 = call i32 @vc4_dlist_write(%struct.vc4_plane_state* %555, i32 %573)
  %575 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %7, align 8
  %576 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %575, i32 0, i32 20
  %577 = load i64, i64* %576, align 8
  %578 = icmp ne i64 %577, 0
  br i1 %578, label %593, label %579

579:                                              ; preds = %538
  %580 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %7, align 8
  %581 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %7, align 8
  %582 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %581, i32 0, i32 9
  %583 = load i32, i32* %582, align 8
  %584 = load i32, i32* @SCALER_POS1_SCL_WIDTH, align 4
  %585 = call i32 @VC4_SET_FIELD(i32 %583, i32 %584)
  %586 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %7, align 8
  %587 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %586, i32 0, i32 10
  %588 = load i32, i32* %587, align 4
  %589 = load i32, i32* @SCALER_POS1_SCL_HEIGHT, align 4
  %590 = call i32 @VC4_SET_FIELD(i32 %588, i32 %589)
  %591 = or i32 %585, %590
  %592 = call i32 @vc4_dlist_write(%struct.vc4_plane_state* %580, i32 %591)
  br label %593

593:                                              ; preds = %579, %538
  %594 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %595 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %594, i32 0, i32 0
  %596 = load i32, i32* %595, align 8
  %597 = load i32, i32* @DRM_BLEND_ALPHA_OPAQUE, align 4
  %598 = icmp ne i32 %596, %597
  br i1 %598, label %599, label %606

599:                                              ; preds = %593
  %600 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %601 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %600, i32 0, i32 1
  %602 = load %struct.TYPE_10__*, %struct.TYPE_10__** %601, align 8
  %603 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %602, i32 0, i32 4
  %604 = load i64, i64* %603, align 8
  %605 = icmp ne i64 %604, 0
  br label %606

606:                                              ; preds = %599, %593
  %607 = phi i1 [ false, %593 ], [ %605, %599 ]
  %608 = zext i1 %607 to i32
  store i32 %608, i32* %15, align 4
  %609 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %7, align 8
  %610 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %609, i32 0, i32 0
  %611 = load i32, i32* %610, align 8
  %612 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %7, align 8
  %613 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %612, i32 0, i32 11
  store i32 %611, i32* %613, align 8
  %614 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %7, align 8
  %615 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %616 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %615, i32 0, i32 1
  %617 = load %struct.TYPE_10__*, %struct.TYPE_10__** %616, align 8
  %618 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %617, i32 0, i32 4
  %619 = load i64, i64* %618, align 8
  %620 = icmp ne i64 %619, 0
  br i1 %620, label %621, label %623

621:                                              ; preds = %606
  %622 = load i32, i32* @SCALER_POS2_ALPHA_MODE_PIPELINE, align 4
  br label %625

623:                                              ; preds = %606
  %624 = load i32, i32* @SCALER_POS2_ALPHA_MODE_FIXED, align 4
  br label %625

625:                                              ; preds = %623, %621
  %626 = phi i32 [ %622, %621 ], [ %624, %623 ]
  %627 = load i32, i32* @SCALER_POS2_ALPHA_MODE, align 4
  %628 = call i32 @VC4_SET_FIELD(i32 %626, i32 %627)
  %629 = load i32, i32* %15, align 4
  %630 = icmp ne i32 %629, 0
  br i1 %630, label %631, label %633

631:                                              ; preds = %625
  %632 = load i32, i32* @SCALER_POS2_ALPHA_MIX, align 4
  br label %634

633:                                              ; preds = %625
  br label %634

634:                                              ; preds = %633, %631
  %635 = phi i32 [ %632, %631 ], [ 0, %633 ]
  %636 = or i32 %628, %635
  %637 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %638 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %637, i32 0, i32 1
  %639 = load %struct.TYPE_10__*, %struct.TYPE_10__** %638, align 8
  %640 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %639, i32 0, i32 4
  %641 = load i64, i64* %640, align 8
  %642 = icmp ne i64 %641, 0
  br i1 %642, label %643, label %645

643:                                              ; preds = %634
  %644 = load i32, i32* @SCALER_POS2_ALPHA_PREMULT, align 4
  br label %646

645:                                              ; preds = %634
  br label %646

646:                                              ; preds = %645, %643
  %647 = phi i32 [ %644, %643 ], [ 0, %645 ]
  %648 = or i32 %636, %647
  %649 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %7, align 8
  %650 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %649, i32 0, i32 12
  %651 = load i32*, i32** %650, align 8
  %652 = getelementptr inbounds i32, i32* %651, i64 0
  %653 = load i32, i32* %652, align 4
  %654 = load i32, i32* @SCALER_POS2_WIDTH, align 4
  %655 = call i32 @VC4_SET_FIELD(i32 %653, i32 %654)
  %656 = or i32 %648, %655
  %657 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %7, align 8
  %658 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %657, i32 0, i32 3
  %659 = load i32*, i32** %658, align 8
  %660 = getelementptr inbounds i32, i32* %659, i64 0
  %661 = load i32, i32* %660, align 4
  %662 = load i32, i32* @SCALER_POS2_HEIGHT, align 4
  %663 = call i32 @VC4_SET_FIELD(i32 %661, i32 %662)
  %664 = or i32 %656, %663
  %665 = call i32 @vc4_dlist_write(%struct.vc4_plane_state* %614, i32 %664)
  %666 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %7, align 8
  %667 = call i32 @vc4_dlist_write(%struct.vc4_plane_state* %666, i32 -1061109568)
  %668 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %7, align 8
  %669 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %668, i32 0, i32 0
  %670 = load i32, i32* %669, align 8
  %671 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %7, align 8
  %672 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %671, i32 0, i32 13
  store i32 %670, i32* %672, align 8
  store i32 0, i32* %25, align 4
  br label %673

673:                                              ; preds = %687, %646
  %674 = load i32, i32* %25, align 4
  %675 = load i32, i32* %12, align 4
  %676 = icmp slt i32 %674, %675
  br i1 %676, label %677, label %690

677:                                              ; preds = %673
  %678 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %7, align 8
  %679 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %7, align 8
  %680 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %679, i32 0, i32 4
  %681 = load i32*, i32** %680, align 8
  %682 = load i32, i32* %25, align 4
  %683 = sext i32 %682 to i64
  %684 = getelementptr inbounds i32, i32* %681, i64 %683
  %685 = load i32, i32* %684, align 4
  %686 = call i32 @vc4_dlist_write(%struct.vc4_plane_state* %678, i32 %685)
  br label %687

687:                                              ; preds = %677
  %688 = load i32, i32* %25, align 4
  %689 = add nsw i32 %688, 1
  store i32 %689, i32* %25, align 4
  br label %673

690:                                              ; preds = %673
  store i32 0, i32* %25, align 4
  br label %691

691:                                              ; preds = %698, %690
  %692 = load i32, i32* %25, align 4
  %693 = load i32, i32* %12, align 4
  %694 = icmp slt i32 %692, %693
  br i1 %694, label %695, label %701

695:                                              ; preds = %691
  %696 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %7, align 8
  %697 = call i32 @vc4_dlist_write(%struct.vc4_plane_state* %696, i32 -1061109568)
  br label %698

698:                                              ; preds = %695
  %699 = load i32, i32* %25, align 4
  %700 = add nsw i32 %699, 1
  store i32 %700, i32* %25, align 4
  br label %691

701:                                              ; preds = %691
  %702 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %7, align 8
  %703 = load i32, i32* %19, align 4
  %704 = call i32 @vc4_dlist_write(%struct.vc4_plane_state* %702, i32 %703)
  store i32 1, i32* %25, align 4
  br label %705

705:                                              ; preds = %730, %701
  %706 = load i32, i32* %25, align 4
  %707 = load i32, i32* %12, align 4
  %708 = icmp slt i32 %706, %707
  br i1 %708, label %709, label %733

709:                                              ; preds = %705
  %710 = load i32, i32* %22, align 4
  %711 = load i32, i32* @HVS_PIXEL_FORMAT_H264, align 4
  %712 = icmp ne i32 %710, %711
  br i1 %712, label %713, label %725

713:                                              ; preds = %709
  %714 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %7, align 8
  %715 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %716 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %715, i32 0, i32 0
  %717 = load i32*, i32** %716, align 8
  %718 = load i32, i32* %25, align 4
  %719 = sext i32 %718 to i64
  %720 = getelementptr inbounds i32, i32* %717, i64 %719
  %721 = load i32, i32* %720, align 4
  %722 = load i32, i32* @SCALER_SRC_PITCH, align 4
  %723 = call i32 @VC4_SET_FIELD(i32 %721, i32 %722)
  %724 = call i32 @vc4_dlist_write(%struct.vc4_plane_state* %714, i32 %723)
  br label %729

725:                                              ; preds = %709
  %726 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %7, align 8
  %727 = load i32, i32* %19, align 4
  %728 = call i32 @vc4_dlist_write(%struct.vc4_plane_state* %726, i32 %727)
  br label %729

729:                                              ; preds = %725, %713
  br label %730

730:                                              ; preds = %729
  %731 = load i32, i32* %25, align 4
  %732 = add nsw i32 %731, 1
  store i32 %732, i32* %25, align 4
  br label %705

733:                                              ; preds = %705
  %734 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %7, align 8
  %735 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %734, i32 0, i32 19
  %736 = load i64, i64* %735, align 8
  %737 = icmp ne i64 %736, 0
  br i1 %737, label %738, label %748

738:                                              ; preds = %733
  %739 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %7, align 8
  %740 = load i32, i32* @SCALER_CSC0_ITR_R_601_5, align 4
  %741 = call i32 @vc4_dlist_write(%struct.vc4_plane_state* %739, i32 %740)
  %742 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %7, align 8
  %743 = load i32, i32* @SCALER_CSC1_ITR_R_601_5, align 4
  %744 = call i32 @vc4_dlist_write(%struct.vc4_plane_state* %742, i32 %743)
  %745 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %7, align 8
  %746 = load i32, i32* @SCALER_CSC2_ITR_R_601_5, align 4
  %747 = call i32 @vc4_dlist_write(%struct.vc4_plane_state* %745, i32 %746)
  br label %748

748:                                              ; preds = %738, %733
  %749 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %7, align 8
  %750 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %749, i32 0, i32 18
  store i64 0, i64* %750, align 8
  %751 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %7, align 8
  %752 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %751, i32 0, i32 14
  %753 = load i64*, i64** %752, align 8
  %754 = getelementptr inbounds i64, i64* %753, i64 0
  %755 = load i64, i64* %754, align 8
  %756 = load i64, i64* @VC4_SCALING_NONE, align 8
  %757 = icmp ne i64 %755, %756
  br i1 %757, label %782, label %758

758:                                              ; preds = %748
  %759 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %7, align 8
  %760 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %759, i32 0, i32 14
  %761 = load i64*, i64** %760, align 8
  %762 = getelementptr inbounds i64, i64* %761, i64 1
  %763 = load i64, i64* %762, align 8
  %764 = load i64, i64* @VC4_SCALING_NONE, align 8
  %765 = icmp ne i64 %763, %764
  br i1 %765, label %782, label %766

766:                                              ; preds = %758
  %767 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %7, align 8
  %768 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %767, i32 0, i32 15
  %769 = load i64*, i64** %768, align 8
  %770 = getelementptr inbounds i64, i64* %769, i64 0
  %771 = load i64, i64* %770, align 8
  %772 = load i64, i64* @VC4_SCALING_NONE, align 8
  %773 = icmp ne i64 %771, %772
  br i1 %773, label %782, label %774

774:                                              ; preds = %766
  %775 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %7, align 8
  %776 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %775, i32 0, i32 15
  %777 = load i64*, i64** %776, align 8
  %778 = getelementptr inbounds i64, i64* %777, i64 1
  %779 = load i64, i64* %778, align 8
  %780 = load i64, i64* @VC4_SCALING_NONE, align 8
  %781 = icmp ne i64 %779, %780
  br i1 %781, label %782, label %868

782:                                              ; preds = %774, %766, %758, %748
  %783 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %7, align 8
  %784 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %783, i32 0, i32 15
  %785 = load i64*, i64** %784, align 8
  %786 = getelementptr inbounds i64, i64* %785, i64 0
  %787 = load i64, i64* %786, align 8
  %788 = load i64, i64* @VC4_SCALING_NONE, align 8
  %789 = icmp ne i64 %787, %788
  br i1 %789, label %798, label %790

790:                                              ; preds = %782
  %791 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %7, align 8
  %792 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %791, i32 0, i32 15
  %793 = load i64*, i64** %792, align 8
  %794 = getelementptr inbounds i64, i64* %793, i64 1
  %795 = load i64, i64* %794, align 8
  %796 = load i64, i64* @VC4_SCALING_NONE, align 8
  %797 = icmp ne i64 %795, %796
  br i1 %797, label %798, label %806

798:                                              ; preds = %790, %782
  %799 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %7, align 8
  %800 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %799, i32 0, i32 0
  %801 = load i32, i32* %800, align 8
  %802 = add nsw i32 %801, 1
  store i32 %802, i32* %800, align 8
  %803 = sext i32 %801 to i64
  %804 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %7, align 8
  %805 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %804, i32 0, i32 18
  store i64 %803, i64* %805, align 8
  br label %806

806:                                              ; preds = %798, %790
  %807 = load i32, i32* %12, align 4
  %808 = icmp sgt i32 %807, 1
  br i1 %808, label %809, label %812

809:                                              ; preds = %806
  %810 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %811 = call i32 @vc4_write_scaling_parameters(%struct.drm_plane_state* %810, i32 1)
  br label %812

812:                                              ; preds = %809, %806
  %813 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %814 = call i32 @vc4_write_scaling_parameters(%struct.drm_plane_state* %813, i32 0)
  %815 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %7, align 8
  %816 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %815, i32 0, i32 14
  %817 = load i64*, i64** %816, align 8
  %818 = getelementptr inbounds i64, i64* %817, i64 0
  %819 = load i64, i64* %818, align 8
  %820 = load i64, i64* @VC4_SCALING_PPF, align 8
  %821 = icmp eq i64 %819, %820
  br i1 %821, label %846, label %822

822:                                              ; preds = %812
  %823 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %7, align 8
  %824 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %823, i32 0, i32 15
  %825 = load i64*, i64** %824, align 8
  %826 = getelementptr inbounds i64, i64* %825, i64 0
  %827 = load i64, i64* %826, align 8
  %828 = load i64, i64* @VC4_SCALING_PPF, align 8
  %829 = icmp eq i64 %827, %828
  br i1 %829, label %846, label %830

830:                                              ; preds = %822
  %831 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %7, align 8
  %832 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %831, i32 0, i32 14
  %833 = load i64*, i64** %832, align 8
  %834 = getelementptr inbounds i64, i64* %833, i64 1
  %835 = load i64, i64* %834, align 8
  %836 = load i64, i64* @VC4_SCALING_PPF, align 8
  %837 = icmp eq i64 %835, %836
  br i1 %837, label %846, label %838

838:                                              ; preds = %830
  %839 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %7, align 8
  %840 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %839, i32 0, i32 15
  %841 = load i64*, i64** %840, align 8
  %842 = getelementptr inbounds i64, i64* %841, i64 1
  %843 = load i64, i64* %842, align 8
  %844 = load i64, i64* @VC4_SCALING_PPF, align 8
  %845 = icmp eq i64 %843, %844
  br i1 %845, label %846, label %867

846:                                              ; preds = %838, %830, %822, %812
  %847 = load %struct.vc4_dev*, %struct.vc4_dev** %6, align 8
  %848 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %847, i32 0, i32 0
  %849 = load %struct.TYPE_7__*, %struct.TYPE_7__** %848, align 8
  %850 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %849, i32 0, i32 0
  %851 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %850, i32 0, i32 0
  %852 = load i32, i32* %851, align 4
  %853 = load i32, i32* @SCALER_PPF_KERNEL_OFFSET, align 4
  %854 = call i32 @VC4_SET_FIELD(i32 %852, i32 %853)
  store i32 %854, i32* %45, align 4
  %855 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %7, align 8
  %856 = load i32, i32* %45, align 4
  %857 = call i32 @vc4_dlist_write(%struct.vc4_plane_state* %855, i32 %856)
  %858 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %7, align 8
  %859 = load i32, i32* %45, align 4
  %860 = call i32 @vc4_dlist_write(%struct.vc4_plane_state* %858, i32 %859)
  %861 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %7, align 8
  %862 = load i32, i32* %45, align 4
  %863 = call i32 @vc4_dlist_write(%struct.vc4_plane_state* %861, i32 %862)
  %864 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %7, align 8
  %865 = load i32, i32* %45, align 4
  %866 = call i32 @vc4_dlist_write(%struct.vc4_plane_state* %864, i32 %865)
  br label %867

867:                                              ; preds = %846, %838
  br label %868

868:                                              ; preds = %867, %774
  %869 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %7, align 8
  %870 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %869, i32 0, i32 0
  %871 = load i32, i32* %870, align 8
  %872 = load i32, i32* @SCALER_CTL0_SIZE, align 4
  %873 = call i32 @VC4_SET_FIELD(i32 %871, i32 %872)
  %874 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %7, align 8
  %875 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %874, i32 0, i32 16
  %876 = load i32*, i32** %875, align 8
  %877 = load i32, i32* %9, align 4
  %878 = sext i32 %877 to i64
  %879 = getelementptr inbounds i32, i32* %876, i64 %878
  %880 = load i32, i32* %879, align 4
  %881 = or i32 %880, %873
  store i32 %881, i32* %879, align 4
  %882 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %7, align 8
  %883 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %882, i32 0, i32 7
  %884 = load i32, i32* %883, align 8
  %885 = icmp eq i32 %884, 0
  br i1 %885, label %886, label %913

886:                                              ; preds = %868
  %887 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %7, align 8
  %888 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %887, i32 0, i32 8
  %889 = load i32, i32* %888, align 4
  %890 = icmp eq i32 %889, 0
  br i1 %890, label %891, label %913

891:                                              ; preds = %886
  %892 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %7, align 8
  %893 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %892, i32 0, i32 9
  %894 = load i32, i32* %893, align 8
  %895 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %896 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %895, i32 0, i32 1
  %897 = load %struct.TYPE_9__*, %struct.TYPE_9__** %896, align 8
  %898 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %897, i32 0, i32 0
  %899 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %898, i32 0, i32 0
  %900 = load i32, i32* %899, align 4
  %901 = icmp eq i32 %894, %900
  br i1 %901, label %902, label %913

902:                                              ; preds = %891
  %903 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %7, align 8
  %904 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %903, i32 0, i32 10
  %905 = load i32, i32* %904, align 4
  %906 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %907 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %906, i32 0, i32 1
  %908 = load %struct.TYPE_9__*, %struct.TYPE_9__** %907, align 8
  %909 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %908, i32 0, i32 0
  %910 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %909, i32 0, i32 1
  %911 = load i32, i32* %910, align 4
  %912 = icmp eq i32 %905, %911
  br label %913

913:                                              ; preds = %902, %891, %886, %868
  %914 = phi i1 [ false, %891 ], [ false, %886 ], [ false, %868 ], [ %912, %902 ]
  %915 = zext i1 %914 to i32
  store i32 %915, i32* %16, align 4
  %916 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %917 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %916, i32 0, i32 1
  %918 = load %struct.TYPE_10__*, %struct.TYPE_10__** %917, align 8
  %919 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %918, i32 0, i32 4
  %920 = load i64, i64* %919, align 8
  %921 = icmp ne i64 %920, 0
  br i1 %921, label %931, label %922

922:                                              ; preds = %913
  %923 = load i32, i32* %16, align 4
  %924 = icmp ne i32 %923, 0
  br i1 %924, label %925, label %931

925:                                              ; preds = %922
  %926 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %927 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %926, i32 0, i32 0
  %928 = load i32, i32* %927, align 8
  %929 = load i32, i32* @DRM_BLEND_ALPHA_OPAQUE, align 4
  %930 = icmp ne i32 %928, %929
  br label %931

931:                                              ; preds = %925, %922, %913
  %932 = phi i1 [ true, %922 ], [ true, %913 ], [ %930, %925 ]
  %933 = zext i1 %932 to i32
  %934 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %7, align 8
  %935 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %934, i32 0, i32 17
  store i32 %933, i32* %935, align 8
  %936 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %7, align 8
  %937 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %936, i32 0, i32 1
  store i32 1, i32* %937, align 4
  %938 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %939 = call i32 @vc4_plane_calc_load(%struct.drm_plane_state* %938)
  store i32 0, i32* %3, align 4
  br label %940

940:                                              ; preds = %931, %483, %386, %96, %90
  %941 = load i32, i32* %3, align 4
  ret i32 %941
}

declare dso_local %struct.vc4_dev* @to_vc4_dev(i32) #1

declare dso_local %struct.vc4_plane_state* @to_vc4_plane_state(%struct.drm_plane_state*) #1

declare dso_local %struct.hvs_format* @vc4_get_hvs_format(i32) #1

declare dso_local i32 @fourcc_mod_broadcom_mod(i64) #1

declare dso_local i32 @vc4_plane_setup_clipping_and_scaling(%struct.drm_plane_state*) #1

declare dso_local i32 @vc4_get_scl_field(%struct.drm_plane_state*, i32) #1

declare dso_local i32 @drm_rotation_simplify(i32, i32) #1

declare dso_local i32 @VC4_SET_FIELD(i32, i32) #1

declare dso_local i32 @fourcc_mod_broadcom_param(i64) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i64) #1

declare dso_local i32 @vc4_dlist_write(%struct.vc4_plane_state*, i32) #1

declare dso_local i32 @vc4_write_scaling_parameters(%struct.drm_plane_state*, i32) #1

declare dso_local i32 @vc4_plane_calc_load(%struct.drm_plane_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
