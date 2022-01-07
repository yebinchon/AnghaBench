
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned int size; } ;
struct msm_gem_vma {scalar_t__ inuse; int mapped; int iova; TYPE_1__ node; } ;
struct msm_gem_address_space {TYPE_3__* mmu; } ;
struct TYPE_6__ {TYPE_2__* funcs; } ;
struct TYPE_5__ {int (* unmap ) (TYPE_3__*,int ,unsigned int) ;} ;


 unsigned int PAGE_SHIFT ;
 scalar_t__ WARN_ON (int) ;
 int stub1 (TYPE_3__*,int ,unsigned int) ;

void msm_gem_purge_vma(struct msm_gem_address_space *aspace,
  struct msm_gem_vma *vma)
{
 unsigned size = vma->node.size << PAGE_SHIFT;


 if (WARN_ON(vma->inuse > 0))
  return;


 if (!vma->mapped)
  return;

 if (aspace->mmu)
  aspace->mmu->funcs->unmap(aspace->mmu, vma->iova, size);

 vma->mapped = 0;
}
