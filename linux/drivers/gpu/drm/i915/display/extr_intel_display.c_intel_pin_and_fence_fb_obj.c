
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct i915_vma {scalar_t__ fence; } ;
struct i915_ggtt_view {int dummy; } ;
struct TYPE_2__ {int pending_fb_pin; } ;
struct drm_i915_private {int runtime_pm; TYPE_1__ gpu_error; } ;
struct drm_i915_gem_object {int dummy; } ;
struct drm_framebuffer {struct drm_device* dev; } ;
struct drm_device {int struct_mutex; } ;
typedef int intel_wakeref_t ;


 struct i915_vma* ERR_PTR (int) ;
 scalar_t__ HAS_GMCH (struct drm_i915_private*) ;
 int INTEL_GEN (struct drm_i915_private*) ;
 scalar_t__ IS_ERR (struct i915_vma*) ;
 unsigned int PIN_MAPPABLE ;
 unsigned long PLANE_HAS_FENCE ;
 int WARN_ON (int) ;
 int atomic_dec (int *) ;
 int atomic_inc (int *) ;
 int i915_gem_object_lock (struct drm_i915_gem_object*) ;
 struct i915_vma* i915_gem_object_pin_to_display_plane (struct drm_i915_gem_object*,int,struct i915_ggtt_view const*,unsigned int) ;
 int i915_gem_object_unlock (struct drm_i915_gem_object*) ;
 int i915_gem_object_unpin_from_display_plane (struct i915_vma*) ;
 int i915_vma_get (struct i915_vma*) ;
 scalar_t__ i915_vma_is_map_and_fenceable (struct i915_vma*) ;
 int i915_vma_pin_fence (struct i915_vma*) ;
 struct drm_i915_gem_object* intel_fb_obj (struct drm_framebuffer*) ;
 int intel_runtime_pm_get (int *) ;
 int intel_runtime_pm_put (int *,int ) ;
 scalar_t__ intel_scanout_needs_vtd_wa (struct drm_i915_private*) ;
 int intel_surf_alignment (struct drm_framebuffer*,int ) ;
 int mutex_is_locked (int *) ;
 struct drm_i915_private* to_i915 (struct drm_device*) ;

struct i915_vma *
intel_pin_and_fence_fb_obj(struct drm_framebuffer *fb,
      const struct i915_ggtt_view *view,
      bool uses_fence,
      unsigned long *out_flags)
{
 struct drm_device *dev = fb->dev;
 struct drm_i915_private *dev_priv = to_i915(dev);
 struct drm_i915_gem_object *obj = intel_fb_obj(fb);
 intel_wakeref_t wakeref;
 struct i915_vma *vma;
 unsigned int pinctl;
 u32 alignment;

 WARN_ON(!mutex_is_locked(&dev->struct_mutex));

 alignment = intel_surf_alignment(fb, 0);






 if (intel_scanout_needs_vtd_wa(dev_priv) && alignment < 256 * 1024)
  alignment = 256 * 1024;
 wakeref = intel_runtime_pm_get(&dev_priv->runtime_pm);
 i915_gem_object_lock(obj);

 atomic_inc(&dev_priv->gpu_error.pending_fb_pin);

 pinctl = 0;
 if (HAS_GMCH(dev_priv))
  pinctl |= PIN_MAPPABLE;

 vma = i915_gem_object_pin_to_display_plane(obj,
         alignment, view, pinctl);
 if (IS_ERR(vma))
  goto err;

 if (uses_fence && i915_vma_is_map_and_fenceable(vma)) {
  int ret;
  ret = i915_vma_pin_fence(vma);
  if (ret != 0 && INTEL_GEN(dev_priv) < 4) {
   i915_gem_object_unpin_from_display_plane(vma);
   vma = ERR_PTR(ret);
   goto err;
  }

  if (ret == 0 && vma->fence)
   *out_flags |= PLANE_HAS_FENCE;
 }

 i915_vma_get(vma);
err:
 atomic_dec(&dev_priv->gpu_error.pending_fb_pin);

 i915_gem_object_unlock(obj);
 intel_runtime_pm_put(&dev_priv->runtime_pm, wakeref);
 return vma;
}
