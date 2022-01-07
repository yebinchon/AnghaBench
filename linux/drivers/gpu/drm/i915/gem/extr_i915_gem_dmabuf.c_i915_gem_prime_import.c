
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_gem_object {int resv; struct dma_buf_attachment* import_attach; struct drm_device* dev; } ;
struct drm_i915_gem_object {struct drm_gem_object base; scalar_t__ write_domain; int read_domains; } ;
struct drm_device {int dev; } ;
struct dma_buf_attachment {int dummy; } ;
struct dma_buf {int resv; int size; int * ops; } ;
struct TYPE_2__ {struct drm_gem_object base; } ;


 int ENOMEM ;
 struct drm_gem_object* ERR_CAST (struct dma_buf_attachment*) ;
 struct drm_gem_object* ERR_PTR (int) ;
 int I915_GEM_DOMAIN_GTT ;
 scalar_t__ IS_ERR (struct dma_buf_attachment*) ;
 struct dma_buf_attachment* dma_buf_attach (struct dma_buf*,int ) ;
 int dma_buf_detach (struct dma_buf*,struct dma_buf_attachment*) ;
 int dma_buf_put (struct dma_buf*) ;
 struct drm_i915_gem_object* dma_buf_to_obj (struct dma_buf*) ;
 int drm_gem_private_object_init (struct drm_device*,struct drm_gem_object*,int ) ;
 int get_dma_buf (struct dma_buf*) ;
 int i915_dmabuf_ops ;
 struct drm_i915_gem_object* i915_gem_object_alloc () ;
 int i915_gem_object_dmabuf_ops ;
 TYPE_1__* i915_gem_object_get (struct drm_i915_gem_object*) ;
 int i915_gem_object_init (struct drm_i915_gem_object*,int *) ;

struct drm_gem_object *i915_gem_prime_import(struct drm_device *dev,
          struct dma_buf *dma_buf)
{
 struct dma_buf_attachment *attach;
 struct drm_i915_gem_object *obj;
 int ret;


 if (dma_buf->ops == &i915_dmabuf_ops) {
  obj = dma_buf_to_obj(dma_buf);

  if (obj->base.dev == dev) {




   return &i915_gem_object_get(obj)->base;
  }
 }


 attach = dma_buf_attach(dma_buf, dev->dev);
 if (IS_ERR(attach))
  return ERR_CAST(attach);

 get_dma_buf(dma_buf);

 obj = i915_gem_object_alloc();
 if (obj == ((void*)0)) {
  ret = -ENOMEM;
  goto fail_detach;
 }

 drm_gem_private_object_init(dev, &obj->base, dma_buf->size);
 i915_gem_object_init(obj, &i915_gem_object_dmabuf_ops);
 obj->base.import_attach = attach;
 obj->base.resv = dma_buf->resv;
 obj->read_domains = I915_GEM_DOMAIN_GTT;
 obj->write_domain = 0;

 return &obj->base;

fail_detach:
 dma_buf_detach(dma_buf, attach);
 dma_buf_put(dma_buf);

 return ERR_PTR(ret);
}
