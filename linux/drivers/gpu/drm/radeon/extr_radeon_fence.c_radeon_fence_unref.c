
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_fence {int base; } ;


 int dma_fence_put (int *) ;

void radeon_fence_unref(struct radeon_fence **fence)
{
 struct radeon_fence *tmp = *fence;

 *fence = ((void*)0);
 if (tmp) {
  dma_fence_put(&tmp->base);
 }
}
