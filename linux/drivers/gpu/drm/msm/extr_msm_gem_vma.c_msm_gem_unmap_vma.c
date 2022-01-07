
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_gem_vma {int inuse; int iova; } ;
struct msm_gem_address_space {int dummy; } ;


 int WARN_ON (int) ;

void msm_gem_unmap_vma(struct msm_gem_address_space *aspace,
  struct msm_gem_vma *vma)
{
 if (!WARN_ON(!vma->iova))
  vma->inuse--;
}
