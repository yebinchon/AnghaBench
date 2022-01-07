
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct intel_initial_plane_config {scalar_t__ base; scalar_t__ size; int tiling; TYPE_2__* fb; } ;
struct TYPE_4__ {struct drm_device* dev; } ;
struct intel_crtc {TYPE_1__ base; } ;
struct drm_mode_fb_cmd2 {int* pitches; int* modifier; int flags; int height; int width; int pixel_format; int member_0; } ;
struct drm_i915_private {int stolen_usable_size; } ;
struct drm_i915_gem_object {int tiling_and_stride; } ;
struct drm_framebuffer {int modifier; int* pitches; int height; int width; TYPE_3__* format; } ;
struct drm_device {int struct_mutex; } ;
struct TYPE_6__ {int format; } ;
struct TYPE_5__ {struct drm_framebuffer base; } ;


 int DRM_DEBUG_DRIVER (char*,int) ;
 int DRM_DEBUG_KMS (char*,...) ;

 int DRM_MODE_FB_MODIFIERS ;





 int MISSING_CASE (int) ;
 int PAGE_SIZE ;
 struct drm_i915_gem_object* i915_gem_object_create_stolen_for_preallocated (struct drm_i915_private*,int,int,int) ;
 int i915_gem_object_put (struct drm_i915_gem_object*) ;
 scalar_t__ intel_framebuffer_init (int ,struct drm_i915_gem_object*,struct drm_mode_fb_cmd2*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int round_down (scalar_t__,int ) ;
 int round_up (scalar_t__,int ) ;
 struct drm_i915_private* to_i915 (struct drm_device*) ;
 int to_intel_framebuffer (struct drm_framebuffer*) ;

__attribute__((used)) static bool
intel_alloc_initial_plane_obj(struct intel_crtc *crtc,
         struct intel_initial_plane_config *plane_config)
{
 struct drm_device *dev = crtc->base.dev;
 struct drm_i915_private *dev_priv = to_i915(dev);
 struct drm_mode_fb_cmd2 mode_cmd = { 0 };
 struct drm_framebuffer *fb = &plane_config->fb->base;
 u32 base_aligned = round_down(plane_config->base, PAGE_SIZE);
 u32 size_aligned = round_up(plane_config->base + plane_config->size,
        PAGE_SIZE);
 struct drm_i915_gem_object *obj;
 bool ret = 0;

 size_aligned -= base_aligned;

 if (plane_config->size == 0)
  return 0;




 if (size_aligned * 2 > dev_priv->stolen_usable_size)
  return 0;

 switch (fb->modifier) {
 case 133:
 case 132:
 case 131:
  break;
 default:
  DRM_DEBUG_DRIVER("Unsupported modifier for initial FB: 0x%llx\n",
     fb->modifier);
  return 0;
 }

 mutex_lock(&dev->struct_mutex);
 obj = i915_gem_object_create_stolen_for_preallocated(dev_priv,
            base_aligned,
            base_aligned,
            size_aligned);
 mutex_unlock(&dev->struct_mutex);
 if (!obj)
  return 0;

 switch (plane_config->tiling) {
 case 130:
  break;
 case 129:
 case 128:
  obj->tiling_and_stride = fb->pitches[0] | plane_config->tiling;
  break;
 default:
  MISSING_CASE(plane_config->tiling);
  goto out;
 }

 mode_cmd.pixel_format = fb->format->format;
 mode_cmd.width = fb->width;
 mode_cmd.height = fb->height;
 mode_cmd.pitches[0] = fb->pitches[0];
 mode_cmd.modifier[0] = fb->modifier;
 mode_cmd.flags = DRM_MODE_FB_MODIFIERS;

 if (intel_framebuffer_init(to_intel_framebuffer(fb), obj, &mode_cmd)) {
  DRM_DEBUG_KMS("intel fb init failed\n");
  goto out;
 }


 DRM_DEBUG_KMS("initial plane fb obj %p\n", obj);
 ret = 1;
out:
 i915_gem_object_put(obj);
 return ret;
}
