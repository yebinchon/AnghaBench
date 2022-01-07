
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sg_table {int dummy; } ;
struct drm_gem_object {int dummy; } ;
struct drm_device {int dummy; } ;
struct dma_buf_attachment {int dummy; } ;


 struct drm_gem_object* ERR_PTR (int) ;
 scalar_t__ IS_ERR (struct drm_gem_object*) ;
 int drm_gem_shmem_free_object (struct drm_gem_object*) ;
 struct drm_gem_object* drm_gem_shmem_prime_import_sg_table (struct drm_device*,struct dma_buf_attachment*,struct sg_table*) ;
 int v3d_bo_create_finish (struct drm_gem_object*) ;

struct drm_gem_object *
v3d_prime_import_sg_table(struct drm_device *dev,
     struct dma_buf_attachment *attach,
     struct sg_table *sgt)
{
 struct drm_gem_object *obj;
 int ret;

 obj = drm_gem_shmem_prime_import_sg_table(dev, attach, sgt);
 if (IS_ERR(obj))
  return obj;

 ret = v3d_bo_create_finish(obj);
 if (ret) {
  drm_gem_shmem_free_object(obj);
  return ERR_PTR(ret);
 }

 return obj;
}
