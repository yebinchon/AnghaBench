
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {int dummy; } ;
struct drm_gem_object {struct drm_device* dev; } ;
struct drm_device {TYPE_1__* driver; } ;
struct dma_buf {struct drm_gem_object* priv; } ;
struct TYPE_2__ {int (* gem_prime_mmap ) (struct drm_gem_object*,struct vm_area_struct*) ;} ;


 int ENOSYS ;
 int stub1 (struct drm_gem_object*,struct vm_area_struct*) ;

int drm_gem_dmabuf_mmap(struct dma_buf *dma_buf, struct vm_area_struct *vma)
{
 struct drm_gem_object *obj = dma_buf->priv;
 struct drm_device *dev = obj->dev;

 if (!dev->driver->gem_prime_mmap)
  return -ENOSYS;

 return dev->driver->gem_prime_mmap(obj, vma);
}
