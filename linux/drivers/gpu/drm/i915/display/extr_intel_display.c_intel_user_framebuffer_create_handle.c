
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ mm; } ;
struct drm_i915_gem_object {int base; TYPE_1__ userptr; } ;
struct drm_framebuffer {int dummy; } ;
struct drm_file {int dummy; } ;


 int DRM_DEBUG (char*) ;
 int EINVAL ;
 int drm_gem_handle_create (struct drm_file*,int *,unsigned int*) ;
 struct drm_i915_gem_object* intel_fb_obj (struct drm_framebuffer*) ;

__attribute__((used)) static int intel_user_framebuffer_create_handle(struct drm_framebuffer *fb,
      struct drm_file *file,
      unsigned int *handle)
{
 struct drm_i915_gem_object *obj = intel_fb_obj(fb);

 if (obj->userptr.mm) {
  DRM_DEBUG("attempting to use a userptr for a framebuffer, denied\n");
  return -EINVAL;
 }

 return drm_gem_handle_create(file, &obj->base, handle);
}
