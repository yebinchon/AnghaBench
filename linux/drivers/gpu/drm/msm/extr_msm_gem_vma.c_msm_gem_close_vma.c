
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_gem_vma {scalar_t__ inuse; scalar_t__ iova; int node; scalar_t__ mapped; } ;
struct msm_gem_address_space {int lock; } ;


 scalar_t__ WARN_ON (int) ;
 int drm_mm_remove_node (int *) ;
 int msm_gem_address_space_put (struct msm_gem_address_space*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void msm_gem_close_vma(struct msm_gem_address_space *aspace,
  struct msm_gem_vma *vma)
{
 if (WARN_ON(vma->inuse > 0 || vma->mapped))
  return;

 spin_lock(&aspace->lock);
 if (vma->iova)
  drm_mm_remove_node(&vma->node);
 spin_unlock(&aspace->lock);

 vma->iova = 0;

 msm_gem_address_space_put(aspace);
}
