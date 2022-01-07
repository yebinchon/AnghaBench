
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_gem_object {int dummy; } ;
struct drm_device {int dev; } ;
struct dma_buf {int dummy; } ;


 struct drm_gem_object* drm_gem_prime_import_dev (struct drm_device*,struct dma_buf*,int ) ;

struct drm_gem_object *drm_gem_prime_import(struct drm_device *dev,
         struct dma_buf *dma_buf)
{
 return drm_gem_prime_import_dev(dev, dma_buf, dev->dev);
}
