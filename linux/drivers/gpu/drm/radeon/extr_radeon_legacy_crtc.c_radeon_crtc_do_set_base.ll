; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_legacy_crtc.c_radeon_crtc_do_set_base.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_legacy_crtc.c_radeon_crtc_do_set_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.TYPE_4__*, %struct.drm_device* }
%struct.TYPE_4__ = type { %struct.drm_framebuffer* }
%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.drm_framebuffer = type { i32*, %struct.drm_gem_object**, %struct.TYPE_6__* }
%struct.drm_gem_object = type { i32 }
%struct.TYPE_6__ = type { i32* }
%struct.radeon_crtc = type { i32, i32, i32 }
%struct.radeon_bo = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"No FB bound\0A\00", align 1
@RADEON_GEM_DOMAIN_VRAM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@RADEON_TILING_MICRO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"trying to scanout microtiled buffer\0A\00", align 1
@RADEON_CRTC_GUI_TRIG_OFFSET_LEFT_EN = common dso_local global i32 0, align 4
@RADEON_TILING_MACRO = common dso_local global i32 0, align 4
@R300_CRTC_X_Y_MODE_EN = common dso_local global i32 0, align 4
@R300_CRTC_MICRO_TILE_BUFFER_DIS = common dso_local global i32 0, align 4
@R300_CRTC_MACRO_TILE_EN = common dso_local global i32 0, align 4
@RADEON_CRTC_TILE_EN = common dso_local global i32 0, align 4
@RADEON_CRTC2_GEN_CNTL = common dso_local global i32 0, align 4
@RADEON_CRTC_GEN_CNTL = common dso_local global i32 0, align 4
@RADEON_CRTC_VSTAT_MODE_MASK = common dso_local global i32 0, align 4
@RADEON_DISPLAY_BASE_ADDR = common dso_local global i32 0, align 4
@R300_CRTC2_TILE_X0_Y0 = common dso_local global i32 0, align 4
@R300_CRTC_TILE_X0_Y0 = common dso_local global i32 0, align 4
@RADEON_CRTC_OFFSET_CNTL = common dso_local global i32 0, align 4
@RADEON_CRTC_OFFSET = common dso_local global i32 0, align 4
@RADEON_CRTC_PITCH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_crtc_do_set_base(%struct.drm_crtc* %0, %struct.drm_framebuffer* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.drm_crtc*, align 8
  %8 = alloca %struct.drm_framebuffer*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.drm_device*, align 8
  %13 = alloca %struct.radeon_device*, align 8
  %14 = alloca %struct.radeon_crtc*, align 8
  %15 = alloca %struct.drm_framebuffer*, align 8
  %16 = alloca %struct.drm_gem_object*, align 8
  %17 = alloca %struct.radeon_bo*, align 8
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
  %29 = alloca %struct.radeon_bo*, align 8
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  store %struct.drm_crtc* %0, %struct.drm_crtc** %7, align 8
  store %struct.drm_framebuffer* %1, %struct.drm_framebuffer** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %35 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %36 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %35, i32 0, i32 1
  %37 = load %struct.drm_device*, %struct.drm_device** %36, align 8
  store %struct.drm_device* %37, %struct.drm_device** %12, align 8
  %38 = load %struct.drm_device*, %struct.drm_device** %12, align 8
  %39 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %38, i32 0, i32 0
  %40 = load %struct.radeon_device*, %struct.radeon_device** %39, align 8
  store %struct.radeon_device* %40, %struct.radeon_device** %13, align 8
  %41 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %42 = call %struct.radeon_crtc* @to_radeon_crtc(%struct.drm_crtc* %41)
  store %struct.radeon_crtc* %42, %struct.radeon_crtc** %14, align 8
  store i32 0, i32* %21, align 4
  %43 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %44 = load i32, i32* %11, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %55, label %46

46:                                               ; preds = %5
  %47 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %48 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %47, i32 0, i32 0
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %50, align 8
  %52 = icmp ne %struct.drm_framebuffer* %51, null
  br i1 %52, label %55, label %53

53:                                               ; preds = %46
  %54 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %451

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
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %64, align 8
  store %struct.drm_framebuffer* %65, %struct.drm_framebuffer** %15, align 8
  br label %66

66:                                               ; preds = %60, %58
  %67 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %15, align 8
  %68 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %67, i32 0, i32 2
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 0
  %73 = load i32, i32* %72, align 4
  %74 = mul nsw i32 %73, 8
  switch i32 %74, label %80 [
    i32 8, label %75
    i32 15, label %76
    i32 16, label %77
    i32 24, label %78
    i32 32, label %79
  ]

75:                                               ; preds = %66
  store i32 2, i32* %25, align 4
  br label %81

76:                                               ; preds = %66
  store i32 3, i32* %25, align 4
  br label %81

77:                                               ; preds = %66
  store i32 4, i32* %25, align 4
  br label %81

78:                                               ; preds = %66
  store i32 5, i32* %25, align 4
  br label %81

79:                                               ; preds = %66
  store i32 6, i32* %25, align 4
  br label %81

80:                                               ; preds = %66
  store i32 0, i32* %6, align 4
  br label %451

81:                                               ; preds = %79, %78, %77, %76, %75
  %82 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %15, align 8
  %83 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %82, i32 0, i32 1
  %84 = load %struct.drm_gem_object**, %struct.drm_gem_object*** %83, align 8
  %85 = getelementptr inbounds %struct.drm_gem_object*, %struct.drm_gem_object** %84, i64 0
  %86 = load %struct.drm_gem_object*, %struct.drm_gem_object** %85, align 8
  store %struct.drm_gem_object* %86, %struct.drm_gem_object** %16, align 8
  %87 = load %struct.drm_gem_object*, %struct.drm_gem_object** %16, align 8
  %88 = call %struct.radeon_bo* @gem_to_radeon_bo(%struct.drm_gem_object* %87)
  store %struct.radeon_bo* %88, %struct.radeon_bo** %17, align 8
  br label %89

89:                                               ; preds = %142, %81
  %90 = load %struct.radeon_bo*, %struct.radeon_bo** %17, align 8
  %91 = call i32 @radeon_bo_reserve(%struct.radeon_bo* %90, i32 0)
  store i32 %91, i32* %28, align 4
  %92 = load i32, i32* %28, align 4
  %93 = icmp ne i32 %92, 0
  %94 = zext i1 %93 to i32
  %95 = call i64 @unlikely(i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %89
  %98 = load i32, i32* %28, align 4
  store i32 %98, i32* %6, align 4
  br label %451

99:                                               ; preds = %89
  %100 = load %struct.radeon_bo*, %struct.radeon_bo** %17, align 8
  %101 = load i32, i32* @RADEON_GEM_DOMAIN_VRAM, align 4
  %102 = call i32 @radeon_bo_pin_restricted(%struct.radeon_bo* %100, i32 %101, i32 134217728, i32* %18)
  store i32 %102, i32* %28, align 4
  %103 = load i32, i32* %28, align 4
  %104 = icmp ne i32 %103, 0
  %105 = zext i1 %104 to i32
  %106 = call i64 @unlikely(i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %151

108:                                              ; preds = %99
  %109 = load %struct.radeon_bo*, %struct.radeon_bo** %17, align 8
  %110 = call i32 @radeon_bo_unreserve(%struct.radeon_bo* %109)
  %111 = load i32, i32* %11, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %148, label %113

113:                                              ; preds = %108
  %114 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %115 = icmp ne %struct.drm_framebuffer* %114, null
  br i1 %115, label %116, label %148

116:                                              ; preds = %113
  %117 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %118 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %119 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %118, i32 0, i32 0
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  %122 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %121, align 8
  %123 = icmp ne %struct.drm_framebuffer* %117, %122
  br i1 %123, label %124, label %148

124:                                              ; preds = %116
  %125 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %126 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %125, i32 0, i32 1
  %127 = load %struct.drm_gem_object**, %struct.drm_gem_object*** %126, align 8
  %128 = getelementptr inbounds %struct.drm_gem_object*, %struct.drm_gem_object** %127, i64 0
  %129 = load %struct.drm_gem_object*, %struct.drm_gem_object** %128, align 8
  %130 = call %struct.radeon_bo* @gem_to_radeon_bo(%struct.drm_gem_object* %129)
  store %struct.radeon_bo* %130, %struct.radeon_bo** %29, align 8
  %131 = load %struct.radeon_bo*, %struct.radeon_bo** %29, align 8
  %132 = call i64 @radeon_bo_size(%struct.radeon_bo* %131)
  store i64 %132, i64* %31, align 8
  %133 = load %struct.radeon_bo*, %struct.radeon_bo** %17, align 8
  %134 = call i64 @radeon_bo_size(%struct.radeon_bo* %133)
  store i64 %134, i64* %30, align 8
  %135 = load i64, i64* %30, align 8
  %136 = load i64, i64* %31, align 8
  %137 = icmp ule i64 %135, %136
  br i1 %137, label %138, label %147

138:                                              ; preds = %124
  %139 = load %struct.radeon_bo*, %struct.radeon_bo** %29, align 8
  %140 = call i32 @radeon_bo_reserve(%struct.radeon_bo* %139, i32 0)
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %147, label %142

142:                                              ; preds = %138
  %143 = load %struct.radeon_bo*, %struct.radeon_bo** %29, align 8
  %144 = call i32 @radeon_bo_unpin(%struct.radeon_bo* %143)
  %145 = load %struct.radeon_bo*, %struct.radeon_bo** %29, align 8
  %146 = call i32 @radeon_bo_unreserve(%struct.radeon_bo* %145)
  store %struct.drm_framebuffer* null, %struct.drm_framebuffer** %8, align 8
  br label %89

147:                                              ; preds = %138, %124
  br label %148

148:                                              ; preds = %147, %116, %113, %108
  %149 = load i32, i32* @EINVAL, align 4
  %150 = sub nsw i32 0, %149
  store i32 %150, i32* %6, align 4
  br label %451

151:                                              ; preds = %99
  %152 = load %struct.radeon_bo*, %struct.radeon_bo** %17, align 8
  %153 = call i32 @radeon_bo_get_tiling_flags(%struct.radeon_bo* %152, i32* %24, i32* null)
  %154 = load %struct.radeon_bo*, %struct.radeon_bo** %17, align 8
  %155 = call i32 @radeon_bo_unreserve(%struct.radeon_bo* %154)
  %156 = load i32, i32* %24, align 4
  %157 = load i32, i32* @RADEON_TILING_MICRO, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %151
  %161 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  br label %162

162:                                              ; preds = %160, %151
  %163 = load %struct.radeon_device*, %struct.radeon_device** %13, align 8
  %164 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.radeon_crtc*, %struct.radeon_crtc** %14, align 8
  %168 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %167, i32 0, i32 0
  store i32 %166, i32* %168, align 4
  %169 = load %struct.radeon_crtc*, %struct.radeon_crtc** %14, align 8
  %170 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* %18, align 4
  %173 = sub nsw i32 %172, %171
  store i32 %173, i32* %18, align 4
  store i32 0, i32* %20, align 4
  %174 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %15, align 8
  %175 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %174, i32 0, i32 0
  %176 = load i32*, i32** %175, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 0
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %15, align 8
  %180 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %179, i32 0, i32 2
  %181 = load %struct.TYPE_6__*, %struct.TYPE_6__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i32 0, i32 0
  %183 = load i32*, i32** %182, align 8
  %184 = getelementptr inbounds i32, i32* %183, i64 0
  %185 = load i32, i32* %184, align 4
  %186 = sdiv i32 %178, %185
  store i32 %186, i32* %23, align 4
  %187 = load i32, i32* %23, align 4
  %188 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %15, align 8
  %189 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %188, i32 0, i32 2
  %190 = load %struct.TYPE_6__*, %struct.TYPE_6__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %190, i32 0, i32 0
  %192 = load i32*, i32** %191, align 8
  %193 = getelementptr inbounds i32, i32* %192, i64 0
  %194 = load i32, i32* %193, align 4
  %195 = mul nsw i32 %187, %194
  %196 = mul nsw i32 %195, 8
  %197 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %15, align 8
  %198 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %197, i32 0, i32 2
  %199 = load %struct.TYPE_6__*, %struct.TYPE_6__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %199, i32 0, i32 0
  %201 = load i32*, i32** %200, align 8
  %202 = getelementptr inbounds i32, i32* %201, i64 0
  %203 = load i32, i32* %202, align 4
  %204 = mul nsw i32 %203, 8
  %205 = mul nsw i32 %204, 8
  %206 = call i32 @DIV_ROUND_UP(i32 %196, i32 %205)
  store i32 %206, i32* %22, align 4
  %207 = load i32, i32* %22, align 4
  %208 = shl i32 %207, 16
  %209 = load i32, i32* %22, align 4
  %210 = or i32 %209, %208
  store i32 %210, i32* %22, align 4
  %211 = load i32, i32* @RADEON_CRTC_GUI_TRIG_OFFSET_LEFT_EN, align 4
  %212 = load i32, i32* %20, align 4
  %213 = or i32 %212, %211
  store i32 %213, i32* %20, align 4
  %214 = load i32, i32* %24, align 4
  %215 = load i32, i32* @RADEON_TILING_MACRO, align 4
  %216 = and i32 %214, %215
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %235

218:                                              ; preds = %162
  %219 = load %struct.radeon_device*, %struct.radeon_device** %13, align 8
  %220 = call i64 @ASIC_IS_R300(%struct.radeon_device* %219)
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %230

222:                                              ; preds = %218
  %223 = load i32, i32* @R300_CRTC_X_Y_MODE_EN, align 4
  %224 = load i32, i32* @R300_CRTC_MICRO_TILE_BUFFER_DIS, align 4
  %225 = or i32 %223, %224
  %226 = load i32, i32* @R300_CRTC_MACRO_TILE_EN, align 4
  %227 = or i32 %225, %226
  %228 = load i32, i32* %20, align 4
  %229 = or i32 %228, %227
  store i32 %229, i32* %20, align 4
  br label %234

230:                                              ; preds = %218
  %231 = load i32, i32* @RADEON_CRTC_TILE_EN, align 4
  %232 = load i32, i32* %20, align 4
  %233 = or i32 %232, %231
  store i32 %233, i32* %20, align 4
  br label %234

234:                                              ; preds = %230, %222
  br label %254

235:                                              ; preds = %162
  %236 = load %struct.radeon_device*, %struct.radeon_device** %13, align 8
  %237 = call i64 @ASIC_IS_R300(%struct.radeon_device* %236)
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %248

239:                                              ; preds = %235
  %240 = load i32, i32* @R300_CRTC_X_Y_MODE_EN, align 4
  %241 = load i32, i32* @R300_CRTC_MICRO_TILE_BUFFER_DIS, align 4
  %242 = or i32 %240, %241
  %243 = load i32, i32* @R300_CRTC_MACRO_TILE_EN, align 4
  %244 = or i32 %242, %243
  %245 = xor i32 %244, -1
  %246 = load i32, i32* %20, align 4
  %247 = and i32 %246, %245
  store i32 %247, i32* %20, align 4
  br label %253

248:                                              ; preds = %235
  %249 = load i32, i32* @RADEON_CRTC_TILE_EN, align 4
  %250 = xor i32 %249, -1
  %251 = load i32, i32* %20, align 4
  %252 = and i32 %251, %250
  store i32 %252, i32* %20, align 4
  br label %253

253:                                              ; preds = %248, %239
  br label %254

254:                                              ; preds = %253, %234
  %255 = load i32, i32* %24, align 4
  %256 = load i32, i32* @RADEON_TILING_MACRO, align 4
  %257 = and i32 %255, %256
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %307

259:                                              ; preds = %254
  %260 = load %struct.radeon_device*, %struct.radeon_device** %13, align 8
  %261 = call i64 @ASIC_IS_R300(%struct.radeon_device* %260)
  %262 = icmp ne i64 %261, 0
  br i1 %262, label %263, label %270

263:                                              ; preds = %259
  %264 = load i32, i32* %9, align 4
  %265 = load i32, i32* %10, align 4
  %266 = shl i32 %265, 16
  %267 = or i32 %264, %266
  store i32 %267, i32* %21, align 4
  %268 = load i32, i32* %18, align 4
  %269 = and i32 %268, -2048
  store i32 %269, i32* %18, align 4
  br label %306

270:                                              ; preds = %259
  %271 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %15, align 8
  %272 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %271, i32 0, i32 2
  %273 = load %struct.TYPE_6__*, %struct.TYPE_6__** %272, align 8
  %274 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %273, i32 0, i32 0
  %275 = load i32*, i32** %274, align 8
  %276 = getelementptr inbounds i32, i32* %275, i64 0
  %277 = load i32, i32* %276, align 4
  %278 = mul nsw i32 %277, 8
  %279 = ashr i32 %278, 4
  store i32 %279, i32* %32, align 4
  %280 = load i32, i32* %10, align 4
  %281 = ashr i32 %280, 3
  %282 = load i32, i32* %23, align 4
  %283 = mul nsw i32 %281, %282
  %284 = load i32, i32* %9, align 4
  %285 = add nsw i32 %283, %284
  %286 = load i32, i32* %32, align 4
  %287 = sub nsw i32 8, %286
  %288 = ashr i32 %285, %287
  %289 = shl i32 %288, 11
  store i32 %289, i32* %33, align 4
  %290 = load i32, i32* %33, align 4
  %291 = load i32, i32* %9, align 4
  %292 = load i32, i32* %32, align 4
  %293 = shl i32 %291, %292
  %294 = srem i32 %293, 256
  %295 = add nsw i32 %290, %294
  %296 = load i32, i32* %10, align 4
  %297 = srem i32 %296, 8
  %298 = shl i32 %297, 8
  %299 = add nsw i32 %295, %298
  %300 = load i32, i32* %18, align 4
  %301 = add nsw i32 %300, %299
  store i32 %301, i32* %18, align 4
  %302 = load i32, i32* %10, align 4
  %303 = srem i32 %302, 16
  %304 = load i32, i32* %20, align 4
  %305 = or i32 %304, %303
  store i32 %305, i32* %20, align 4
  br label %306

306:                                              ; preds = %270, %263
  br label %338

307:                                              ; preds = %254
  %308 = load i32, i32* %10, align 4
  %309 = load i32, i32* %23, align 4
  %310 = mul nsw i32 %308, %309
  %311 = load i32, i32* %9, align 4
  %312 = add nsw i32 %310, %311
  store i32 %312, i32* %34, align 4
  %313 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %15, align 8
  %314 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %313, i32 0, i32 2
  %315 = load %struct.TYPE_6__*, %struct.TYPE_6__** %314, align 8
  %316 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %315, i32 0, i32 0
  %317 = load i32*, i32** %316, align 8
  %318 = getelementptr inbounds i32, i32* %317, i64 0
  %319 = load i32, i32* %318, align 4
  %320 = mul nsw i32 %319, 8
  switch i32 %320, label %333 [
    i32 8, label %321
    i32 15, label %324
    i32 16, label %324
    i32 24, label %327
    i32 32, label %330
  ]

321:                                              ; preds = %307
  %322 = load i32, i32* %34, align 4
  %323 = mul nsw i32 %322, 1
  store i32 %323, i32* %34, align 4
  br label %334

324:                                              ; preds = %307, %307
  %325 = load i32, i32* %34, align 4
  %326 = mul nsw i32 %325, 2
  store i32 %326, i32* %34, align 4
  br label %334

327:                                              ; preds = %307
  %328 = load i32, i32* %34, align 4
  %329 = mul nsw i32 %328, 3
  store i32 %329, i32* %34, align 4
  br label %334

330:                                              ; preds = %307
  %331 = load i32, i32* %34, align 4
  %332 = mul nsw i32 %331, 4
  store i32 %332, i32* %34, align 4
  br label %334

333:                                              ; preds = %307
  store i32 0, i32* %6, align 4
  br label %451

334:                                              ; preds = %330, %327, %324, %321
  %335 = load i32, i32* %34, align 4
  %336 = load i32, i32* %18, align 4
  %337 = add nsw i32 %336, %335
  store i32 %337, i32* %18, align 4
  br label %338

338:                                              ; preds = %334, %306
  %339 = load i32, i32* %18, align 4
  %340 = and i32 %339, -8
  store i32 %340, i32* %18, align 4
  %341 = load %struct.radeon_crtc*, %struct.radeon_crtc** %14, align 8
  %342 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %341, i32 0, i32 1
  %343 = load i32, i32* %342, align 4
  %344 = icmp eq i32 %343, 1
  br i1 %344, label %345, label %347

345:                                              ; preds = %338
  %346 = load i32, i32* @RADEON_CRTC2_GEN_CNTL, align 4
  store i32 %346, i32* %26, align 4
  br label %349

347:                                              ; preds = %338
  %348 = load i32, i32* @RADEON_CRTC_GEN_CNTL, align 4
  store i32 %348, i32* %26, align 4
  br label %349

349:                                              ; preds = %347, %345
  %350 = load i32, i32* %26, align 4
  %351 = call i32 @RREG32(i32 %350)
  store i32 %351, i32* %27, align 4
  %352 = load i32, i32* %27, align 4
  %353 = and i32 %352, -3841
  store i32 %353, i32* %27, align 4
  %354 = load i32, i32* %25, align 4
  %355 = shl i32 %354, 8
  %356 = load i32, i32* %27, align 4
  %357 = or i32 %356, %355
  store i32 %357, i32* %27, align 4
  %358 = load i32, i32* @RADEON_CRTC_VSTAT_MODE_MASK, align 4
  %359 = xor i32 %358, -1
  %360 = load i32, i32* %27, align 4
  %361 = and i32 %360, %359
  store i32 %361, i32* %27, align 4
  %362 = load i32, i32* %26, align 4
  %363 = load i32, i32* %27, align 4
  %364 = call i32 @WREG32(i32 %362, i32 %363)
  %365 = load i32, i32* %18, align 4
  store i32 %365, i32* %19, align 4
  %366 = load i32, i32* @RADEON_DISPLAY_BASE_ADDR, align 4
  %367 = load %struct.radeon_crtc*, %struct.radeon_crtc** %14, align 8
  %368 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %367, i32 0, i32 2
  %369 = load i32, i32* %368, align 4
  %370 = add nsw i32 %366, %369
  %371 = load %struct.radeon_crtc*, %struct.radeon_crtc** %14, align 8
  %372 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %371, i32 0, i32 0
  %373 = load i32, i32* %372, align 4
  %374 = call i32 @WREG32(i32 %370, i32 %373)
  %375 = load %struct.radeon_device*, %struct.radeon_device** %13, align 8
  %376 = call i64 @ASIC_IS_R300(%struct.radeon_device* %375)
  %377 = icmp ne i64 %376, 0
  br i1 %377, label %378, label %392

378:                                              ; preds = %349
  %379 = load %struct.radeon_crtc*, %struct.radeon_crtc** %14, align 8
  %380 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %379, i32 0, i32 1
  %381 = load i32, i32* %380, align 4
  %382 = icmp ne i32 %381, 0
  br i1 %382, label %383, label %387

383:                                              ; preds = %378
  %384 = load i32, i32* @R300_CRTC2_TILE_X0_Y0, align 4
  %385 = load i32, i32* %21, align 4
  %386 = call i32 @WREG32(i32 %384, i32 %385)
  br label %391

387:                                              ; preds = %378
  %388 = load i32, i32* @R300_CRTC_TILE_X0_Y0, align 4
  %389 = load i32, i32* %21, align 4
  %390 = call i32 @WREG32(i32 %388, i32 %389)
  br label %391

391:                                              ; preds = %387, %383
  br label %392

392:                                              ; preds = %391, %349
  %393 = load i32, i32* @RADEON_CRTC_OFFSET_CNTL, align 4
  %394 = load %struct.radeon_crtc*, %struct.radeon_crtc** %14, align 8
  %395 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %394, i32 0, i32 2
  %396 = load i32, i32* %395, align 4
  %397 = add nsw i32 %393, %396
  %398 = load i32, i32* %20, align 4
  %399 = call i32 @WREG32(i32 %397, i32 %398)
  %400 = load i32, i32* @RADEON_CRTC_OFFSET, align 4
  %401 = load %struct.radeon_crtc*, %struct.radeon_crtc** %14, align 8
  %402 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %401, i32 0, i32 2
  %403 = load i32, i32* %402, align 4
  %404 = add nsw i32 %400, %403
  %405 = load i32, i32* %19, align 4
  %406 = call i32 @WREG32(i32 %404, i32 %405)
  %407 = load i32, i32* @RADEON_CRTC_PITCH, align 4
  %408 = load %struct.radeon_crtc*, %struct.radeon_crtc** %14, align 8
  %409 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %408, i32 0, i32 2
  %410 = load i32, i32* %409, align 4
  %411 = add nsw i32 %407, %410
  %412 = load i32, i32* %22, align 4
  %413 = call i32 @WREG32(i32 %411, i32 %412)
  %414 = load i32, i32* %11, align 4
  %415 = icmp ne i32 %414, 0
  br i1 %415, label %448, label %416

416:                                              ; preds = %392
  %417 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %418 = icmp ne %struct.drm_framebuffer* %417, null
  br i1 %418, label %419, label %448

419:                                              ; preds = %416
  %420 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %421 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %422 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %421, i32 0, i32 0
  %423 = load %struct.TYPE_4__*, %struct.TYPE_4__** %422, align 8
  %424 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %423, i32 0, i32 0
  %425 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %424, align 8
  %426 = icmp ne %struct.drm_framebuffer* %420, %425
  br i1 %426, label %427, label %448

427:                                              ; preds = %419
  %428 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %429 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %428, i32 0, i32 1
  %430 = load %struct.drm_gem_object**, %struct.drm_gem_object*** %429, align 8
  %431 = getelementptr inbounds %struct.drm_gem_object*, %struct.drm_gem_object** %430, i64 0
  %432 = load %struct.drm_gem_object*, %struct.drm_gem_object** %431, align 8
  %433 = call %struct.radeon_bo* @gem_to_radeon_bo(%struct.drm_gem_object* %432)
  store %struct.radeon_bo* %433, %struct.radeon_bo** %17, align 8
  %434 = load %struct.radeon_bo*, %struct.radeon_bo** %17, align 8
  %435 = call i32 @radeon_bo_reserve(%struct.radeon_bo* %434, i32 0)
  store i32 %435, i32* %28, align 4
  %436 = load i32, i32* %28, align 4
  %437 = icmp ne i32 %436, 0
  %438 = zext i1 %437 to i32
  %439 = call i64 @unlikely(i32 %438)
  %440 = icmp ne i64 %439, 0
  br i1 %440, label %441, label %443

441:                                              ; preds = %427
  %442 = load i32, i32* %28, align 4
  store i32 %442, i32* %6, align 4
  br label %451

443:                                              ; preds = %427
  %444 = load %struct.radeon_bo*, %struct.radeon_bo** %17, align 8
  %445 = call i32 @radeon_bo_unpin(%struct.radeon_bo* %444)
  %446 = load %struct.radeon_bo*, %struct.radeon_bo** %17, align 8
  %447 = call i32 @radeon_bo_unreserve(%struct.radeon_bo* %446)
  br label %448

448:                                              ; preds = %443, %419, %416, %392
  %449 = load %struct.radeon_device*, %struct.radeon_device** %13, align 8
  %450 = call i32 @radeon_bandwidth_update(%struct.radeon_device* %449)
  store i32 0, i32* %6, align 4
  br label %451

451:                                              ; preds = %448, %441, %333, %148, %97, %80, %53
  %452 = load i32, i32* %6, align 4
  ret i32 %452
}

declare dso_local %struct.radeon_crtc* @to_radeon_crtc(%struct.drm_crtc*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

declare dso_local %struct.radeon_bo* @gem_to_radeon_bo(%struct.drm_gem_object*) #1

declare dso_local i32 @radeon_bo_reserve(%struct.radeon_bo*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @radeon_bo_pin_restricted(%struct.radeon_bo*, i32, i32, i32*) #1

declare dso_local i32 @radeon_bo_unreserve(%struct.radeon_bo*) #1

declare dso_local i64 @radeon_bo_size(%struct.radeon_bo*) #1

declare dso_local i32 @radeon_bo_unpin(%struct.radeon_bo*) #1

declare dso_local i32 @radeon_bo_get_tiling_flags(%struct.radeon_bo*, i32*, i32*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i64 @ASIC_IS_R300(%struct.radeon_device*) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @radeon_bandwidth_update(%struct.radeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
