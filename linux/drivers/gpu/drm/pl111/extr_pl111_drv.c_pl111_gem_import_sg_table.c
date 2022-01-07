
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sg_table {int dummy; } ;
struct pl111_drm_dev_private {scalar_t__ use_device_memory; } ;
struct drm_gem_object {int dummy; } ;
struct drm_device {struct pl111_drm_dev_private* dev_private; } ;
struct dma_buf_attachment {int dummy; } ;


 int EINVAL ;
 struct drm_gem_object* ERR_PTR (int ) ;
 struct drm_gem_object* drm_gem_cma_prime_import_sg_table (struct drm_device*,struct dma_buf_attachment*,struct sg_table*) ;

__attribute__((used)) static struct drm_gem_object *
pl111_gem_import_sg_table(struct drm_device *dev,
     struct dma_buf_attachment *attach,
     struct sg_table *sgt)
{
 struct pl111_drm_dev_private *priv = dev->dev_private;






 if (priv->use_device_memory)
  return ERR_PTR(-EINVAL);

 return drm_gem_cma_prime_import_sg_table(dev, attach, sgt);
}
