
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_gem_object {struct drm_device* dev; } ;
struct drm_device {int dummy; } ;
struct dma_buf {struct drm_gem_object* priv; } ;


 int drm_dev_put (struct drm_device*) ;
 int drm_gem_object_put_unlocked (struct drm_gem_object*) ;

void drm_gem_dmabuf_release(struct dma_buf *dma_buf)
{
 struct drm_gem_object *obj = dma_buf->priv;
 struct drm_device *dev = obj->dev;


 drm_gem_object_put_unlocked(obj);

 drm_dev_put(dev);
}
