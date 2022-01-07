; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_intel_prepare_plane_fb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_intel_prepare_plane_fb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32, %struct.drm_framebuffer* }
%struct.drm_framebuffer = type { i32 }
%struct.drm_plane_state = type { %struct.dma_fence*, i32, %struct.drm_framebuffer*, i32 }
%struct.dma_fence = type { i32 }
%struct.intel_atomic_state = type { i32, i32 }
%struct.drm_i915_private = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.drm_i915_gem_object = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.intel_crtc_state = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@I915_FENCE_TIMEOUT = common dso_local global i32 0, align 4
@ORIGIN_DIRTYFB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_prepare_plane_fb(%struct.drm_plane* %0, %struct.drm_plane_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_plane*, align 8
  %5 = alloca %struct.drm_plane_state*, align 8
  %6 = alloca %struct.intel_atomic_state*, align 8
  %7 = alloca %struct.drm_i915_private*, align 8
  %8 = alloca %struct.drm_framebuffer*, align 8
  %9 = alloca %struct.drm_i915_gem_object*, align 8
  %10 = alloca %struct.drm_i915_gem_object*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.intel_crtc_state*, align 8
  %13 = alloca %struct.dma_fence*, align 8
  store %struct.drm_plane* %0, %struct.drm_plane** %4, align 8
  store %struct.drm_plane_state* %1, %struct.drm_plane_state** %5, align 8
  %14 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %15 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = call %struct.intel_atomic_state* @to_intel_atomic_state(i32 %16)
  store %struct.intel_atomic_state* %17, %struct.intel_atomic_state** %6, align 8
  %18 = load %struct.drm_plane*, %struct.drm_plane** %4, align 8
  %19 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call %struct.drm_i915_private* @to_i915(i32 %20)
  store %struct.drm_i915_private* %21, %struct.drm_i915_private** %7, align 8
  %22 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %23 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %22, i32 0, i32 2
  %24 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %23, align 8
  store %struct.drm_framebuffer* %24, %struct.drm_framebuffer** %8, align 8
  %25 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %26 = call %struct.drm_i915_gem_object* @intel_fb_obj(%struct.drm_framebuffer* %25)
  store %struct.drm_i915_gem_object* %26, %struct.drm_i915_gem_object** %9, align 8
  %27 = load %struct.drm_plane*, %struct.drm_plane** %4, align 8
  %28 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %30, align 8
  %32 = call %struct.drm_i915_gem_object* @intel_fb_obj(%struct.drm_framebuffer* %31)
  store %struct.drm_i915_gem_object* %32, %struct.drm_i915_gem_object** %10, align 8
  %33 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %10, align 8
  %34 = icmp ne %struct.drm_i915_gem_object* %33, null
  br i1 %34, label %35, label %62

35:                                               ; preds = %2
  %36 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %6, align 8
  %37 = load %struct.drm_plane*, %struct.drm_plane** %4, align 8
  %38 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %37, i32 0, i32 0
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @to_intel_crtc(i32 %41)
  %43 = call %struct.intel_crtc_state* @intel_atomic_get_new_crtc_state(%struct.intel_atomic_state* %36, i32 %42)
  store %struct.intel_crtc_state* %43, %struct.intel_crtc_state** %12, align 8
  %44 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %12, align 8
  %45 = call i64 @needs_modeset(%struct.intel_crtc_state* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %61

47:                                               ; preds = %35
  %48 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %6, align 8
  %49 = getelementptr inbounds %struct.intel_atomic_state, %struct.intel_atomic_state* %48, i32 0, i32 1
  %50 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %10, align 8
  %51 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @GFP_KERNEL, align 4
  %55 = call i32 @i915_sw_fence_await_reservation(i32* %49, i32 %53, i32* null, i32 0, i32 0, i32 %54)
  store i32 %55, i32* %11, align 4
  %56 = load i32, i32* %11, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %47
  %59 = load i32, i32* %11, align 4
  store i32 %59, i32* %3, align 4
  br label %179

60:                                               ; preds = %47
  br label %61

61:                                               ; preds = %60, %35
  br label %62

62:                                               ; preds = %61, %2
  %63 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %64 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %63, i32 0, i32 0
  %65 = load %struct.dma_fence*, %struct.dma_fence** %64, align 8
  %66 = icmp ne %struct.dma_fence* %65, null
  br i1 %66, label %67, label %81

67:                                               ; preds = %62
  %68 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %6, align 8
  %69 = getelementptr inbounds %struct.intel_atomic_state, %struct.intel_atomic_state* %68, i32 0, i32 1
  %70 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %71 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %70, i32 0, i32 0
  %72 = load %struct.dma_fence*, %struct.dma_fence** %71, align 8
  %73 = load i32, i32* @I915_FENCE_TIMEOUT, align 4
  %74 = load i32, i32* @GFP_KERNEL, align 4
  %75 = call i32 @i915_sw_fence_await_dma_fence(i32* %69, %struct.dma_fence* %72, i32 %73, i32 %74)
  store i32 %75, i32* %11, align 4
  %76 = load i32, i32* %11, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %67
  %79 = load i32, i32* %11, align 4
  store i32 %79, i32* %3, align 4
  br label %179

80:                                               ; preds = %67
  br label %81

81:                                               ; preds = %80, %62
  %82 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %9, align 8
  %83 = icmp ne %struct.drm_i915_gem_object* %82, null
  br i1 %83, label %85, label %84

84:                                               ; preds = %81
  store i32 0, i32* %3, align 4
  br label %179

85:                                               ; preds = %81
  %86 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %9, align 8
  %87 = call i32 @i915_gem_object_pin_pages(%struct.drm_i915_gem_object* %86)
  store i32 %87, i32* %11, align 4
  %88 = load i32, i32* %11, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %85
  %91 = load i32, i32* %11, align 4
  store i32 %91, i32* %3, align 4
  br label %179

92:                                               ; preds = %85
  %93 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %94 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = call i32 @mutex_lock_interruptible(i32* %95)
  store i32 %96, i32* %11, align 4
  %97 = load i32, i32* %11, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %92
  %100 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %9, align 8
  %101 = call i32 @i915_gem_object_unpin_pages(%struct.drm_i915_gem_object* %100)
  %102 = load i32, i32* %11, align 4
  store i32 %102, i32* %3, align 4
  br label %179

103:                                              ; preds = %92
  %104 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %105 = call i32 @to_intel_plane_state(%struct.drm_plane_state* %104)
  %106 = call i32 @intel_plane_pin_fb(i32 %105)
  store i32 %106, i32* %11, align 4
  %107 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %108 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 0
  %110 = call i32 @mutex_unlock(i32* %109)
  %111 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %9, align 8
  %112 = call i32 @i915_gem_object_unpin_pages(%struct.drm_i915_gem_object* %111)
  %113 = load i32, i32* %11, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %103
  %116 = load i32, i32* %11, align 4
  store i32 %116, i32* %3, align 4
  br label %179

117:                                              ; preds = %103
  %118 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %9, align 8
  %119 = call i32 @fb_obj_bump_render_priority(%struct.drm_i915_gem_object* %118)
  %120 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %9, align 8
  %121 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @ORIGIN_DIRTYFB, align 4
  %124 = call i32 @intel_frontbuffer_flush(i32 %122, i32 %123)
  %125 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %126 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %125, i32 0, i32 0
  %127 = load %struct.dma_fence*, %struct.dma_fence** %126, align 8
  %128 = icmp ne %struct.dma_fence* %127, null
  br i1 %128, label %160, label %129

129:                                              ; preds = %117
  %130 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %6, align 8
  %131 = getelementptr inbounds %struct.intel_atomic_state, %struct.intel_atomic_state* %130, i32 0, i32 1
  %132 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %9, align 8
  %133 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @I915_FENCE_TIMEOUT, align 4
  %137 = load i32, i32* @GFP_KERNEL, align 4
  %138 = call i32 @i915_sw_fence_await_reservation(i32* %131, i32 %135, i32* null, i32 0, i32 %136, i32 %137)
  store i32 %138, i32* %11, align 4
  %139 = load i32, i32* %11, align 4
  %140 = icmp slt i32 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %129
  %142 = load i32, i32* %11, align 4
  store i32 %142, i32* %3, align 4
  br label %179

143:                                              ; preds = %129
  %144 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %9, align 8
  %145 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = call %struct.dma_fence* @dma_resv_get_excl_rcu(i32 %147)
  store %struct.dma_fence* %148, %struct.dma_fence** %13, align 8
  %149 = load %struct.dma_fence*, %struct.dma_fence** %13, align 8
  %150 = icmp ne %struct.dma_fence* %149, null
  br i1 %150, label %151, label %159

151:                                              ; preds = %143
  %152 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %153 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 8
  %155 = load %struct.dma_fence*, %struct.dma_fence** %13, align 8
  %156 = call i32 @add_rps_boost_after_vblank(i32 %154, %struct.dma_fence* %155)
  %157 = load %struct.dma_fence*, %struct.dma_fence** %13, align 8
  %158 = call i32 @dma_fence_put(%struct.dma_fence* %157)
  br label %159

159:                                              ; preds = %151, %143
  br label %168

160:                                              ; preds = %117
  %161 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %162 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 8
  %164 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %165 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %164, i32 0, i32 0
  %166 = load %struct.dma_fence*, %struct.dma_fence** %165, align 8
  %167 = call i32 @add_rps_boost_after_vblank(i32 %163, %struct.dma_fence* %166)
  br label %168

168:                                              ; preds = %160, %159
  %169 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %6, align 8
  %170 = getelementptr inbounds %struct.intel_atomic_state, %struct.intel_atomic_state* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %178, label %173

173:                                              ; preds = %168
  %174 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %175 = call i32 @intel_rps_mark_interactive(%struct.drm_i915_private* %174, i32 1)
  %176 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %6, align 8
  %177 = getelementptr inbounds %struct.intel_atomic_state, %struct.intel_atomic_state* %176, i32 0, i32 0
  store i32 1, i32* %177, align 4
  br label %178

178:                                              ; preds = %173, %168
  store i32 0, i32* %3, align 4
  br label %179

179:                                              ; preds = %178, %141, %115, %99, %90, %84, %78, %58
  %180 = load i32, i32* %3, align 4
  ret i32 %180
}

declare dso_local %struct.intel_atomic_state* @to_intel_atomic_state(i32) #1

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local %struct.drm_i915_gem_object* @intel_fb_obj(%struct.drm_framebuffer*) #1

declare dso_local %struct.intel_crtc_state* @intel_atomic_get_new_crtc_state(%struct.intel_atomic_state*, i32) #1

declare dso_local i32 @to_intel_crtc(i32) #1

declare dso_local i64 @needs_modeset(%struct.intel_crtc_state*) #1

declare dso_local i32 @i915_sw_fence_await_reservation(i32*, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @i915_sw_fence_await_dma_fence(i32*, %struct.dma_fence*, i32, i32) #1

declare dso_local i32 @i915_gem_object_pin_pages(%struct.drm_i915_gem_object*) #1

declare dso_local i32 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @i915_gem_object_unpin_pages(%struct.drm_i915_gem_object*) #1

declare dso_local i32 @intel_plane_pin_fb(i32) #1

declare dso_local i32 @to_intel_plane_state(%struct.drm_plane_state*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @fb_obj_bump_render_priority(%struct.drm_i915_gem_object*) #1

declare dso_local i32 @intel_frontbuffer_flush(i32, i32) #1

declare dso_local %struct.dma_fence* @dma_resv_get_excl_rcu(i32) #1

declare dso_local i32 @add_rps_boost_after_vblank(i32, %struct.dma_fence*) #1

declare dso_local i32 @dma_fence_put(%struct.dma_fence*) #1

declare dso_local i32 @intel_rps_mark_interactive(%struct.drm_i915_private*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
