
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int start; } ;
struct msm_gem_vma {int iova; int mapped; TYPE_1__ node; } ;
struct msm_gem_address_space {int kref; int lock; int mm; } ;


 int EBUSY ;
 int PAGE_SHIFT ;
 scalar_t__ WARN_ON (int) ;
 int drm_mm_insert_node (int *,TYPE_1__*,int) ;
 int kref_get (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int msm_gem_init_vma(struct msm_gem_address_space *aspace,
  struct msm_gem_vma *vma, int npages)
{
 int ret;

 if (WARN_ON(vma->iova))
  return -EBUSY;

 spin_lock(&aspace->lock);
 ret = drm_mm_insert_node(&aspace->mm, &vma->node, npages);
 spin_unlock(&aspace->lock);

 if (ret)
  return ret;

 vma->iova = vma->node.start << PAGE_SHIFT;
 vma->mapped = 0;

 kref_get(&aspace->kref);

 return 0;
}
