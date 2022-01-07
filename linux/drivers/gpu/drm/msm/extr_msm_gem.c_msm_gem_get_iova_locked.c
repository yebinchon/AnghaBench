
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct msm_gem_vma {int iova; } ;
struct msm_gem_object {int lock; } ;
struct msm_gem_address_space {int dummy; } ;
struct drm_gem_object {int size; } ;


 scalar_t__ IS_ERR (struct msm_gem_vma*) ;
 int PAGE_SHIFT ;
 int PTR_ERR (struct msm_gem_vma*) ;
 int WARN_ON (int) ;
 struct msm_gem_vma* add_vma (struct drm_gem_object*,struct msm_gem_address_space*) ;
 int del_vma (struct msm_gem_vma*) ;
 struct msm_gem_vma* lookup_vma (struct drm_gem_object*,struct msm_gem_address_space*) ;
 int msm_gem_init_vma (struct msm_gem_address_space*,struct msm_gem_vma*,int) ;
 int mutex_is_locked (int *) ;
 struct msm_gem_object* to_msm_bo (struct drm_gem_object*) ;

__attribute__((used)) static int msm_gem_get_iova_locked(struct drm_gem_object *obj,
  struct msm_gem_address_space *aspace, uint64_t *iova)
{
 struct msm_gem_object *msm_obj = to_msm_bo(obj);
 struct msm_gem_vma *vma;
 int ret = 0;

 WARN_ON(!mutex_is_locked(&msm_obj->lock));

 vma = lookup_vma(obj, aspace);

 if (!vma) {
  vma = add_vma(obj, aspace);
  if (IS_ERR(vma))
   return PTR_ERR(vma);

  ret = msm_gem_init_vma(aspace, vma, obj->size >> PAGE_SHIFT);
  if (ret) {
   del_vma(vma);
   return ret;
  }
 }

 *iova = vma->iova;
 return 0;
}
