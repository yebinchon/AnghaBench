
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_mode_fb_cmd2 {scalar_t__* handles; int * pitches; int flags; int pixel_format; int height; int width; } ;
struct drm_framebuffer {int dummy; } ;
struct drm_format_info {int num_planes; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ import_attach; } ;
struct armada_gem_object {TYPE_1__ obj; int mapped; int sgt; } ;
struct armada_framebuffer {struct drm_framebuffer fb; } ;


 int DRM_DEBUG_DRIVER (char*,int ,int ,int ,int ,int ,int ,int ) ;
 int DRM_ERROR (char*,int) ;
 int EINVAL ;
 int ENOENT ;
 struct drm_framebuffer* ERR_PTR (int) ;
 scalar_t__ IS_ERR (struct armada_framebuffer*) ;
 int PTR_ERR (struct armada_framebuffer*) ;
 struct armada_framebuffer* armada_framebuffer_create (struct drm_device*,struct drm_mode_fb_cmd2 const*,struct armada_gem_object*) ;
 int armada_gem_map_import (struct armada_gem_object*) ;
 struct armada_gem_object* armada_gem_object_lookup (struct drm_file*,scalar_t__) ;
 int drm_gem_object_put_unlocked (TYPE_1__*) ;
 struct drm_format_info* drm_get_format_info (struct drm_device*,struct drm_mode_fb_cmd2 const*) ;

struct drm_framebuffer *armada_fb_create(struct drm_device *dev,
 struct drm_file *dfile, const struct drm_mode_fb_cmd2 *mode)
{
 const struct drm_format_info *info = drm_get_format_info(dev, mode);
 struct armada_gem_object *obj;
 struct armada_framebuffer *dfb;
 int ret;

 DRM_DEBUG_DRIVER("w%u h%u pf%08x f%u p%u,%u,%u\n",
  mode->width, mode->height, mode->pixel_format,
  mode->flags, mode->pitches[0], mode->pitches[1],
  mode->pitches[2]);


 if (info->num_planes > 1 &&
     (mode->handles[0] != mode->handles[1] ||
      mode->handles[0] != mode->handles[2])) {
  ret = -EINVAL;
  goto err;
 }

 obj = armada_gem_object_lookup(dfile, mode->handles[0]);
 if (!obj) {
  ret = -ENOENT;
  goto err;
 }

 if (obj->obj.import_attach && !obj->sgt) {
  ret = armada_gem_map_import(obj);
  if (ret)
   goto err_unref;
 }


 if (!obj->mapped) {
  ret = -EINVAL;
  goto err_unref;
 }

 dfb = armada_framebuffer_create(dev, mode, obj);
 if (IS_ERR(dfb)) {
  ret = PTR_ERR(dfb);
  goto err;
 }

 drm_gem_object_put_unlocked(&obj->obj);

 return &dfb->fb;

 err_unref:
 drm_gem_object_put_unlocked(&obj->obj);
 err:
 DRM_ERROR("failed to initialize framebuffer: %d\n", ret);
 return ERR_PTR(ret);
}
