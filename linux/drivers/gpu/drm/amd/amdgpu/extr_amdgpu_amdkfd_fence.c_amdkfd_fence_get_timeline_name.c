
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_fence {int dummy; } ;
struct amdgpu_amdkfd_fence {char const* timeline_name; } ;


 struct amdgpu_amdkfd_fence* to_amdgpu_amdkfd_fence (struct dma_fence*) ;

__attribute__((used)) static const char *amdkfd_fence_get_timeline_name(struct dma_fence *f)
{
 struct amdgpu_amdkfd_fence *fence = to_amdgpu_amdkfd_fence(f);

 return fence->timeline_name;
}
