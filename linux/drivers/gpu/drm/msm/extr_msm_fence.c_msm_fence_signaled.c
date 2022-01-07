
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int seqno; } ;
struct msm_fence {TYPE_1__ base; int fctx; } ;
struct dma_fence {int dummy; } ;


 int fence_completed (int ,int ) ;
 struct msm_fence* to_msm_fence (struct dma_fence*) ;

__attribute__((used)) static bool msm_fence_signaled(struct dma_fence *fence)
{
 struct msm_fence *f = to_msm_fence(fence);
 return fence_completed(f->fctx, f->base.seqno);
}
