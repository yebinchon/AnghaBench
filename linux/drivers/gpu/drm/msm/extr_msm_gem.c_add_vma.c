
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_gem_vma {int list; struct msm_gem_address_space* aspace; } ;
struct msm_gem_object {int vmas; int lock; } ;
struct msm_gem_address_space {int dummy; } ;
struct drm_gem_object {int dummy; } ;


 int ENOMEM ;
 struct msm_gem_vma* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int WARN_ON (int) ;
 struct msm_gem_vma* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int mutex_is_locked (int *) ;
 struct msm_gem_object* to_msm_bo (struct drm_gem_object*) ;

__attribute__((used)) static struct msm_gem_vma *add_vma(struct drm_gem_object *obj,
  struct msm_gem_address_space *aspace)
{
 struct msm_gem_object *msm_obj = to_msm_bo(obj);
 struct msm_gem_vma *vma;

 WARN_ON(!mutex_is_locked(&msm_obj->lock));

 vma = kzalloc(sizeof(*vma), GFP_KERNEL);
 if (!vma)
  return ERR_PTR(-ENOMEM);

 vma->aspace = aspace;

 list_add_tail(&vma->list, &msm_obj->vmas);

 return vma;
}
