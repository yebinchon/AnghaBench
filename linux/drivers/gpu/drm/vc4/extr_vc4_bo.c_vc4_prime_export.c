
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc4_bo {scalar_t__ validated_shader; } ;
struct drm_gem_object {int dummy; } ;
struct dma_buf {int dummy; } ;


 int DRM_DEBUG (char*) ;
 int DRM_ERROR (char*) ;
 int EINVAL ;
 struct dma_buf* ERR_PTR (int) ;
 scalar_t__ IS_ERR (struct dma_buf*) ;
 struct dma_buf* drm_gem_prime_export (struct drm_gem_object*,int) ;
 struct vc4_bo* to_vc4_bo (struct drm_gem_object*) ;
 int vc4_bo_dec_usecnt (struct vc4_bo*) ;
 int vc4_bo_inc_usecnt (struct vc4_bo*) ;

struct dma_buf * vc4_prime_export(struct drm_gem_object *obj, int flags)
{
 struct vc4_bo *bo = to_vc4_bo(obj);
 struct dma_buf *dmabuf;
 int ret;

 if (bo->validated_shader) {
  DRM_DEBUG("Attempting to export shader BO\n");
  return ERR_PTR(-EINVAL);
 }






 ret = vc4_bo_inc_usecnt(bo);
 if (ret) {
  DRM_ERROR("Failed to increment BO usecnt\n");
  return ERR_PTR(ret);
 }

 dmabuf = drm_gem_prime_export(obj, flags);
 if (IS_ERR(dmabuf))
  vc4_bo_dec_usecnt(bo);

 return dmabuf;
}
