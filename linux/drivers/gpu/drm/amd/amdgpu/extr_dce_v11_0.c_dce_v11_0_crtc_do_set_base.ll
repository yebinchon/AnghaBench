; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_dce_v11_0.c_dce_v11_0_crtc_do_set_base.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_dce_v11_0.c_dce_v11_0_crtc_do_set_base.c"
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

@GRPH_SWAP_CNTL = common dso_local global i32 0, align 4
@GRPH_ENDIAN_SWAP = common dso_local global i32 0, align 4
@ENDIAN_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"No FB bound\0A\00", align 1
@AMDGPU_GEM_DOMAIN_VRAM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PIPE_CONFIG = common dso_local global i32 0, align 4
@GRPH_CONTROL = common dso_local global i32 0, align 4
@GRPH_DEPTH = common dso_local global i32 0, align 4
@GRPH_FORMAT = common dso_local global i32 0, align 4
@GRPH_RED_CROSSBAR = common dso_local global i32 0, align 4
@GRPH_BLUE_CROSSBAR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Unsupported screen format %s\0A\00", align 1
@ARRAY_MODE = common dso_local global i32 0, align 4
@ARRAY_2D_TILED_THIN1 = common dso_local global i32 0, align 4
@BANK_WIDTH = common dso_local global i32 0, align 4
@BANK_HEIGHT = common dso_local global i32 0, align 4
@MACRO_TILE_ASPECT = common dso_local global i32 0, align 4
@TILE_SPLIT = common dso_local global i32 0, align 4
@NUM_BANKS = common dso_local global i32 0, align 4
@GRPH_NUM_BANKS = common dso_local global i32 0, align 4
@GRPH_ARRAY_MODE = common dso_local global i32 0, align 4
@GRPH_TILE_SPLIT = common dso_local global i32 0, align 4
@GRPH_BANK_WIDTH = common dso_local global i32 0, align 4
@GRPH_BANK_HEIGHT = common dso_local global i32 0, align 4
@GRPH_MACRO_TILE_ASPECT = common dso_local global i32 0, align 4
@GRPH_MICRO_TILE_MODE = common dso_local global i32 0, align 4
@ADDR_SURF_MICRO_TILING_DISPLAY = common dso_local global i32 0, align 4
@ARRAY_1D_TILED_THIN1 = common dso_local global i32 0, align 4
@GRPH_PIPE_CONFIG = common dso_local global i32 0, align 4
@mmGRPH_FLIP_CONTROL = common dso_local global i64 0, align 8
@GRPH_FLIP_CONTROL = common dso_local global i32 0, align 4
@GRPH_SURFACE_UPDATE_H_RETRACE_EN = common dso_local global i32 0, align 4
@mmGRPH_PRIMARY_SURFACE_ADDRESS_HIGH = common dso_local global i64 0, align 8
@mmGRPH_SECONDARY_SURFACE_ADDRESS_HIGH = common dso_local global i64 0, align 8
@mmGRPH_PRIMARY_SURFACE_ADDRESS = common dso_local global i64 0, align 8
@GRPH_PRIMARY_SURFACE_ADDRESS__GRPH_PRIMARY_SURFACE_ADDRESS_MASK = common dso_local global i32 0, align 4
@mmGRPH_SECONDARY_SURFACE_ADDRESS = common dso_local global i64 0, align 8
@GRPH_SECONDARY_SURFACE_ADDRESS__GRPH_SECONDARY_SURFACE_ADDRESS_MASK = common dso_local global i32 0, align 4
@mmGRPH_CONTROL = common dso_local global i64 0, align 8
@mmGRPH_SWAP_CNTL = common dso_local global i64 0, align 8
@mmGRPH_LUT_10BIT_BYPASS = common dso_local global i64 0, align 8
@GRPH_LUT_10BIT_BYPASS = common dso_local global i32 0, align 4
@GRPH_LUT_10BIT_BYPASS_EN = common dso_local global i32 0, align 4
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
@mmCRTC_MASTER_UPDATE_MODE = common dso_local global i64 0, align 8
@ENDIAN_8IN16 = common dso_local global i32 0, align 4
@ENDIAN_8IN32 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_crtc*, %struct.drm_framebuffer*, i32, i32, i32)* @dce_v11_0_crtc_do_set_base to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dce_v11_0_crtc_do_set_base(%struct.drm_crtc* %0, %struct.drm_framebuffer* %1, i32 %2, i32 %3, i32 %4) #0 {
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
  %28 = alloca i32, align 4
  %29 = alloca %struct.drm_format_name_buf, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  store %struct.drm_crtc* %0, %struct.drm_crtc** %7, align 8
  store %struct.drm_framebuffer* %1, %struct.drm_framebuffer** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %35 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %36 = call %struct.amdgpu_crtc* @to_amdgpu_crtc(%struct.drm_crtc* %35)
  store %struct.amdgpu_crtc* %36, %struct.amdgpu_crtc** %12, align 8
  %37 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %38 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %37, i32 0, i32 2
  %39 = load %struct.drm_device*, %struct.drm_device** %38, align 8
  store %struct.drm_device* %39, %struct.drm_device** %13, align 8
  %40 = load %struct.drm_device*, %struct.drm_device** %13, align 8
  %41 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %40, i32 0, i32 0
  %42 = load %struct.amdgpu_device*, %struct.amdgpu_device** %41, align 8
  store %struct.amdgpu_device* %42, %struct.amdgpu_device** %14, align 8
  %43 = load i32, i32* @GRPH_SWAP_CNTL, align 4
  %44 = load i32, i32* @GRPH_ENDIAN_SWAP, align 4
  %45 = load i32, i32* @ENDIAN_NONE, align 4
  %46 = call i32 @REG_SET_FIELD(i32 0, i32 %43, i32 %44, i32 %45)
  store i32 %46, i32* %22, align 4
  store i32 0, i32* %28, align 4
  %47 = load i32, i32* %11, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %58, label %49

49:                                               ; preds = %5
  %50 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %51 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %50, i32 0, i32 0
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %53, align 8
  %55 = icmp ne %struct.drm_framebuffer* %54, null
  br i1 %55, label %58, label %56

56:                                               ; preds = %49
  %57 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %535

58:                                               ; preds = %49, %5
  %59 = load i32, i32* %11, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %58
  %62 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  store %struct.drm_framebuffer* %62, %struct.drm_framebuffer** %15, align 8
  br label %69

63:                                               ; preds = %58
  %64 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %65 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %64, i32 0, i32 0
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %67, align 8
  store %struct.drm_framebuffer* %68, %struct.drm_framebuffer** %15, align 8
  br label %69

69:                                               ; preds = %63, %61
  %70 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %15, align 8
  %71 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %70, i32 0, i32 3
  %72 = load %struct.drm_gem_object**, %struct.drm_gem_object*** %71, align 8
  %73 = getelementptr inbounds %struct.drm_gem_object*, %struct.drm_gem_object** %72, i64 0
  %74 = load %struct.drm_gem_object*, %struct.drm_gem_object** %73, align 8
  store %struct.drm_gem_object* %74, %struct.drm_gem_object** %16, align 8
  %75 = load %struct.drm_gem_object*, %struct.drm_gem_object** %16, align 8
  %76 = call %struct.amdgpu_bo* @gem_to_amdgpu_bo(%struct.drm_gem_object* %75)
  store %struct.amdgpu_bo* %76, %struct.amdgpu_bo** %17, align 8
  %77 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %17, align 8
  %78 = call i32 @amdgpu_bo_reserve(%struct.amdgpu_bo* %77, i32 0)
  store i32 %78, i32* %27, align 4
  %79 = load i32, i32* %27, align 4
  %80 = icmp ne i32 %79, 0
  %81 = zext i1 %80 to i32
  %82 = call i64 @unlikely(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %69
  %85 = load i32, i32* %27, align 4
  store i32 %85, i32* %6, align 4
  br label %535

86:                                               ; preds = %69
  %87 = load i32, i32* %11, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %104, label %89

89:                                               ; preds = %86
  %90 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %17, align 8
  %91 = load i32, i32* @AMDGPU_GEM_DOMAIN_VRAM, align 4
  %92 = call i32 @amdgpu_bo_pin(%struct.amdgpu_bo* %90, i32 %91)
  store i32 %92, i32* %27, align 4
  %93 = load i32, i32* %27, align 4
  %94 = icmp ne i32 %93, 0
  %95 = zext i1 %94 to i32
  %96 = call i64 @unlikely(i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %89
  %99 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %17, align 8
  %100 = call i32 @amdgpu_bo_unreserve(%struct.amdgpu_bo* %99)
  %101 = load i32, i32* @EINVAL, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %6, align 4
  br label %535

103:                                              ; preds = %89
  br label %104

104:                                              ; preds = %103, %86
  %105 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %17, align 8
  %106 = call i64 @amdgpu_bo_gpu_offset(%struct.amdgpu_bo* %105)
  store i64 %106, i64* %18, align 8
  %107 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %17, align 8
  %108 = call i32 @amdgpu_bo_get_tiling_flags(%struct.amdgpu_bo* %107, i64* %19)
  %109 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %17, align 8
  %110 = call i32 @amdgpu_bo_unreserve(%struct.amdgpu_bo* %109)
  %111 = load i64, i64* %19, align 8
  %112 = load i32, i32* @PIPE_CONFIG, align 4
  %113 = call i32 @AMDGPU_TILING_GET(i64 %111, i32 %112)
  store i32 %113, i32* %23, align 4
  %114 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %15, align 8
  %115 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %114, i32 0, i32 4
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  switch i32 %118, label %199 [
    i32 134, label %119
    i32 129, label %127
    i32 140, label %127
    i32 131, label %135
    i32 142, label %135
    i32 135, label %143
    i32 137, label %143
    i32 133, label %151
    i32 128, label %159
    i32 139, label %159
    i32 130, label %167
    i32 141, label %167
    i32 136, label %175
    i32 138, label %175
    i32 132, label %183
    i32 143, label %183
  ]

119:                                              ; preds = %104
  %120 = load i32, i32* @GRPH_CONTROL, align 4
  %121 = load i32, i32* @GRPH_DEPTH, align 4
  %122 = call i32 @REG_SET_FIELD(i32 0, i32 %120, i32 %121, i32 0)
  store i32 %122, i32* %20, align 4
  %123 = load i32, i32* %20, align 4
  %124 = load i32, i32* @GRPH_CONTROL, align 4
  %125 = load i32, i32* @GRPH_FORMAT, align 4
  %126 = call i32 @REG_SET_FIELD(i32 %123, i32 %124, i32 %125, i32 0)
  store i32 %126, i32* %20, align 4
  br label %209

127:                                              ; preds = %104, %104
  %128 = load i32, i32* @GRPH_CONTROL, align 4
  %129 = load i32, i32* @GRPH_DEPTH, align 4
  %130 = call i32 @REG_SET_FIELD(i32 0, i32 %128, i32 %129, i32 1)
  store i32 %130, i32* %20, align 4
  %131 = load i32, i32* %20, align 4
  %132 = load i32, i32* @GRPH_CONTROL, align 4
  %133 = load i32, i32* @GRPH_FORMAT, align 4
  %134 = call i32 @REG_SET_FIELD(i32 %131, i32 %132, i32 %133, i32 2)
  store i32 %134, i32* %20, align 4
  br label %209

135:                                              ; preds = %104, %104
  %136 = load i32, i32* @GRPH_CONTROL, align 4
  %137 = load i32, i32* @GRPH_DEPTH, align 4
  %138 = call i32 @REG_SET_FIELD(i32 0, i32 %136, i32 %137, i32 1)
  store i32 %138, i32* %20, align 4
  %139 = load i32, i32* %20, align 4
  %140 = load i32, i32* @GRPH_CONTROL, align 4
  %141 = load i32, i32* @GRPH_FORMAT, align 4
  %142 = call i32 @REG_SET_FIELD(i32 %139, i32 %140, i32 %141, i32 0)
  store i32 %142, i32* %20, align 4
  br label %209

143:                                              ; preds = %104, %104
  %144 = load i32, i32* @GRPH_CONTROL, align 4
  %145 = load i32, i32* @GRPH_DEPTH, align 4
  %146 = call i32 @REG_SET_FIELD(i32 0, i32 %144, i32 %145, i32 1)
  store i32 %146, i32* %20, align 4
  %147 = load i32, i32* %20, align 4
  %148 = load i32, i32* @GRPH_CONTROL, align 4
  %149 = load i32, i32* @GRPH_FORMAT, align 4
  %150 = call i32 @REG_SET_FIELD(i32 %147, i32 %148, i32 %149, i32 5)
  store i32 %150, i32* %20, align 4
  br label %209

151:                                              ; preds = %104
  %152 = load i32, i32* @GRPH_CONTROL, align 4
  %153 = load i32, i32* @GRPH_DEPTH, align 4
  %154 = call i32 @REG_SET_FIELD(i32 0, i32 %152, i32 %153, i32 1)
  store i32 %154, i32* %20, align 4
  %155 = load i32, i32* %20, align 4
  %156 = load i32, i32* @GRPH_CONTROL, align 4
  %157 = load i32, i32* @GRPH_FORMAT, align 4
  %158 = call i32 @REG_SET_FIELD(i32 %155, i32 %156, i32 %157, i32 1)
  store i32 %158, i32* %20, align 4
  br label %209

159:                                              ; preds = %104, %104
  %160 = load i32, i32* @GRPH_CONTROL, align 4
  %161 = load i32, i32* @GRPH_DEPTH, align 4
  %162 = call i32 @REG_SET_FIELD(i32 0, i32 %160, i32 %161, i32 2)
  store i32 %162, i32* %20, align 4
  %163 = load i32, i32* %20, align 4
  %164 = load i32, i32* @GRPH_CONTROL, align 4
  %165 = load i32, i32* @GRPH_FORMAT, align 4
  %166 = call i32 @REG_SET_FIELD(i32 %163, i32 %164, i32 %165, i32 0)
  store i32 %166, i32* %20, align 4
  br label %209

167:                                              ; preds = %104, %104
  %168 = load i32, i32* @GRPH_CONTROL, align 4
  %169 = load i32, i32* @GRPH_DEPTH, align 4
  %170 = call i32 @REG_SET_FIELD(i32 0, i32 %168, i32 %169, i32 2)
  store i32 %170, i32* %20, align 4
  %171 = load i32, i32* %20, align 4
  %172 = load i32, i32* @GRPH_CONTROL, align 4
  %173 = load i32, i32* @GRPH_FORMAT, align 4
  %174 = call i32 @REG_SET_FIELD(i32 %171, i32 %172, i32 %173, i32 1)
  store i32 %174, i32* %20, align 4
  store i32 1, i32* %28, align 4
  br label %209

175:                                              ; preds = %104, %104
  %176 = load i32, i32* @GRPH_CONTROL, align 4
  %177 = load i32, i32* @GRPH_DEPTH, align 4
  %178 = call i32 @REG_SET_FIELD(i32 0, i32 %176, i32 %177, i32 2)
  store i32 %178, i32* %20, align 4
  %179 = load i32, i32* %20, align 4
  %180 = load i32, i32* @GRPH_CONTROL, align 4
  %181 = load i32, i32* @GRPH_FORMAT, align 4
  %182 = call i32 @REG_SET_FIELD(i32 %179, i32 %180, i32 %181, i32 4)
  store i32 %182, i32* %20, align 4
  store i32 1, i32* %28, align 4
  br label %209

183:                                              ; preds = %104, %104
  %184 = load i32, i32* @GRPH_CONTROL, align 4
  %185 = load i32, i32* @GRPH_DEPTH, align 4
  %186 = call i32 @REG_SET_FIELD(i32 0, i32 %184, i32 %185, i32 2)
  store i32 %186, i32* %20, align 4
  %187 = load i32, i32* %20, align 4
  %188 = load i32, i32* @GRPH_CONTROL, align 4
  %189 = load i32, i32* @GRPH_FORMAT, align 4
  %190 = call i32 @REG_SET_FIELD(i32 %187, i32 %188, i32 %189, i32 0)
  store i32 %190, i32* %20, align 4
  %191 = load i32, i32* %22, align 4
  %192 = load i32, i32* @GRPH_SWAP_CNTL, align 4
  %193 = load i32, i32* @GRPH_RED_CROSSBAR, align 4
  %194 = call i32 @REG_SET_FIELD(i32 %191, i32 %192, i32 %193, i32 2)
  store i32 %194, i32* %22, align 4
  %195 = load i32, i32* %22, align 4
  %196 = load i32, i32* @GRPH_SWAP_CNTL, align 4
  %197 = load i32, i32* @GRPH_BLUE_CROSSBAR, align 4
  %198 = call i32 @REG_SET_FIELD(i32 %195, i32 %196, i32 %197, i32 2)
  store i32 %198, i32* %22, align 4
  br label %209

199:                                              ; preds = %104
  %200 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %15, align 8
  %201 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %200, i32 0, i32 4
  %202 = load %struct.TYPE_6__*, %struct.TYPE_6__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = call i32 @drm_get_format_name(i32 %204, %struct.drm_format_name_buf* %29)
  %206 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %205)
  %207 = load i32, i32* @EINVAL, align 4
  %208 = sub nsw i32 0, %207
  store i32 %208, i32* %6, align 4
  br label %535

209:                                              ; preds = %183, %175, %167, %159, %151, %143, %135, %127, %119
  %210 = load i64, i64* %19, align 8
  %211 = load i32, i32* @ARRAY_MODE, align 4
  %212 = call i32 @AMDGPU_TILING_GET(i64 %210, i32 %211)
  %213 = load i32, i32* @ARRAY_2D_TILED_THIN1, align 4
  %214 = icmp eq i32 %212, %213
  br i1 %214, label %215, label %266

215:                                              ; preds = %209
  %216 = load i64, i64* %19, align 8
  %217 = load i32, i32* @BANK_WIDTH, align 4
  %218 = call i32 @AMDGPU_TILING_GET(i64 %216, i32 %217)
  store i32 %218, i32* %30, align 4
  %219 = load i64, i64* %19, align 8
  %220 = load i32, i32* @BANK_HEIGHT, align 4
  %221 = call i32 @AMDGPU_TILING_GET(i64 %219, i32 %220)
  store i32 %221, i32* %31, align 4
  %222 = load i64, i64* %19, align 8
  %223 = load i32, i32* @MACRO_TILE_ASPECT, align 4
  %224 = call i32 @AMDGPU_TILING_GET(i64 %222, i32 %223)
  store i32 %224, i32* %32, align 4
  %225 = load i64, i64* %19, align 8
  %226 = load i32, i32* @TILE_SPLIT, align 4
  %227 = call i32 @AMDGPU_TILING_GET(i64 %225, i32 %226)
  store i32 %227, i32* %33, align 4
  %228 = load i64, i64* %19, align 8
  %229 = load i32, i32* @NUM_BANKS, align 4
  %230 = call i32 @AMDGPU_TILING_GET(i64 %228, i32 %229)
  store i32 %230, i32* %34, align 4
  %231 = load i32, i32* %20, align 4
  %232 = load i32, i32* @GRPH_CONTROL, align 4
  %233 = load i32, i32* @GRPH_NUM_BANKS, align 4
  %234 = load i32, i32* %34, align 4
  %235 = call i32 @REG_SET_FIELD(i32 %231, i32 %232, i32 %233, i32 %234)
  store i32 %235, i32* %20, align 4
  %236 = load i32, i32* %20, align 4
  %237 = load i32, i32* @GRPH_CONTROL, align 4
  %238 = load i32, i32* @GRPH_ARRAY_MODE, align 4
  %239 = load i32, i32* @ARRAY_2D_TILED_THIN1, align 4
  %240 = call i32 @REG_SET_FIELD(i32 %236, i32 %237, i32 %238, i32 %239)
  store i32 %240, i32* %20, align 4
  %241 = load i32, i32* %20, align 4
  %242 = load i32, i32* @GRPH_CONTROL, align 4
  %243 = load i32, i32* @GRPH_TILE_SPLIT, align 4
  %244 = load i32, i32* %33, align 4
  %245 = call i32 @REG_SET_FIELD(i32 %241, i32 %242, i32 %243, i32 %244)
  store i32 %245, i32* %20, align 4
  %246 = load i32, i32* %20, align 4
  %247 = load i32, i32* @GRPH_CONTROL, align 4
  %248 = load i32, i32* @GRPH_BANK_WIDTH, align 4
  %249 = load i32, i32* %30, align 4
  %250 = call i32 @REG_SET_FIELD(i32 %246, i32 %247, i32 %248, i32 %249)
  store i32 %250, i32* %20, align 4
  %251 = load i32, i32* %20, align 4
  %252 = load i32, i32* @GRPH_CONTROL, align 4
  %253 = load i32, i32* @GRPH_BANK_HEIGHT, align 4
  %254 = load i32, i32* %31, align 4
  %255 = call i32 @REG_SET_FIELD(i32 %251, i32 %252, i32 %253, i32 %254)
  store i32 %255, i32* %20, align 4
  %256 = load i32, i32* %20, align 4
  %257 = load i32, i32* @GRPH_CONTROL, align 4
  %258 = load i32, i32* @GRPH_MACRO_TILE_ASPECT, align 4
  %259 = load i32, i32* %32, align 4
  %260 = call i32 @REG_SET_FIELD(i32 %256, i32 %257, i32 %258, i32 %259)
  store i32 %260, i32* %20, align 4
  %261 = load i32, i32* %20, align 4
  %262 = load i32, i32* @GRPH_CONTROL, align 4
  %263 = load i32, i32* @GRPH_MICRO_TILE_MODE, align 4
  %264 = load i32, i32* @ADDR_SURF_MICRO_TILING_DISPLAY, align 4
  %265 = call i32 @REG_SET_FIELD(i32 %261, i32 %262, i32 %263, i32 %264)
  store i32 %265, i32* %20, align 4
  br label %279

266:                                              ; preds = %209
  %267 = load i64, i64* %19, align 8
  %268 = load i32, i32* @ARRAY_MODE, align 4
  %269 = call i32 @AMDGPU_TILING_GET(i64 %267, i32 %268)
  %270 = load i32, i32* @ARRAY_1D_TILED_THIN1, align 4
  %271 = icmp eq i32 %269, %270
  br i1 %271, label %272, label %278

272:                                              ; preds = %266
  %273 = load i32, i32* %20, align 4
  %274 = load i32, i32* @GRPH_CONTROL, align 4
  %275 = load i32, i32* @GRPH_ARRAY_MODE, align 4
  %276 = load i32, i32* @ARRAY_1D_TILED_THIN1, align 4
  %277 = call i32 @REG_SET_FIELD(i32 %273, i32 %274, i32 %275, i32 %276)
  store i32 %277, i32* %20, align 4
  br label %278

278:                                              ; preds = %272, %266
  br label %279

279:                                              ; preds = %278, %215
  %280 = load i32, i32* %20, align 4
  %281 = load i32, i32* @GRPH_CONTROL, align 4
  %282 = load i32, i32* @GRPH_PIPE_CONFIG, align 4
  %283 = load i32, i32* %23, align 4
  %284 = call i32 @REG_SET_FIELD(i32 %280, i32 %281, i32 %282, i32 %283)
  store i32 %284, i32* %20, align 4
  %285 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %286 = call i32 @dce_v11_0_vga_enable(%struct.drm_crtc* %285, i32 0)
  %287 = load i64, i64* @mmGRPH_FLIP_CONTROL, align 8
  %288 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %12, align 8
  %289 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %288, i32 0, i32 0
  %290 = load i64, i64* %289, align 8
  %291 = add nsw i64 %287, %290
  %292 = call i32 @RREG32(i64 %291)
  store i32 %292, i32* %24, align 4
  %293 = load i32, i32* %24, align 4
  %294 = load i32, i32* @GRPH_FLIP_CONTROL, align 4
  %295 = load i32, i32* @GRPH_SURFACE_UPDATE_H_RETRACE_EN, align 4
  %296 = call i32 @REG_SET_FIELD(i32 %293, i32 %294, i32 %295, i32 0)
  store i32 %296, i32* %24, align 4
  %297 = load i64, i64* @mmGRPH_FLIP_CONTROL, align 8
  %298 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %12, align 8
  %299 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %298, i32 0, i32 0
  %300 = load i64, i64* %299, align 8
  %301 = add nsw i64 %297, %300
  %302 = load i32, i32* %24, align 4
  %303 = call i32 @WREG32(i64 %301, i32 %302)
  %304 = load i64, i64* @mmGRPH_PRIMARY_SURFACE_ADDRESS_HIGH, align 8
  %305 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %12, align 8
  %306 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %305, i32 0, i32 0
  %307 = load i64, i64* %306, align 8
  %308 = add nsw i64 %304, %307
  %309 = load i64, i64* %18, align 8
  %310 = call i32 @upper_32_bits(i64 %309)
  %311 = call i32 @WREG32(i64 %308, i32 %310)
  %312 = load i64, i64* @mmGRPH_SECONDARY_SURFACE_ADDRESS_HIGH, align 8
  %313 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %12, align 8
  %314 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %313, i32 0, i32 0
  %315 = load i64, i64* %314, align 8
  %316 = add nsw i64 %312, %315
  %317 = load i64, i64* %18, align 8
  %318 = call i32 @upper_32_bits(i64 %317)
  %319 = call i32 @WREG32(i64 %316, i32 %318)
  %320 = load i64, i64* @mmGRPH_PRIMARY_SURFACE_ADDRESS, align 8
  %321 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %12, align 8
  %322 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %321, i32 0, i32 0
  %323 = load i64, i64* %322, align 8
  %324 = add nsw i64 %320, %323
  %325 = load i64, i64* %18, align 8
  %326 = trunc i64 %325 to i32
  %327 = load i32, i32* @GRPH_PRIMARY_SURFACE_ADDRESS__GRPH_PRIMARY_SURFACE_ADDRESS_MASK, align 4
  %328 = and i32 %326, %327
  %329 = call i32 @WREG32(i64 %324, i32 %328)
  %330 = load i64, i64* @mmGRPH_SECONDARY_SURFACE_ADDRESS, align 8
  %331 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %12, align 8
  %332 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %331, i32 0, i32 0
  %333 = load i64, i64* %332, align 8
  %334 = add nsw i64 %330, %333
  %335 = load i64, i64* %18, align 8
  %336 = trunc i64 %335 to i32
  %337 = load i32, i32* @GRPH_SECONDARY_SURFACE_ADDRESS__GRPH_SECONDARY_SURFACE_ADDRESS_MASK, align 4
  %338 = and i32 %336, %337
  %339 = call i32 @WREG32(i64 %334, i32 %338)
  %340 = load i64, i64* @mmGRPH_CONTROL, align 8
  %341 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %12, align 8
  %342 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %341, i32 0, i32 0
  %343 = load i64, i64* %342, align 8
  %344 = add nsw i64 %340, %343
  %345 = load i32, i32* %20, align 4
  %346 = call i32 @WREG32(i64 %344, i32 %345)
  %347 = load i64, i64* @mmGRPH_SWAP_CNTL, align 8
  %348 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %12, align 8
  %349 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %348, i32 0, i32 0
  %350 = load i64, i64* %349, align 8
  %351 = add nsw i64 %347, %350
  %352 = load i32, i32* %22, align 4
  %353 = call i32 @WREG32(i64 %351, i32 %352)
  %354 = load i64, i64* @mmGRPH_LUT_10BIT_BYPASS, align 8
  %355 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %12, align 8
  %356 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %355, i32 0, i32 0
  %357 = load i64, i64* %356, align 8
  %358 = add nsw i64 %354, %357
  %359 = call i32 @RREG32(i64 %358)
  store i32 %359, i32* %24, align 4
  %360 = load i32, i32* %28, align 4
  %361 = icmp ne i32 %360, 0
  br i1 %361, label %362, label %367

362:                                              ; preds = %279
  %363 = load i32, i32* %24, align 4
  %364 = load i32, i32* @GRPH_LUT_10BIT_BYPASS, align 4
  %365 = load i32, i32* @GRPH_LUT_10BIT_BYPASS_EN, align 4
  %366 = call i32 @REG_SET_FIELD(i32 %363, i32 %364, i32 %365, i32 1)
  store i32 %366, i32* %24, align 4
  br label %372

367:                                              ; preds = %279
  %368 = load i32, i32* %24, align 4
  %369 = load i32, i32* @GRPH_LUT_10BIT_BYPASS, align 4
  %370 = load i32, i32* @GRPH_LUT_10BIT_BYPASS_EN, align 4
  %371 = call i32 @REG_SET_FIELD(i32 %368, i32 %369, i32 %370, i32 0)
  store i32 %371, i32* %24, align 4
  br label %372

372:                                              ; preds = %367, %362
  %373 = load i64, i64* @mmGRPH_LUT_10BIT_BYPASS, align 8
  %374 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %12, align 8
  %375 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %374, i32 0, i32 0
  %376 = load i64, i64* %375, align 8
  %377 = add nsw i64 %373, %376
  %378 = load i32, i32* %24, align 4
  %379 = call i32 @WREG32(i64 %377, i32 %378)
  %380 = load i32, i32* %28, align 4
  %381 = icmp ne i32 %380, 0
  br i1 %381, label %382, label %384

382:                                              ; preds = %372
  %383 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0))
  br label %384

384:                                              ; preds = %382, %372
  %385 = load i64, i64* @mmGRPH_SURFACE_OFFSET_X, align 8
  %386 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %12, align 8
  %387 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %386, i32 0, i32 0
  %388 = load i64, i64* %387, align 8
  %389 = add nsw i64 %385, %388
  %390 = call i32 @WREG32(i64 %389, i32 0)
  %391 = load i64, i64* @mmGRPH_SURFACE_OFFSET_Y, align 8
  %392 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %12, align 8
  %393 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %392, i32 0, i32 0
  %394 = load i64, i64* %393, align 8
  %395 = add nsw i64 %391, %394
  %396 = call i32 @WREG32(i64 %395, i32 0)
  %397 = load i64, i64* @mmGRPH_X_START, align 8
  %398 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %12, align 8
  %399 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %398, i32 0, i32 0
  %400 = load i64, i64* %399, align 8
  %401 = add nsw i64 %397, %400
  %402 = call i32 @WREG32(i64 %401, i32 0)
  %403 = load i64, i64* @mmGRPH_Y_START, align 8
  %404 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %12, align 8
  %405 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %404, i32 0, i32 0
  %406 = load i64, i64* %405, align 8
  %407 = add nsw i64 %403, %406
  %408 = call i32 @WREG32(i64 %407, i32 0)
  %409 = load i64, i64* @mmGRPH_X_END, align 8
  %410 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %12, align 8
  %411 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %410, i32 0, i32 0
  %412 = load i64, i64* %411, align 8
  %413 = add nsw i64 %409, %412
  %414 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %15, align 8
  %415 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %414, i32 0, i32 0
  %416 = load i32, i32* %415, align 8
  %417 = call i32 @WREG32(i64 %413, i32 %416)
  %418 = load i64, i64* @mmGRPH_Y_END, align 8
  %419 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %12, align 8
  %420 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %419, i32 0, i32 0
  %421 = load i64, i64* %420, align 8
  %422 = add nsw i64 %418, %421
  %423 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %15, align 8
  %424 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %423, i32 0, i32 1
  %425 = load i32, i32* %424, align 4
  %426 = call i32 @WREG32(i64 %422, i32 %425)
  %427 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %15, align 8
  %428 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %427, i32 0, i32 2
  %429 = load i32*, i32** %428, align 8
  %430 = getelementptr inbounds i32, i32* %429, i64 0
  %431 = load i32, i32* %430, align 4
  %432 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %15, align 8
  %433 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %432, i32 0, i32 4
  %434 = load %struct.TYPE_6__*, %struct.TYPE_6__** %433, align 8
  %435 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %434, i32 0, i32 1
  %436 = load i32*, i32** %435, align 8
  %437 = getelementptr inbounds i32, i32* %436, i64 0
  %438 = load i32, i32* %437, align 4
  %439 = sdiv i32 %431, %438
  store i32 %439, i32* %21, align 4
  %440 = load i64, i64* @mmGRPH_PITCH, align 8
  %441 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %12, align 8
  %442 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %441, i32 0, i32 0
  %443 = load i64, i64* %442, align 8
  %444 = add nsw i64 %440, %443
  %445 = load i32, i32* %21, align 4
  %446 = call i32 @WREG32(i64 %444, i32 %445)
  %447 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %448 = call i32 @dce_v11_0_grph_enable(%struct.drm_crtc* %447, i32 1)
  %449 = load i64, i64* @mmLB_DESKTOP_HEIGHT, align 8
  %450 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %12, align 8
  %451 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %450, i32 0, i32 0
  %452 = load i64, i64* %451, align 8
  %453 = add nsw i64 %449, %452
  %454 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %15, align 8
  %455 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %454, i32 0, i32 1
  %456 = load i32, i32* %455, align 4
  %457 = call i32 @WREG32(i64 %453, i32 %456)
  %458 = load i32, i32* %9, align 4
  %459 = and i32 %458, -4
  store i32 %459, i32* %9, align 4
  %460 = load i32, i32* %10, align 4
  %461 = and i32 %460, -2
  store i32 %461, i32* %10, align 4
  %462 = load i64, i64* @mmVIEWPORT_START, align 8
  %463 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %12, align 8
  %464 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %463, i32 0, i32 0
  %465 = load i64, i64* %464, align 8
  %466 = add nsw i64 %462, %465
  %467 = load i32, i32* %9, align 4
  %468 = shl i32 %467, 16
  %469 = load i32, i32* %10, align 4
  %470 = or i32 %468, %469
  %471 = call i32 @WREG32(i64 %466, i32 %470)
  %472 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %473 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %472, i32 0, i32 1
  %474 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %473, i32 0, i32 0
  %475 = load i32, i32* %474, align 8
  store i32 %475, i32* %25, align 4
  %476 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %477 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %476, i32 0, i32 1
  %478 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %477, i32 0, i32 1
  %479 = load i32, i32* %478, align 4
  %480 = add nsw i32 %479, 1
  %481 = and i32 %480, -2
  store i32 %481, i32* %26, align 4
  %482 = load i64, i64* @mmVIEWPORT_SIZE, align 8
  %483 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %12, align 8
  %484 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %483, i32 0, i32 0
  %485 = load i64, i64* %484, align 8
  %486 = add nsw i64 %482, %485
  %487 = load i32, i32* %25, align 4
  %488 = shl i32 %487, 16
  %489 = load i32, i32* %26, align 4
  %490 = or i32 %488, %489
  %491 = call i32 @WREG32(i64 %486, i32 %490)
  %492 = load i64, i64* @mmCRTC_MASTER_UPDATE_MODE, align 8
  %493 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %12, align 8
  %494 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %493, i32 0, i32 0
  %495 = load i64, i64* %494, align 8
  %496 = add nsw i64 %492, %495
  %497 = call i32 @WREG32(i64 %496, i32 0)
  %498 = load i32, i32* %11, align 4
  %499 = icmp ne i32 %498, 0
  br i1 %499, label %532, label %500

500:                                              ; preds = %384
  %501 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %502 = icmp ne %struct.drm_framebuffer* %501, null
  br i1 %502, label %503, label %532

503:                                              ; preds = %500
  %504 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %505 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %506 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %505, i32 0, i32 0
  %507 = load %struct.TYPE_5__*, %struct.TYPE_5__** %506, align 8
  %508 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %507, i32 0, i32 0
  %509 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %508, align 8
  %510 = icmp ne %struct.drm_framebuffer* %504, %509
  br i1 %510, label %511, label %532

511:                                              ; preds = %503
  %512 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %513 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %512, i32 0, i32 3
  %514 = load %struct.drm_gem_object**, %struct.drm_gem_object*** %513, align 8
  %515 = getelementptr inbounds %struct.drm_gem_object*, %struct.drm_gem_object** %514, i64 0
  %516 = load %struct.drm_gem_object*, %struct.drm_gem_object** %515, align 8
  %517 = call %struct.amdgpu_bo* @gem_to_amdgpu_bo(%struct.drm_gem_object* %516)
  store %struct.amdgpu_bo* %517, %struct.amdgpu_bo** %17, align 8
  %518 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %17, align 8
  %519 = call i32 @amdgpu_bo_reserve(%struct.amdgpu_bo* %518, i32 1)
  store i32 %519, i32* %27, align 4
  %520 = load i32, i32* %27, align 4
  %521 = icmp ne i32 %520, 0
  %522 = zext i1 %521 to i32
  %523 = call i64 @unlikely(i32 %522)
  %524 = icmp ne i64 %523, 0
  br i1 %524, label %525, label %527

525:                                              ; preds = %511
  %526 = load i32, i32* %27, align 4
  store i32 %526, i32* %6, align 4
  br label %535

527:                                              ; preds = %511
  %528 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %17, align 8
  %529 = call i32 @amdgpu_bo_unpin(%struct.amdgpu_bo* %528)
  %530 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %17, align 8
  %531 = call i32 @amdgpu_bo_unreserve(%struct.amdgpu_bo* %530)
  br label %532

532:                                              ; preds = %527, %503, %500, %384
  %533 = load %struct.amdgpu_device*, %struct.amdgpu_device** %14, align 8
  %534 = call i32 @dce_v11_0_bandwidth_update(%struct.amdgpu_device* %533)
  store i32 0, i32* %6, align 4
  br label %535

535:                                              ; preds = %532, %525, %199, %98, %84, %56
  %536 = load i32, i32* %6, align 4
  ret i32 %536
}

declare dso_local %struct.amdgpu_crtc* @to_amdgpu_crtc(%struct.drm_crtc*) #1

declare dso_local i32 @REG_SET_FIELD(i32, i32, i32, i32) #1

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

declare dso_local i32 @dce_v11_0_vga_enable(%struct.drm_crtc*, i32) #1

declare dso_local i32 @RREG32(i64) #1

declare dso_local i32 @WREG32(i64, i32) #1

declare dso_local i32 @upper_32_bits(i64) #1

declare dso_local i32 @dce_v11_0_grph_enable(%struct.drm_crtc*, i32) #1

declare dso_local i32 @amdgpu_bo_unpin(%struct.amdgpu_bo*) #1

declare dso_local i32 @dce_v11_0_bandwidth_update(%struct.amdgpu_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
