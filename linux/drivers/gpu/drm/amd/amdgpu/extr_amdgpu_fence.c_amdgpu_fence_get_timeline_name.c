
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dma_fence {int dummy; } ;
struct amdgpu_fence {TYPE_1__* ring; } ;
struct TYPE_2__ {scalar_t__ name; } ;


 struct amdgpu_fence* to_amdgpu_fence (struct dma_fence*) ;

__attribute__((used)) static const char *amdgpu_fence_get_timeline_name(struct dma_fence *f)
{
 struct amdgpu_fence *fence = to_amdgpu_fence(f);
 return (const char *)fence->ring->name;
}
