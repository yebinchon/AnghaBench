
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;
struct dma_fence {int dummy; } ;
struct amdgpu_amdkfd_fence {struct mm_struct* mm; } ;


 struct amdgpu_amdkfd_fence* to_amdgpu_amdkfd_fence (struct dma_fence*) ;

bool amdkfd_fence_check_mm(struct dma_fence *f, struct mm_struct *mm)
{
 struct amdgpu_amdkfd_fence *fence = to_amdgpu_amdkfd_fence(f);

 if (!fence)
  return 0;
 else if (fence->mm == mm)
  return 1;

 return 0;
}
