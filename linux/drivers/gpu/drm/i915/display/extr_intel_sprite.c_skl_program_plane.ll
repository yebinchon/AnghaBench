; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_sprite.c_skl_program_plane.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_sprite.c_skl_program_plane.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_plane = type { i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.intel_crtc_state = type { i32 }
%struct.intel_plane_state = type { i32, i64, %struct.TYPE_11__*, %struct.TYPE_9__, %struct.intel_plane*, %struct.drm_intel_sprite_colorkey }
%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { i32, %struct.drm_framebuffer*, i32, %struct.TYPE_8__ }
%struct.drm_framebuffer = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.drm_intel_sprite_colorkey = type { i32, i32, i32 }
%struct.drm_i915_private = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }

@PLANE_KEYMSK_ALPHA_ENABLE = common dso_local global i32 0, align 4
@PLANE_CUS_ENABLE = common dso_local global i32 0, align 4
@PLANE_CUS_HPHASE_0 = common dso_local global i32 0, align 4
@PLANE_CUS_VPHASE_SIGN_NEGATIVE = common dso_local global i32 0, align 4
@PLANE_CUS_VPHASE_0_25 = common dso_local global i32 0, align 4
@PLANE_SPRITE5 = common dso_local global i64 0, align 8
@PLANE_CUS_PLANE_7 = common dso_local global i32 0, align 4
@PLANE_SPRITE4 = common dso_local global i64 0, align 8
@PLANE_CUS_PLANE_6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_plane*, %struct.intel_crtc_state*, %struct.intel_plane_state*, i32, i32, i32)* @skl_program_plane to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @skl_program_plane(%struct.intel_plane* %0, %struct.intel_crtc_state* %1, %struct.intel_plane_state* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.intel_plane*, align 8
  %8 = alloca %struct.intel_crtc_state*, align 8
  %9 = alloca %struct.intel_plane_state*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.drm_i915_private*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.drm_intel_sprite_colorkey*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca %struct.intel_plane*, align 8
  %27 = alloca %struct.drm_framebuffer*, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i64, align 8
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  store %struct.intel_plane* %0, %struct.intel_plane** %7, align 8
  store %struct.intel_crtc_state* %1, %struct.intel_crtc_state** %8, align 8
  store %struct.intel_plane_state* %2, %struct.intel_plane_state** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %34 = load %struct.intel_plane*, %struct.intel_plane** %7, align 8
  %35 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call %struct.drm_i915_private* @to_i915(i32 %37)
  store %struct.drm_i915_private* %38, %struct.drm_i915_private** %13, align 8
  %39 = load %struct.intel_plane*, %struct.intel_plane** %7, align 8
  %40 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %14, align 4
  %42 = load %struct.intel_plane*, %struct.intel_plane** %7, align 8
  %43 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %15, align 4
  %45 = load %struct.intel_plane_state*, %struct.intel_plane_state** %9, align 8
  %46 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %45, i32 0, i32 5
  store %struct.drm_intel_sprite_colorkey* %46, %struct.drm_intel_sprite_colorkey** %16, align 8
  %47 = load %struct.intel_plane_state*, %struct.intel_plane_state** %9, align 8
  %48 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %47, i32 0, i32 2
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %48, align 8
  %50 = load i32, i32* %10, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %17, align 4
  %55 = load %struct.intel_plane_state*, %struct.intel_plane_state** %9, align 8
  %56 = load i32, i32* %10, align 4
  %57 = call i32 @skl_plane_stride(%struct.intel_plane_state* %55, i32 %56)
  store i32 %57, i32* %18, align 4
  %58 = load %struct.intel_plane_state*, %struct.intel_plane_state** %9, align 8
  %59 = call i32 @skl_plane_stride(%struct.intel_plane_state* %58, i32 1)
  store i32 %59, i32* %19, align 4
  %60 = load %struct.intel_plane_state*, %struct.intel_plane_state** %9, align 8
  %61 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %60, i32 0, i32 3
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 3
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %20, align 4
  %65 = load %struct.intel_plane_state*, %struct.intel_plane_state** %9, align 8
  %66 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %65, i32 0, i32 3
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 3
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %21, align 4
  %70 = load %struct.intel_plane_state*, %struct.intel_plane_state** %9, align 8
  %71 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %70, i32 0, i32 2
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %71, align 8
  %73 = load i32, i32* %10, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %22, align 4
  %78 = load %struct.intel_plane_state*, %struct.intel_plane_state** %9, align 8
  %79 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %78, i32 0, i32 2
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %79, align 8
  %81 = load i32, i32* %10, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  store i32 %85, i32* %23, align 4
  %86 = load %struct.intel_plane_state*, %struct.intel_plane_state** %9, align 8
  %87 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %86, i32 0, i32 3
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 2
  %89 = call i32 @drm_rect_width(i32* %88)
  %90 = ashr i32 %89, 16
  store i32 %90, i32* %24, align 4
  %91 = load %struct.intel_plane_state*, %struct.intel_plane_state** %9, align 8
  %92 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %91, i32 0, i32 3
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 2
  %94 = call i32 @drm_rect_height(i32* %93)
  %95 = ashr i32 %94, 16
  store i32 %95, i32* %25, align 4
  %96 = load %struct.intel_plane_state*, %struct.intel_plane_state** %9, align 8
  %97 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %96, i32 0, i32 4
  %98 = load %struct.intel_plane*, %struct.intel_plane** %97, align 8
  store %struct.intel_plane* %98, %struct.intel_plane** %26, align 8
  %99 = load %struct.intel_plane_state*, %struct.intel_plane_state** %9, align 8
  %100 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %99, i32 0, i32 3
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 1
  %102 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %101, align 8
  store %struct.drm_framebuffer* %102, %struct.drm_framebuffer** %27, align 8
  %103 = load %struct.intel_plane_state*, %struct.intel_plane_state** %9, align 8
  %104 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %103, i32 0, i32 3
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = ashr i32 %106, 8
  store i32 %107, i32* %28, align 4
  store i32 0, i32* %29, align 4
  %108 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %8, align 8
  %109 = call i32 @skl_plane_ctl_crtc(%struct.intel_crtc_state* %108)
  %110 = load i32, i32* %12, align 4
  %111 = or i32 %110, %109
  store i32 %111, i32* %12, align 4
  %112 = load %struct.drm_i915_private*, %struct.drm_i915_private** %13, align 8
  %113 = call i32 @INTEL_GEN(%struct.drm_i915_private* %112)
  %114 = icmp sge i32 %113, 10
  br i1 %114, label %119, label %115

115:                                              ; preds = %6
  %116 = load %struct.drm_i915_private*, %struct.drm_i915_private** %13, align 8
  %117 = call i64 @IS_GEMINILAKE(%struct.drm_i915_private* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %126

119:                                              ; preds = %115, %6
  %120 = load %struct.intel_plane_state*, %struct.intel_plane_state** %9, align 8
  %121 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %8, align 8
  %124 = call i32 @glk_plane_color_ctl_crtc(%struct.intel_crtc_state* %123)
  %125 = or i32 %122, %124
  store i32 %125, i32* %29, align 4
  br label %126

126:                                              ; preds = %119, %115
  %127 = load i32, i32* %24, align 4
  %128 = add nsw i32 %127, -1
  store i32 %128, i32* %24, align 4
  %129 = load i32, i32* %25, align 4
  %130 = add nsw i32 %129, -1
  store i32 %130, i32* %25, align 4
  %131 = load %struct.drm_intel_sprite_colorkey*, %struct.drm_intel_sprite_colorkey** %16, align 8
  %132 = getelementptr inbounds %struct.drm_intel_sprite_colorkey, %struct.drm_intel_sprite_colorkey* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = and i32 %133, 16777215
  %135 = load i32, i32* %28, align 4
  %136 = call i32 @PLANE_KEYMAX_ALPHA(i32 %135)
  %137 = or i32 %134, %136
  store i32 %137, i32* %32, align 4
  %138 = load %struct.drm_intel_sprite_colorkey*, %struct.drm_intel_sprite_colorkey** %16, align 8
  %139 = getelementptr inbounds %struct.drm_intel_sprite_colorkey, %struct.drm_intel_sprite_colorkey* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = and i32 %140, 134217727
  store i32 %141, i32* %31, align 4
  %142 = load i32, i32* %28, align 4
  %143 = icmp slt i32 %142, 255
  br i1 %143, label %144, label %148

144:                                              ; preds = %126
  %145 = load i32, i32* @PLANE_KEYMSK_ALPHA_ENABLE, align 4
  %146 = load i32, i32* %31, align 4
  %147 = or i32 %146, %145
  store i32 %147, i32* %31, align 4
  br label %148

148:                                              ; preds = %144, %126
  %149 = load %struct.intel_plane_state*, %struct.intel_plane_state** %9, align 8
  %150 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = icmp sge i64 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %148
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  br label %154

154:                                              ; preds = %153, %148
  %155 = load %struct.drm_i915_private*, %struct.drm_i915_private** %13, align 8
  %156 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %156, i32 0, i32 0
  %158 = load i64, i64* %30, align 8
  %159 = call i32 @spin_lock_irqsave(i32* %157, i64 %158)
  %160 = load i32, i32* %15, align 4
  %161 = load i32, i32* %14, align 4
  %162 = call i32 @PLANE_STRIDE(i32 %160, i32 %161)
  %163 = load i32, i32* %18, align 4
  %164 = call i32 @I915_WRITE_FW(i32 %162, i32 %163)
  %165 = load i32, i32* %15, align 4
  %166 = load i32, i32* %14, align 4
  %167 = call i32 @PLANE_POS(i32 %165, i32 %166)
  %168 = load i32, i32* %21, align 4
  %169 = shl i32 %168, 16
  %170 = load i32, i32* %20, align 4
  %171 = or i32 %169, %170
  %172 = call i32 @I915_WRITE_FW(i32 %167, i32 %171)
  %173 = load i32, i32* %15, align 4
  %174 = load i32, i32* %14, align 4
  %175 = call i32 @PLANE_SIZE(i32 %173, i32 %174)
  %176 = load i32, i32* %25, align 4
  %177 = shl i32 %176, 16
  %178 = load i32, i32* %24, align 4
  %179 = or i32 %177, %178
  %180 = call i32 @I915_WRITE_FW(i32 %175, i32 %179)
  %181 = load i32, i32* %15, align 4
  %182 = load i32, i32* %14, align 4
  %183 = call i32 @PLANE_AUX_DIST(i32 %181, i32 %182)
  %184 = load %struct.intel_plane_state*, %struct.intel_plane_state** %9, align 8
  %185 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %184, i32 0, i32 2
  %186 = load %struct.TYPE_11__*, %struct.TYPE_11__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %186, i64 1
  %188 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* %17, align 4
  %191 = sub nsw i32 %189, %190
  %192 = load i32, i32* %19, align 4
  %193 = or i32 %191, %192
  %194 = call i32 @I915_WRITE_FW(i32 %183, i32 %193)
  %195 = load %struct.drm_i915_private*, %struct.drm_i915_private** %13, align 8
  %196 = load i32, i32* %14, align 4
  %197 = call i64 @icl_is_hdr_plane(%struct.drm_i915_private* %195, i32 %196)
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %245

199:                                              ; preds = %154
  store i32 0, i32* %33, align 4
  %200 = load %struct.intel_plane*, %struct.intel_plane** %26, align 8
  %201 = icmp ne %struct.intel_plane* %200, null
  br i1 %201, label %202, label %239

202:                                              ; preds = %199
  %203 = load i32, i32* @PLANE_CUS_ENABLE, align 4
  %204 = load i32, i32* @PLANE_CUS_HPHASE_0, align 4
  %205 = or i32 %203, %204
  %206 = load i32, i32* @PLANE_CUS_VPHASE_SIGN_NEGATIVE, align 4
  %207 = or i32 %205, %206
  %208 = load i32, i32* @PLANE_CUS_VPHASE_0_25, align 4
  %209 = or i32 %207, %208
  store i32 %209, i32* %33, align 4
  %210 = load %struct.intel_plane*, %struct.intel_plane** %26, align 8
  %211 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = sext i32 %212 to i64
  %214 = load i64, i64* @PLANE_SPRITE5, align 8
  %215 = icmp eq i64 %213, %214
  br i1 %215, label %216, label %220

216:                                              ; preds = %202
  %217 = load i32, i32* @PLANE_CUS_PLANE_7, align 4
  %218 = load i32, i32* %33, align 4
  %219 = or i32 %218, %217
  store i32 %219, i32* %33, align 4
  br label %238

220:                                              ; preds = %202
  %221 = load %struct.intel_plane*, %struct.intel_plane** %26, align 8
  %222 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 4
  %224 = sext i32 %223 to i64
  %225 = load i64, i64* @PLANE_SPRITE4, align 8
  %226 = icmp eq i64 %224, %225
  br i1 %226, label %227, label %231

227:                                              ; preds = %220
  %228 = load i32, i32* @PLANE_CUS_PLANE_6, align 4
  %229 = load i32, i32* %33, align 4
  %230 = or i32 %229, %228
  store i32 %230, i32* %33, align 4
  br label %237

231:                                              ; preds = %220
  %232 = load %struct.intel_plane*, %struct.intel_plane** %26, align 8
  %233 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 4
  %235 = sext i32 %234 to i64
  %236 = call i32 @MISSING_CASE(i64 %235)
  br label %237

237:                                              ; preds = %231, %227
  br label %238

238:                                              ; preds = %237, %216
  br label %239

239:                                              ; preds = %238, %199
  %240 = load i32, i32* %15, align 4
  %241 = load i32, i32* %14, align 4
  %242 = call i32 @PLANE_CUS_CTL(i32 %240, i32 %241)
  %243 = load i32, i32* %33, align 4
  %244 = call i32 @I915_WRITE_FW(i32 %242, i32 %243)
  br label %245

245:                                              ; preds = %239, %154
  %246 = load %struct.drm_i915_private*, %struct.drm_i915_private** %13, align 8
  %247 = call i32 @INTEL_GEN(%struct.drm_i915_private* %246)
  %248 = icmp sge i32 %247, 10
  br i1 %248, label %253, label %249

249:                                              ; preds = %245
  %250 = load %struct.drm_i915_private*, %struct.drm_i915_private** %13, align 8
  %251 = call i64 @IS_GEMINILAKE(%struct.drm_i915_private* %250)
  %252 = icmp ne i64 %251, 0
  br i1 %252, label %253, label %259

253:                                              ; preds = %249, %245
  %254 = load i32, i32* %15, align 4
  %255 = load i32, i32* %14, align 4
  %256 = call i32 @PLANE_COLOR_CTL(i32 %254, i32 %255)
  %257 = load i32, i32* %29, align 4
  %258 = call i32 @I915_WRITE_FW(i32 %256, i32 %257)
  br label %259

259:                                              ; preds = %253, %249
  %260 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %27, align 8
  %261 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %260, i32 0, i32 0
  %262 = load %struct.TYPE_10__*, %struct.TYPE_10__** %261, align 8
  %263 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %262, i32 0, i32 0
  %264 = load i64, i64* %263, align 8
  %265 = icmp ne i64 %264, 0
  br i1 %265, label %266, label %276

266:                                              ; preds = %259
  %267 = load %struct.drm_i915_private*, %struct.drm_i915_private** %13, align 8
  %268 = load i32, i32* %14, align 4
  %269 = call i64 @icl_is_hdr_plane(%struct.drm_i915_private* %267, i32 %268)
  %270 = icmp ne i64 %269, 0
  br i1 %270, label %271, label %276

271:                                              ; preds = %266
  %272 = load %struct.intel_plane*, %struct.intel_plane** %7, align 8
  %273 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %8, align 8
  %274 = load %struct.intel_plane_state*, %struct.intel_plane_state** %9, align 8
  %275 = call i32 @icl_program_input_csc(%struct.intel_plane* %272, %struct.intel_crtc_state* %273, %struct.intel_plane_state* %274)
  br label %276

276:                                              ; preds = %271, %266, %259
  %277 = load %struct.intel_plane*, %struct.intel_plane** %7, align 8
  %278 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %8, align 8
  %279 = call i32 @skl_write_plane_wm(%struct.intel_plane* %277, %struct.intel_crtc_state* %278)
  %280 = load i32, i32* %15, align 4
  %281 = load i32, i32* %14, align 4
  %282 = call i32 @PLANE_KEYVAL(i32 %280, i32 %281)
  %283 = load %struct.drm_intel_sprite_colorkey*, %struct.drm_intel_sprite_colorkey** %16, align 8
  %284 = getelementptr inbounds %struct.drm_intel_sprite_colorkey, %struct.drm_intel_sprite_colorkey* %283, i32 0, i32 2
  %285 = load i32, i32* %284, align 4
  %286 = call i32 @I915_WRITE_FW(i32 %282, i32 %285)
  %287 = load i32, i32* %15, align 4
  %288 = load i32, i32* %14, align 4
  %289 = call i32 @PLANE_KEYMSK(i32 %287, i32 %288)
  %290 = load i32, i32* %31, align 4
  %291 = call i32 @I915_WRITE_FW(i32 %289, i32 %290)
  %292 = load i32, i32* %15, align 4
  %293 = load i32, i32* %14, align 4
  %294 = call i32 @PLANE_KEYMAX(i32 %292, i32 %293)
  %295 = load i32, i32* %32, align 4
  %296 = call i32 @I915_WRITE_FW(i32 %294, i32 %295)
  %297 = load i32, i32* %15, align 4
  %298 = load i32, i32* %14, align 4
  %299 = call i32 @PLANE_OFFSET(i32 %297, i32 %298)
  %300 = load i32, i32* %23, align 4
  %301 = shl i32 %300, 16
  %302 = load i32, i32* %22, align 4
  %303 = or i32 %301, %302
  %304 = call i32 @I915_WRITE_FW(i32 %299, i32 %303)
  %305 = load %struct.drm_i915_private*, %struct.drm_i915_private** %13, align 8
  %306 = call i32 @INTEL_GEN(%struct.drm_i915_private* %305)
  %307 = icmp slt i32 %306, 11
  br i1 %307, label %308, label %327

308:                                              ; preds = %276
  %309 = load i32, i32* %15, align 4
  %310 = load i32, i32* %14, align 4
  %311 = call i32 @PLANE_AUX_OFFSET(i32 %309, i32 %310)
  %312 = load %struct.intel_plane_state*, %struct.intel_plane_state** %9, align 8
  %313 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %312, i32 0, i32 2
  %314 = load %struct.TYPE_11__*, %struct.TYPE_11__** %313, align 8
  %315 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %314, i64 1
  %316 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %315, i32 0, i32 2
  %317 = load i32, i32* %316, align 4
  %318 = shl i32 %317, 16
  %319 = load %struct.intel_plane_state*, %struct.intel_plane_state** %9, align 8
  %320 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %319, i32 0, i32 2
  %321 = load %struct.TYPE_11__*, %struct.TYPE_11__** %320, align 8
  %322 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %321, i64 1
  %323 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %322, i32 0, i32 1
  %324 = load i32, i32* %323, align 4
  %325 = or i32 %318, %324
  %326 = call i32 @I915_WRITE_FW(i32 %311, i32 %325)
  br label %327

327:                                              ; preds = %308, %276
  %328 = load i32, i32* %15, align 4
  %329 = load i32, i32* %14, align 4
  %330 = call i32 @PLANE_CTL(i32 %328, i32 %329)
  %331 = load i32, i32* %12, align 4
  %332 = call i32 @I915_WRITE_FW(i32 %330, i32 %331)
  %333 = load i32, i32* %15, align 4
  %334 = load i32, i32* %14, align 4
  %335 = call i32 @PLANE_SURF(i32 %333, i32 %334)
  %336 = load %struct.intel_plane_state*, %struct.intel_plane_state** %9, align 8
  %337 = call i32 @intel_plane_ggtt_offset(%struct.intel_plane_state* %336)
  %338 = load i32, i32* %17, align 4
  %339 = add nsw i32 %337, %338
  %340 = call i32 @I915_WRITE_FW(i32 %335, i32 %339)
  %341 = load i32, i32* %11, align 4
  %342 = icmp ne i32 %341, 0
  br i1 %342, label %353, label %343

343:                                              ; preds = %327
  %344 = load %struct.intel_plane_state*, %struct.intel_plane_state** %9, align 8
  %345 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %344, i32 0, i32 1
  %346 = load i64, i64* %345, align 8
  %347 = icmp sge i64 %346, 0
  br i1 %347, label %348, label %353

348:                                              ; preds = %343
  %349 = load %struct.intel_plane*, %struct.intel_plane** %7, align 8
  %350 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %8, align 8
  %351 = load %struct.intel_plane_state*, %struct.intel_plane_state** %9, align 8
  %352 = call i32 @skl_program_scaler(%struct.intel_plane* %349, %struct.intel_crtc_state* %350, %struct.intel_plane_state* %351)
  br label %353

353:                                              ; preds = %348, %343, %327
  %354 = load %struct.drm_i915_private*, %struct.drm_i915_private** %13, align 8
  %355 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %354, i32 0, i32 0
  %356 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %355, i32 0, i32 0
  %357 = load i64, i64* %30, align 8
  %358 = call i32 @spin_unlock_irqrestore(i32* %356, i64 %357)
  ret void
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i32 @skl_plane_stride(%struct.intel_plane_state*, i32) #1

declare dso_local i32 @drm_rect_width(i32*) #1

declare dso_local i32 @drm_rect_height(i32*) #1

declare dso_local i32 @skl_plane_ctl_crtc(%struct.intel_crtc_state*) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_GEMINILAKE(%struct.drm_i915_private*) #1

declare dso_local i32 @glk_plane_color_ctl_crtc(%struct.intel_crtc_state*) #1

declare dso_local i32 @PLANE_KEYMAX_ALPHA(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @I915_WRITE_FW(i32, i32) #1

declare dso_local i32 @PLANE_STRIDE(i32, i32) #1

declare dso_local i32 @PLANE_POS(i32, i32) #1

declare dso_local i32 @PLANE_SIZE(i32, i32) #1

declare dso_local i32 @PLANE_AUX_DIST(i32, i32) #1

declare dso_local i64 @icl_is_hdr_plane(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @MISSING_CASE(i64) #1

declare dso_local i32 @PLANE_CUS_CTL(i32, i32) #1

declare dso_local i32 @PLANE_COLOR_CTL(i32, i32) #1

declare dso_local i32 @icl_program_input_csc(%struct.intel_plane*, %struct.intel_crtc_state*, %struct.intel_plane_state*) #1

declare dso_local i32 @skl_write_plane_wm(%struct.intel_plane*, %struct.intel_crtc_state*) #1

declare dso_local i32 @PLANE_KEYVAL(i32, i32) #1

declare dso_local i32 @PLANE_KEYMSK(i32, i32) #1

declare dso_local i32 @PLANE_KEYMAX(i32, i32) #1

declare dso_local i32 @PLANE_OFFSET(i32, i32) #1

declare dso_local i32 @PLANE_AUX_OFFSET(i32, i32) #1

declare dso_local i32 @PLANE_CTL(i32, i32) #1

declare dso_local i32 @PLANE_SURF(i32, i32) #1

declare dso_local i32 @intel_plane_ggtt_offset(%struct.intel_plane_state*) #1

declare dso_local i32 @skl_program_scaler(%struct.intel_plane*, %struct.intel_crtc_state*, %struct.intel_plane_state*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
