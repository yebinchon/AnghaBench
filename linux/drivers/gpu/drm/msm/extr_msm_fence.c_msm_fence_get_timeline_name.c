
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct msm_fence {TYPE_1__* fctx; } ;
struct dma_fence {int dummy; } ;
struct TYPE_2__ {char const* name; } ;


 struct msm_fence* to_msm_fence (struct dma_fence*) ;

__attribute__((used)) static const char *msm_fence_get_timeline_name(struct dma_fence *fence)
{
 struct msm_fence *f = to_msm_fence(fence);
 return f->fctx->name;
}
