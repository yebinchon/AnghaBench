
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_fence {int dummy; } ;
struct amdgpu_amdkfd_fence {int mm; } ;


 scalar_t__ WARN_ON (int) ;
 int kfree_rcu (struct dma_fence*,int ) ;
 int mmdrop (int ) ;
 int rcu ;
 struct amdgpu_amdkfd_fence* to_amdgpu_amdkfd_fence (struct dma_fence*) ;

__attribute__((used)) static void amdkfd_fence_release(struct dma_fence *f)
{
 struct amdgpu_amdkfd_fence *fence = to_amdgpu_amdkfd_fence(f);




 if (WARN_ON(!fence))
  return;

 mmdrop(fence->mm);
 kfree_rcu(f, rcu);
}
