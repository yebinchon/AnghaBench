
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_fence {int dummy; } ;
struct amdgpu_amdkfd_fence {int mm; } ;


 scalar_t__ dma_fence_is_signaled (struct dma_fence*) ;
 int kgd2kfd_schedule_evict_and_restore_process (int ,struct dma_fence*) ;
 struct amdgpu_amdkfd_fence* to_amdgpu_amdkfd_fence (struct dma_fence*) ;

__attribute__((used)) static bool amdkfd_fence_enable_signaling(struct dma_fence *f)
{
 struct amdgpu_amdkfd_fence *fence = to_amdgpu_amdkfd_fence(f);

 if (!fence)
  return 0;

 if (dma_fence_is_signaled(f))
  return 1;

 if (!kgd2kfd_schedule_evict_and_restore_process(fence->mm, f))
  return 1;

 return 0;
}
