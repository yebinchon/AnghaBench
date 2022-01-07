; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_atombios_crtc.c_dce4_crtc_do_set_base.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_atombios_crtc.c_dce4_crtc_do_set_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.TYPE_16__*, %struct.TYPE_15__, %struct.drm_device* }
%struct.TYPE_16__ = type { %struct.drm_framebuffer* }
%struct.TYPE_15__ = type { i32, i32, i32 }
%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { i64, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_12__ = type { i32*, i32* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32* }
%struct.drm_framebuffer = type { i32, i32, i32*, %struct.drm_gem_object**, %struct.TYPE_14__* }
%struct.drm_gem_object = type { i32 }
%struct.TYPE_14__ = type { i32, i32* }
%struct.radeon_crtc = type { i32, i64 }
%struct.radeon_bo = type { i32 }
%struct.drm_format_name_buf = type { i32 }

@EVERGREEN_GRPH_ENDIAN_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"No FB bound\0A\00", align 1
@RADEON_GEM_DOMAIN_VRAM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EVERGREEN_GRPH_DEPTH_8BPP = common dso_local global i32 0, align 4
@EVERGREEN_GRPH_FORMAT_INDEXED = common dso_local global i32 0, align 4
@EVERGREEN_GRPH_DEPTH_16BPP = common dso_local global i32 0, align 4
@EVERGREEN_GRPH_FORMAT_ARGB4444 = common dso_local global i32 0, align 4
@EVERGREEN_GRPH_FORMAT_ARGB1555 = common dso_local global i32 0, align 4
@EVERGREEN_GRPH_FORMAT_BGRA5551 = common dso_local global i32 0, align 4
@EVERGREEN_GRPH_FORMAT_ARGB565 = common dso_local global i32 0, align 4
@EVERGREEN_GRPH_DEPTH_32BPP = common dso_local global i32 0, align 4
@EVERGREEN_GRPH_FORMAT_ARGB8888 = common dso_local global i32 0, align 4
@EVERGREEN_GRPH_FORMAT_ARGB2101010 = common dso_local global i32 0, align 4
@EVERGREEN_GRPH_FORMAT_BGRA1010102 = common dso_local global i32 0, align 4
@EVERGREEN_GRPH_RED_SEL_B = common dso_local global i32 0, align 4
@EVERGREEN_GRPH_BLUE_SEL_R = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Unsupported screen format %s\0A\00", align 1
@RADEON_TILING_MACRO = common dso_local global i32 0, align 4
@CHIP_TAHITI = common dso_local global i64 0, align 8
@CHIP_BONAIRE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [42 x i8] c"Wrong screen bpp (%u) or tile split (%u)\0A\00", align 1
@SI_TILE_MODE_COLOR_2D_SCANOUT_16BPP = common dso_local global i32 0, align 4
@SI_TILE_MODE_COLOR_2D_SCANOUT_32BPP = common dso_local global i32 0, align 4
@CHIP_CAYMAN = common dso_local global i64 0, align 8
@EVERGREEN_ADDR_SURF_4_BANK = common dso_local global i32 0, align 4
@EVERGREEN_ADDR_SURF_8_BANK = common dso_local global i32 0, align 4
@EVERGREEN_ADDR_SURF_16_BANK = common dso_local global i32 0, align 4
@EVERGREEN_GRPH_ARRAY_2D_TILED_THIN1 = common dso_local global i32 0, align 4
@CIK_DISPLAY_MICRO_TILING = common dso_local global i32 0, align 4
@RADEON_TILING_MICRO = common dso_local global i32 0, align 4
@EVERGREEN_GRPH_ARRAY_1D_TILED_THIN1 = common dso_local global i32 0, align 4
@CHIP_PITCAIRN = common dso_local global i64 0, align 8
@SI_ADDR_SURF_P8_32x32_8x16 = common dso_local global i32 0, align 4
@CHIP_VERDE = common dso_local global i64 0, align 8
@CHIP_OLAND = common dso_local global i64 0, align 8
@CHIP_HAINAN = common dso_local global i64 0, align 8
@SI_ADDR_SURF_P4_8x16 = common dso_local global i32 0, align 4
@AVIVO_D1VGA_CONTROL = common dso_local global i64 0, align 8
@AVIVO_D2VGA_CONTROL = common dso_local global i64 0, align 8
@EVERGREEN_D3VGA_CONTROL = common dso_local global i64 0, align 8
@EVERGREEN_D4VGA_CONTROL = common dso_local global i64 0, align 8
@EVERGREEN_D5VGA_CONTROL = common dso_local global i64 0, align 8
@EVERGREEN_D6VGA_CONTROL = common dso_local global i64 0, align 8
@EVERGREEN_GRPH_FLIP_CONTROL = common dso_local global i64 0, align 8
@EVERGREEN_GRPH_PRIMARY_SURFACE_ADDRESS_HIGH = common dso_local global i64 0, align 8
@EVERGREEN_GRPH_SECONDARY_SURFACE_ADDRESS_HIGH = common dso_local global i64 0, align 8
@EVERGREEN_GRPH_PRIMARY_SURFACE_ADDRESS = common dso_local global i64 0, align 8
@EVERGREEN_GRPH_SURFACE_ADDRESS_MASK = common dso_local global i32 0, align 4
@EVERGREEN_GRPH_SECONDARY_SURFACE_ADDRESS = common dso_local global i64 0, align 8
@EVERGREEN_GRPH_CONTROL = common dso_local global i64 0, align 8
@EVERGREEN_GRPH_SWAP_CONTROL = common dso_local global i64 0, align 8
@EVERGREEN_GRPH_LUT_10BIT_BYPASS_CONTROL = common dso_local global i64 0, align 8
@EVERGREEN_LUT_10BIT_BYPASS_EN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [50 x i8] c"Bypassing hardware LUT due to 10 bit fb scanout.\0A\00", align 1
@EVERGREEN_GRPH_SURFACE_OFFSET_X = common dso_local global i64 0, align 8
@EVERGREEN_GRPH_SURFACE_OFFSET_Y = common dso_local global i64 0, align 8
@EVERGREEN_GRPH_X_START = common dso_local global i64 0, align 8
@EVERGREEN_GRPH_Y_START = common dso_local global i64 0, align 8
@EVERGREEN_GRPH_X_END = common dso_local global i64 0, align 8
@EVERGREEN_GRPH_Y_END = common dso_local global i64 0, align 8
@EVERGREEN_GRPH_PITCH = common dso_local global i64 0, align 8
@EVERGREEN_GRPH_ENABLE = common dso_local global i64 0, align 8
@CIK_LB_DESKTOP_HEIGHT = common dso_local global i64 0, align 8
@EVERGREEN_DESKTOP_HEIGHT = common dso_local global i64 0, align 8
@EVERGREEN_VIEWPORT_START = common dso_local global i64 0, align 8
@DRM_MODE_FLAG_INTERLACE = common dso_local global i32 0, align 4
@EVERGREEN_VIEWPORT_SIZE = common dso_local global i64 0, align 8
@EVERGREEN_MASTER_UPDATE_MODE = common dso_local global i64 0, align 8
@EVERGREEN_GRPH_ENDIAN_8IN16 = common dso_local global i32 0, align 4
@EVERGREEN_GRPH_ENDIAN_8IN32 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_crtc*, %struct.drm_framebuffer*, i32, i32, i32)* @dce4_crtc_do_set_base to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dce4_crtc_do_set_base(%struct.drm_crtc* %0, %struct.drm_framebuffer* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.drm_crtc*, align 8
  %8 = alloca %struct.drm_framebuffer*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.radeon_crtc*, align 8
  %13 = alloca %struct.drm_device*, align 8
  %14 = alloca %struct.radeon_device*, align 8
  %15 = alloca %struct.drm_framebuffer*, align 8
  %16 = alloca %struct.drm_gem_object*, align 8
  %17 = alloca %struct.radeon_bo*, align 8
  %18 = alloca i64, align 8
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
  %32 = alloca %struct.drm_format_name_buf, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  store %struct.drm_crtc* %0, %struct.drm_crtc** %7, align 8
  store %struct.drm_framebuffer* %1, %struct.drm_framebuffer** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %38 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %39 = call %struct.radeon_crtc* @to_radeon_crtc(%struct.drm_crtc* %38)
  store %struct.radeon_crtc* %39, %struct.radeon_crtc** %12, align 8
  %40 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %41 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %40, i32 0, i32 2
  %42 = load %struct.drm_device*, %struct.drm_device** %41, align 8
  store %struct.drm_device* %42, %struct.drm_device** %13, align 8
  %43 = load %struct.drm_device*, %struct.drm_device** %13, align 8
  %44 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %43, i32 0, i32 0
  %45 = load %struct.radeon_device*, %struct.radeon_device** %44, align 8
  store %struct.radeon_device* %45, %struct.radeon_device** %14, align 8
  %46 = load i32, i32* @EVERGREEN_GRPH_ENDIAN_NONE, align 4
  %47 = call i32 @EVERGREEN_GRPH_ENDIAN_SWAP(i32 %46)
  store i32 %47, i32* %26, align 4
  store i32 0, i32* %31, align 4
  %48 = load i32, i32* %11, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %59, label %50

50:                                               ; preds = %5
  %51 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %52 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %51, i32 0, i32 0
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 0
  %55 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %54, align 8
  %56 = icmp ne %struct.drm_framebuffer* %55, null
  br i1 %56, label %59, label %57

57:                                               ; preds = %50
  %58 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %721

59:                                               ; preds = %50, %5
  %60 = load i32, i32* %11, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %59
  %63 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  store %struct.drm_framebuffer* %63, %struct.drm_framebuffer** %15, align 8
  br label %70

64:                                               ; preds = %59
  %65 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %66 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %65, i32 0, i32 0
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 0
  %69 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %68, align 8
  store %struct.drm_framebuffer* %69, %struct.drm_framebuffer** %15, align 8
  br label %70

70:                                               ; preds = %64, %62
  %71 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %15, align 8
  %72 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %71, i32 0, i32 3
  %73 = load %struct.drm_gem_object**, %struct.drm_gem_object*** %72, align 8
  %74 = getelementptr inbounds %struct.drm_gem_object*, %struct.drm_gem_object** %73, i64 0
  %75 = load %struct.drm_gem_object*, %struct.drm_gem_object** %74, align 8
  store %struct.drm_gem_object* %75, %struct.drm_gem_object** %16, align 8
  %76 = load %struct.drm_gem_object*, %struct.drm_gem_object** %16, align 8
  %77 = call %struct.radeon_bo* @gem_to_radeon_bo(%struct.drm_gem_object* %76)
  store %struct.radeon_bo* %77, %struct.radeon_bo** %17, align 8
  %78 = load %struct.radeon_bo*, %struct.radeon_bo** %17, align 8
  %79 = call i32 @radeon_bo_reserve(%struct.radeon_bo* %78, i32 0)
  store i32 %79, i32* %30, align 4
  %80 = load i32, i32* %30, align 4
  %81 = icmp ne i32 %80, 0
  %82 = zext i1 %81 to i32
  %83 = call i64 @unlikely(i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %70
  %86 = load i32, i32* %30, align 4
  store i32 %86, i32* %6, align 4
  br label %721

87:                                               ; preds = %70
  %88 = load i32, i32* %11, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %87
  %91 = load %struct.radeon_bo*, %struct.radeon_bo** %17, align 8
  %92 = call i64 @radeon_bo_gpu_offset(%struct.radeon_bo* %91)
  store i64 %92, i64* %18, align 8
  br label %108

93:                                               ; preds = %87
  %94 = load %struct.radeon_bo*, %struct.radeon_bo** %17, align 8
  %95 = load i32, i32* @RADEON_GEM_DOMAIN_VRAM, align 4
  %96 = call i32 @radeon_bo_pin(%struct.radeon_bo* %94, i32 %95, i64* %18)
  store i32 %96, i32* %30, align 4
  %97 = load i32, i32* %30, align 4
  %98 = icmp ne i32 %97, 0
  %99 = zext i1 %98 to i32
  %100 = call i64 @unlikely(i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %93
  %103 = load %struct.radeon_bo*, %struct.radeon_bo** %17, align 8
  %104 = call i32 @radeon_bo_unreserve(%struct.radeon_bo* %103)
  %105 = load i32, i32* @EINVAL, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %6, align 4
  br label %721

107:                                              ; preds = %93
  br label %108

108:                                              ; preds = %107, %90
  %109 = load %struct.radeon_bo*, %struct.radeon_bo** %17, align 8
  %110 = call i32 @radeon_bo_get_tiling_flags(%struct.radeon_bo* %109, i32* %21, i32* null)
  %111 = load %struct.radeon_bo*, %struct.radeon_bo** %17, align 8
  %112 = call i32 @radeon_bo_unreserve(%struct.radeon_bo* %111)
  %113 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %15, align 8
  %114 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %113, i32 0, i32 4
  %115 = load %struct.TYPE_14__*, %struct.TYPE_14__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  switch i32 %117, label %177 [
    i32 134, label %118
    i32 129, label %124
    i32 140, label %124
    i32 131, label %130
    i32 142, label %130
    i32 135, label %136
    i32 137, label %136
    i32 133, label %142
    i32 128, label %148
    i32 139, label %148
    i32 130, label %154
    i32 141, label %154
    i32 136, label %160
    i32 138, label %160
    i32 132, label %166
    i32 143, label %166
  ]

118:                                              ; preds = %108
  %119 = load i32, i32* @EVERGREEN_GRPH_DEPTH_8BPP, align 4
  %120 = call i32 @EVERGREEN_GRPH_DEPTH(i32 %119)
  %121 = load i32, i32* @EVERGREEN_GRPH_FORMAT_INDEXED, align 4
  %122 = call i32 @EVERGREEN_GRPH_FORMAT(i32 %121)
  %123 = or i32 %120, %122
  store i32 %123, i32* %19, align 4
  br label %187

124:                                              ; preds = %108, %108
  %125 = load i32, i32* @EVERGREEN_GRPH_DEPTH_16BPP, align 4
  %126 = call i32 @EVERGREEN_GRPH_DEPTH(i32 %125)
  %127 = load i32, i32* @EVERGREEN_GRPH_FORMAT_ARGB4444, align 4
  %128 = call i32 @EVERGREEN_GRPH_FORMAT(i32 %127)
  %129 = or i32 %126, %128
  store i32 %129, i32* %19, align 4
  br label %187

130:                                              ; preds = %108, %108
  %131 = load i32, i32* @EVERGREEN_GRPH_DEPTH_16BPP, align 4
  %132 = call i32 @EVERGREEN_GRPH_DEPTH(i32 %131)
  %133 = load i32, i32* @EVERGREEN_GRPH_FORMAT_ARGB1555, align 4
  %134 = call i32 @EVERGREEN_GRPH_FORMAT(i32 %133)
  %135 = or i32 %132, %134
  store i32 %135, i32* %19, align 4
  br label %187

136:                                              ; preds = %108, %108
  %137 = load i32, i32* @EVERGREEN_GRPH_DEPTH_16BPP, align 4
  %138 = call i32 @EVERGREEN_GRPH_DEPTH(i32 %137)
  %139 = load i32, i32* @EVERGREEN_GRPH_FORMAT_BGRA5551, align 4
  %140 = call i32 @EVERGREEN_GRPH_FORMAT(i32 %139)
  %141 = or i32 %138, %140
  store i32 %141, i32* %19, align 4
  br label %187

142:                                              ; preds = %108
  %143 = load i32, i32* @EVERGREEN_GRPH_DEPTH_16BPP, align 4
  %144 = call i32 @EVERGREEN_GRPH_DEPTH(i32 %143)
  %145 = load i32, i32* @EVERGREEN_GRPH_FORMAT_ARGB565, align 4
  %146 = call i32 @EVERGREEN_GRPH_FORMAT(i32 %145)
  %147 = or i32 %144, %146
  store i32 %147, i32* %19, align 4
  br label %187

148:                                              ; preds = %108, %108
  %149 = load i32, i32* @EVERGREEN_GRPH_DEPTH_32BPP, align 4
  %150 = call i32 @EVERGREEN_GRPH_DEPTH(i32 %149)
  %151 = load i32, i32* @EVERGREEN_GRPH_FORMAT_ARGB8888, align 4
  %152 = call i32 @EVERGREEN_GRPH_FORMAT(i32 %151)
  %153 = or i32 %150, %152
  store i32 %153, i32* %19, align 4
  br label %187

154:                                              ; preds = %108, %108
  %155 = load i32, i32* @EVERGREEN_GRPH_DEPTH_32BPP, align 4
  %156 = call i32 @EVERGREEN_GRPH_DEPTH(i32 %155)
  %157 = load i32, i32* @EVERGREEN_GRPH_FORMAT_ARGB2101010, align 4
  %158 = call i32 @EVERGREEN_GRPH_FORMAT(i32 %157)
  %159 = or i32 %156, %158
  store i32 %159, i32* %19, align 4
  store i32 1, i32* %31, align 4
  br label %187

160:                                              ; preds = %108, %108
  %161 = load i32, i32* @EVERGREEN_GRPH_DEPTH_32BPP, align 4
  %162 = call i32 @EVERGREEN_GRPH_DEPTH(i32 %161)
  %163 = load i32, i32* @EVERGREEN_GRPH_FORMAT_BGRA1010102, align 4
  %164 = call i32 @EVERGREEN_GRPH_FORMAT(i32 %163)
  %165 = or i32 %162, %164
  store i32 %165, i32* %19, align 4
  store i32 1, i32* %31, align 4
  br label %187

166:                                              ; preds = %108, %108
  %167 = load i32, i32* @EVERGREEN_GRPH_DEPTH_32BPP, align 4
  %168 = call i32 @EVERGREEN_GRPH_DEPTH(i32 %167)
  %169 = load i32, i32* @EVERGREEN_GRPH_FORMAT_ARGB8888, align 4
  %170 = call i32 @EVERGREEN_GRPH_FORMAT(i32 %169)
  %171 = or i32 %168, %170
  store i32 %171, i32* %19, align 4
  %172 = load i32, i32* @EVERGREEN_GRPH_RED_SEL_B, align 4
  %173 = call i32 @EVERGREEN_GRPH_RED_CROSSBAR(i32 %172)
  %174 = load i32, i32* @EVERGREEN_GRPH_BLUE_SEL_R, align 4
  %175 = call i32 @EVERGREEN_GRPH_BLUE_CROSSBAR(i32 %174)
  %176 = or i32 %173, %175
  store i32 %176, i32* %26, align 4
  br label %187

177:                                              ; preds = %108
  %178 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %15, align 8
  %179 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %178, i32 0, i32 4
  %180 = load %struct.TYPE_14__*, %struct.TYPE_14__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = call i32 @drm_get_format_name(i32 %182, %struct.drm_format_name_buf* %32)
  %184 = call i32 (i8*, i32, ...) @DRM_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %183)
  %185 = load i32, i32* @EINVAL, align 4
  %186 = sub nsw i32 0, %185
  store i32 %186, i32* %6, align 4
  br label %721

187:                                              ; preds = %166, %160, %154, %148, %142, %136, %130, %124, %118
  %188 = load i32, i32* %21, align 4
  %189 = load i32, i32* @RADEON_TILING_MACRO, align 4
  %190 = and i32 %188, %189
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %360

192:                                              ; preds = %187
  %193 = load i32, i32* %21, align 4
  %194 = call i32 @evergreen_tiling_fields(i32 %193, i32* %22, i32* %23, i32* %24, i32* %25)
  %195 = load %struct.radeon_device*, %struct.radeon_device** %14, align 8
  %196 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = load i64, i64* @CHIP_TAHITI, align 8
  %199 = icmp sge i64 %197, %198
  br i1 %199, label %200, label %289

200:                                              ; preds = %192
  %201 = load %struct.radeon_device*, %struct.radeon_device** %14, align 8
  %202 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %201, i32 0, i32 0
  %203 = load i64, i64* %202, align 8
  %204 = load i64, i64* @CHIP_BONAIRE, align 8
  %205 = icmp sge i64 %203, %204
  br i1 %205, label %206, label %257

206:                                              ; preds = %200
  %207 = load i32, i32* %25, align 4
  %208 = shl i32 64, %207
  store i32 %208, i32* %36, align 4
  %209 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %15, align 8
  %210 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %209, i32 0, i32 4
  %211 = load %struct.TYPE_14__*, %struct.TYPE_14__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %211, i32 0, i32 1
  %213 = load i32*, i32** %212, align 8
  %214 = getelementptr inbounds i32, i32* %213, i64 0
  %215 = load i32, i32* %214, align 4
  %216 = mul nsw i32 64, %215
  store i32 %216, i32* %35, align 4
  %217 = load i32, i32* %36, align 4
  %218 = load i32, i32* %35, align 4
  %219 = call i32 @min(i32 %217, i32 %218)
  store i32 %219, i32* %35, align 4
  store i32 0, i32* %33, align 4
  br label %220

220:                                              ; preds = %226, %206
  %221 = load i32, i32* %35, align 4
  %222 = icmp ugt i32 %221, 64
  br i1 %222, label %223, label %229

223:                                              ; preds = %220
  %224 = load i32, i32* %35, align 4
  %225 = lshr i32 %224, 1
  store i32 %225, i32* %35, align 4
  br label %226

226:                                              ; preds = %223
  %227 = load i32, i32* %33, align 4
  %228 = add i32 %227, 1
  store i32 %228, i32* %33, align 4
  br label %220

229:                                              ; preds = %220
  %230 = load i32, i32* %33, align 4
  %231 = icmp uge i32 %230, 16
  br i1 %231, label %232, label %245

232:                                              ; preds = %229
  %233 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %15, align 8
  %234 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %233, i32 0, i32 4
  %235 = load %struct.TYPE_14__*, %struct.TYPE_14__** %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %235, i32 0, i32 1
  %237 = load i32*, i32** %236, align 8
  %238 = getelementptr inbounds i32, i32* %237, i64 0
  %239 = load i32, i32* %238, align 4
  %240 = mul nsw i32 %239, 8
  %241 = load i32, i32* %25, align 4
  %242 = call i32 (i8*, i32, ...) @DRM_ERROR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %240, i32 %241)
  %243 = load i32, i32* @EINVAL, align 4
  %244 = sub nsw i32 0, %243
  store i32 %244, i32* %6, align 4
  br label %721

245:                                              ; preds = %229
  %246 = load %struct.radeon_device*, %struct.radeon_device** %14, align 8
  %247 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %246, i32 0, i32 1
  %248 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %247, i32 0, i32 0
  %249 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %248, i32 0, i32 0
  %250 = load i32*, i32** %249, align 8
  %251 = load i32, i32* %33, align 4
  %252 = zext i32 %251 to i64
  %253 = getelementptr inbounds i32, i32* %250, i64 %252
  %254 = load i32, i32* %253, align 4
  %255 = ashr i32 %254, 6
  %256 = and i32 %255, 3
  store i32 %256, i32* %34, align 4
  br label %284

257:                                              ; preds = %200
  %258 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %15, align 8
  %259 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %258, i32 0, i32 4
  %260 = load %struct.TYPE_14__*, %struct.TYPE_14__** %259, align 8
  %261 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %260, i32 0, i32 1
  %262 = load i32*, i32** %261, align 8
  %263 = getelementptr inbounds i32, i32* %262, i64 0
  %264 = load i32, i32* %263, align 4
  %265 = mul nsw i32 %264, 8
  switch i32 %265, label %269 [
    i32 8, label %266
    i32 16, label %267
    i32 32, label %270
  ]

266:                                              ; preds = %257
  store i32 10, i32* %33, align 4
  br label %272

267:                                              ; preds = %257
  %268 = load i32, i32* @SI_TILE_MODE_COLOR_2D_SCANOUT_16BPP, align 4
  store i32 %268, i32* %33, align 4
  br label %272

269:                                              ; preds = %257
  br label %270

270:                                              ; preds = %257, %269
  %271 = load i32, i32* @SI_TILE_MODE_COLOR_2D_SCANOUT_32BPP, align 4
  store i32 %271, i32* %33, align 4
  br label %272

272:                                              ; preds = %270, %267, %266
  %273 = load %struct.radeon_device*, %struct.radeon_device** %14, align 8
  %274 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %273, i32 0, i32 1
  %275 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %274, i32 0, i32 3
  %276 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %275, i32 0, i32 0
  %277 = load i32*, i32** %276, align 8
  %278 = load i32, i32* %33, align 4
  %279 = zext i32 %278 to i64
  %280 = getelementptr inbounds i32, i32* %277, i64 %279
  %281 = load i32, i32* %280, align 4
  %282 = ashr i32 %281, 20
  %283 = and i32 %282, 3
  store i32 %283, i32* %34, align 4
  br label %284

284:                                              ; preds = %272, %245
  %285 = load i32, i32* %34, align 4
  %286 = call i32 @EVERGREEN_GRPH_NUM_BANKS(i32 %285)
  %287 = load i32, i32* %19, align 4
  %288 = or i32 %287, %286
  store i32 %288, i32* %19, align 4
  br label %328

289:                                              ; preds = %192
  %290 = load %struct.radeon_device*, %struct.radeon_device** %14, align 8
  %291 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %290, i32 0, i32 0
  %292 = load i64, i64* %291, align 8
  %293 = load i64, i64* @CHIP_CAYMAN, align 8
  %294 = icmp sge i64 %292, %293
  br i1 %294, label %295, label %301

295:                                              ; preds = %289
  %296 = load %struct.radeon_device*, %struct.radeon_device** %14, align 8
  %297 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %296, i32 0, i32 1
  %298 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %297, i32 0, i32 2
  %299 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %298, i32 0, i32 0
  %300 = load i32, i32* %299, align 4
  store i32 %300, i32* %27, align 4
  br label %307

301:                                              ; preds = %289
  %302 = load %struct.radeon_device*, %struct.radeon_device** %14, align 8
  %303 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %302, i32 0, i32 1
  %304 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %303, i32 0, i32 1
  %305 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %304, i32 0, i32 0
  %306 = load i32, i32* %305, align 8
  store i32 %306, i32* %27, align 4
  br label %307

307:                                              ; preds = %301, %295
  %308 = load i32, i32* %27, align 4
  %309 = and i32 %308, 240
  %310 = ashr i32 %309, 4
  switch i32 %310, label %317 [
    i32 0, label %311
    i32 1, label %316
    i32 2, label %322
  ]

311:                                              ; preds = %307
  %312 = load i32, i32* @EVERGREEN_ADDR_SURF_4_BANK, align 4
  %313 = call i32 @EVERGREEN_GRPH_NUM_BANKS(i32 %312)
  %314 = load i32, i32* %19, align 4
  %315 = or i32 %314, %313
  store i32 %315, i32* %19, align 4
  br label %327

316:                                              ; preds = %307
  br label %317

317:                                              ; preds = %307, %316
  %318 = load i32, i32* @EVERGREEN_ADDR_SURF_8_BANK, align 4
  %319 = call i32 @EVERGREEN_GRPH_NUM_BANKS(i32 %318)
  %320 = load i32, i32* %19, align 4
  %321 = or i32 %320, %319
  store i32 %321, i32* %19, align 4
  br label %327

322:                                              ; preds = %307
  %323 = load i32, i32* @EVERGREEN_ADDR_SURF_16_BANK, align 4
  %324 = call i32 @EVERGREEN_GRPH_NUM_BANKS(i32 %323)
  %325 = load i32, i32* %19, align 4
  %326 = or i32 %325, %324
  store i32 %326, i32* %19, align 4
  br label %327

327:                                              ; preds = %322, %317, %311
  br label %328

328:                                              ; preds = %327, %284
  %329 = load i32, i32* @EVERGREEN_GRPH_ARRAY_2D_TILED_THIN1, align 4
  %330 = call i32 @EVERGREEN_GRPH_ARRAY_MODE(i32 %329)
  %331 = load i32, i32* %19, align 4
  %332 = or i32 %331, %330
  store i32 %332, i32* %19, align 4
  %333 = load i32, i32* %25, align 4
  %334 = call i32 @EVERGREEN_GRPH_TILE_SPLIT(i32 %333)
  %335 = load i32, i32* %19, align 4
  %336 = or i32 %335, %334
  store i32 %336, i32* %19, align 4
  %337 = load i32, i32* %22, align 4
  %338 = call i32 @EVERGREEN_GRPH_BANK_WIDTH(i32 %337)
  %339 = load i32, i32* %19, align 4
  %340 = or i32 %339, %338
  store i32 %340, i32* %19, align 4
  %341 = load i32, i32* %23, align 4
  %342 = call i32 @EVERGREEN_GRPH_BANK_HEIGHT(i32 %341)
  %343 = load i32, i32* %19, align 4
  %344 = or i32 %343, %342
  store i32 %344, i32* %19, align 4
  %345 = load i32, i32* %24, align 4
  %346 = call i32 @EVERGREEN_GRPH_MACRO_TILE_ASPECT(i32 %345)
  %347 = load i32, i32* %19, align 4
  %348 = or i32 %347, %346
  store i32 %348, i32* %19, align 4
  %349 = load %struct.radeon_device*, %struct.radeon_device** %14, align 8
  %350 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %349, i32 0, i32 0
  %351 = load i64, i64* %350, align 8
  %352 = load i64, i64* @CHIP_BONAIRE, align 8
  %353 = icmp sge i64 %351, %352
  br i1 %353, label %354, label %359

354:                                              ; preds = %328
  %355 = load i32, i32* @CIK_DISPLAY_MICRO_TILING, align 4
  %356 = call i32 @CIK_GRPH_MICRO_TILE_MODE(i32 %355)
  %357 = load i32, i32* %19, align 4
  %358 = or i32 %357, %356
  store i32 %358, i32* %19, align 4
  br label %359

359:                                              ; preds = %354, %328
  br label %371

360:                                              ; preds = %187
  %361 = load i32, i32* %21, align 4
  %362 = load i32, i32* @RADEON_TILING_MICRO, align 4
  %363 = and i32 %361, %362
  %364 = icmp ne i32 %363, 0
  br i1 %364, label %365, label %370

365:                                              ; preds = %360
  %366 = load i32, i32* @EVERGREEN_GRPH_ARRAY_1D_TILED_THIN1, align 4
  %367 = call i32 @EVERGREEN_GRPH_ARRAY_MODE(i32 %366)
  %368 = load i32, i32* %19, align 4
  %369 = or i32 %368, %367
  store i32 %369, i32* %19, align 4
  br label %370

370:                                              ; preds = %365, %360
  br label %371

371:                                              ; preds = %370, %359
  %372 = load %struct.radeon_device*, %struct.radeon_device** %14, align 8
  %373 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %372, i32 0, i32 0
  %374 = load i64, i64* %373, align 8
  %375 = load i64, i64* @CHIP_BONAIRE, align 8
  %376 = icmp sge i64 %374, %375
  br i1 %376, label %377, label %391

377:                                              ; preds = %371
  %378 = load %struct.radeon_device*, %struct.radeon_device** %14, align 8
  %379 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %378, i32 0, i32 1
  %380 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %379, i32 0, i32 0
  %381 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %380, i32 0, i32 1
  %382 = load i32*, i32** %381, align 8
  %383 = getelementptr inbounds i32, i32* %382, i64 10
  %384 = load i32, i32* %383, align 4
  %385 = ashr i32 %384, 6
  %386 = and i32 %385, 31
  store i32 %386, i32* %37, align 4
  %387 = load i32, i32* %37, align 4
  %388 = call i32 @CIK_GRPH_PIPE_CONFIG(i32 %387)
  %389 = load i32, i32* %19, align 4
  %390 = or i32 %389, %388
  store i32 %390, i32* %19, align 4
  br label %433

391:                                              ; preds = %371
  %392 = load %struct.radeon_device*, %struct.radeon_device** %14, align 8
  %393 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %392, i32 0, i32 0
  %394 = load i64, i64* %393, align 8
  %395 = load i64, i64* @CHIP_TAHITI, align 8
  %396 = icmp eq i64 %394, %395
  br i1 %396, label %403, label %397

397:                                              ; preds = %391
  %398 = load %struct.radeon_device*, %struct.radeon_device** %14, align 8
  %399 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %398, i32 0, i32 0
  %400 = load i64, i64* %399, align 8
  %401 = load i64, i64* @CHIP_PITCAIRN, align 8
  %402 = icmp eq i64 %400, %401
  br i1 %402, label %403, label %408

403:                                              ; preds = %397, %391
  %404 = load i32, i32* @SI_ADDR_SURF_P8_32x32_8x16, align 4
  %405 = call i32 @SI_GRPH_PIPE_CONFIG(i32 %404)
  %406 = load i32, i32* %19, align 4
  %407 = or i32 %406, %405
  store i32 %407, i32* %19, align 4
  br label %432

408:                                              ; preds = %397
  %409 = load %struct.radeon_device*, %struct.radeon_device** %14, align 8
  %410 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %409, i32 0, i32 0
  %411 = load i64, i64* %410, align 8
  %412 = load i64, i64* @CHIP_VERDE, align 8
  %413 = icmp eq i64 %411, %412
  br i1 %413, label %426, label %414

414:                                              ; preds = %408
  %415 = load %struct.radeon_device*, %struct.radeon_device** %14, align 8
  %416 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %415, i32 0, i32 0
  %417 = load i64, i64* %416, align 8
  %418 = load i64, i64* @CHIP_OLAND, align 8
  %419 = icmp eq i64 %417, %418
  br i1 %419, label %426, label %420

420:                                              ; preds = %414
  %421 = load %struct.radeon_device*, %struct.radeon_device** %14, align 8
  %422 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %421, i32 0, i32 0
  %423 = load i64, i64* %422, align 8
  %424 = load i64, i64* @CHIP_HAINAN, align 8
  %425 = icmp eq i64 %423, %424
  br i1 %425, label %426, label %431

426:                                              ; preds = %420, %414, %408
  %427 = load i32, i32* @SI_ADDR_SURF_P4_8x16, align 4
  %428 = call i32 @SI_GRPH_PIPE_CONFIG(i32 %427)
  %429 = load i32, i32* %19, align 4
  %430 = or i32 %429, %428
  store i32 %430, i32* %19, align 4
  br label %431

431:                                              ; preds = %426, %420
  br label %432

432:                                              ; preds = %431, %403
  br label %433

433:                                              ; preds = %432, %377
  %434 = load %struct.radeon_crtc*, %struct.radeon_crtc** %12, align 8
  %435 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %434, i32 0, i32 0
  %436 = load i32, i32* %435, align 8
  switch i32 %436, label %455 [
    i32 0, label %437
    i32 1, label %440
    i32 2, label %443
    i32 3, label %446
    i32 4, label %449
    i32 5, label %452
  ]

437:                                              ; preds = %433
  %438 = load i64, i64* @AVIVO_D1VGA_CONTROL, align 8
  %439 = call i32 @WREG32(i64 %438, i32 0)
  br label %456

440:                                              ; preds = %433
  %441 = load i64, i64* @AVIVO_D2VGA_CONTROL, align 8
  %442 = call i32 @WREG32(i64 %441, i32 0)
  br label %456

443:                                              ; preds = %433
  %444 = load i64, i64* @EVERGREEN_D3VGA_CONTROL, align 8
  %445 = call i32 @WREG32(i64 %444, i32 0)
  br label %456

446:                                              ; preds = %433
  %447 = load i64, i64* @EVERGREEN_D4VGA_CONTROL, align 8
  %448 = call i32 @WREG32(i64 %447, i32 0)
  br label %456

449:                                              ; preds = %433
  %450 = load i64, i64* @EVERGREEN_D5VGA_CONTROL, align 8
  %451 = call i32 @WREG32(i64 %450, i32 0)
  br label %456

452:                                              ; preds = %433
  %453 = load i64, i64* @EVERGREEN_D6VGA_CONTROL, align 8
  %454 = call i32 @WREG32(i64 %453, i32 0)
  br label %456

455:                                              ; preds = %433
  br label %456

456:                                              ; preds = %455, %452, %449, %446, %443, %440, %437
  %457 = load i64, i64* @EVERGREEN_GRPH_FLIP_CONTROL, align 8
  %458 = load %struct.radeon_crtc*, %struct.radeon_crtc** %12, align 8
  %459 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %458, i32 0, i32 1
  %460 = load i64, i64* %459, align 8
  %461 = add nsw i64 %457, %460
  %462 = call i32 @WREG32(i64 %461, i32 0)
  %463 = load i64, i64* @EVERGREEN_GRPH_PRIMARY_SURFACE_ADDRESS_HIGH, align 8
  %464 = load %struct.radeon_crtc*, %struct.radeon_crtc** %12, align 8
  %465 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %464, i32 0, i32 1
  %466 = load i64, i64* %465, align 8
  %467 = add nsw i64 %463, %466
  %468 = load i64, i64* %18, align 8
  %469 = call i32 @upper_32_bits(i64 %468)
  %470 = call i32 @WREG32(i64 %467, i32 %469)
  %471 = load i64, i64* @EVERGREEN_GRPH_SECONDARY_SURFACE_ADDRESS_HIGH, align 8
  %472 = load %struct.radeon_crtc*, %struct.radeon_crtc** %12, align 8
  %473 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %472, i32 0, i32 1
  %474 = load i64, i64* %473, align 8
  %475 = add nsw i64 %471, %474
  %476 = load i64, i64* %18, align 8
  %477 = call i32 @upper_32_bits(i64 %476)
  %478 = call i32 @WREG32(i64 %475, i32 %477)
  %479 = load i64, i64* @EVERGREEN_GRPH_PRIMARY_SURFACE_ADDRESS, align 8
  %480 = load %struct.radeon_crtc*, %struct.radeon_crtc** %12, align 8
  %481 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %480, i32 0, i32 1
  %482 = load i64, i64* %481, align 8
  %483 = add nsw i64 %479, %482
  %484 = load i64, i64* %18, align 8
  %485 = trunc i64 %484 to i32
  %486 = load i32, i32* @EVERGREEN_GRPH_SURFACE_ADDRESS_MASK, align 4
  %487 = and i32 %485, %486
  %488 = call i32 @WREG32(i64 %483, i32 %487)
  %489 = load i64, i64* @EVERGREEN_GRPH_SECONDARY_SURFACE_ADDRESS, align 8
  %490 = load %struct.radeon_crtc*, %struct.radeon_crtc** %12, align 8
  %491 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %490, i32 0, i32 1
  %492 = load i64, i64* %491, align 8
  %493 = add nsw i64 %489, %492
  %494 = load i64, i64* %18, align 8
  %495 = trunc i64 %494 to i32
  %496 = load i32, i32* @EVERGREEN_GRPH_SURFACE_ADDRESS_MASK, align 4
  %497 = and i32 %495, %496
  %498 = call i32 @WREG32(i64 %493, i32 %497)
  %499 = load i64, i64* @EVERGREEN_GRPH_CONTROL, align 8
  %500 = load %struct.radeon_crtc*, %struct.radeon_crtc** %12, align 8
  %501 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %500, i32 0, i32 1
  %502 = load i64, i64* %501, align 8
  %503 = add nsw i64 %499, %502
  %504 = load i32, i32* %19, align 4
  %505 = call i32 @WREG32(i64 %503, i32 %504)
  %506 = load i64, i64* @EVERGREEN_GRPH_SWAP_CONTROL, align 8
  %507 = load %struct.radeon_crtc*, %struct.radeon_crtc** %12, align 8
  %508 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %507, i32 0, i32 1
  %509 = load i64, i64* %508, align 8
  %510 = add nsw i64 %506, %509
  %511 = load i32, i32* %26, align 4
  %512 = call i32 @WREG32(i64 %510, i32 %511)
  %513 = load i64, i64* @EVERGREEN_GRPH_LUT_10BIT_BYPASS_CONTROL, align 8
  %514 = load %struct.radeon_crtc*, %struct.radeon_crtc** %12, align 8
  %515 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %514, i32 0, i32 1
  %516 = load i64, i64* %515, align 8
  %517 = add nsw i64 %513, %516
  %518 = load i32, i32* %31, align 4
  %519 = icmp ne i32 %518, 0
  br i1 %519, label %520, label %522

520:                                              ; preds = %456
  %521 = load i32, i32* @EVERGREEN_LUT_10BIT_BYPASS_EN, align 4
  br label %523

522:                                              ; preds = %456
  br label %523

523:                                              ; preds = %522, %520
  %524 = phi i32 [ %521, %520 ], [ 0, %522 ]
  %525 = load i32, i32* @EVERGREEN_LUT_10BIT_BYPASS_EN, align 4
  %526 = xor i32 %525, -1
  %527 = call i32 @WREG32_P(i64 %517, i32 %524, i32 %526)
  %528 = load i32, i32* %31, align 4
  %529 = icmp ne i32 %528, 0
  br i1 %529, label %530, label %532

530:                                              ; preds = %523
  %531 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0))
  br label %532

532:                                              ; preds = %530, %523
  %533 = load i64, i64* @EVERGREEN_GRPH_SURFACE_OFFSET_X, align 8
  %534 = load %struct.radeon_crtc*, %struct.radeon_crtc** %12, align 8
  %535 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %534, i32 0, i32 1
  %536 = load i64, i64* %535, align 8
  %537 = add nsw i64 %533, %536
  %538 = call i32 @WREG32(i64 %537, i32 0)
  %539 = load i64, i64* @EVERGREEN_GRPH_SURFACE_OFFSET_Y, align 8
  %540 = load %struct.radeon_crtc*, %struct.radeon_crtc** %12, align 8
  %541 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %540, i32 0, i32 1
  %542 = load i64, i64* %541, align 8
  %543 = add nsw i64 %539, %542
  %544 = call i32 @WREG32(i64 %543, i32 0)
  %545 = load i64, i64* @EVERGREEN_GRPH_X_START, align 8
  %546 = load %struct.radeon_crtc*, %struct.radeon_crtc** %12, align 8
  %547 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %546, i32 0, i32 1
  %548 = load i64, i64* %547, align 8
  %549 = add nsw i64 %545, %548
  %550 = call i32 @WREG32(i64 %549, i32 0)
  %551 = load i64, i64* @EVERGREEN_GRPH_Y_START, align 8
  %552 = load %struct.radeon_crtc*, %struct.radeon_crtc** %12, align 8
  %553 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %552, i32 0, i32 1
  %554 = load i64, i64* %553, align 8
  %555 = add nsw i64 %551, %554
  %556 = call i32 @WREG32(i64 %555, i32 0)
  %557 = load i64, i64* @EVERGREEN_GRPH_X_END, align 8
  %558 = load %struct.radeon_crtc*, %struct.radeon_crtc** %12, align 8
  %559 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %558, i32 0, i32 1
  %560 = load i64, i64* %559, align 8
  %561 = add nsw i64 %557, %560
  %562 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %15, align 8
  %563 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %562, i32 0, i32 0
  %564 = load i32, i32* %563, align 8
  %565 = call i32 @WREG32(i64 %561, i32 %564)
  %566 = load i64, i64* @EVERGREEN_GRPH_Y_END, align 8
  %567 = load %struct.radeon_crtc*, %struct.radeon_crtc** %12, align 8
  %568 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %567, i32 0, i32 1
  %569 = load i64, i64* %568, align 8
  %570 = add nsw i64 %566, %569
  %571 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %15, align 8
  %572 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %571, i32 0, i32 1
  %573 = load i32, i32* %572, align 4
  %574 = call i32 @WREG32(i64 %570, i32 %573)
  %575 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %15, align 8
  %576 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %575, i32 0, i32 2
  %577 = load i32*, i32** %576, align 8
  %578 = getelementptr inbounds i32, i32* %577, i64 0
  %579 = load i32, i32* %578, align 4
  %580 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %15, align 8
  %581 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %580, i32 0, i32 4
  %582 = load %struct.TYPE_14__*, %struct.TYPE_14__** %581, align 8
  %583 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %582, i32 0, i32 1
  %584 = load i32*, i32** %583, align 8
  %585 = getelementptr inbounds i32, i32* %584, i64 0
  %586 = load i32, i32* %585, align 4
  %587 = sdiv i32 %579, %586
  store i32 %587, i32* %20, align 4
  %588 = load i64, i64* @EVERGREEN_GRPH_PITCH, align 8
  %589 = load %struct.radeon_crtc*, %struct.radeon_crtc** %12, align 8
  %590 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %589, i32 0, i32 1
  %591 = load i64, i64* %590, align 8
  %592 = add nsw i64 %588, %591
  %593 = load i32, i32* %20, align 4
  %594 = call i32 @WREG32(i64 %592, i32 %593)
  %595 = load i64, i64* @EVERGREEN_GRPH_ENABLE, align 8
  %596 = load %struct.radeon_crtc*, %struct.radeon_crtc** %12, align 8
  %597 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %596, i32 0, i32 1
  %598 = load i64, i64* %597, align 8
  %599 = add nsw i64 %595, %598
  %600 = call i32 @WREG32(i64 %599, i32 1)
  %601 = load %struct.radeon_device*, %struct.radeon_device** %14, align 8
  %602 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %601, i32 0, i32 0
  %603 = load i64, i64* %602, align 8
  %604 = load i64, i64* @CHIP_BONAIRE, align 8
  %605 = icmp sge i64 %603, %604
  br i1 %605, label %606, label %616

606:                                              ; preds = %532
  %607 = load i64, i64* @CIK_LB_DESKTOP_HEIGHT, align 8
  %608 = load %struct.radeon_crtc*, %struct.radeon_crtc** %12, align 8
  %609 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %608, i32 0, i32 1
  %610 = load i64, i64* %609, align 8
  %611 = add nsw i64 %607, %610
  %612 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %15, align 8
  %613 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %612, i32 0, i32 1
  %614 = load i32, i32* %613, align 4
  %615 = call i32 @WREG32(i64 %611, i32 %614)
  br label %626

616:                                              ; preds = %532
  %617 = load i64, i64* @EVERGREEN_DESKTOP_HEIGHT, align 8
  %618 = load %struct.radeon_crtc*, %struct.radeon_crtc** %12, align 8
  %619 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %618, i32 0, i32 1
  %620 = load i64, i64* %619, align 8
  %621 = add nsw i64 %617, %620
  %622 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %15, align 8
  %623 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %622, i32 0, i32 1
  %624 = load i32, i32* %623, align 4
  %625 = call i32 @WREG32(i64 %621, i32 %624)
  br label %626

626:                                              ; preds = %616, %606
  %627 = load i32, i32* %9, align 4
  %628 = and i32 %627, -4
  store i32 %628, i32* %9, align 4
  %629 = load i32, i32* %10, align 4
  %630 = and i32 %629, -2
  store i32 %630, i32* %10, align 4
  %631 = load i64, i64* @EVERGREEN_VIEWPORT_START, align 8
  %632 = load %struct.radeon_crtc*, %struct.radeon_crtc** %12, align 8
  %633 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %632, i32 0, i32 1
  %634 = load i64, i64* %633, align 8
  %635 = add nsw i64 %631, %634
  %636 = load i32, i32* %9, align 4
  %637 = shl i32 %636, 16
  %638 = load i32, i32* %10, align 4
  %639 = or i32 %637, %638
  %640 = call i32 @WREG32(i64 %635, i32 %639)
  %641 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %642 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %641, i32 0, i32 1
  %643 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %642, i32 0, i32 0
  %644 = load i32, i32* %643, align 8
  store i32 %644, i32* %28, align 4
  %645 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %646 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %645, i32 0, i32 1
  %647 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %646, i32 0, i32 1
  %648 = load i32, i32* %647, align 4
  %649 = add nsw i32 %648, 1
  %650 = and i32 %649, -2
  store i32 %650, i32* %29, align 4
  %651 = load %struct.radeon_device*, %struct.radeon_device** %14, align 8
  %652 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %651, i32 0, i32 0
  %653 = load i64, i64* %652, align 8
  %654 = load i64, i64* @CHIP_BONAIRE, align 8
  %655 = icmp sge i64 %653, %654
  br i1 %655, label %656, label %667

656:                                              ; preds = %626
  %657 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %658 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %657, i32 0, i32 1
  %659 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %658, i32 0, i32 2
  %660 = load i32, i32* %659, align 8
  %661 = load i32, i32* @DRM_MODE_FLAG_INTERLACE, align 4
  %662 = and i32 %660, %661
  %663 = icmp ne i32 %662, 0
  br i1 %663, label %664, label %667

664:                                              ; preds = %656
  %665 = load i32, i32* %29, align 4
  %666 = mul nsw i32 %665, 2
  store i32 %666, i32* %29, align 4
  br label %667

667:                                              ; preds = %664, %656, %626
  %668 = load i64, i64* @EVERGREEN_VIEWPORT_SIZE, align 8
  %669 = load %struct.radeon_crtc*, %struct.radeon_crtc** %12, align 8
  %670 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %669, i32 0, i32 1
  %671 = load i64, i64* %670, align 8
  %672 = add nsw i64 %668, %671
  %673 = load i32, i32* %28, align 4
  %674 = shl i32 %673, 16
  %675 = load i32, i32* %29, align 4
  %676 = or i32 %674, %675
  %677 = call i32 @WREG32(i64 %672, i32 %676)
  %678 = load i64, i64* @EVERGREEN_MASTER_UPDATE_MODE, align 8
  %679 = load %struct.radeon_crtc*, %struct.radeon_crtc** %12, align 8
  %680 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %679, i32 0, i32 1
  %681 = load i64, i64* %680, align 8
  %682 = add nsw i64 %678, %681
  %683 = call i32 @WREG32(i64 %682, i32 0)
  %684 = load i32, i32* %11, align 4
  %685 = icmp ne i32 %684, 0
  br i1 %685, label %718, label %686

686:                                              ; preds = %667
  %687 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %688 = icmp ne %struct.drm_framebuffer* %687, null
  br i1 %688, label %689, label %718

689:                                              ; preds = %686
  %690 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %691 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %692 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %691, i32 0, i32 0
  %693 = load %struct.TYPE_16__*, %struct.TYPE_16__** %692, align 8
  %694 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %693, i32 0, i32 0
  %695 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %694, align 8
  %696 = icmp ne %struct.drm_framebuffer* %690, %695
  br i1 %696, label %697, label %718

697:                                              ; preds = %689
  %698 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %699 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %698, i32 0, i32 3
  %700 = load %struct.drm_gem_object**, %struct.drm_gem_object*** %699, align 8
  %701 = getelementptr inbounds %struct.drm_gem_object*, %struct.drm_gem_object** %700, i64 0
  %702 = load %struct.drm_gem_object*, %struct.drm_gem_object** %701, align 8
  %703 = call %struct.radeon_bo* @gem_to_radeon_bo(%struct.drm_gem_object* %702)
  store %struct.radeon_bo* %703, %struct.radeon_bo** %17, align 8
  %704 = load %struct.radeon_bo*, %struct.radeon_bo** %17, align 8
  %705 = call i32 @radeon_bo_reserve(%struct.radeon_bo* %704, i32 0)
  store i32 %705, i32* %30, align 4
  %706 = load i32, i32* %30, align 4
  %707 = icmp ne i32 %706, 0
  %708 = zext i1 %707 to i32
  %709 = call i64 @unlikely(i32 %708)
  %710 = icmp ne i64 %709, 0
  br i1 %710, label %711, label %713

711:                                              ; preds = %697
  %712 = load i32, i32* %30, align 4
  store i32 %712, i32* %6, align 4
  br label %721

713:                                              ; preds = %697
  %714 = load %struct.radeon_bo*, %struct.radeon_bo** %17, align 8
  %715 = call i32 @radeon_bo_unpin(%struct.radeon_bo* %714)
  %716 = load %struct.radeon_bo*, %struct.radeon_bo** %17, align 8
  %717 = call i32 @radeon_bo_unreserve(%struct.radeon_bo* %716)
  br label %718

718:                                              ; preds = %713, %689, %686, %667
  %719 = load %struct.radeon_device*, %struct.radeon_device** %14, align 8
  %720 = call i32 @radeon_bandwidth_update(%struct.radeon_device* %719)
  store i32 0, i32* %6, align 4
  br label %721

721:                                              ; preds = %718, %711, %232, %177, %102, %85, %57
  %722 = load i32, i32* %6, align 4
  ret i32 %722
}

declare dso_local %struct.radeon_crtc* @to_radeon_crtc(%struct.drm_crtc*) #1

declare dso_local i32 @EVERGREEN_GRPH_ENDIAN_SWAP(i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

declare dso_local %struct.radeon_bo* @gem_to_radeon_bo(%struct.drm_gem_object*) #1

declare dso_local i32 @radeon_bo_reserve(%struct.radeon_bo*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @radeon_bo_gpu_offset(%struct.radeon_bo*) #1

declare dso_local i32 @radeon_bo_pin(%struct.radeon_bo*, i32, i64*) #1

declare dso_local i32 @radeon_bo_unreserve(%struct.radeon_bo*) #1

declare dso_local i32 @radeon_bo_get_tiling_flags(%struct.radeon_bo*, i32*, i32*) #1

declare dso_local i32 @EVERGREEN_GRPH_DEPTH(i32) #1

declare dso_local i32 @EVERGREEN_GRPH_FORMAT(i32) #1

declare dso_local i32 @EVERGREEN_GRPH_RED_CROSSBAR(i32) #1

declare dso_local i32 @EVERGREEN_GRPH_BLUE_CROSSBAR(i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32, ...) #1

declare dso_local i32 @drm_get_format_name(i32, %struct.drm_format_name_buf*) #1

declare dso_local i32 @evergreen_tiling_fields(i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @EVERGREEN_GRPH_NUM_BANKS(i32) #1

declare dso_local i32 @EVERGREEN_GRPH_ARRAY_MODE(i32) #1

declare dso_local i32 @EVERGREEN_GRPH_TILE_SPLIT(i32) #1

declare dso_local i32 @EVERGREEN_GRPH_BANK_WIDTH(i32) #1

declare dso_local i32 @EVERGREEN_GRPH_BANK_HEIGHT(i32) #1

declare dso_local i32 @EVERGREEN_GRPH_MACRO_TILE_ASPECT(i32) #1

declare dso_local i32 @CIK_GRPH_MICRO_TILE_MODE(i32) #1

declare dso_local i32 @CIK_GRPH_PIPE_CONFIG(i32) #1

declare dso_local i32 @SI_GRPH_PIPE_CONFIG(i32) #1

declare dso_local i32 @WREG32(i64, i32) #1

declare dso_local i32 @upper_32_bits(i64) #1

declare dso_local i32 @WREG32_P(i64, i32, i32) #1

declare dso_local i32 @radeon_bo_unpin(%struct.radeon_bo*) #1

declare dso_local i32 @radeon_bandwidth_update(%struct.radeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
