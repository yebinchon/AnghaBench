
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_framebuffer {int dummy; } ;
struct intel_framebuffer {struct drm_framebuffer base; } ;
struct drm_mode_fb_cmd2 {int dummy; } ;
struct drm_i915_gem_object {int dummy; } ;


 int ENOMEM ;
 struct drm_framebuffer* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int intel_framebuffer_init (struct intel_framebuffer*,struct drm_i915_gem_object*,struct drm_mode_fb_cmd2*) ;
 int kfree (struct intel_framebuffer*) ;
 struct intel_framebuffer* kzalloc (int,int ) ;

struct drm_framebuffer *
intel_framebuffer_create(struct drm_i915_gem_object *obj,
    struct drm_mode_fb_cmd2 *mode_cmd)
{
 struct intel_framebuffer *intel_fb;
 int ret;

 intel_fb = kzalloc(sizeof(*intel_fb), GFP_KERNEL);
 if (!intel_fb)
  return ERR_PTR(-ENOMEM);

 ret = intel_framebuffer_init(intel_fb, obj, mode_cmd);
 if (ret)
  goto err;

 return &intel_fb->base;

err:
 kfree(intel_fb);
 return ERR_PTR(ret);
}
