
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sg_table {int dummy; } ;
struct msm_gem_vma {int mapped; int iova; int inuse; } ;
struct msm_gem_address_space {TYPE_2__* mmu; } ;
struct TYPE_4__ {TYPE_1__* funcs; } ;
struct TYPE_3__ {int (* map ) (TYPE_2__*,int ,struct sg_table*,unsigned int,int) ;} ;


 int EINVAL ;
 int PAGE_SHIFT ;
 scalar_t__ WARN_ON (int) ;
 int stub1 (TYPE_2__*,int ,struct sg_table*,unsigned int,int) ;

int
msm_gem_map_vma(struct msm_gem_address_space *aspace,
  struct msm_gem_vma *vma, int prot,
  struct sg_table *sgt, int npages)
{
 unsigned size = npages << PAGE_SHIFT;
 int ret = 0;

 if (WARN_ON(!vma->iova))
  return -EINVAL;


 vma->inuse++;

 if (vma->mapped)
  return 0;

 vma->mapped = 1;

 if (aspace && aspace->mmu)
  ret = aspace->mmu->funcs->map(aspace->mmu, vma->iova, sgt,
    size, prot);

 if (ret)
  vma->mapped = 0;

 return ret;
}
