
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;
struct radeon_fence {TYPE_1__ base; } ;


 int DMA_FENCE_FLAG_SIGNALED_BIT ;
 int test_bit (int ,int *) ;

__attribute__((used)) static inline bool radeon_test_signaled(struct radeon_fence *fence)
{
 return test_bit(DMA_FENCE_FLAG_SIGNALED_BIT, &fence->base.flags);
}
