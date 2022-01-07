
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_fence {int base; } ;


 int dma_fence_get (int *) ;

struct radeon_fence *radeon_fence_ref(struct radeon_fence *fence)
{
 dma_fence_get(&fence->base);
 return fence;
}
