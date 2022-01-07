
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_gem_object {int dummy; } ;
struct dma_buf {struct drm_gem_object* priv; } ;


 scalar_t__ IS_ERR (void*) ;
 void* drm_gem_vmap (struct drm_gem_object*) ;

void *drm_gem_dmabuf_vmap(struct dma_buf *dma_buf)
{
 struct drm_gem_object *obj = dma_buf->priv;
 void *vaddr;

 vaddr = drm_gem_vmap(obj);
 if (IS_ERR(vaddr))
  vaddr = ((void*)0);

 return vaddr;
}
