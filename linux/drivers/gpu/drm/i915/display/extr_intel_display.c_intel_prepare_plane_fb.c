
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct intel_crtc_state {int dummy; } ;
struct intel_atomic_state {int rps_interactive; int commit_ready; } ;
struct drm_plane_state {struct dma_fence* fence; int crtc; struct drm_framebuffer* fb; int state; } ;
struct drm_plane {TYPE_1__* state; int dev; } ;
struct TYPE_5__ {int struct_mutex; } ;
struct drm_i915_private {TYPE_2__ drm; } ;
struct TYPE_6__ {int resv; } ;
struct drm_i915_gem_object {TYPE_3__ base; int frontbuffer; } ;
struct drm_framebuffer {int dummy; } ;
struct dma_fence {int dummy; } ;
struct TYPE_4__ {int crtc; struct drm_framebuffer* fb; } ;


 int GFP_KERNEL ;
 int I915_FENCE_TIMEOUT ;
 int ORIGIN_DIRTYFB ;
 int add_rps_boost_after_vblank (int ,struct dma_fence*) ;
 int dma_fence_put (struct dma_fence*) ;
 struct dma_fence* dma_resv_get_excl_rcu (int ) ;
 int fb_obj_bump_render_priority (struct drm_i915_gem_object*) ;
 int i915_gem_object_pin_pages (struct drm_i915_gem_object*) ;
 int i915_gem_object_unpin_pages (struct drm_i915_gem_object*) ;
 int i915_sw_fence_await_dma_fence (int *,struct dma_fence*,int ,int ) ;
 int i915_sw_fence_await_reservation (int *,int ,int *,int,int ,int ) ;
 struct intel_crtc_state* intel_atomic_get_new_crtc_state (struct intel_atomic_state*,int ) ;
 struct drm_i915_gem_object* intel_fb_obj (struct drm_framebuffer*) ;
 int intel_frontbuffer_flush (int ,int ) ;
 int intel_plane_pin_fb (int ) ;
 int intel_rps_mark_interactive (struct drm_i915_private*,int) ;
 int mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ needs_modeset (struct intel_crtc_state*) ;
 struct drm_i915_private* to_i915 (int ) ;
 struct intel_atomic_state* to_intel_atomic_state (int ) ;
 int to_intel_crtc (int ) ;
 int to_intel_plane_state (struct drm_plane_state*) ;

int
intel_prepare_plane_fb(struct drm_plane *plane,
         struct drm_plane_state *new_state)
{
 struct intel_atomic_state *intel_state =
  to_intel_atomic_state(new_state->state);
 struct drm_i915_private *dev_priv = to_i915(plane->dev);
 struct drm_framebuffer *fb = new_state->fb;
 struct drm_i915_gem_object *obj = intel_fb_obj(fb);
 struct drm_i915_gem_object *old_obj = intel_fb_obj(plane->state->fb);
 int ret;

 if (old_obj) {
  struct intel_crtc_state *crtc_state =
   intel_atomic_get_new_crtc_state(intel_state,
       to_intel_crtc(plane->state->crtc));
  if (needs_modeset(crtc_state)) {
   ret = i915_sw_fence_await_reservation(&intel_state->commit_ready,
             old_obj->base.resv, ((void*)0),
             0, 0,
             GFP_KERNEL);
   if (ret < 0)
    return ret;
  }
 }

 if (new_state->fence) {
  ret = i915_sw_fence_await_dma_fence(&intel_state->commit_ready,
          new_state->fence,
          I915_FENCE_TIMEOUT,
          GFP_KERNEL);
  if (ret < 0)
   return ret;
 }

 if (!obj)
  return 0;

 ret = i915_gem_object_pin_pages(obj);
 if (ret)
  return ret;

 ret = mutex_lock_interruptible(&dev_priv->drm.struct_mutex);
 if (ret) {
  i915_gem_object_unpin_pages(obj);
  return ret;
 }

 ret = intel_plane_pin_fb(to_intel_plane_state(new_state));

 mutex_unlock(&dev_priv->drm.struct_mutex);
 i915_gem_object_unpin_pages(obj);
 if (ret)
  return ret;

 fb_obj_bump_render_priority(obj);
 intel_frontbuffer_flush(obj->frontbuffer, ORIGIN_DIRTYFB);

 if (!new_state->fence) {
  struct dma_fence *fence;

  ret = i915_sw_fence_await_reservation(&intel_state->commit_ready,
            obj->base.resv, ((void*)0),
            0, I915_FENCE_TIMEOUT,
            GFP_KERNEL);
  if (ret < 0)
   return ret;

  fence = dma_resv_get_excl_rcu(obj->base.resv);
  if (fence) {
   add_rps_boost_after_vblank(new_state->crtc, fence);
   dma_fence_put(fence);
  }
 } else {
  add_rps_boost_after_vblank(new_state->crtc, new_state->fence);
 }
 if (!intel_state->rps_interactive) {
  intel_rps_mark_interactive(dev_priv, 1);
  intel_state->rps_interactive = 1;
 }

 return 0;
}
