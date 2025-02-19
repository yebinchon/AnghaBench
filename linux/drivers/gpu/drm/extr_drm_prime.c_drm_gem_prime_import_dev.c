
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sg_table {int resv; struct sg_table* import_attach; struct drm_device* dev; } ;
struct drm_gem_object {int resv; struct drm_gem_object* import_attach; struct drm_device* dev; } ;
struct drm_device {TYPE_1__* driver; } ;
struct dma_buf_attachment {int resv; struct dma_buf_attachment* import_attach; struct drm_device* dev; } ;
struct dma_buf {int resv; struct sg_table* priv; int * ops; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct sg_table* (* gem_prime_import_sg_table ) (struct drm_device*,struct sg_table*,struct sg_table*) ;} ;


 int DMA_BIDIRECTIONAL ;
 int EINVAL ;
 struct sg_table* ERR_CAST (struct sg_table*) ;
 struct sg_table* ERR_PTR (int) ;
 scalar_t__ IS_ERR (struct sg_table*) ;
 int PTR_ERR (struct sg_table*) ;
 struct sg_table* dma_buf_attach (struct dma_buf*,struct device*) ;
 int dma_buf_detach (struct dma_buf*,struct sg_table*) ;
 struct sg_table* dma_buf_map_attachment (struct sg_table*,int ) ;
 int dma_buf_put (struct dma_buf*) ;
 int dma_buf_unmap_attachment (struct sg_table*,struct sg_table*,int ) ;
 int drm_gem_object_get (struct sg_table*) ;
 int drm_gem_prime_dmabuf_ops ;
 int get_dma_buf (struct dma_buf*) ;
 struct sg_table* stub1 (struct drm_device*,struct sg_table*,struct sg_table*) ;

struct drm_gem_object *drm_gem_prime_import_dev(struct drm_device *dev,
         struct dma_buf *dma_buf,
         struct device *attach_dev)
{
 struct dma_buf_attachment *attach;
 struct sg_table *sgt;
 struct drm_gem_object *obj;
 int ret;

 if (dma_buf->ops == &drm_gem_prime_dmabuf_ops) {
  obj = dma_buf->priv;
  if (obj->dev == dev) {




   drm_gem_object_get(obj);
   return obj;
  }
 }

 if (!dev->driver->gem_prime_import_sg_table)
  return ERR_PTR(-EINVAL);

 attach = dma_buf_attach(dma_buf, attach_dev);
 if (IS_ERR(attach))
  return ERR_CAST(attach);

 get_dma_buf(dma_buf);

 sgt = dma_buf_map_attachment(attach, DMA_BIDIRECTIONAL);
 if (IS_ERR(sgt)) {
  ret = PTR_ERR(sgt);
  goto fail_detach;
 }

 obj = dev->driver->gem_prime_import_sg_table(dev, attach, sgt);
 if (IS_ERR(obj)) {
  ret = PTR_ERR(obj);
  goto fail_unmap;
 }

 obj->import_attach = attach;
 obj->resv = dma_buf->resv;

 return obj;

fail_unmap:
 dma_buf_unmap_attachment(attach, sgt, DMA_BIDIRECTIONAL);
fail_detach:
 dma_buf_detach(dma_buf, attach);
 dma_buf_put(dma_buf);

 return ERR_PTR(ret);
}
