
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct drm_mode_object {int dummy; } ;
struct drm_framebuffer {int dummy; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;


 int DRM_MODE_OBJECT_FB ;
 struct drm_mode_object* __drm_mode_object_find (struct drm_device*,struct drm_file*,int ,int ) ;
 struct drm_framebuffer* obj_to_fb (struct drm_mode_object*) ;

struct drm_framebuffer *drm_framebuffer_lookup(struct drm_device *dev,
            struct drm_file *file_priv,
            uint32_t id)
{
 struct drm_mode_object *obj;
 struct drm_framebuffer *fb = ((void*)0);

 obj = __drm_mode_object_find(dev, file_priv, id, DRM_MODE_OBJECT_FB);
 if (obj)
  fb = obj_to_fb(obj);
 return fb;
}
