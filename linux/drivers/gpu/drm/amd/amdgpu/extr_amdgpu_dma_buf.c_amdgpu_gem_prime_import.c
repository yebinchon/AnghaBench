
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_gem_object {struct drm_device* dev; } ;
struct drm_device {int dummy; } ;
struct dma_buf {struct drm_gem_object* priv; int * ops; } ;


 int amdgpu_dmabuf_ops ;
 int drm_gem_object_get (struct drm_gem_object*) ;
 struct drm_gem_object* drm_gem_prime_import (struct drm_device*,struct dma_buf*) ;

struct drm_gem_object *amdgpu_gem_prime_import(struct drm_device *dev,
         struct dma_buf *dma_buf)
{
 struct drm_gem_object *obj;

 if (dma_buf->ops == &amdgpu_dmabuf_ops) {
  obj = dma_buf->priv;
  if (obj->dev == dev) {




   drm_gem_object_get(obj);
   return obj;
  }
 }

 return drm_gem_prime_import(dev, dma_buf);
}
