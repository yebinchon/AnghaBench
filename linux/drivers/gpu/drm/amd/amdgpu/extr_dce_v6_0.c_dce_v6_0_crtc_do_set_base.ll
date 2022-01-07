; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_dce_v6_0.c_dce_v6_0_crtc_do_set_base.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_dce_v6_0.c_dce_v6_0_crtc_do_set_base.c"
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
@.str = private unnamed_addr constant [13 x i8] c"No FB bound\0A\00", align 1
@AMDGPU_GEM_DOMAIN_VRAM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GRPH_DEPTH_8BPP = common dso_local global i32 0, align 4
@GRPH_FORMAT_INDEXED = common dso_local global i32 0, align 4
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
@GRPH_BLUE_SEL_R = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Unsupported screen format %s\0A\00", align 1
@ARRAY_MODE = common dso_local global i32 0, align 4
@ARRAY_2D_TILED_THIN1 = common dso_local global i8* null, align 8
@BANK_WIDTH = common dso_local global i32 0, align 4
@BANK_HEIGHT = common dso_local global i32 0, align 4
@MACRO_TILE_ASPECT = common dso_local global i32 0, align 4
@TILE_SPLIT = common dso_local global i32 0, align 4
@NUM_BANKS = common dso_local global i32 0, align 4
@GRPH_ARRAY_2D_TILED_THIN1 = common dso_local global i32 0, align 4
@ARRAY_1D_TILED_THIN1 = common dso_local global i8* null, align 8
@GRPH_ARRAY_1D_TILED_THIN1 = common dso_local global i32 0, align 4
@PIPE_CONFIG = common dso_local global i32 0, align 4
@mmGRPH_FLIP_CONTROL = common dso_local global i64 0, align 8
@mmGRPH_PRIMARY_SURFACE_ADDRESS_HIGH = common dso_local global i64 0, align 8
@mmGRPH_SECONDARY_SURFACE_ADDRESS_HIGH = common dso_local global i64 0, align 8
@mmGRPH_PRIMARY_SURFACE_ADDRESS = common dso_local global i64 0, align 8
@GRPH_PRIMARY_SURFACE_ADDRESS__GRPH_PRIMARY_SURFACE_ADDRESS_MASK = common dso_local global i32 0, align 4
@mmGRPH_SECONDARY_SURFACE_ADDRESS = common dso_local global i64 0, align 8
@mmGRPH_CONTROL = common dso_local global i64 0, align 8
@mmGRPH_SWAP_CNTL = common dso_local global i64 0, align 8
@mmGRPH_LUT_10BIT_BYPASS = common dso_local global i64 0, align 8
@GRPH_LUT_10BIT_BYPASS__GRPH_LUT_10BIT_BYPASS_EN_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [50 x i8] c"Bypassing hardware LUT due to 10 bit fb scanout.\0A\00", align 1
@mmGRPH_SURFACE_OFFSET_X = common dso_local global i64 0, align 8
@mmGRPH_SURFACE_OFFSET_Y = common dso_local global i64 0, align 8
@mmGRPH_X_START = common dso_local global i64 0, align 8
@mmGRPH_Y_START = common dso_local global i64 0, align 8
@mmGRPH_X_END = common dso_local global i64 0, align 8
@mmGRPH_Y_END = common dso_local global i64 0, align 8
@mmGRPH_PITCH = common dso_local global i64 0, align 8
@mmDESKTOP_HEIGHT = common dso_local global i64 0, align 8
@mmVIEWPORT_START = common dso_local global i64 0, align 8
@mmVIEWPORT_SIZE = common dso_local global i64 0, align 8
@mmMASTER_UPDATE_MODE = common dso_local global i64 0, align 8
@GRPH_ENDIAN_8IN16 = common dso_local global i32 0, align 4
@GRPH_ENDIAN_8IN32 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_crtc*, %struct.drm_framebuffer*, i32, i32, i32)* @dce_v6_0_crtc_do_set_base to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dce_v6_0_crtc_do_set_base(%struct.drm_crtc* %0, %struct.drm_framebuffer* %1, i32 %2, i32 %3, i32 %4) #0 {
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
  %43 = call i32 @GRPH_ENDIAN_SWAP(i32 %42)
  store i32 %43, i32* %23, align 4
  store i32 0, i32* %27, align 4
  %44 = load i32, i32* %11, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %55, label %46

46:                                               ; preds = %5
  %47 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %48 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %47, i32 0, i32 0
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %50, align 8
  %52 = icmp ne %struct.drm_framebuffer* %51, null
  br i1 %52, label %55, label %53

53:                                               ; preds = %46
  %54 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %482

55:                                               ; preds = %46, %5
  %56 = load i32, i32* %11, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %55
  %59 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  store %struct.drm_framebuffer* %59, %struct.drm_framebuffer** %15, align 8
  br label %66

60:                                               ; preds = %55
  %61 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %62 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %61, i32 0, i32 0
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %64, align 8
  store %struct.drm_framebuffer* %65, %struct.drm_framebuffer** %15, align 8
  br label %66

66:                                               ; preds = %60, %58
  %67 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %15, align 8
  %68 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %67, i32 0, i32 3
  %69 = load %struct.drm_gem_object**, %struct.drm_gem_object*** %68, align 8
  %70 = getelementptr inbounds %struct.drm_gem_object*, %struct.drm_gem_object** %69, i64 0
  %71 = load %struct.drm_gem_object*, %struct.drm_gem_object** %70, align 8
  store %struct.drm_gem_object* %71, %struct.drm_gem_object** %16, align 8
  %72 = load %struct.drm_gem_object*, %struct.drm_gem_object** %16, align 8
  %73 = call %struct.amdgpu_bo* @gem_to_amdgpu_bo(%struct.drm_gem_object* %72)
  store %struct.amdgpu_bo* %73, %struct.amdgpu_bo** %17, align 8
  %74 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %17, align 8
  %75 = call i32 @amdgpu_bo_reserve(%struct.amdgpu_bo* %74, i32 0)
  store i32 %75, i32* %26, align 4
  %76 = load i32, i32* %26, align 4
  %77 = icmp ne i32 %76, 0
  %78 = zext i1 %77 to i32
  %79 = call i64 @unlikely(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %66
  %82 = load i32, i32* %26, align 4
  store i32 %82, i32* %6, align 4
  br label %482

83:                                               ; preds = %66
  %84 = load i32, i32* %11, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %101, label %86

86:                                               ; preds = %83
  %87 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %17, align 8
  %88 = load i32, i32* @AMDGPU_GEM_DOMAIN_VRAM, align 4
  %89 = call i32 @amdgpu_bo_pin(%struct.amdgpu_bo* %87, i32 %88)
  store i32 %89, i32* %26, align 4
  %90 = load i32, i32* %26, align 4
  %91 = icmp ne i32 %90, 0
  %92 = zext i1 %91 to i32
  %93 = call i64 @unlikely(i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %86
  %96 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %17, align 8
  %97 = call i32 @amdgpu_bo_unreserve(%struct.amdgpu_bo* %96)
  %98 = load i32, i32* @EINVAL, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %6, align 4
  br label %482

100:                                              ; preds = %86
  br label %101

101:                                              ; preds = %100, %83
  %102 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %17, align 8
  %103 = call i64 @amdgpu_bo_gpu_offset(%struct.amdgpu_bo* %102)
  store i64 %103, i64* %18, align 8
  %104 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %17, align 8
  %105 = call i32 @amdgpu_bo_get_tiling_flags(%struct.amdgpu_bo* %104, i64* %19)
  %106 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %17, align 8
  %107 = call i32 @amdgpu_bo_unreserve(%struct.amdgpu_bo* %106)
  %108 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %15, align 8
  %109 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %108, i32 0, i32 4
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  switch i32 %112, label %172 [
    i32 134, label %113
    i32 129, label %119
    i32 140, label %119
    i32 131, label %125
    i32 142, label %125
    i32 135, label %131
    i32 137, label %131
    i32 133, label %137
    i32 128, label %143
    i32 139, label %143
    i32 130, label %149
    i32 141, label %149
    i32 136, label %155
    i32 138, label %155
    i32 132, label %161
    i32 143, label %161
  ]

113:                                              ; preds = %101
  %114 = load i32, i32* @GRPH_DEPTH_8BPP, align 4
  %115 = call i32 @GRPH_DEPTH(i32 %114)
  %116 = load i32, i32* @GRPH_FORMAT_INDEXED, align 4
  %117 = call i32 @GRPH_FORMAT(i32 %116)
  %118 = or i32 %115, %117
  store i32 %118, i32* %20, align 4
  br label %182

119:                                              ; preds = %101, %101
  %120 = load i32, i32* @GRPH_DEPTH_16BPP, align 4
  %121 = call i32 @GRPH_DEPTH(i32 %120)
  %122 = load i32, i32* @GRPH_FORMAT_ARGB4444, align 4
  %123 = call i32 @GRPH_FORMAT(i32 %122)
  %124 = or i32 %121, %123
  store i32 %124, i32* %20, align 4
  br label %182

125:                                              ; preds = %101, %101
  %126 = load i32, i32* @GRPH_DEPTH_16BPP, align 4
  %127 = call i32 @GRPH_DEPTH(i32 %126)
  %128 = load i32, i32* @GRPH_FORMAT_ARGB1555, align 4
  %129 = call i32 @GRPH_FORMAT(i32 %128)
  %130 = or i32 %127, %129
  store i32 %130, i32* %20, align 4
  br label %182

131:                                              ; preds = %101, %101
  %132 = load i32, i32* @GRPH_DEPTH_16BPP, align 4
  %133 = call i32 @GRPH_DEPTH(i32 %132)
  %134 = load i32, i32* @GRPH_FORMAT_BGRA5551, align 4
  %135 = call i32 @GRPH_FORMAT(i32 %134)
  %136 = or i32 %133, %135
  store i32 %136, i32* %20, align 4
  br label %182

137:                                              ; preds = %101
  %138 = load i32, i32* @GRPH_DEPTH_16BPP, align 4
  %139 = call i32 @GRPH_DEPTH(i32 %138)
  %140 = load i32, i32* @GRPH_FORMAT_ARGB565, align 4
  %141 = call i32 @GRPH_FORMAT(i32 %140)
  %142 = or i32 %139, %141
  store i32 %142, i32* %20, align 4
  br label %182

143:                                              ; preds = %101, %101
  %144 = load i32, i32* @GRPH_DEPTH_32BPP, align 4
  %145 = call i32 @GRPH_DEPTH(i32 %144)
  %146 = load i32, i32* @GRPH_FORMAT_ARGB8888, align 4
  %147 = call i32 @GRPH_FORMAT(i32 %146)
  %148 = or i32 %145, %147
  store i32 %148, i32* %20, align 4
  br label %182

149:                                              ; preds = %101, %101
  %150 = load i32, i32* @GRPH_DEPTH_32BPP, align 4
  %151 = call i32 @GRPH_DEPTH(i32 %150)
  %152 = load i32, i32* @GRPH_FORMAT_ARGB2101010, align 4
  %153 = call i32 @GRPH_FORMAT(i32 %152)
  %154 = or i32 %151, %153
  store i32 %154, i32* %20, align 4
  store i32 1, i32* %27, align 4
  br label %182

155:                                              ; preds = %101, %101
  %156 = load i32, i32* @GRPH_DEPTH_32BPP, align 4
  %157 = call i32 @GRPH_DEPTH(i32 %156)
  %158 = load i32, i32* @GRPH_FORMAT_BGRA1010102, align 4
  %159 = call i32 @GRPH_FORMAT(i32 %158)
  %160 = or i32 %157, %159
  store i32 %160, i32* %20, align 4
  store i32 1, i32* %27, align 4
  br label %182

161:                                              ; preds = %101, %101
  %162 = load i32, i32* @GRPH_DEPTH_32BPP, align 4
  %163 = call i32 @GRPH_DEPTH(i32 %162)
  %164 = load i32, i32* @GRPH_FORMAT_ARGB8888, align 4
  %165 = call i32 @GRPH_FORMAT(i32 %164)
  %166 = or i32 %163, %165
  store i32 %166, i32* %20, align 4
  %167 = load i32, i32* @GRPH_RED_SEL_B, align 4
  %168 = call i32 @GRPH_RED_CROSSBAR(i32 %167)
  %169 = load i32, i32* @GRPH_BLUE_SEL_R, align 4
  %170 = call i32 @GRPH_BLUE_CROSSBAR(i32 %169)
  %171 = or i32 %168, %170
  store i32 %171, i32* %23, align 4
  br label %182

172:                                              ; preds = %101
  %173 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %15, align 8
  %174 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %173, i32 0, i32 4
  %175 = load %struct.TYPE_6__*, %struct.TYPE_6__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = call i32 @drm_get_format_name(i32 %177, %struct.drm_format_name_buf* %28)
  %179 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %178)
  %180 = load i32, i32* @EINVAL, align 4
  %181 = sub nsw i32 0, %180
  store i32 %181, i32* %6, align 4
  br label %482

182:                                              ; preds = %161, %155, %149, %143, %137, %131, %125, %119, %113
  %183 = load i64, i64* %19, align 8
  %184 = load i32, i32* @ARRAY_MODE, align 4
  %185 = call i8* @AMDGPU_TILING_GET(i64 %183, i32 %184)
  %186 = load i8*, i8** @ARRAY_2D_TILED_THIN1, align 8
  %187 = icmp eq i8* %185, %186
  br i1 %187, label %188, label %233

188:                                              ; preds = %182
  %189 = load i64, i64* %19, align 8
  %190 = load i32, i32* @BANK_WIDTH, align 4
  %191 = call i8* @AMDGPU_TILING_GET(i64 %189, i32 %190)
  %192 = ptrtoint i8* %191 to i32
  store i32 %192, i32* %29, align 4
  %193 = load i64, i64* %19, align 8
  %194 = load i32, i32* @BANK_HEIGHT, align 4
  %195 = call i8* @AMDGPU_TILING_GET(i64 %193, i32 %194)
  %196 = ptrtoint i8* %195 to i32
  store i32 %196, i32* %30, align 4
  %197 = load i64, i64* %19, align 8
  %198 = load i32, i32* @MACRO_TILE_ASPECT, align 4
  %199 = call i8* @AMDGPU_TILING_GET(i64 %197, i32 %198)
  %200 = ptrtoint i8* %199 to i32
  store i32 %200, i32* %31, align 4
  %201 = load i64, i64* %19, align 8
  %202 = load i32, i32* @TILE_SPLIT, align 4
  %203 = call i8* @AMDGPU_TILING_GET(i64 %201, i32 %202)
  %204 = ptrtoint i8* %203 to i32
  store i32 %204, i32* %32, align 4
  %205 = load i64, i64* %19, align 8
  %206 = load i32, i32* @NUM_BANKS, align 4
  %207 = call i8* @AMDGPU_TILING_GET(i64 %205, i32 %206)
  %208 = ptrtoint i8* %207 to i32
  store i32 %208, i32* %33, align 4
  %209 = load i32, i32* %33, align 4
  %210 = call i32 @GRPH_NUM_BANKS(i32 %209)
  %211 = load i32, i32* %20, align 4
  %212 = or i32 %211, %210
  store i32 %212, i32* %20, align 4
  %213 = load i32, i32* @GRPH_ARRAY_2D_TILED_THIN1, align 4
  %214 = call i32 @GRPH_ARRAY_MODE(i32 %213)
  %215 = load i32, i32* %20, align 4
  %216 = or i32 %215, %214
  store i32 %216, i32* %20, align 4
  %217 = load i32, i32* %32, align 4
  %218 = call i32 @GRPH_TILE_SPLIT(i32 %217)
  %219 = load i32, i32* %20, align 4
  %220 = or i32 %219, %218
  store i32 %220, i32* %20, align 4
  %221 = load i32, i32* %29, align 4
  %222 = call i32 @GRPH_BANK_WIDTH(i32 %221)
  %223 = load i32, i32* %20, align 4
  %224 = or i32 %223, %222
  store i32 %224, i32* %20, align 4
  %225 = load i32, i32* %30, align 4
  %226 = call i32 @GRPH_BANK_HEIGHT(i32 %225)
  %227 = load i32, i32* %20, align 4
  %228 = or i32 %227, %226
  store i32 %228, i32* %20, align 4
  %229 = load i32, i32* %31, align 4
  %230 = call i32 @GRPH_MACRO_TILE_ASPECT(i32 %229)
  %231 = load i32, i32* %20, align 4
  %232 = or i32 %231, %230
  store i32 %232, i32* %20, align 4
  br label %245

233:                                              ; preds = %182
  %234 = load i64, i64* %19, align 8
  %235 = load i32, i32* @ARRAY_MODE, align 4
  %236 = call i8* @AMDGPU_TILING_GET(i64 %234, i32 %235)
  %237 = load i8*, i8** @ARRAY_1D_TILED_THIN1, align 8
  %238 = icmp eq i8* %236, %237
  br i1 %238, label %239, label %244

239:                                              ; preds = %233
  %240 = load i32, i32* @GRPH_ARRAY_1D_TILED_THIN1, align 4
  %241 = call i32 @GRPH_ARRAY_MODE(i32 %240)
  %242 = load i32, i32* %20, align 4
  %243 = or i32 %242, %241
  store i32 %243, i32* %20, align 4
  br label %244

244:                                              ; preds = %239, %233
  br label %245

245:                                              ; preds = %244, %188
  %246 = load i64, i64* %19, align 8
  %247 = load i32, i32* @PIPE_CONFIG, align 4
  %248 = call i8* @AMDGPU_TILING_GET(i64 %246, i32 %247)
  %249 = ptrtoint i8* %248 to i32
  store i32 %249, i32* %22, align 4
  %250 = load i32, i32* %22, align 4
  %251 = call i32 @GRPH_PIPE_CONFIG(i32 %250)
  %252 = load i32, i32* %20, align 4
  %253 = or i32 %252, %251
  store i32 %253, i32* %20, align 4
  %254 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %255 = call i32 @dce_v6_0_vga_enable(%struct.drm_crtc* %254, i32 0)
  %256 = load i64, i64* @mmGRPH_FLIP_CONTROL, align 8
  %257 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %12, align 8
  %258 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %257, i32 0, i32 0
  %259 = load i64, i64* %258, align 8
  %260 = add nsw i64 %256, %259
  %261 = call i32 @WREG32(i64 %260, i32 0)
  %262 = load i64, i64* @mmGRPH_PRIMARY_SURFACE_ADDRESS_HIGH, align 8
  %263 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %12, align 8
  %264 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %263, i32 0, i32 0
  %265 = load i64, i64* %264, align 8
  %266 = add nsw i64 %262, %265
  %267 = load i64, i64* %18, align 8
  %268 = call i32 @upper_32_bits(i64 %267)
  %269 = call i32 @WREG32(i64 %266, i32 %268)
  %270 = load i64, i64* @mmGRPH_SECONDARY_SURFACE_ADDRESS_HIGH, align 8
  %271 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %12, align 8
  %272 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %271, i32 0, i32 0
  %273 = load i64, i64* %272, align 8
  %274 = add nsw i64 %270, %273
  %275 = load i64, i64* %18, align 8
  %276 = call i32 @upper_32_bits(i64 %275)
  %277 = call i32 @WREG32(i64 %274, i32 %276)
  %278 = load i64, i64* @mmGRPH_PRIMARY_SURFACE_ADDRESS, align 8
  %279 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %12, align 8
  %280 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %279, i32 0, i32 0
  %281 = load i64, i64* %280, align 8
  %282 = add nsw i64 %278, %281
  %283 = load i64, i64* %18, align 8
  %284 = trunc i64 %283 to i32
  %285 = load i32, i32* @GRPH_PRIMARY_SURFACE_ADDRESS__GRPH_PRIMARY_SURFACE_ADDRESS_MASK, align 4
  %286 = and i32 %284, %285
  %287 = call i32 @WREG32(i64 %282, i32 %286)
  %288 = load i64, i64* @mmGRPH_SECONDARY_SURFACE_ADDRESS, align 8
  %289 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %12, align 8
  %290 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %289, i32 0, i32 0
  %291 = load i64, i64* %290, align 8
  %292 = add nsw i64 %288, %291
  %293 = load i64, i64* %18, align 8
  %294 = trunc i64 %293 to i32
  %295 = load i32, i32* @GRPH_PRIMARY_SURFACE_ADDRESS__GRPH_PRIMARY_SURFACE_ADDRESS_MASK, align 4
  %296 = and i32 %294, %295
  %297 = call i32 @WREG32(i64 %292, i32 %296)
  %298 = load i64, i64* @mmGRPH_CONTROL, align 8
  %299 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %12, align 8
  %300 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %299, i32 0, i32 0
  %301 = load i64, i64* %300, align 8
  %302 = add nsw i64 %298, %301
  %303 = load i32, i32* %20, align 4
  %304 = call i32 @WREG32(i64 %302, i32 %303)
  %305 = load i64, i64* @mmGRPH_SWAP_CNTL, align 8
  %306 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %12, align 8
  %307 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %306, i32 0, i32 0
  %308 = load i64, i64* %307, align 8
  %309 = add nsw i64 %305, %308
  %310 = load i32, i32* %23, align 4
  %311 = call i32 @WREG32(i64 %309, i32 %310)
  %312 = load i64, i64* @mmGRPH_LUT_10BIT_BYPASS, align 8
  %313 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %12, align 8
  %314 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %313, i32 0, i32 0
  %315 = load i64, i64* %314, align 8
  %316 = add nsw i64 %312, %315
  %317 = load i32, i32* %27, align 4
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %319, label %321

319:                                              ; preds = %245
  %320 = load i32, i32* @GRPH_LUT_10BIT_BYPASS__GRPH_LUT_10BIT_BYPASS_EN_MASK, align 4
  br label %322

321:                                              ; preds = %245
  br label %322

322:                                              ; preds = %321, %319
  %323 = phi i32 [ %320, %319 ], [ 0, %321 ]
  %324 = load i32, i32* @GRPH_LUT_10BIT_BYPASS__GRPH_LUT_10BIT_BYPASS_EN_MASK, align 4
  %325 = xor i32 %324, -1
  %326 = call i32 @WREG32_P(i64 %316, i32 %323, i32 %325)
  %327 = load i32, i32* %27, align 4
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %329, label %331

329:                                              ; preds = %322
  %330 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0))
  br label %331

331:                                              ; preds = %329, %322
  %332 = load i64, i64* @mmGRPH_SURFACE_OFFSET_X, align 8
  %333 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %12, align 8
  %334 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %333, i32 0, i32 0
  %335 = load i64, i64* %334, align 8
  %336 = add nsw i64 %332, %335
  %337 = call i32 @WREG32(i64 %336, i32 0)
  %338 = load i64, i64* @mmGRPH_SURFACE_OFFSET_Y, align 8
  %339 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %12, align 8
  %340 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %339, i32 0, i32 0
  %341 = load i64, i64* %340, align 8
  %342 = add nsw i64 %338, %341
  %343 = call i32 @WREG32(i64 %342, i32 0)
  %344 = load i64, i64* @mmGRPH_X_START, align 8
  %345 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %12, align 8
  %346 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %345, i32 0, i32 0
  %347 = load i64, i64* %346, align 8
  %348 = add nsw i64 %344, %347
  %349 = call i32 @WREG32(i64 %348, i32 0)
  %350 = load i64, i64* @mmGRPH_Y_START, align 8
  %351 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %12, align 8
  %352 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %351, i32 0, i32 0
  %353 = load i64, i64* %352, align 8
  %354 = add nsw i64 %350, %353
  %355 = call i32 @WREG32(i64 %354, i32 0)
  %356 = load i64, i64* @mmGRPH_X_END, align 8
  %357 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %12, align 8
  %358 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %357, i32 0, i32 0
  %359 = load i64, i64* %358, align 8
  %360 = add nsw i64 %356, %359
  %361 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %15, align 8
  %362 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %361, i32 0, i32 0
  %363 = load i32, i32* %362, align 8
  %364 = call i32 @WREG32(i64 %360, i32 %363)
  %365 = load i64, i64* @mmGRPH_Y_END, align 8
  %366 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %12, align 8
  %367 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %366, i32 0, i32 0
  %368 = load i64, i64* %367, align 8
  %369 = add nsw i64 %365, %368
  %370 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %15, align 8
  %371 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %370, i32 0, i32 1
  %372 = load i32, i32* %371, align 4
  %373 = call i32 @WREG32(i64 %369, i32 %372)
  %374 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %15, align 8
  %375 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %374, i32 0, i32 2
  %376 = load i32*, i32** %375, align 8
  %377 = getelementptr inbounds i32, i32* %376, i64 0
  %378 = load i32, i32* %377, align 4
  %379 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %15, align 8
  %380 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %379, i32 0, i32 4
  %381 = load %struct.TYPE_6__*, %struct.TYPE_6__** %380, align 8
  %382 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %381, i32 0, i32 1
  %383 = load i32*, i32** %382, align 8
  %384 = getelementptr inbounds i32, i32* %383, i64 0
  %385 = load i32, i32* %384, align 4
  %386 = sdiv i32 %378, %385
  store i32 %386, i32* %21, align 4
  %387 = load i64, i64* @mmGRPH_PITCH, align 8
  %388 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %12, align 8
  %389 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %388, i32 0, i32 0
  %390 = load i64, i64* %389, align 8
  %391 = add nsw i64 %387, %390
  %392 = load i32, i32* %21, align 4
  %393 = call i32 @WREG32(i64 %391, i32 %392)
  %394 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %395 = call i32 @dce_v6_0_grph_enable(%struct.drm_crtc* %394, i32 1)
  %396 = load i64, i64* @mmDESKTOP_HEIGHT, align 8
  %397 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %12, align 8
  %398 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %397, i32 0, i32 0
  %399 = load i64, i64* %398, align 8
  %400 = add nsw i64 %396, %399
  %401 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %15, align 8
  %402 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %401, i32 0, i32 1
  %403 = load i32, i32* %402, align 4
  %404 = call i32 @WREG32(i64 %400, i32 %403)
  %405 = load i32, i32* %9, align 4
  %406 = and i32 %405, -4
  store i32 %406, i32* %9, align 4
  %407 = load i32, i32* %10, align 4
  %408 = and i32 %407, -2
  store i32 %408, i32* %10, align 4
  %409 = load i64, i64* @mmVIEWPORT_START, align 8
  %410 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %12, align 8
  %411 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %410, i32 0, i32 0
  %412 = load i64, i64* %411, align 8
  %413 = add nsw i64 %409, %412
  %414 = load i32, i32* %9, align 4
  %415 = shl i32 %414, 16
  %416 = load i32, i32* %10, align 4
  %417 = or i32 %415, %416
  %418 = call i32 @WREG32(i64 %413, i32 %417)
  %419 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %420 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %419, i32 0, i32 1
  %421 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %420, i32 0, i32 0
  %422 = load i32, i32* %421, align 8
  store i32 %422, i32* %24, align 4
  %423 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %424 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %423, i32 0, i32 1
  %425 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %424, i32 0, i32 1
  %426 = load i32, i32* %425, align 4
  %427 = add nsw i32 %426, 1
  %428 = and i32 %427, -2
  store i32 %428, i32* %25, align 4
  %429 = load i64, i64* @mmVIEWPORT_SIZE, align 8
  %430 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %12, align 8
  %431 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %430, i32 0, i32 0
  %432 = load i64, i64* %431, align 8
  %433 = add nsw i64 %429, %432
  %434 = load i32, i32* %24, align 4
  %435 = shl i32 %434, 16
  %436 = load i32, i32* %25, align 4
  %437 = or i32 %435, %436
  %438 = call i32 @WREG32(i64 %433, i32 %437)
  %439 = load i64, i64* @mmMASTER_UPDATE_MODE, align 8
  %440 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %12, align 8
  %441 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %440, i32 0, i32 0
  %442 = load i64, i64* %441, align 8
  %443 = add nsw i64 %439, %442
  %444 = call i32 @WREG32(i64 %443, i32 0)
  %445 = load i32, i32* %11, align 4
  %446 = icmp ne i32 %445, 0
  br i1 %446, label %479, label %447

447:                                              ; preds = %331
  %448 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %449 = icmp ne %struct.drm_framebuffer* %448, null
  br i1 %449, label %450, label %479

450:                                              ; preds = %447
  %451 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %452 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %453 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %452, i32 0, i32 0
  %454 = load %struct.TYPE_5__*, %struct.TYPE_5__** %453, align 8
  %455 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %454, i32 0, i32 0
  %456 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %455, align 8
  %457 = icmp ne %struct.drm_framebuffer* %451, %456
  br i1 %457, label %458, label %479

458:                                              ; preds = %450
  %459 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %460 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %459, i32 0, i32 3
  %461 = load %struct.drm_gem_object**, %struct.drm_gem_object*** %460, align 8
  %462 = getelementptr inbounds %struct.drm_gem_object*, %struct.drm_gem_object** %461, i64 0
  %463 = load %struct.drm_gem_object*, %struct.drm_gem_object** %462, align 8
  %464 = call %struct.amdgpu_bo* @gem_to_amdgpu_bo(%struct.drm_gem_object* %463)
  store %struct.amdgpu_bo* %464, %struct.amdgpu_bo** %17, align 8
  %465 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %17, align 8
  %466 = call i32 @amdgpu_bo_reserve(%struct.amdgpu_bo* %465, i32 1)
  store i32 %466, i32* %26, align 4
  %467 = load i32, i32* %26, align 4
  %468 = icmp ne i32 %467, 0
  %469 = zext i1 %468 to i32
  %470 = call i64 @unlikely(i32 %469)
  %471 = icmp ne i64 %470, 0
  br i1 %471, label %472, label %474

472:                                              ; preds = %458
  %473 = load i32, i32* %26, align 4
  store i32 %473, i32* %6, align 4
  br label %482

474:                                              ; preds = %458
  %475 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %17, align 8
  %476 = call i32 @amdgpu_bo_unpin(%struct.amdgpu_bo* %475)
  %477 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %17, align 8
  %478 = call i32 @amdgpu_bo_unreserve(%struct.amdgpu_bo* %477)
  br label %479

479:                                              ; preds = %474, %450, %447, %331
  %480 = load %struct.amdgpu_device*, %struct.amdgpu_device** %14, align 8
  %481 = call i32 @dce_v6_0_bandwidth_update(%struct.amdgpu_device* %480)
  store i32 0, i32* %6, align 4
  br label %482

482:                                              ; preds = %479, %472, %172, %95, %81, %53
  %483 = load i32, i32* %6, align 4
  ret i32 %483
}

declare dso_local %struct.amdgpu_crtc* @to_amdgpu_crtc(%struct.drm_crtc*) #1

declare dso_local i32 @GRPH_ENDIAN_SWAP(i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

declare dso_local %struct.amdgpu_bo* @gem_to_amdgpu_bo(%struct.drm_gem_object*) #1

declare dso_local i32 @amdgpu_bo_reserve(%struct.amdgpu_bo*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @amdgpu_bo_pin(%struct.amdgpu_bo*, i32) #1

declare dso_local i32 @amdgpu_bo_unreserve(%struct.amdgpu_bo*) #1

declare dso_local i64 @amdgpu_bo_gpu_offset(%struct.amdgpu_bo*) #1

declare dso_local i32 @amdgpu_bo_get_tiling_flags(%struct.amdgpu_bo*, i64*) #1

declare dso_local i32 @GRPH_DEPTH(i32) #1

declare dso_local i32 @GRPH_FORMAT(i32) #1

declare dso_local i32 @GRPH_RED_CROSSBAR(i32) #1

declare dso_local i32 @GRPH_BLUE_CROSSBAR(i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local i32 @drm_get_format_name(i32, %struct.drm_format_name_buf*) #1

declare dso_local i8* @AMDGPU_TILING_GET(i64, i32) #1

declare dso_local i32 @GRPH_NUM_BANKS(i32) #1

declare dso_local i32 @GRPH_ARRAY_MODE(i32) #1

declare dso_local i32 @GRPH_TILE_SPLIT(i32) #1

declare dso_local i32 @GRPH_BANK_WIDTH(i32) #1

declare dso_local i32 @GRPH_BANK_HEIGHT(i32) #1

declare dso_local i32 @GRPH_MACRO_TILE_ASPECT(i32) #1

declare dso_local i32 @GRPH_PIPE_CONFIG(i32) #1

declare dso_local i32 @dce_v6_0_vga_enable(%struct.drm_crtc*, i32) #1

declare dso_local i32 @WREG32(i64, i32) #1

declare dso_local i32 @upper_32_bits(i64) #1

declare dso_local i32 @WREG32_P(i64, i32, i32) #1

declare dso_local i32 @dce_v6_0_grph_enable(%struct.drm_crtc*, i32) #1

declare dso_local i32 @amdgpu_bo_unpin(%struct.amdgpu_bo*) #1

declare dso_local i32 @dce_v6_0_bandwidth_update(%struct.amdgpu_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
