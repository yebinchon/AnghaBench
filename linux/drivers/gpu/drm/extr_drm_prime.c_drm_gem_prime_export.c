
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct drm_gem_object {int resv; int size; struct drm_device* dev; } ;
struct drm_device {TYPE_2__* driver; } ;
struct dma_buf_export_info {int flags; int resv; struct drm_gem_object* priv; int size; int * ops; int owner; int exp_name; } ;
struct dma_buf {int dummy; } ;
struct TYPE_4__ {TYPE_1__* fops; } ;
struct TYPE_3__ {int owner; } ;


 int KBUILD_MODNAME ;
 struct dma_buf* drm_gem_dmabuf_export (struct drm_device*,struct dma_buf_export_info*) ;
 int drm_gem_prime_dmabuf_ops ;

struct dma_buf *drm_gem_prime_export(struct drm_gem_object *obj,
         int flags)
{
 struct drm_device *dev = obj->dev;
 struct dma_buf_export_info exp_info = {
  .exp_name = KBUILD_MODNAME,
  .owner = dev->driver->fops->owner,
  .ops = &drm_gem_prime_dmabuf_ops,
  .size = obj->size,
  .flags = flags,
  .priv = obj,
  .resv = obj->resv,
 };

 return drm_gem_dmabuf_export(dev, &exp_info);
}
