
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_gem_object {struct dma_buf_attachment* import_attach; struct drm_device* dev; } ;
struct drm_device {int dev; } ;
struct dma_buf_attachment {int dummy; } ;
struct dma_buf {int size; struct drm_gem_object* priv; int * ops; } ;
struct armada_gem_object {struct drm_gem_object obj; } ;


 int ENOMEM ;
 struct drm_gem_object* ERR_CAST (struct dma_buf_attachment*) ;
 struct drm_gem_object* ERR_PTR (int ) ;
 scalar_t__ IS_ERR (struct dma_buf_attachment*) ;
 struct armada_gem_object* armada_gem_alloc_private_object (struct drm_device*,int ) ;
 int armada_gem_prime_dmabuf_ops ;
 struct dma_buf_attachment* dma_buf_attach (struct dma_buf*,int ) ;
 int dma_buf_detach (struct dma_buf*,struct dma_buf_attachment*) ;
 int drm_gem_object_get (struct drm_gem_object*) ;
 int get_dma_buf (struct dma_buf*) ;

struct drm_gem_object *
armada_gem_prime_import(struct drm_device *dev, struct dma_buf *buf)
{
 struct dma_buf_attachment *attach;
 struct armada_gem_object *dobj;

 if (buf->ops == &armada_gem_prime_dmabuf_ops) {
  struct drm_gem_object *obj = buf->priv;
  if (obj->dev == dev) {




   drm_gem_object_get(obj);
   return obj;
  }
 }

 attach = dma_buf_attach(buf, dev->dev);
 if (IS_ERR(attach))
  return ERR_CAST(attach);

 dobj = armada_gem_alloc_private_object(dev, buf->size);
 if (!dobj) {
  dma_buf_detach(buf, attach);
  return ERR_PTR(-ENOMEM);
 }

 dobj->obj.import_attach = attach;
 get_dma_buf(buf);






 return &dobj->obj;
}
