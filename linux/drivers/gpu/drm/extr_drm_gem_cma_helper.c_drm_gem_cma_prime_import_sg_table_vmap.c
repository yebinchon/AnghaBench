
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sg_table {int dummy; } ;
struct drm_gem_object {int dummy; } ;
struct drm_gem_cma_object {void* vaddr; } ;
struct drm_device {int dummy; } ;
struct dma_buf_attachment {int dmabuf; } ;


 int DRM_ERROR (char*) ;
 int ENOMEM ;
 struct drm_gem_object* ERR_PTR (int ) ;
 scalar_t__ IS_ERR (struct drm_gem_object*) ;
 void* dma_buf_vmap (int ) ;
 int dma_buf_vunmap (int ,void*) ;
 struct drm_gem_object* drm_gem_cma_prime_import_sg_table (struct drm_device*,struct dma_buf_attachment*,struct sg_table*) ;
 struct drm_gem_cma_object* to_drm_gem_cma_obj (struct drm_gem_object*) ;

struct drm_gem_object *
drm_gem_cma_prime_import_sg_table_vmap(struct drm_device *dev,
           struct dma_buf_attachment *attach,
           struct sg_table *sgt)
{
 struct drm_gem_cma_object *cma_obj;
 struct drm_gem_object *obj;
 void *vaddr;

 vaddr = dma_buf_vmap(attach->dmabuf);
 if (!vaddr) {
  DRM_ERROR("Failed to vmap PRIME buffer\n");
  return ERR_PTR(-ENOMEM);
 }

 obj = drm_gem_cma_prime_import_sg_table(dev, attach, sgt);
 if (IS_ERR(obj)) {
  dma_buf_vunmap(attach->dmabuf, vaddr);
  return obj;
 }

 cma_obj = to_drm_gem_cma_obj(obj);
 cma_obj->vaddr = vaddr;

 return obj;
}
