
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;
struct vmw_fence_obj {TYPE_1__ base; } ;
struct vmw_fence_manager {int dummy; } ;


 int DMA_FENCE_FLAG_SIGNALED_BIT ;
 int dma_fence_is_signaled (TYPE_1__*) ;
 struct vmw_fence_manager* fman_from_fence (struct vmw_fence_obj*) ;
 scalar_t__ test_bit (int ,int *) ;
 int vmw_fences_update (struct vmw_fence_manager*) ;

bool vmw_fence_obj_signaled(struct vmw_fence_obj *fence)
{
 struct vmw_fence_manager *fman = fman_from_fence(fence);

 if (test_bit(DMA_FENCE_FLAG_SIGNALED_BIT, &fence->base.flags))
  return 1;

 vmw_fences_update(fman);

 return dma_fence_is_signaled(&fence->base);
}
