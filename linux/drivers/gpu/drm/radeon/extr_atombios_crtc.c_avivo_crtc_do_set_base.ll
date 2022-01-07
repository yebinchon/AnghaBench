; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_atombios_crtc.c_avivo_crtc_do_set_base.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_atombios_crtc.c_avivo_crtc_do_set_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.TYPE_5__*, %struct.TYPE_4__, %struct.drm_device* }
%struct.TYPE_5__ = type { %struct.drm_framebuffer* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { i64 }
%struct.drm_framebuffer = type { i32, i32, i32*, %struct.drm_gem_object**, %struct.TYPE_6__* }
%struct.drm_gem_object = type { i32 }
%struct.TYPE_6__ = type { i32, i32* }
%struct.radeon_crtc = type { i64, i64 }
%struct.radeon_bo = type { i32 }
%struct.drm_format_name_buf = type { i32 }

@R600_D1GRPH_SWAP_ENDIAN_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"No FB bound\0A\00", align 1
@RADEON_GEM_DOMAIN_VRAM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@AVIVO_D1GRPH_CONTROL_DEPTH_8BPP = common dso_local global i32 0, align 4
@AVIVO_D1GRPH_CONTROL_8BPP_INDEXED = common dso_local global i32 0, align 4
@AVIVO_D1GRPH_CONTROL_DEPTH_16BPP = common dso_local global i32 0, align 4
@AVIVO_D1GRPH_CONTROL_16BPP_ARGB4444 = common dso_local global i32 0, align 4
@AVIVO_D1GRPH_CONTROL_16BPP_ARGB1555 = common dso_local global i32 0, align 4
@AVIVO_D1GRPH_CONTROL_16BPP_RGB565 = common dso_local global i32 0, align 4
@AVIVO_D1GRPH_CONTROL_DEPTH_32BPP = common dso_local global i32 0, align 4
@AVIVO_D1GRPH_CONTROL_32BPP_ARGB8888 = common dso_local global i32 0, align 4
@AVIVO_D1GRPH_CONTROL_32BPP_ARGB2101010 = common dso_local global i32 0, align 4
@CHIP_R600 = common dso_local global i64 0, align 8
@R600_D1GRPH_RED_SEL_B = common dso_local global i32 0, align 4
@R600_D1GRPH_BLUE_SEL_R = common dso_local global i32 0, align 4
@AVIVO_D1GRPH_SWAP_RB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Unsupported screen format %s\0A\00", align 1
@RADEON_TILING_MACRO = common dso_local global i32 0, align 4
@R600_D1GRPH_ARRAY_MODE_2D_TILED_THIN1 = common dso_local global i32 0, align 4
@RADEON_TILING_MICRO = common dso_local global i32 0, align 4
@R600_D1GRPH_ARRAY_MODE_1D_TILED_THIN1 = common dso_local global i32 0, align 4
@AVIVO_D1GRPH_MACRO_ADDRESS_MODE = common dso_local global i32 0, align 4
@AVIVO_D1GRPH_TILED = common dso_local global i32 0, align 4
@AVIVO_D1VGA_CONTROL = common dso_local global i64 0, align 8
@AVIVO_D2VGA_CONTROL = common dso_local global i64 0, align 8
@AVIVO_D1GRPH_FLIP_CONTROL = common dso_local global i64 0, align 8
@CHIP_RV770 = common dso_local global i64 0, align 8
@R700_D2GRPH_PRIMARY_SURFACE_ADDRESS_HIGH = common dso_local global i64 0, align 8
@R700_D2GRPH_SECONDARY_SURFACE_ADDRESS_HIGH = common dso_local global i64 0, align 8
@R700_D1GRPH_PRIMARY_SURFACE_ADDRESS_HIGH = common dso_local global i64 0, align 8
@R700_D1GRPH_SECONDARY_SURFACE_ADDRESS_HIGH = common dso_local global i64 0, align 8
@AVIVO_D1GRPH_PRIMARY_SURFACE_ADDRESS = common dso_local global i64 0, align 8
@AVIVO_D1GRPH_SECONDARY_SURFACE_ADDRESS = common dso_local global i64 0, align 8
@AVIVO_D1GRPH_CONTROL = common dso_local global i64 0, align 8
@R600_D1GRPH_SWAP_CONTROL = common dso_local global i64 0, align 8
@AVIVO_D1GRPH_LUT_SEL = common dso_local global i64 0, align 8
@AVIVO_LUT_10BIT_BYPASS_EN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [50 x i8] c"Bypassing hardware LUT due to 10 bit fb scanout.\0A\00", align 1
@AVIVO_D1GRPH_SURFACE_OFFSET_X = common dso_local global i64 0, align 8
@AVIVO_D1GRPH_SURFACE_OFFSET_Y = common dso_local global i64 0, align 8
@AVIVO_D1GRPH_X_START = common dso_local global i64 0, align 8
@AVIVO_D1GRPH_Y_START = common dso_local global i64 0, align 8
@AVIVO_D1GRPH_X_END = common dso_local global i64 0, align 8
@AVIVO_D1GRPH_Y_END = common dso_local global i64 0, align 8
@AVIVO_D1GRPH_PITCH = common dso_local global i64 0, align 8
@AVIVO_D1GRPH_ENABLE = common dso_local global i64 0, align 8
@AVIVO_D1MODE_DESKTOP_HEIGHT = common dso_local global i64 0, align 8
@AVIVO_D1MODE_VIEWPORT_START = common dso_local global i64 0, align 8
@AVIVO_D1MODE_VIEWPORT_SIZE = common dso_local global i64 0, align 8
@AVIVO_D1MODE_MASTER_UPDATE_MODE = common dso_local global i64 0, align 8
@R600_D1GRPH_SWAP_ENDIAN_16BIT = common dso_local global i32 0, align 4
@R600_D1GRPH_SWAP_ENDIAN_32BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_crtc*, %struct.drm_framebuffer*, i32, i32, i32)* @avivo_crtc_do_set_base to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @avivo_crtc_do_set_base(%struct.drm_crtc* %0, %struct.drm_framebuffer* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.drm_crtc*, align 8
  %8 = alloca %struct.drm_framebuffer*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.radeon_crtc*, align 8
  %13 = alloca %struct.drm_device*, align 8
  %14 = alloca %struct.radeon_device*, align 8
  %15 = alloca %struct.drm_gem_object*, align 8
  %16 = alloca %struct.radeon_bo*, align 8
  %17 = alloca %struct.drm_framebuffer*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca %struct.drm_format_name_buf, align 4
  store %struct.drm_crtc* %0, %struct.drm_crtc** %7, align 8
  store %struct.drm_framebuffer* %1, %struct.drm_framebuffer** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %28 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %29 = call %struct.radeon_crtc* @to_radeon_crtc(%struct.drm_crtc* %28)
  store %struct.radeon_crtc* %29, %struct.radeon_crtc** %12, align 8
  %30 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %31 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %30, i32 0, i32 2
  %32 = load %struct.drm_device*, %struct.drm_device** %31, align 8
  store %struct.drm_device* %32, %struct.drm_device** %13, align 8
  %33 = load %struct.drm_device*, %struct.drm_device** %13, align 8
  %34 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %33, i32 0, i32 0
  %35 = load %struct.radeon_device*, %struct.radeon_device** %34, align 8
  store %struct.radeon_device* %35, %struct.radeon_device** %14, align 8
  %36 = load i32, i32* @R600_D1GRPH_SWAP_ENDIAN_NONE, align 4
  store i32 %36, i32* %22, align 4
  store i32 0, i32* %26, align 4
  %37 = load i32, i32* %11, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %48, label %39

39:                                               ; preds = %5
  %40 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %41 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %40, i32 0, i32 0
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %43, align 8
  %45 = icmp ne %struct.drm_framebuffer* %44, null
  br i1 %45, label %48, label %46

46:                                               ; preds = %39
  %47 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %465

48:                                               ; preds = %39, %5
  %49 = load i32, i32* %11, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  store %struct.drm_framebuffer* %52, %struct.drm_framebuffer** %17, align 8
  br label %59

53:                                               ; preds = %48
  %54 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %55 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %54, i32 0, i32 0
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %57, align 8
  store %struct.drm_framebuffer* %58, %struct.drm_framebuffer** %17, align 8
  br label %59

59:                                               ; preds = %53, %51
  %60 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %17, align 8
  %61 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %60, i32 0, i32 3
  %62 = load %struct.drm_gem_object**, %struct.drm_gem_object*** %61, align 8
  %63 = getelementptr inbounds %struct.drm_gem_object*, %struct.drm_gem_object** %62, i64 0
  %64 = load %struct.drm_gem_object*, %struct.drm_gem_object** %63, align 8
  store %struct.drm_gem_object* %64, %struct.drm_gem_object** %15, align 8
  %65 = load %struct.drm_gem_object*, %struct.drm_gem_object** %15, align 8
  %66 = call %struct.radeon_bo* @gem_to_radeon_bo(%struct.drm_gem_object* %65)
  store %struct.radeon_bo* %66, %struct.radeon_bo** %16, align 8
  %67 = load %struct.radeon_bo*, %struct.radeon_bo** %16, align 8
  %68 = call i32 @radeon_bo_reserve(%struct.radeon_bo* %67, i32 0)
  store i32 %68, i32* %25, align 4
  %69 = load i32, i32* %25, align 4
  %70 = icmp ne i32 %69, 0
  %71 = zext i1 %70 to i32
  %72 = call i64 @unlikely(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %59
  %75 = load i32, i32* %25, align 4
  store i32 %75, i32* %6, align 4
  br label %465

76:                                               ; preds = %59
  %77 = load i32, i32* %11, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %76
  %80 = load %struct.radeon_bo*, %struct.radeon_bo** %16, align 8
  %81 = call i64 @radeon_bo_gpu_offset(%struct.radeon_bo* %80)
  store i64 %81, i64* %18, align 8
  br label %97

82:                                               ; preds = %76
  %83 = load %struct.radeon_bo*, %struct.radeon_bo** %16, align 8
  %84 = load i32, i32* @RADEON_GEM_DOMAIN_VRAM, align 4
  %85 = call i32 @radeon_bo_pin(%struct.radeon_bo* %83, i32 %84, i64* %18)
  store i32 %85, i32* %25, align 4
  %86 = load i32, i32* %25, align 4
  %87 = icmp ne i32 %86, 0
  %88 = zext i1 %87 to i32
  %89 = call i64 @unlikely(i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %82
  %92 = load %struct.radeon_bo*, %struct.radeon_bo** %16, align 8
  %93 = call i32 @radeon_bo_unreserve(%struct.radeon_bo* %92)
  %94 = load i32, i32* @EINVAL, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %6, align 4
  br label %465

96:                                               ; preds = %82
  br label %97

97:                                               ; preds = %96, %79
  %98 = load %struct.radeon_bo*, %struct.radeon_bo** %16, align 8
  %99 = call i32 @radeon_bo_get_tiling_flags(%struct.radeon_bo* %98, i32* %21, i32* null)
  %100 = load %struct.radeon_bo*, %struct.radeon_bo** %16, align 8
  %101 = call i32 @radeon_bo_unreserve(%struct.radeon_bo* %100)
  %102 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %17, align 8
  %103 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %102, i32 0, i32 4
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  switch i32 %106, label %151 [
    i32 134, label %107
    i32 129, label %111
    i32 136, label %111
    i32 131, label %115
    i32 133, label %119
    i32 128, label %123
    i32 135, label %123
    i32 130, label %127
    i32 137, label %127
    i32 132, label %131
    i32 138, label %131
  ]

107:                                              ; preds = %97
  %108 = load i32, i32* @AVIVO_D1GRPH_CONTROL_DEPTH_8BPP, align 4
  %109 = load i32, i32* @AVIVO_D1GRPH_CONTROL_8BPP_INDEXED, align 4
  %110 = or i32 %108, %109
  store i32 %110, i32* %19, align 4
  br label %161

111:                                              ; preds = %97, %97
  %112 = load i32, i32* @AVIVO_D1GRPH_CONTROL_DEPTH_16BPP, align 4
  %113 = load i32, i32* @AVIVO_D1GRPH_CONTROL_16BPP_ARGB4444, align 4
  %114 = or i32 %112, %113
  store i32 %114, i32* %19, align 4
  br label %161

115:                                              ; preds = %97
  %116 = load i32, i32* @AVIVO_D1GRPH_CONTROL_DEPTH_16BPP, align 4
  %117 = load i32, i32* @AVIVO_D1GRPH_CONTROL_16BPP_ARGB1555, align 4
  %118 = or i32 %116, %117
  store i32 %118, i32* %19, align 4
  br label %161

119:                                              ; preds = %97
  %120 = load i32, i32* @AVIVO_D1GRPH_CONTROL_DEPTH_16BPP, align 4
  %121 = load i32, i32* @AVIVO_D1GRPH_CONTROL_16BPP_RGB565, align 4
  %122 = or i32 %120, %121
  store i32 %122, i32* %19, align 4
  br label %161

123:                                              ; preds = %97, %97
  %124 = load i32, i32* @AVIVO_D1GRPH_CONTROL_DEPTH_32BPP, align 4
  %125 = load i32, i32* @AVIVO_D1GRPH_CONTROL_32BPP_ARGB8888, align 4
  %126 = or i32 %124, %125
  store i32 %126, i32* %19, align 4
  br label %161

127:                                              ; preds = %97, %97
  %128 = load i32, i32* @AVIVO_D1GRPH_CONTROL_DEPTH_32BPP, align 4
  %129 = load i32, i32* @AVIVO_D1GRPH_CONTROL_32BPP_ARGB2101010, align 4
  %130 = or i32 %128, %129
  store i32 %130, i32* %19, align 4
  store i32 1, i32* %26, align 4
  br label %161

131:                                              ; preds = %97, %97
  %132 = load i32, i32* @AVIVO_D1GRPH_CONTROL_DEPTH_32BPP, align 4
  %133 = load i32, i32* @AVIVO_D1GRPH_CONTROL_32BPP_ARGB8888, align 4
  %134 = or i32 %132, %133
  store i32 %134, i32* %19, align 4
  %135 = load %struct.radeon_device*, %struct.radeon_device** %14, align 8
  %136 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @CHIP_R600, align 8
  %139 = icmp sge i64 %137, %138
  br i1 %139, label %140, label %146

140:                                              ; preds = %131
  %141 = load i32, i32* @R600_D1GRPH_RED_SEL_B, align 4
  %142 = call i32 @R600_D1GRPH_RED_CROSSBAR(i32 %141)
  %143 = load i32, i32* @R600_D1GRPH_BLUE_SEL_R, align 4
  %144 = call i32 @R600_D1GRPH_BLUE_CROSSBAR(i32 %143)
  %145 = or i32 %142, %144
  store i32 %145, i32* %22, align 4
  br label %150

146:                                              ; preds = %131
  %147 = load i32, i32* @AVIVO_D1GRPH_SWAP_RB, align 4
  %148 = load i32, i32* %19, align 4
  %149 = or i32 %148, %147
  store i32 %149, i32* %19, align 4
  br label %150

150:                                              ; preds = %146, %140
  br label %161

151:                                              ; preds = %97
  %152 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %17, align 8
  %153 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %152, i32 0, i32 4
  %154 = load %struct.TYPE_6__*, %struct.TYPE_6__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = call i32 @drm_get_format_name(i32 %156, %struct.drm_format_name_buf* %27)
  %158 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %157)
  %159 = load i32, i32* @EINVAL, align 4
  %160 = sub nsw i32 0, %159
  store i32 %160, i32* %6, align 4
  br label %465

161:                                              ; preds = %150, %127, %123, %119, %115, %111, %107
  %162 = load %struct.radeon_device*, %struct.radeon_device** %14, align 8
  %163 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* @CHIP_R600, align 8
  %166 = icmp sge i64 %164, %165
  br i1 %166, label %167, label %187

167:                                              ; preds = %161
  %168 = load i32, i32* %21, align 4
  %169 = load i32, i32* @RADEON_TILING_MACRO, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %176

172:                                              ; preds = %167
  %173 = load i32, i32* @R600_D1GRPH_ARRAY_MODE_2D_TILED_THIN1, align 4
  %174 = load i32, i32* %19, align 4
  %175 = or i32 %174, %173
  store i32 %175, i32* %19, align 4
  br label %186

176:                                              ; preds = %167
  %177 = load i32, i32* %21, align 4
  %178 = load i32, i32* @RADEON_TILING_MICRO, align 4
  %179 = and i32 %177, %178
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %185

181:                                              ; preds = %176
  %182 = load i32, i32* @R600_D1GRPH_ARRAY_MODE_1D_TILED_THIN1, align 4
  %183 = load i32, i32* %19, align 4
  %184 = or i32 %183, %182
  store i32 %184, i32* %19, align 4
  br label %185

185:                                              ; preds = %181, %176
  br label %186

186:                                              ; preds = %185, %172
  br label %206

187:                                              ; preds = %161
  %188 = load i32, i32* %21, align 4
  %189 = load i32, i32* @RADEON_TILING_MACRO, align 4
  %190 = and i32 %188, %189
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %196

192:                                              ; preds = %187
  %193 = load i32, i32* @AVIVO_D1GRPH_MACRO_ADDRESS_MODE, align 4
  %194 = load i32, i32* %19, align 4
  %195 = or i32 %194, %193
  store i32 %195, i32* %19, align 4
  br label %196

196:                                              ; preds = %192, %187
  %197 = load i32, i32* %21, align 4
  %198 = load i32, i32* @RADEON_TILING_MICRO, align 4
  %199 = and i32 %197, %198
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %205

201:                                              ; preds = %196
  %202 = load i32, i32* @AVIVO_D1GRPH_TILED, align 4
  %203 = load i32, i32* %19, align 4
  %204 = or i32 %203, %202
  store i32 %204, i32* %19, align 4
  br label %205

205:                                              ; preds = %201, %196
  br label %206

206:                                              ; preds = %205, %186
  %207 = load %struct.radeon_crtc*, %struct.radeon_crtc** %12, align 8
  %208 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %207, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  %210 = icmp eq i64 %209, 0
  br i1 %210, label %211, label %214

211:                                              ; preds = %206
  %212 = load i64, i64* @AVIVO_D1VGA_CONTROL, align 8
  %213 = call i32 @WREG32(i64 %212, i32 0)
  br label %217

214:                                              ; preds = %206
  %215 = load i64, i64* @AVIVO_D2VGA_CONTROL, align 8
  %216 = call i32 @WREG32(i64 %215, i32 0)
  br label %217

217:                                              ; preds = %214, %211
  %218 = load i64, i64* @AVIVO_D1GRPH_FLIP_CONTROL, align 8
  %219 = load %struct.radeon_crtc*, %struct.radeon_crtc** %12, align 8
  %220 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %219, i32 0, i32 1
  %221 = load i64, i64* %220, align 8
  %222 = add nsw i64 %218, %221
  %223 = call i32 @WREG32(i64 %222, i32 0)
  %224 = load %struct.radeon_device*, %struct.radeon_device** %14, align 8
  %225 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %224, i32 0, i32 0
  %226 = load i64, i64* %225, align 8
  %227 = load i64, i64* @CHIP_RV770, align 8
  %228 = icmp sge i64 %226, %227
  br i1 %228, label %229, label %253

229:                                              ; preds = %217
  %230 = load %struct.radeon_crtc*, %struct.radeon_crtc** %12, align 8
  %231 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %230, i32 0, i32 0
  %232 = load i64, i64* %231, align 8
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %243

234:                                              ; preds = %229
  %235 = load i64, i64* @R700_D2GRPH_PRIMARY_SURFACE_ADDRESS_HIGH, align 8
  %236 = load i64, i64* %18, align 8
  %237 = call i32 @upper_32_bits(i64 %236)
  %238 = call i32 @WREG32(i64 %235, i32 %237)
  %239 = load i64, i64* @R700_D2GRPH_SECONDARY_SURFACE_ADDRESS_HIGH, align 8
  %240 = load i64, i64* %18, align 8
  %241 = call i32 @upper_32_bits(i64 %240)
  %242 = call i32 @WREG32(i64 %239, i32 %241)
  br label %252

243:                                              ; preds = %229
  %244 = load i64, i64* @R700_D1GRPH_PRIMARY_SURFACE_ADDRESS_HIGH, align 8
  %245 = load i64, i64* %18, align 8
  %246 = call i32 @upper_32_bits(i64 %245)
  %247 = call i32 @WREG32(i64 %244, i32 %246)
  %248 = load i64, i64* @R700_D1GRPH_SECONDARY_SURFACE_ADDRESS_HIGH, align 8
  %249 = load i64, i64* %18, align 8
  %250 = call i32 @upper_32_bits(i64 %249)
  %251 = call i32 @WREG32(i64 %248, i32 %250)
  br label %252

252:                                              ; preds = %243, %234
  br label %253

253:                                              ; preds = %252, %217
  %254 = load i64, i64* @AVIVO_D1GRPH_PRIMARY_SURFACE_ADDRESS, align 8
  %255 = load %struct.radeon_crtc*, %struct.radeon_crtc** %12, align 8
  %256 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %255, i32 0, i32 1
  %257 = load i64, i64* %256, align 8
  %258 = add nsw i64 %254, %257
  %259 = load i64, i64* %18, align 8
  %260 = trunc i64 %259 to i32
  %261 = call i32 @WREG32(i64 %258, i32 %260)
  %262 = load i64, i64* @AVIVO_D1GRPH_SECONDARY_SURFACE_ADDRESS, align 8
  %263 = load %struct.radeon_crtc*, %struct.radeon_crtc** %12, align 8
  %264 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %263, i32 0, i32 1
  %265 = load i64, i64* %264, align 8
  %266 = add nsw i64 %262, %265
  %267 = load i64, i64* %18, align 8
  %268 = trunc i64 %267 to i32
  %269 = call i32 @WREG32(i64 %266, i32 %268)
  %270 = load i64, i64* @AVIVO_D1GRPH_CONTROL, align 8
  %271 = load %struct.radeon_crtc*, %struct.radeon_crtc** %12, align 8
  %272 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %271, i32 0, i32 1
  %273 = load i64, i64* %272, align 8
  %274 = add nsw i64 %270, %273
  %275 = load i32, i32* %19, align 4
  %276 = call i32 @WREG32(i64 %274, i32 %275)
  %277 = load %struct.radeon_device*, %struct.radeon_device** %14, align 8
  %278 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %277, i32 0, i32 0
  %279 = load i64, i64* %278, align 8
  %280 = load i64, i64* @CHIP_R600, align 8
  %281 = icmp sge i64 %279, %280
  br i1 %281, label %282, label %290

282:                                              ; preds = %253
  %283 = load i64, i64* @R600_D1GRPH_SWAP_CONTROL, align 8
  %284 = load %struct.radeon_crtc*, %struct.radeon_crtc** %12, align 8
  %285 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %284, i32 0, i32 1
  %286 = load i64, i64* %285, align 8
  %287 = add nsw i64 %283, %286
  %288 = load i32, i32* %22, align 4
  %289 = call i32 @WREG32(i64 %287, i32 %288)
  br label %290

290:                                              ; preds = %282, %253
  %291 = load i64, i64* @AVIVO_D1GRPH_LUT_SEL, align 8
  %292 = load %struct.radeon_crtc*, %struct.radeon_crtc** %12, align 8
  %293 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %292, i32 0, i32 1
  %294 = load i64, i64* %293, align 8
  %295 = add nsw i64 %291, %294
  %296 = load i32, i32* %26, align 4
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %298, label %300

298:                                              ; preds = %290
  %299 = load i32, i32* @AVIVO_LUT_10BIT_BYPASS_EN, align 4
  br label %301

300:                                              ; preds = %290
  br label %301

301:                                              ; preds = %300, %298
  %302 = phi i32 [ %299, %298 ], [ 0, %300 ]
  %303 = load i32, i32* @AVIVO_LUT_10BIT_BYPASS_EN, align 4
  %304 = xor i32 %303, -1
  %305 = call i32 @WREG32_P(i64 %295, i32 %302, i32 %304)
  %306 = load i32, i32* %26, align 4
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %308, label %310

308:                                              ; preds = %301
  %309 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0))
  br label %310

310:                                              ; preds = %308, %301
  %311 = load i64, i64* @AVIVO_D1GRPH_SURFACE_OFFSET_X, align 8
  %312 = load %struct.radeon_crtc*, %struct.radeon_crtc** %12, align 8
  %313 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %312, i32 0, i32 1
  %314 = load i64, i64* %313, align 8
  %315 = add nsw i64 %311, %314
  %316 = call i32 @WREG32(i64 %315, i32 0)
  %317 = load i64, i64* @AVIVO_D1GRPH_SURFACE_OFFSET_Y, align 8
  %318 = load %struct.radeon_crtc*, %struct.radeon_crtc** %12, align 8
  %319 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %318, i32 0, i32 1
  %320 = load i64, i64* %319, align 8
  %321 = add nsw i64 %317, %320
  %322 = call i32 @WREG32(i64 %321, i32 0)
  %323 = load i64, i64* @AVIVO_D1GRPH_X_START, align 8
  %324 = load %struct.radeon_crtc*, %struct.radeon_crtc** %12, align 8
  %325 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %324, i32 0, i32 1
  %326 = load i64, i64* %325, align 8
  %327 = add nsw i64 %323, %326
  %328 = call i32 @WREG32(i64 %327, i32 0)
  %329 = load i64, i64* @AVIVO_D1GRPH_Y_START, align 8
  %330 = load %struct.radeon_crtc*, %struct.radeon_crtc** %12, align 8
  %331 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %330, i32 0, i32 1
  %332 = load i64, i64* %331, align 8
  %333 = add nsw i64 %329, %332
  %334 = call i32 @WREG32(i64 %333, i32 0)
  %335 = load i64, i64* @AVIVO_D1GRPH_X_END, align 8
  %336 = load %struct.radeon_crtc*, %struct.radeon_crtc** %12, align 8
  %337 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %336, i32 0, i32 1
  %338 = load i64, i64* %337, align 8
  %339 = add nsw i64 %335, %338
  %340 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %17, align 8
  %341 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %340, i32 0, i32 0
  %342 = load i32, i32* %341, align 8
  %343 = call i32 @WREG32(i64 %339, i32 %342)
  %344 = load i64, i64* @AVIVO_D1GRPH_Y_END, align 8
  %345 = load %struct.radeon_crtc*, %struct.radeon_crtc** %12, align 8
  %346 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %345, i32 0, i32 1
  %347 = load i64, i64* %346, align 8
  %348 = add nsw i64 %344, %347
  %349 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %17, align 8
  %350 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %349, i32 0, i32 1
  %351 = load i32, i32* %350, align 4
  %352 = call i32 @WREG32(i64 %348, i32 %351)
  %353 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %17, align 8
  %354 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %353, i32 0, i32 2
  %355 = load i32*, i32** %354, align 8
  %356 = getelementptr inbounds i32, i32* %355, i64 0
  %357 = load i32, i32* %356, align 4
  %358 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %17, align 8
  %359 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %358, i32 0, i32 4
  %360 = load %struct.TYPE_6__*, %struct.TYPE_6__** %359, align 8
  %361 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %360, i32 0, i32 1
  %362 = load i32*, i32** %361, align 8
  %363 = getelementptr inbounds i32, i32* %362, i64 0
  %364 = load i32, i32* %363, align 4
  %365 = sdiv i32 %357, %364
  store i32 %365, i32* %20, align 4
  %366 = load i64, i64* @AVIVO_D1GRPH_PITCH, align 8
  %367 = load %struct.radeon_crtc*, %struct.radeon_crtc** %12, align 8
  %368 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %367, i32 0, i32 1
  %369 = load i64, i64* %368, align 8
  %370 = add nsw i64 %366, %369
  %371 = load i32, i32* %20, align 4
  %372 = call i32 @WREG32(i64 %370, i32 %371)
  %373 = load i64, i64* @AVIVO_D1GRPH_ENABLE, align 8
  %374 = load %struct.radeon_crtc*, %struct.radeon_crtc** %12, align 8
  %375 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %374, i32 0, i32 1
  %376 = load i64, i64* %375, align 8
  %377 = add nsw i64 %373, %376
  %378 = call i32 @WREG32(i64 %377, i32 1)
  %379 = load i64, i64* @AVIVO_D1MODE_DESKTOP_HEIGHT, align 8
  %380 = load %struct.radeon_crtc*, %struct.radeon_crtc** %12, align 8
  %381 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %380, i32 0, i32 1
  %382 = load i64, i64* %381, align 8
  %383 = add nsw i64 %379, %382
  %384 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %17, align 8
  %385 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %384, i32 0, i32 1
  %386 = load i32, i32* %385, align 4
  %387 = call i32 @WREG32(i64 %383, i32 %386)
  %388 = load i32, i32* %9, align 4
  %389 = and i32 %388, -4
  store i32 %389, i32* %9, align 4
  %390 = load i32, i32* %10, align 4
  %391 = and i32 %390, -2
  store i32 %391, i32* %10, align 4
  %392 = load i64, i64* @AVIVO_D1MODE_VIEWPORT_START, align 8
  %393 = load %struct.radeon_crtc*, %struct.radeon_crtc** %12, align 8
  %394 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %393, i32 0, i32 1
  %395 = load i64, i64* %394, align 8
  %396 = add nsw i64 %392, %395
  %397 = load i32, i32* %9, align 4
  %398 = shl i32 %397, 16
  %399 = load i32, i32* %10, align 4
  %400 = or i32 %398, %399
  %401 = call i32 @WREG32(i64 %396, i32 %400)
  %402 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %403 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %402, i32 0, i32 1
  %404 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %403, i32 0, i32 0
  %405 = load i32, i32* %404, align 8
  store i32 %405, i32* %23, align 4
  %406 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %407 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %406, i32 0, i32 1
  %408 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %407, i32 0, i32 1
  %409 = load i32, i32* %408, align 4
  %410 = add nsw i32 %409, 1
  %411 = and i32 %410, -2
  store i32 %411, i32* %24, align 4
  %412 = load i64, i64* @AVIVO_D1MODE_VIEWPORT_SIZE, align 8
  %413 = load %struct.radeon_crtc*, %struct.radeon_crtc** %12, align 8
  %414 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %413, i32 0, i32 1
  %415 = load i64, i64* %414, align 8
  %416 = add nsw i64 %412, %415
  %417 = load i32, i32* %23, align 4
  %418 = shl i32 %417, 16
  %419 = load i32, i32* %24, align 4
  %420 = or i32 %418, %419
  %421 = call i32 @WREG32(i64 %416, i32 %420)
  %422 = load i64, i64* @AVIVO_D1MODE_MASTER_UPDATE_MODE, align 8
  %423 = load %struct.radeon_crtc*, %struct.radeon_crtc** %12, align 8
  %424 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %423, i32 0, i32 1
  %425 = load i64, i64* %424, align 8
  %426 = add nsw i64 %422, %425
  %427 = call i32 @WREG32(i64 %426, i32 3)
  %428 = load i32, i32* %11, align 4
  %429 = icmp ne i32 %428, 0
  br i1 %429, label %462, label %430

430:                                              ; preds = %310
  %431 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %432 = icmp ne %struct.drm_framebuffer* %431, null
  br i1 %432, label %433, label %462

433:                                              ; preds = %430
  %434 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %435 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %436 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %435, i32 0, i32 0
  %437 = load %struct.TYPE_5__*, %struct.TYPE_5__** %436, align 8
  %438 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %437, i32 0, i32 0
  %439 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %438, align 8
  %440 = icmp ne %struct.drm_framebuffer* %434, %439
  br i1 %440, label %441, label %462

441:                                              ; preds = %433
  %442 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %443 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %442, i32 0, i32 3
  %444 = load %struct.drm_gem_object**, %struct.drm_gem_object*** %443, align 8
  %445 = getelementptr inbounds %struct.drm_gem_object*, %struct.drm_gem_object** %444, i64 0
  %446 = load %struct.drm_gem_object*, %struct.drm_gem_object** %445, align 8
  %447 = call %struct.radeon_bo* @gem_to_radeon_bo(%struct.drm_gem_object* %446)
  store %struct.radeon_bo* %447, %struct.radeon_bo** %16, align 8
  %448 = load %struct.radeon_bo*, %struct.radeon_bo** %16, align 8
  %449 = call i32 @radeon_bo_reserve(%struct.radeon_bo* %448, i32 0)
  store i32 %449, i32* %25, align 4
  %450 = load i32, i32* %25, align 4
  %451 = icmp ne i32 %450, 0
  %452 = zext i1 %451 to i32
  %453 = call i64 @unlikely(i32 %452)
  %454 = icmp ne i64 %453, 0
  br i1 %454, label %455, label %457

455:                                              ; preds = %441
  %456 = load i32, i32* %25, align 4
  store i32 %456, i32* %6, align 4
  br label %465

457:                                              ; preds = %441
  %458 = load %struct.radeon_bo*, %struct.radeon_bo** %16, align 8
  %459 = call i32 @radeon_bo_unpin(%struct.radeon_bo* %458)
  %460 = load %struct.radeon_bo*, %struct.radeon_bo** %16, align 8
  %461 = call i32 @radeon_bo_unreserve(%struct.radeon_bo* %460)
  br label %462

462:                                              ; preds = %457, %433, %430, %310
  %463 = load %struct.radeon_device*, %struct.radeon_device** %14, align 8
  %464 = call i32 @radeon_bandwidth_update(%struct.radeon_device* %463)
  store i32 0, i32* %6, align 4
  br label %465

465:                                              ; preds = %462, %455, %151, %91, %74, %46
  %466 = load i32, i32* %6, align 4
  ret i32 %466
}

declare dso_local %struct.radeon_crtc* @to_radeon_crtc(%struct.drm_crtc*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

declare dso_local %struct.radeon_bo* @gem_to_radeon_bo(%struct.drm_gem_object*) #1

declare dso_local i32 @radeon_bo_reserve(%struct.radeon_bo*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @radeon_bo_gpu_offset(%struct.radeon_bo*) #1

declare dso_local i32 @radeon_bo_pin(%struct.radeon_bo*, i32, i64*) #1

declare dso_local i32 @radeon_bo_unreserve(%struct.radeon_bo*) #1

declare dso_local i32 @radeon_bo_get_tiling_flags(%struct.radeon_bo*, i32*, i32*) #1

declare dso_local i32 @R600_D1GRPH_RED_CROSSBAR(i32) #1

declare dso_local i32 @R600_D1GRPH_BLUE_CROSSBAR(i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local i32 @drm_get_format_name(i32, %struct.drm_format_name_buf*) #1

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
