
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct drm_framebuffer_funcs {int dummy; } ;
struct drm_framebuffer {int base; int head; int comm; struct drm_framebuffer_funcs const* funcs; int filp_head; int format; struct drm_device* dev; } ;
struct TYPE_3__ {int fb_lock; int fb_list; int num_fb; } ;
struct drm_device {TYPE_1__ mode_config; } ;
struct TYPE_4__ {int comm; } ;


 int DRM_MODE_OBJECT_FB ;
 int EINVAL ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int __drm_mode_object_add (struct drm_device*,int *,int ,int,int ) ;
 TYPE_2__* current ;
 int drm_framebuffer_free ;
 int drm_mode_object_register (struct drm_device*,int *) ;
 int list_add (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int strcpy (int ,int ) ;

int drm_framebuffer_init(struct drm_device *dev, struct drm_framebuffer *fb,
    const struct drm_framebuffer_funcs *funcs)
{
 int ret;

 if (WARN_ON_ONCE(fb->dev != dev || !fb->format))
  return -EINVAL;

 INIT_LIST_HEAD(&fb->filp_head);

 fb->funcs = funcs;
 strcpy(fb->comm, current->comm);

 ret = __drm_mode_object_add(dev, &fb->base, DRM_MODE_OBJECT_FB,
        0, drm_framebuffer_free);
 if (ret)
  goto out;

 mutex_lock(&dev->mode_config.fb_lock);
 dev->mode_config.num_fb++;
 list_add(&fb->head, &dev->mode_config.fb_list);
 mutex_unlock(&dev->mode_config.fb_lock);

 drm_mode_object_register(dev, &fb->base);
out:
 return ret;
}
