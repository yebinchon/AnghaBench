; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_dce_v8_0.c_dce_v8_0_crtc_do_set_base.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_dce_v8_0.c_dce_v8_0_crtc_do_set_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.TYPE_5__*, %struct.TYPE_4__, %struct.drm_device* }
%struct.TYPE_5__ = type { %struct.drm_framebuffer* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.drm_device = type { %struct.amdgpu_device* }
%struct.amdgpu_device = type { i32 }
%struct.drm_framebuffer = type { i32, i32, i32*, %struct.drm_gem_object**, %struct.TYPE_6__* }
%struct.drm_gem_object = type { i32 }
%struct.TYPE_6__ = type { i32, i32* }
%struct.amdgpu_crtc = type { i64 }
%struct.amdgpu_bo = type { i32 }
%struct.drm_format_name_buf = type { i32 }

@GRPH_ENDIAN_NONE = common dso_local global i32 0, align 4
@GRPH_SWAP_CNTL__GRPH_ENDIAN_SWAP__SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"No FB bound\0A\00", align 1
@AMDGPU_GEM_DOMAIN_VRAM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PIPE_CONFIG = common dso_local global i32 0, align 4
@GRPH_DEPTH_8BPP = common dso_local global i32 0, align 4
@GRPH_CONTROL__GRPH_DEPTH__SHIFT = common dso_local global i32 0, align 4
@GRPH_FORMAT_INDEXED = common dso_local global i32 0, align 4
@GRPH_CONTROL__GRPH_FORMAT__SHIFT = common dso_local global i32 0, align 4
@GRPH_DEPTH_16BPP = common dso_local global i32 0, align 4
@GRPH_FORMAT_ARGB4444 = common dso_local global i32 0, align 4
@GRPH_FORMAT_ARGB1555 = common dso_local global i32 0, align 4
@GRPH_FORMAT_BGRA5551 = common dso_local global i32 0, align 4
@GRPH_FORMAT_ARGB565 = common dso_local global i32 0, align 4
@GRPH_DEPTH_32BPP = common dso_local global i32 0, align 4
@GRPH_FORMAT_ARGB8888 = common dso_local global i32 0, align 4
@GRPH_FORMAT_ARGB2101010 = common dso_local global i32 0, align 4
@GRPH_FORMAT_BGRA1010102 = common dso_local global i32 0, align 4
@GRPH_RED_SEL_B = common dso_local global i32 0, align 4
@GRPH_SWAP_CNTL__GRPH_RED_CROSSBAR__SHIFT = common dso_local global i32 0, align 4
@GRPH_BLUE_SEL_R = common dso_local global i32 0, align 4
@GRPH_SWAP_CNTL__GRPH_BLUE_CROSSBAR__SHIFT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Unsupported screen format %s\0A\00", align 1
@ARRAY_MODE = common dso_local global i32 0, align 4
@ARRAY_2D_TILED_THIN1 = common dso_local global i32 0, align 4
@BANK_WIDTH = common dso_local global i32 0, align 4
@BANK_HEIGHT = common dso_local global i32 0, align 4
@MACRO_TILE_ASPECT = common dso_local global i32 0, align 4
@TILE_SPLIT = common dso_local global i32 0, align 4
@NUM_BANKS = common dso_local global i32 0, align 4
@GRPH_CONTROL__GRPH_NUM_BANKS__SHIFT = common dso_local global i32 0, align 4
@GRPH_ARRAY_2D_TILED_THIN1 = common dso_local global i32 0, align 4
@GRPH_CONTROL__GRPH_ARRAY_MODE__SHIFT = common dso_local global i32 0, align 4
@GRPH_CONTROL__GRPH_TILE_SPLIT__SHIFT = common dso_local global i32 0, align 4
@GRPH_CONTROL__GRPH_BANK_WIDTH__SHIFT = common dso_local global i32 0, align 4
@GRPH_CONTROL__GRPH_BANK_HEIGHT__SHIFT = common dso_local global i32 0, align 4
@GRPH_CONTROL__GRPH_MACRO_TILE_ASPECT__SHIFT = common dso_local global i32 0, align 4
@DISPLAY_MICRO_TILING = common dso_local global i32 0, align 4
@GRPH_CONTROL__GRPH_MICRO_TILE_MODE__SHIFT = common dso_local global i32 0, align 4
@ARRAY_1D_TILED_THIN1 = common dso_local global i32 0, align 4
@GRPH_ARRAY_1D_TILED_THIN1 = common dso_local global i32 0, align 4
@GRPH_CONTROL__GRPH_PIPE_CONFIG__SHIFT = common dso_local global i32 0, align 4
@mmGRPH_FLIP_CONTROL = common dso_local global i64 0, align 8
@mmGRPH_PRIMARY_SURFACE_ADDRESS_HIGH = common dso_local global i64 0, align 8
@mmGRPH_SECONDARY_SURFACE_ADDRESS_HIGH = common dso_local global i64 0, align 8
@mmGRPH_PRIMARY_SURFACE_ADDRESS = common dso_local global i64 0, align 8
@GRPH_PRIMARY_SURFACE_ADDRESS__GRPH_PRIMARY_SURFACE_ADDRESS_MASK = common dso_local global i32 0, align 4
@mmGRPH_SECONDARY_SURFACE_ADDRESS = common dso_local global i64 0, align 8
@GRPH_SECONDARY_SURFACE_ADDRESS__GRPH_SECONDARY_SURFACE_ADDRESS_MASK = common dso_local global i32 0, align 4
@mmGRPH_CONTROL = common dso_local global i64 0, align 8
@mmGRPH_SWAP_CNTL = common dso_local global i64 0, align 8
@mmGRPH_LUT_10BIT_BYPASS_CONTROL = common dso_local global i64 0, align 8
@LUT_10BIT_BYPASS_EN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [50 x i8] c"Bypassing hardware LUT due to 10 bit fb scanout.\0A\00", align 1
@mmGRPH_SURFACE_OFFSET_X = common dso_local global i64 0, align 8
@mmGRPH_SURFACE_OFFSET_Y = common dso_local global i64 0, align 8
@mmGRPH_X_START = common dso_local global i64 0, align 8
@mmGRPH_Y_START = common dso_local global i64 0, align 8
@mmGRPH_X_END = common dso_local global i64 0, align 8
@mmGRPH_Y_END = common dso_local global i64 0, align 8
@mmGRPH_PITCH = common dso_local global i64 0, align 8
@mmLB_DESKTOP_HEIGHT = common dso_local global i64 0, align 8
@mmVIEWPORT_START = common dso_local global i64 0, align 8
@mmVIEWPORT_SIZE = common dso_local global i64 0, align 8
@mmMASTER_UPDATE_MODE = common dso_local global i64 0, align 8
@GRPH_ENDIAN_8IN16 = common dso_local global i32 0, align 4
@GRPH_ENDIAN_8IN32 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_crtc*, %struct.drm_framebuffer*, i32, i32, i32)* @dce_v8_0_crtc_do_set_base to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dce_v8_0_crtc_do_set_base(%struct.drm_crtc* %0, %struct.drm_framebuffer* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.drm_crtc*, align 8
  %8 = alloca %struct.drm_framebuffer*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.amdgpu_crtc*, align 8
  %13 = alloca %struct.drm_device*, align 8
  %14 = alloca %struct.amdgpu_device*, align 8
  %15 = alloca %struct.drm_framebuffer*, align 8
  %16 = alloca %struct.drm_gem_object*, align 8
  %17 = alloca %struct.amdgpu_bo*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca %struct.drm_format_name_buf, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  store %struct.drm_crtc* %0, %struct.drm_crtc** %7, align 8
  store %struct.drm_framebuffer* %1, %struct.drm_framebuffer** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %34 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %35 = call %struct.amdgpu_crtc* @to_amdgpu_crtc(%struct.drm_crtc* %34)
  store %struct.amdgpu_crtc* %35, %struct.amdgpu_crtc** %12, align 8
  %36 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %37 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %36, i32 0, i32 2
  %38 = load %struct.drm_device*, %struct.drm_device** %37, align 8
  store %struct.drm_device* %38, %struct.drm_device** %13, align 8
  %39 = load %struct.drm_device*, %struct.drm_device** %13, align 8
  %40 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %39, i32 0, i32 0
  %41 = load %struct.amdgpu_device*, %struct.amdgpu_device** %40, align 8
  store %struct.amdgpu_device* %41, %struct.amdgpu_device** %14, align 8
  %42 = load i32, i32* @GRPH_ENDIAN_NONE, align 4
  %43 = load i32, i32* @GRPH_SWAP_CNTL__GRPH_ENDIAN_SWAP__SHIFT, align 4
  %44 = shl i32 %42, %43
  store i32 %44, i32* %22, align 4
  store i32 0, i32* %27, align 4
  %45 = load i32, i32* %11, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %56, label %47

47:                                               ; preds = %5
  %48 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %49 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %48, i32 0, i32 0
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %51, align 8
  %53 = icmp ne %struct.drm_framebuffer* %52, null
  br i1 %53, label %56, label %54

54:                                               ; preds = %47
  %55 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %510

56:                                               ; preds = %47, %5
  %57 = load i32, i32* %11, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %56
  %60 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  store %struct.drm_framebuffer* %60, %struct.drm_framebuffer** %15, align 8
  br label %67

61:                                               ; preds = %56
  %62 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %63 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %62, i32 0, i32 0
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %65, align 8
  store %struct.drm_framebuffer* %66, %struct.drm_framebuffer** %15, align 8
  br label %67

67:                                               ; preds = %61, %59
  %68 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %15, align 8
  %69 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %68, i32 0, i32 3
  %70 = load %struct.drm_gem_object**, %struct.drm_gem_object*** %69, align 8
  %71 = getelementptr inbounds %struct.drm_gem_object*, %struct.drm_gem_object** %70, i64 0
  %72 = load %struct.drm_gem_object*, %struct.drm_gem_object** %71, align 8
  store %struct.drm_gem_object* %72, %struct.drm_gem_object** %16, align 8
  %73 = load %struct.drm_gem_object*, %struct.drm_gem_object** %16, align 8
  %74 = call %struct.amdgpu_bo* @gem_to_amdgpu_bo(%struct.drm_gem_object* %73)
  store %struct.amdgpu_bo* %74, %struct.amdgpu_bo** %17, align 8
  %75 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %17, align 8
  %76 = call i32 @amdgpu_bo_reserve(%struct.amdgpu_bo* %75, i32 0)
  store i32 %76, i32* %26, align 4
  %77 = load i32, i32* %26, align 4
  %78 = icmp ne i32 %77, 0
  %79 = zext i1 %78 to i32
  %80 = call i64 @unlikely(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %67
  %83 = load i32, i32* %26, align 4
  store i32 %83, i32* %6, align 4
  br label %510

84:                                               ; preds = %67
  %85 = load i32, i32* %11, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %102, label %87

87:                                               ; preds = %84
  %88 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %17, align 8
  %89 = load i32, i32* @AMDGPU_GEM_DOMAIN_VRAM, align 4
  %90 = call i32 @amdgpu_bo_pin(%struct.amdgpu_bo* %88, i32 %89)
  store i32 %90, i32* %26, align 4
  %91 = load i32, i32* %26, align 4
  %92 = icmp ne i32 %91, 0
  %93 = zext i1 %92 to i32
  %94 = call i64 @unlikely(i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %87
  %97 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %17, align 8
  %98 = call i32 @amdgpu_bo_unreserve(%struct.amdgpu_bo* %97)
  %99 = load i32, i32* @EINVAL, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %6, align 4
  br label %510

101:                                              ; preds = %87
  br label %102

102:                                              ; preds = %101, %84
  %103 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %17, align 8
  %104 = call i64 @amdgpu_bo_gpu_offset(%struct.amdgpu_bo* %103)
  store i64 %104, i64* %18, align 8
  %105 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %17, align 8
  %106 = call i32 @amdgpu_bo_get_tiling_flags(%struct.amdgpu_bo* %105, i64* %19)
  %107 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %17, align 8
  %108 = call i32 @amdgpu_bo_unreserve(%struct.amdgpu_bo* %107)
  %109 = load i64, i64* %19, align 8
  %110 = load i32, i32* @PIPE_CONFIG, align 4
  %111 = call i32 @AMDGPU_TILING_GET(i64 %109, i32 %110)
  store i32 %111, i32* %23, align 4
  %112 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %15, align 8
  %113 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %112, i32 0, i32 4
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  switch i32 %116, label %196 [
    i32 134, label %117
    i32 129, label %125
    i32 140, label %125
    i32 131, label %133
    i32 142, label %133
    i32 135, label %141
    i32 137, label %141
    i32 133, label %149
    i32 128, label %157
    i32 139, label %157
    i32 130, label %165
    i32 141, label %165
    i32 136, label %173
    i32 138, label %173
    i32 132, label %181
    i32 143, label %181
  ]

117:                                              ; preds = %102
  %118 = load i32, i32* @GRPH_DEPTH_8BPP, align 4
  %119 = load i32, i32* @GRPH_CONTROL__GRPH_DEPTH__SHIFT, align 4
  %120 = shl i32 %118, %119
  %121 = load i32, i32* @GRPH_FORMAT_INDEXED, align 4
  %122 = load i32, i32* @GRPH_CONTROL__GRPH_FORMAT__SHIFT, align 4
  %123 = shl i32 %121, %122
  %124 = or i32 %120, %123
  store i32 %124, i32* %20, align 4
  br label %206

125:                                              ; preds = %102, %102
  %126 = load i32, i32* @GRPH_DEPTH_16BPP, align 4
  %127 = load i32, i32* @GRPH_CONTROL__GRPH_DEPTH__SHIFT, align 4
  %128 = shl i32 %126, %127
  %129 = load i32, i32* @GRPH_FORMAT_ARGB4444, align 4
  %130 = load i32, i32* @GRPH_CONTROL__GRPH_FORMAT__SHIFT, align 4
  %131 = shl i32 %129, %130
  %132 = or i32 %128, %131
  store i32 %132, i32* %20, align 4
  br label %206

133:                                              ; preds = %102, %102
  %134 = load i32, i32* @GRPH_DEPTH_16BPP, align 4
  %135 = load i32, i32* @GRPH_CONTROL__GRPH_DEPTH__SHIFT, align 4
  %136 = shl i32 %134, %135
  %137 = load i32, i32* @GRPH_FORMAT_ARGB1555, align 4
  %138 = load i32, i32* @GRPH_CONTROL__GRPH_FORMAT__SHIFT, align 4
  %139 = shl i32 %137, %138
  %140 = or i32 %136, %139
  store i32 %140, i32* %20, align 4
  br label %206

141:                                              ; preds = %102, %102
  %142 = load i32, i32* @GRPH_DEPTH_16BPP, align 4
  %143 = load i32, i32* @GRPH_CONTROL__GRPH_DEPTH__SHIFT, align 4
  %144 = shl i32 %142, %143
  %145 = load i32, i32* @GRPH_FORMAT_BGRA5551, align 4
  %146 = load i32, i32* @GRPH_CONTROL__GRPH_FORMAT__SHIFT, align 4
  %147 = shl i32 %145, %146
  %148 = or i32 %144, %147
  store i32 %148, i32* %20, align 4
  br label %206

149:                                              ; preds = %102
  %150 = load i32, i32* @GRPH_DEPTH_16BPP, align 4
  %151 = load i32, i32* @GRPH_CONTROL__GRPH_DEPTH__SHIFT, align 4
  %152 = shl i32 %150, %151
  %153 = load i32, i32* @GRPH_FORMAT_ARGB565, align 4
  %154 = load i32, i32* @GRPH_CONTROL__GRPH_FORMAT__SHIFT, align 4
  %155 = shl i32 %153, %154
  %156 = or i32 %152, %155
  store i32 %156, i32* %20, align 4
  br label %206

157:                                              ; preds = %102, %102
  %158 = load i32, i32* @GRPH_DEPTH_32BPP, align 4
  %159 = load i32, i32* @GRPH_CONTROL__GRPH_DEPTH__SHIFT, align 4
  %160 = shl i32 %158, %159
  %161 = load i32, i32* @GRPH_FORMAT_ARGB8888, align 4
  %162 = load i32, i32* @GRPH_CONTROL__GRPH_FORMAT__SHIFT, align 4
  %163 = shl i32 %161, %162
  %164 = or i32 %160, %163
  store i32 %164, i32* %20, align 4
  br label %206

165:                                              ; preds = %102, %102
  %166 = load i32, i32* @GRPH_DEPTH_32BPP, align 4
  %167 = load i32, i32* @GRPH_CONTROL__GRPH_DEPTH__SHIFT, align 4
  %168 = shl i32 %166, %167
  %169 = load i32, i32* @GRPH_FORMAT_ARGB2101010, align 4
  %170 = load i32, i32* @GRPH_CONTROL__GRPH_FORMAT__SHIFT, align 4
  %171 = shl i32 %169, %170
  %172 = or i32 %168, %171
  store i32 %172, i32* %20, align 4
  store i32 1, i32* %27, align 4
  br label %206

173:                                              ; preds = %102, %102
  %174 = load i32, i32* @GRPH_DEPTH_32BPP, align 4
  %175 = load i32, i32* @GRPH_CONTROL__GRPH_DEPTH__SHIFT, align 4
  %176 = shl i32 %174, %175
  %177 = load i32, i32* @GRPH_FORMAT_BGRA1010102, align 4
  %178 = load i32, i32* @GRPH_CONTROL__GRPH_FORMAT__SHIFT, align 4
  %179 = shl i32 %177, %178
  %180 = or i32 %176, %179
  store i32 %180, i32* %20, align 4
  store i32 1, i32* %27, align 4
  br label %206

181:                                              ; preds = %102, %102
  %182 = load i32, i32* @GRPH_DEPTH_32BPP, align 4
  %183 = load i32, i32* @GRPH_CONTROL__GRPH_DEPTH__SHIFT, align 4
  %184 = shl i32 %182, %183
  %185 = load i32, i32* @GRPH_FORMAT_ARGB8888, align 4
  %186 = load i32, i32* @GRPH_CONTROL__GRPH_FORMAT__SHIFT, align 4
  %187 = shl i32 %185, %186
  %188 = or i32 %184, %187
  store i32 %188, i32* %20, align 4
  %189 = load i32, i32* @GRPH_RED_SEL_B, align 4
  %190 = load i32, i32* @GRPH_SWAP_CNTL__GRPH_RED_CROSSBAR__SHIFT, align 4
  %191 = shl i32 %189, %190
  %192 = load i32, i32* @GRPH_BLUE_SEL_R, align 4
  %193 = load i32, i32* @GRPH_SWAP_CNTL__GRPH_BLUE_CROSSBAR__SHIFT, align 4
  %194 = shl i32 %192, %193
  %195 = or i32 %191, %194
  store i32 %195, i32* %22, align 4
  br label %206

196:                                              ; preds = %102
  %197 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %15, align 8
  %198 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %197, i32 0, i32 4
  %199 = load %struct.TYPE_6__*, %struct.TYPE_6__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = call i32 @drm_get_format_name(i32 %201, %struct.drm_format_name_buf* %28)
  %203 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %202)
  %204 = load i32, i32* @EINVAL, align 4
  %205 = sub nsw i32 0, %204
  store i32 %205, i32* %6, align 4
  br label %510

206:                                              ; preds = %181, %173, %165, %157, %149, %141, %133, %125, %117
  %207 = load i64, i64* %19, align 8
  %208 = load i32, i32* @ARRAY_MODE, align 4
  %209 = call i32 @AMDGPU_TILING_GET(i64 %207, i32 %208)
  %210 = load i32, i32* @ARRAY_2D_TILED_THIN1, align 4
  %211 = icmp eq i32 %209, %210
  br i1 %211, label %212, label %263

212:                                              ; preds = %206
  %213 = load i64, i64* %19, align 8
  %214 = load i32, i32* @BANK_WIDTH, align 4
  %215 = call i32 @AMDGPU_TILING_GET(i64 %213, i32 %214)
  store i32 %215, i32* %29, align 4
  %216 = load i64, i64* %19, align 8
  %217 = load i32, i32* @BANK_HEIGHT, align 4
  %218 = call i32 @AMDGPU_TILING_GET(i64 %216, i32 %217)
  store i32 %218, i32* %30, align 4
  %219 = load i64, i64* %19, align 8
  %220 = load i32, i32* @MACRO_TILE_ASPECT, align 4
  %221 = call i32 @AMDGPU_TILING_GET(i64 %219, i32 %220)
  store i32 %221, i32* %31, align 4
  %222 = load i64, i64* %19, align 8
  %223 = load i32, i32* @TILE_SPLIT, align 4
  %224 = call i32 @AMDGPU_TILING_GET(i64 %222, i32 %223)
  store i32 %224, i32* %32, align 4
  %225 = load i64, i64* %19, align 8
  %226 = load i32, i32* @NUM_BANKS, align 4
  %227 = call i32 @AMDGPU_TILING_GET(i64 %225, i32 %226)
  store i32 %227, i32* %33, align 4
  %228 = load i32, i32* %33, align 4
  %229 = load i32, i32* @GRPH_CONTROL__GRPH_NUM_BANKS__SHIFT, align 4
  %230 = shl i32 %228, %229
  %231 = load i32, i32* %20, align 4
  %232 = or i32 %231, %230
  store i32 %232, i32* %20, align 4
  %233 = load i32, i32* @GRPH_ARRAY_2D_TILED_THIN1, align 4
  %234 = load i32, i32* @GRPH_CONTROL__GRPH_ARRAY_MODE__SHIFT, align 4
  %235 = shl i32 %233, %234
  %236 = load i32, i32* %20, align 4
  %237 = or i32 %236, %235
  store i32 %237, i32* %20, align 4
  %238 = load i32, i32* %32, align 4
  %239 = load i32, i32* @GRPH_CONTROL__GRPH_TILE_SPLIT__SHIFT, align 4
  %240 = shl i32 %238, %239
  %241 = load i32, i32* %20, align 4
  %242 = or i32 %241, %240
  store i32 %242, i32* %20, align 4
  %243 = load i32, i32* %29, align 4
  %244 = load i32, i32* @GRPH_CONTROL__GRPH_BANK_WIDTH__SHIFT, align 4
  %245 = shl i32 %243, %244
  %246 = load i32, i32* %20, align 4
  %247 = or i32 %246, %245
  store i32 %247, i32* %20, align 4
  %248 = load i32, i32* %30, align 4
  %249 = load i32, i32* @GRPH_CONTROL__GRPH_BANK_HEIGHT__SHIFT, align 4
  %250 = shl i32 %248, %249
  %251 = load i32, i32* %20, align 4
  %252 = or i32 %251, %250
  store i32 %252, i32* %20, align 4
  %253 = load i32, i32* %31, align 4
  %254 = load i32, i32* @GRPH_CONTROL__GRPH_MACRO_TILE_ASPECT__SHIFT, align 4
  %255 = shl i32 %253, %254
  %256 = load i32, i32* %20, align 4
  %257 = or i32 %256, %255
  store i32 %257, i32* %20, align 4
  %258 = load i32, i32* @DISPLAY_MICRO_TILING, align 4
  %259 = load i32, i32* @GRPH_CONTROL__GRPH_MICRO_TILE_MODE__SHIFT, align 4
  %260 = shl i32 %258, %259
  %261 = load i32, i32* %20, align 4
  %262 = or i32 %261, %260
  store i32 %262, i32* %20, align 4
  br label %276

263:                                              ; preds = %206
  %264 = load i64, i64* %19, align 8
  %265 = load i32, i32* @ARRAY_MODE, align 4
  %266 = call i32 @AMDGPU_TILING_GET(i64 %264, i32 %265)
  %267 = load i32, i32* @ARRAY_1D_TILED_THIN1, align 4
  %268 = icmp eq i32 %266, %267
  br i1 %268, label %269, label %275

269:                                              ; preds = %263
  %270 = load i32, i32* @GRPH_ARRAY_1D_TILED_THIN1, align 4
  %271 = load i32, i32* @GRPH_CONTROL__GRPH_ARRAY_MODE__SHIFT, align 4
  %272 = shl i32 %270, %271
  %273 = load i32, i32* %20, align 4
  %274 = or i32 %273, %272
  store i32 %274, i32* %20, align 4
  br label %275

275:                                              ; preds = %269, %263
  br label %276

276:                                              ; preds = %275, %212
  %277 = load i32, i32* %23, align 4
  %278 = load i32, i32* @GRPH_CONTROL__GRPH_PIPE_CONFIG__SHIFT, align 4
  %279 = shl i32 %277, %278
  %280 = load i32, i32* %20, align 4
  %281 = or i32 %280, %279
  store i32 %281, i32* %20, align 4
  %282 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %283 = call i32 @dce_v8_0_vga_enable(%struct.drm_crtc* %282, i32 0)
  %284 = load i64, i64* @mmGRPH_FLIP_CONTROL, align 8
  %285 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %12, align 8
  %286 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %285, i32 0, i32 0
  %287 = load i64, i64* %286, align 8
  %288 = add nsw i64 %284, %287
  %289 = call i32 @WREG32(i64 %288, i32 0)
  %290 = load i64, i64* @mmGRPH_PRIMARY_SURFACE_ADDRESS_HIGH, align 8
  %291 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %12, align 8
  %292 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %291, i32 0, i32 0
  %293 = load i64, i64* %292, align 8
  %294 = add nsw i64 %290, %293
  %295 = load i64, i64* %18, align 8
  %296 = call i32 @upper_32_bits(i64 %295)
  %297 = call i32 @WREG32(i64 %294, i32 %296)
  %298 = load i64, i64* @mmGRPH_SECONDARY_SURFACE_ADDRESS_HIGH, align 8
  %299 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %12, align 8
  %300 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %299, i32 0, i32 0
  %301 = load i64, i64* %300, align 8
  %302 = add nsw i64 %298, %301
  %303 = load i64, i64* %18, align 8
  %304 = call i32 @upper_32_bits(i64 %303)
  %305 = call i32 @WREG32(i64 %302, i32 %304)
  %306 = load i64, i64* @mmGRPH_PRIMARY_SURFACE_ADDRESS, align 8
  %307 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %12, align 8
  %308 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %307, i32 0, i32 0
  %309 = load i64, i64* %308, align 8
  %310 = add nsw i64 %306, %309
  %311 = load i64, i64* %18, align 8
  %312 = trunc i64 %311 to i32
  %313 = load i32, i32* @GRPH_PRIMARY_SURFACE_ADDRESS__GRPH_PRIMARY_SURFACE_ADDRESS_MASK, align 4
  %314 = and i32 %312, %313
  %315 = call i32 @WREG32(i64 %310, i32 %314)
  %316 = load i64, i64* @mmGRPH_SECONDARY_SURFACE_ADDRESS, align 8
  %317 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %12, align 8
  %318 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %317, i32 0, i32 0
  %319 = load i64, i64* %318, align 8
  %320 = add nsw i64 %316, %319
  %321 = load i64, i64* %18, align 8
  %322 = trunc i64 %321 to i32
  %323 = load i32, i32* @GRPH_SECONDARY_SURFACE_ADDRESS__GRPH_SECONDARY_SURFACE_ADDRESS_MASK, align 4
  %324 = and i32 %322, %323
  %325 = call i32 @WREG32(i64 %320, i32 %324)
  %326 = load i64, i64* @mmGRPH_CONTROL, align 8
  %327 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %12, align 8
  %328 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %327, i32 0, i32 0
  %329 = load i64, i64* %328, align 8
  %330 = add nsw i64 %326, %329
  %331 = load i32, i32* %20, align 4
  %332 = call i32 @WREG32(i64 %330, i32 %331)
  %333 = load i64, i64* @mmGRPH_SWAP_CNTL, align 8
  %334 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %12, align 8
  %335 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %334, i32 0, i32 0
  %336 = load i64, i64* %335, align 8
  %337 = add nsw i64 %333, %336
  %338 = load i32, i32* %22, align 4
  %339 = call i32 @WREG32(i64 %337, i32 %338)
  %340 = load i64, i64* @mmGRPH_LUT_10BIT_BYPASS_CONTROL, align 8
  %341 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %12, align 8
  %342 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %341, i32 0, i32 0
  %343 = load i64, i64* %342, align 8
  %344 = add nsw i64 %340, %343
  %345 = load i32, i32* %27, align 4
  %346 = icmp ne i32 %345, 0
  br i1 %346, label %347, label %349

347:                                              ; preds = %276
  %348 = load i32, i32* @LUT_10BIT_BYPASS_EN, align 4
  br label %350

349:                                              ; preds = %276
  br label %350

350:                                              ; preds = %349, %347
  %351 = phi i32 [ %348, %347 ], [ 0, %349 ]
  %352 = load i32, i32* @LUT_10BIT_BYPASS_EN, align 4
  %353 = xor i32 %352, -1
  %354 = call i32 @WREG32_P(i64 %344, i32 %351, i32 %353)
  %355 = load i32, i32* %27, align 4
  %356 = icmp ne i32 %355, 0
  br i1 %356, label %357, label %359

357:                                              ; preds = %350
  %358 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0))
  br label %359

359:                                              ; preds = %357, %350
  %360 = load i64, i64* @mmGRPH_SURFACE_OFFSET_X, align 8
  %361 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %12, align 8
  %362 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %361, i32 0, i32 0
  %363 = load i64, i64* %362, align 8
  %364 = add nsw i64 %360, %363
  %365 = call i32 @WREG32(i64 %364, i32 0)
  %366 = load i64, i64* @mmGRPH_SURFACE_OFFSET_Y, align 8
  %367 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %12, align 8
  %368 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %367, i32 0, i32 0
  %369 = load i64, i64* %368, align 8
  %370 = add nsw i64 %366, %369
  %371 = call i32 @WREG32(i64 %370, i32 0)
  %372 = load i64, i64* @mmGRPH_X_START, align 8
  %373 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %12, align 8
  %374 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %373, i32 0, i32 0
  %375 = load i64, i64* %374, align 8
  %376 = add nsw i64 %372, %375
  %377 = call i32 @WREG32(i64 %376, i32 0)
  %378 = load i64, i64* @mmGRPH_Y_START, align 8
  %379 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %12, align 8
  %380 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %379, i32 0, i32 0
  %381 = load i64, i64* %380, align 8
  %382 = add nsw i64 %378, %381
  %383 = call i32 @WREG32(i64 %382, i32 0)
  %384 = load i64, i64* @mmGRPH_X_END, align 8
  %385 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %12, align 8
  %386 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %385, i32 0, i32 0
  %387 = load i64, i64* %386, align 8
  %388 = add nsw i64 %384, %387
  %389 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %15, align 8
  %390 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %389, i32 0, i32 0
  %391 = load i32, i32* %390, align 8
  %392 = call i32 @WREG32(i64 %388, i32 %391)
  %393 = load i64, i64* @mmGRPH_Y_END, align 8
  %394 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %12, align 8
  %395 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %394, i32 0, i32 0
  %396 = load i64, i64* %395, align 8
  %397 = add nsw i64 %393, %396
  %398 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %15, align 8
  %399 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %398, i32 0, i32 1
  %400 = load i32, i32* %399, align 4
  %401 = call i32 @WREG32(i64 %397, i32 %400)
  %402 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %15, align 8
  %403 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %402, i32 0, i32 2
  %404 = load i32*, i32** %403, align 8
  %405 = getelementptr inbounds i32, i32* %404, i64 0
  %406 = load i32, i32* %405, align 4
  %407 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %15, align 8
  %408 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %407, i32 0, i32 4
  %409 = load %struct.TYPE_6__*, %struct.TYPE_6__** %408, align 8
  %410 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %409, i32 0, i32 1
  %411 = load i32*, i32** %410, align 8
  %412 = getelementptr inbounds i32, i32* %411, i64 0
  %413 = load i32, i32* %412, align 4
  %414 = udiv i32 %406, %413
  store i32 %414, i32* %21, align 4
  %415 = load i64, i64* @mmGRPH_PITCH, align 8
  %416 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %12, align 8
  %417 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %416, i32 0, i32 0
  %418 = load i64, i64* %417, align 8
  %419 = add nsw i64 %415, %418
  %420 = load i32, i32* %21, align 4
  %421 = call i32 @WREG32(i64 %419, i32 %420)
  %422 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %423 = call i32 @dce_v8_0_grph_enable(%struct.drm_crtc* %422, i32 1)
  %424 = load i64, i64* @mmLB_DESKTOP_HEIGHT, align 8
  %425 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %12, align 8
  %426 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %425, i32 0, i32 0
  %427 = load i64, i64* %426, align 8
  %428 = add nsw i64 %424, %427
  %429 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %15, align 8
  %430 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %429, i32 0, i32 1
  %431 = load i32, i32* %430, align 4
  %432 = call i32 @WREG32(i64 %428, i32 %431)
  %433 = load i32, i32* %9, align 4
  %434 = and i32 %433, -4
  store i32 %434, i32* %9, align 4
  %435 = load i32, i32* %10, align 4
  %436 = and i32 %435, -2
  store i32 %436, i32* %10, align 4
  %437 = load i64, i64* @mmVIEWPORT_START, align 8
  %438 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %12, align 8
  %439 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %438, i32 0, i32 0
  %440 = load i64, i64* %439, align 8
  %441 = add nsw i64 %437, %440
  %442 = load i32, i32* %9, align 4
  %443 = shl i32 %442, 16
  %444 = load i32, i32* %10, align 4
  %445 = or i32 %443, %444
  %446 = call i32 @WREG32(i64 %441, i32 %445)
  %447 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %448 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %447, i32 0, i32 1
  %449 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %448, i32 0, i32 0
  %450 = load i32, i32* %449, align 8
  store i32 %450, i32* %24, align 4
  %451 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %452 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %451, i32 0, i32 1
  %453 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %452, i32 0, i32 1
  %454 = load i32, i32* %453, align 4
  %455 = add nsw i32 %454, 1
  %456 = and i32 %455, -2
  store i32 %456, i32* %25, align 4
  %457 = load i64, i64* @mmVIEWPORT_SIZE, align 8
  %458 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %12, align 8
  %459 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %458, i32 0, i32 0
  %460 = load i64, i64* %459, align 8
  %461 = add nsw i64 %457, %460
  %462 = load i32, i32* %24, align 4
  %463 = shl i32 %462, 16
  %464 = load i32, i32* %25, align 4
  %465 = or i32 %463, %464
  %466 = call i32 @WREG32(i64 %461, i32 %465)
  %467 = load i64, i64* @mmMASTER_UPDATE_MODE, align 8
  %468 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %12, align 8
  %469 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %468, i32 0, i32 0
  %470 = load i64, i64* %469, align 8
  %471 = add nsw i64 %467, %470
  %472 = call i32 @WREG32(i64 %471, i32 0)
  %473 = load i32, i32* %11, align 4
  %474 = icmp ne i32 %473, 0
  br i1 %474, label %507, label %475

475:                                              ; preds = %359
  %476 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %477 = icmp ne %struct.drm_framebuffer* %476, null
  br i1 %477, label %478, label %507

478:                                              ; preds = %475
  %479 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %480 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %481 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %480, i32 0, i32 0
  %482 = load %struct.TYPE_5__*, %struct.TYPE_5__** %481, align 8
  %483 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %482, i32 0, i32 0
  %484 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %483, align 8
  %485 = icmp ne %struct.drm_framebuffer* %479, %484
  br i1 %485, label %486, label %507

486:                                              ; preds = %478
  %487 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %488 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %487, i32 0, i32 3
  %489 = load %struct.drm_gem_object**, %struct.drm_gem_object*** %488, align 8
  %490 = getelementptr inbounds %struct.drm_gem_object*, %struct.drm_gem_object** %489, i64 0
  %491 = load %struct.drm_gem_object*, %struct.drm_gem_object** %490, align 8
  %492 = call %struct.amdgpu_bo* @gem_to_amdgpu_bo(%struct.drm_gem_object* %491)
  store %struct.amdgpu_bo* %492, %struct.amdgpu_bo** %17, align 8
  %493 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %17, align 8
  %494 = call i32 @amdgpu_bo_reserve(%struct.amdgpu_bo* %493, i32 1)
  store i32 %494, i32* %26, align 4
  %495 = load i32, i32* %26, align 4
  %496 = icmp ne i32 %495, 0
  %497 = zext i1 %496 to i32
  %498 = call i64 @unlikely(i32 %497)
  %499 = icmp ne i64 %498, 0
  br i1 %499, label %500, label %502

500:                                              ; preds = %486
  %501 = load i32, i32* %26, align 4
  store i32 %501, i32* %6, align 4
  br label %510

502:                                              ; preds = %486
  %503 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %17, align 8
  %504 = call i32 @amdgpu_bo_unpin(%struct.amdgpu_bo* %503)
  %505 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %17, align 8
  %506 = call i32 @amdgpu_bo_unreserve(%struct.amdgpu_bo* %505)
  br label %507

507:                                              ; preds = %502, %478, %475, %359
  %508 = load %struct.amdgpu_device*, %struct.amdgpu_device** %14, align 8
  %509 = call i32 @dce_v8_0_bandwidth_update(%struct.amdgpu_device* %508)
  store i32 0, i32* %6, align 4
  br label %510

510:                                              ; preds = %507, %500, %196, %96, %82, %54
  %511 = load i32, i32* %6, align 4
  ret i32 %511
}

declare dso_local %struct.amdgpu_crtc* @to_amdgpu_crtc(%struct.drm_crtc*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

declare dso_local %struct.amdgpu_bo* @gem_to_amdgpu_bo(%struct.drm_gem_object*) #1

declare dso_local i32 @amdgpu_bo_reserve(%struct.amdgpu_bo*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @amdgpu_bo_pin(%struct.amdgpu_bo*, i32) #1

declare dso_local i32 @amdgpu_bo_unreserve(%struct.amdgpu_bo*) #1

declare dso_local i64 @amdgpu_bo_gpu_offset(%struct.amdgpu_bo*) #1

declare dso_local i32 @amdgpu_bo_get_tiling_flags(%struct.amdgpu_bo*, i64*) #1

declare dso_local i32 @AMDGPU_TILING_GET(i64, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local i32 @drm_get_format_name(i32, %struct.drm_format_name_buf*) #1

declare dso_local i32 @dce_v8_0_vga_enable(%struct.drm_crtc*, i32) #1

declare dso_local i32 @WREG32(i64, i32) #1

declare dso_local i32 @upper_32_bits(i64) #1

declare dso_local i32 @WREG32_P(i64, i32, i32) #1

declare dso_local i32 @dce_v8_0_grph_enable(%struct.drm_crtc*, i32) #1

declare dso_local i32 @amdgpu_bo_unpin(%struct.amdgpu_bo*) #1

declare dso_local i32 @dce_v8_0_bandwidth_update(%struct.amdgpu_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
