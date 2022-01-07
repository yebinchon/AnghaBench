; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_intel_legacy_cursor_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_intel_legacy_cursor_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { %struct.drm_plane_state* }
%struct.drm_plane_state = type { i64, i64, i32, i32, i32, i32, i64, %struct.drm_framebuffer*, i64, i64, %struct.drm_crtc*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.drm_crtc = type { i32, i32 }
%struct.drm_framebuffer = type { i32 }
%struct.drm_modeset_acquire_ctx = type { i32 }
%struct.drm_i915_private = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.intel_plane = type { i32 }
%struct.intel_crtc_state = type { %struct.TYPE_6__, i32, i64 }
%struct.TYPE_6__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@ORIGIN_FLIP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_plane*, %struct.drm_crtc*, %struct.drm_framebuffer*, i32, i32, i32, i32, i64, i64, i64, i64, %struct.drm_modeset_acquire_ctx*)* @intel_legacy_cursor_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_legacy_cursor_update(%struct.drm_plane* %0, %struct.drm_crtc* %1, %struct.drm_framebuffer* %2, i32 %3, i32 %4, i32 %5, i32 %6, i64 %7, i64 %8, i64 %9, i64 %10, %struct.drm_modeset_acquire_ctx* %11) #0 {
  %13 = alloca i32, align 4
  %14 = alloca %struct.drm_plane*, align 8
  %15 = alloca %struct.drm_crtc*, align 8
  %16 = alloca %struct.drm_framebuffer*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca %struct.drm_modeset_acquire_ctx*, align 8
  %26 = alloca %struct.drm_i915_private*, align 8
  %27 = alloca %struct.drm_plane_state*, align 8
  %28 = alloca %struct.drm_plane_state*, align 8
  %29 = alloca %struct.intel_plane*, align 8
  %30 = alloca %struct.intel_crtc_state*, align 8
  %31 = alloca %struct.intel_crtc_state*, align 8
  %32 = alloca i32, align 4
  store %struct.drm_plane* %0, %struct.drm_plane** %14, align 8
  store %struct.drm_crtc* %1, %struct.drm_crtc** %15, align 8
  store %struct.drm_framebuffer* %2, %struct.drm_framebuffer** %16, align 8
  store i32 %3, i32* %17, align 4
  store i32 %4, i32* %18, align 4
  store i32 %5, i32* %19, align 4
  store i32 %6, i32* %20, align 4
  store i64 %7, i64* %21, align 8
  store i64 %8, i64* %22, align 8
  store i64 %9, i64* %23, align 8
  store i64 %10, i64* %24, align 8
  store %struct.drm_modeset_acquire_ctx* %11, %struct.drm_modeset_acquire_ctx** %25, align 8
  %33 = load %struct.drm_crtc*, %struct.drm_crtc** %15, align 8
  %34 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call %struct.drm_i915_private* @to_i915(i32 %35)
  store %struct.drm_i915_private* %36, %struct.drm_i915_private** %26, align 8
  %37 = load %struct.drm_plane*, %struct.drm_plane** %14, align 8
  %38 = call %struct.intel_plane* @to_intel_plane(%struct.drm_plane* %37)
  store %struct.intel_plane* %38, %struct.intel_plane** %29, align 8
  %39 = load %struct.drm_crtc*, %struct.drm_crtc** %15, align 8
  %40 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call %struct.intel_crtc_state* @to_intel_crtc_state(i32 %41)
  store %struct.intel_crtc_state* %42, %struct.intel_crtc_state** %30, align 8
  %43 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %30, align 8
  %44 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %12
  %49 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %30, align 8
  %50 = call i64 @needs_modeset(%struct.intel_crtc_state* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %48
  %53 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %30, align 8
  %54 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %52, %48, %12
  br label %258

58:                                               ; preds = %52
  %59 = load %struct.drm_plane*, %struct.drm_plane** %14, align 8
  %60 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %59, i32 0, i32 0
  %61 = load %struct.drm_plane_state*, %struct.drm_plane_state** %60, align 8
  store %struct.drm_plane_state* %61, %struct.drm_plane_state** %27, align 8
  %62 = load %struct.drm_plane_state*, %struct.drm_plane_state** %27, align 8
  %63 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %62, i32 0, i32 11
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = icmp ne %struct.TYPE_4__* %64, null
  br i1 %65, label %66, label %74

66:                                               ; preds = %58
  %67 = load %struct.drm_plane_state*, %struct.drm_plane_state** %27, align 8
  %68 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %67, i32 0, i32 11
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = call i32 @try_wait_for_completion(i32* %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %66
  br label %258

74:                                               ; preds = %66, %58
  %75 = load %struct.drm_plane_state*, %struct.drm_plane_state** %27, align 8
  %76 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %75, i32 0, i32 10
  %77 = load %struct.drm_crtc*, %struct.drm_crtc** %76, align 8
  %78 = load %struct.drm_crtc*, %struct.drm_crtc** %15, align 8
  %79 = icmp ne %struct.drm_crtc* %77, %78
  br i1 %79, label %116, label %80

80:                                               ; preds = %74
  %81 = load %struct.drm_plane_state*, %struct.drm_plane_state** %27, align 8
  %82 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* %23, align 8
  %85 = icmp ne i64 %83, %84
  br i1 %85, label %116, label %86

86:                                               ; preds = %80
  %87 = load %struct.drm_plane_state*, %struct.drm_plane_state** %27, align 8
  %88 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* %24, align 8
  %91 = icmp ne i64 %89, %90
  br i1 %91, label %116, label %92

92:                                               ; preds = %86
  %93 = load %struct.drm_plane_state*, %struct.drm_plane_state** %27, align 8
  %94 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* %19, align 4
  %97 = icmp ne i32 %95, %96
  br i1 %97, label %116, label %98

98:                                               ; preds = %92
  %99 = load %struct.drm_plane_state*, %struct.drm_plane_state** %27, align 8
  %100 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %20, align 4
  %103 = icmp ne i32 %101, %102
  br i1 %103, label %116, label %104

104:                                              ; preds = %98
  %105 = load %struct.drm_plane_state*, %struct.drm_plane_state** %27, align 8
  %106 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %105, i32 0, i32 7
  %107 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %106, align 8
  %108 = icmp ne %struct.drm_framebuffer* %107, null
  %109 = xor i1 %108, true
  %110 = zext i1 %109 to i32
  %111 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %16, align 8
  %112 = icmp ne %struct.drm_framebuffer* %111, null
  %113 = xor i1 %112, true
  %114 = zext i1 %113 to i32
  %115 = icmp ne i32 %110, %114
  br i1 %115, label %116, label %117

116:                                              ; preds = %104, %98, %92, %86, %80, %74
  br label %258

117:                                              ; preds = %104
  %118 = load %struct.drm_plane*, %struct.drm_plane** %14, align 8
  %119 = call %struct.drm_plane_state* @intel_plane_duplicate_state(%struct.drm_plane* %118)
  store %struct.drm_plane_state* %119, %struct.drm_plane_state** %28, align 8
  %120 = load %struct.drm_plane_state*, %struct.drm_plane_state** %28, align 8
  %121 = icmp ne %struct.drm_plane_state* %120, null
  br i1 %121, label %125, label %122

122:                                              ; preds = %117
  %123 = load i32, i32* @ENOMEM, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %13, align 4
  br label %272

125:                                              ; preds = %117
  %126 = load %struct.drm_crtc*, %struct.drm_crtc** %15, align 8
  %127 = call i32 @intel_crtc_duplicate_state(%struct.drm_crtc* %126)
  %128 = call %struct.intel_crtc_state* @to_intel_crtc_state(i32 %127)
  store %struct.intel_crtc_state* %128, %struct.intel_crtc_state** %31, align 8
  %129 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %31, align 8
  %130 = icmp ne %struct.intel_crtc_state* %129, null
  br i1 %130, label %134, label %131

131:                                              ; preds = %125
  %132 = load i32, i32* @ENOMEM, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %32, align 4
  br label %237

134:                                              ; preds = %125
  %135 = load %struct.drm_plane_state*, %struct.drm_plane_state** %28, align 8
  %136 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %16, align 8
  %137 = call i32 @drm_atomic_set_fb_for_plane(%struct.drm_plane_state* %135, %struct.drm_framebuffer* %136)
  %138 = load i64, i64* %21, align 8
  %139 = load %struct.drm_plane_state*, %struct.drm_plane_state** %28, align 8
  %140 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %139, i32 0, i32 9
  store i64 %138, i64* %140, align 8
  %141 = load i64, i64* %22, align 8
  %142 = load %struct.drm_plane_state*, %struct.drm_plane_state** %28, align 8
  %143 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %142, i32 0, i32 8
  store i64 %141, i64* %143, align 8
  %144 = load i64, i64* %23, align 8
  %145 = load %struct.drm_plane_state*, %struct.drm_plane_state** %28, align 8
  %146 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %145, i32 0, i32 0
  store i64 %144, i64* %146, align 8
  %147 = load i64, i64* %24, align 8
  %148 = load %struct.drm_plane_state*, %struct.drm_plane_state** %28, align 8
  %149 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %148, i32 0, i32 1
  store i64 %147, i64* %149, align 8
  %150 = load i32, i32* %17, align 4
  %151 = load %struct.drm_plane_state*, %struct.drm_plane_state** %28, align 8
  %152 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %151, i32 0, i32 4
  store i32 %150, i32* %152, align 8
  %153 = load i32, i32* %18, align 4
  %154 = load %struct.drm_plane_state*, %struct.drm_plane_state** %28, align 8
  %155 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %154, i32 0, i32 5
  store i32 %153, i32* %155, align 4
  %156 = load i32, i32* %19, align 4
  %157 = load %struct.drm_plane_state*, %struct.drm_plane_state** %28, align 8
  %158 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %157, i32 0, i32 2
  store i32 %156, i32* %158, align 8
  %159 = load i32, i32* %20, align 4
  %160 = load %struct.drm_plane_state*, %struct.drm_plane_state** %28, align 8
  %161 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %160, i32 0, i32 3
  store i32 %159, i32* %161, align 4
  %162 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %30, align 8
  %163 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %31, align 8
  %164 = load %struct.drm_plane_state*, %struct.drm_plane_state** %27, align 8
  %165 = call i32 @to_intel_plane_state(%struct.drm_plane_state* %164)
  %166 = load %struct.drm_plane_state*, %struct.drm_plane_state** %28, align 8
  %167 = call i32 @to_intel_plane_state(%struct.drm_plane_state* %166)
  %168 = call i32 @intel_plane_atomic_check_with_state(%struct.intel_crtc_state* %162, %struct.intel_crtc_state* %163, i32 %165, i32 %167)
  store i32 %168, i32* %32, align 4
  %169 = load i32, i32* %32, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %134
  br label %237

172:                                              ; preds = %134
  %173 = load %struct.drm_i915_private*, %struct.drm_i915_private** %26, align 8
  %174 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %174, i32 0, i32 0
  %176 = call i32 @mutex_lock_interruptible(i32* %175)
  store i32 %176, i32* %32, align 4
  %177 = load i32, i32* %32, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %172
  br label %237

180:                                              ; preds = %172
  %181 = load %struct.drm_plane_state*, %struct.drm_plane_state** %28, align 8
  %182 = call i32 @to_intel_plane_state(%struct.drm_plane_state* %181)
  %183 = call i32 @intel_plane_pin_fb(i32 %182)
  store i32 %183, i32* %32, align 4
  %184 = load i32, i32* %32, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %187

186:                                              ; preds = %180
  br label %232

187:                                              ; preds = %180
  %188 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %16, align 8
  %189 = call i32 @to_intel_frontbuffer(%struct.drm_framebuffer* %188)
  %190 = load i32, i32* @ORIGIN_FLIP, align 4
  %191 = call i32 @intel_frontbuffer_flush(i32 %189, i32 %190)
  %192 = load %struct.drm_plane_state*, %struct.drm_plane_state** %27, align 8
  %193 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %192, i32 0, i32 7
  %194 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %193, align 8
  %195 = call i32 @to_intel_frontbuffer(%struct.drm_framebuffer* %194)
  %196 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %16, align 8
  %197 = call i32 @to_intel_frontbuffer(%struct.drm_framebuffer* %196)
  %198 = load %struct.intel_plane*, %struct.intel_plane** %29, align 8
  %199 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = call i32 @intel_frontbuffer_track(i32 %195, i32 %197, i32 %200)
  %202 = load %struct.drm_plane_state*, %struct.drm_plane_state** %28, align 8
  %203 = load %struct.drm_plane*, %struct.drm_plane** %14, align 8
  %204 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %203, i32 0, i32 0
  store %struct.drm_plane_state* %202, %struct.drm_plane_state** %204, align 8
  %205 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %31, align 8
  %206 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %30, align 8
  %209 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %208, i32 0, i32 1
  store i32 %207, i32* %209, align 4
  %210 = load %struct.drm_plane*, %struct.drm_plane** %14, align 8
  %211 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %210, i32 0, i32 0
  %212 = load %struct.drm_plane_state*, %struct.drm_plane_state** %211, align 8
  %213 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %212, i32 0, i32 6
  %214 = load i64, i64* %213, align 8
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %224

216:                                              ; preds = %187
  %217 = load %struct.intel_plane*, %struct.intel_plane** %29, align 8
  %218 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %30, align 8
  %219 = load %struct.drm_plane*, %struct.drm_plane** %14, align 8
  %220 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %219, i32 0, i32 0
  %221 = load %struct.drm_plane_state*, %struct.drm_plane_state** %220, align 8
  %222 = call i32 @to_intel_plane_state(%struct.drm_plane_state* %221)
  %223 = call i32 @intel_update_plane(%struct.intel_plane* %217, %struct.intel_crtc_state* %218, i32 %222)
  br label %228

224:                                              ; preds = %187
  %225 = load %struct.intel_plane*, %struct.intel_plane** %29, align 8
  %226 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %30, align 8
  %227 = call i32 @intel_disable_plane(%struct.intel_plane* %225, %struct.intel_crtc_state* %226)
  br label %228

228:                                              ; preds = %224, %216
  %229 = load %struct.drm_plane_state*, %struct.drm_plane_state** %27, align 8
  %230 = call i32 @to_intel_plane_state(%struct.drm_plane_state* %229)
  %231 = call i32 @intel_plane_unpin_fb(i32 %230)
  br label %232

232:                                              ; preds = %228, %186
  %233 = load %struct.drm_i915_private*, %struct.drm_i915_private** %26, align 8
  %234 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %234, i32 0, i32 0
  %236 = call i32 @mutex_unlock(i32* %235)
  br label %237

237:                                              ; preds = %232, %179, %171, %131
  %238 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %31, align 8
  %239 = icmp ne %struct.intel_crtc_state* %238, null
  br i1 %239, label %240, label %245

240:                                              ; preds = %237
  %241 = load %struct.drm_crtc*, %struct.drm_crtc** %15, align 8
  %242 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %31, align 8
  %243 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %242, i32 0, i32 0
  %244 = call i32 @intel_crtc_destroy_state(%struct.drm_crtc* %241, %struct.TYPE_6__* %243)
  br label %245

245:                                              ; preds = %240, %237
  %246 = load i32, i32* %32, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %252

248:                                              ; preds = %245
  %249 = load %struct.drm_plane*, %struct.drm_plane** %14, align 8
  %250 = load %struct.drm_plane_state*, %struct.drm_plane_state** %28, align 8
  %251 = call i32 @intel_plane_destroy_state(%struct.drm_plane* %249, %struct.drm_plane_state* %250)
  br label %256

252:                                              ; preds = %245
  %253 = load %struct.drm_plane*, %struct.drm_plane** %14, align 8
  %254 = load %struct.drm_plane_state*, %struct.drm_plane_state** %27, align 8
  %255 = call i32 @intel_plane_destroy_state(%struct.drm_plane* %253, %struct.drm_plane_state* %254)
  br label %256

256:                                              ; preds = %252, %248
  %257 = load i32, i32* %32, align 4
  store i32 %257, i32* %13, align 4
  br label %272

258:                                              ; preds = %116, %73, %57
  %259 = load %struct.drm_plane*, %struct.drm_plane** %14, align 8
  %260 = load %struct.drm_crtc*, %struct.drm_crtc** %15, align 8
  %261 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %16, align 8
  %262 = load i32, i32* %17, align 4
  %263 = load i32, i32* %18, align 4
  %264 = load i32, i32* %19, align 4
  %265 = load i32, i32* %20, align 4
  %266 = load i64, i64* %21, align 8
  %267 = load i64, i64* %22, align 8
  %268 = load i64, i64* %23, align 8
  %269 = load i64, i64* %24, align 8
  %270 = load %struct.drm_modeset_acquire_ctx*, %struct.drm_modeset_acquire_ctx** %25, align 8
  %271 = call i32 @drm_atomic_helper_update_plane(%struct.drm_plane* %259, %struct.drm_crtc* %260, %struct.drm_framebuffer* %261, i32 %262, i32 %263, i32 %264, i32 %265, i64 %266, i64 %267, i64 %268, i64 %269, %struct.drm_modeset_acquire_ctx* %270)
  store i32 %271, i32* %13, align 4
  br label %272

272:                                              ; preds = %258, %256, %122
  %273 = load i32, i32* %13, align 4
  ret i32 %273
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local %struct.intel_plane* @to_intel_plane(%struct.drm_plane*) #1

declare dso_local %struct.intel_crtc_state* @to_intel_crtc_state(i32) #1

declare dso_local i64 @needs_modeset(%struct.intel_crtc_state*) #1

declare dso_local i32 @try_wait_for_completion(i32*) #1

declare dso_local %struct.drm_plane_state* @intel_plane_duplicate_state(%struct.drm_plane*) #1

declare dso_local i32 @intel_crtc_duplicate_state(%struct.drm_crtc*) #1

declare dso_local i32 @drm_atomic_set_fb_for_plane(%struct.drm_plane_state*, %struct.drm_framebuffer*) #1

declare dso_local i32 @intel_plane_atomic_check_with_state(%struct.intel_crtc_state*, %struct.intel_crtc_state*, i32, i32) #1

declare dso_local i32 @to_intel_plane_state(%struct.drm_plane_state*) #1

declare dso_local i32 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @intel_plane_pin_fb(i32) #1

declare dso_local i32 @intel_frontbuffer_flush(i32, i32) #1

declare dso_local i32 @to_intel_frontbuffer(%struct.drm_framebuffer*) #1

declare dso_local i32 @intel_frontbuffer_track(i32, i32, i32) #1

declare dso_local i32 @intel_update_plane(%struct.intel_plane*, %struct.intel_crtc_state*, i32) #1

declare dso_local i32 @intel_disable_plane(%struct.intel_plane*, %struct.intel_crtc_state*) #1

declare dso_local i32 @intel_plane_unpin_fb(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @intel_crtc_destroy_state(%struct.drm_crtc*, %struct.TYPE_6__*) #1

declare dso_local i32 @intel_plane_destroy_state(%struct.drm_plane*, %struct.drm_plane_state*) #1

declare dso_local i32 @drm_atomic_helper_update_plane(%struct.drm_plane*, %struct.drm_crtc*, %struct.drm_framebuffer*, i32, i32, i32, i32, i64, i64, i64, i64, %struct.drm_modeset_acquire_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
