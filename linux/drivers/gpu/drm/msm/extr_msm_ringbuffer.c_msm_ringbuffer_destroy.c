
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct msm_ringbuffer {TYPE_1__* gpu; int bo; int fctx; } ;
struct TYPE_2__ {int aspace; } ;


 scalar_t__ IS_ERR_OR_NULL (struct msm_ringbuffer*) ;
 int kfree (struct msm_ringbuffer*) ;
 int msm_fence_context_free (int ) ;
 int msm_gem_kernel_put (int ,int ,int) ;

void msm_ringbuffer_destroy(struct msm_ringbuffer *ring)
{
 if (IS_ERR_OR_NULL(ring))
  return;

 msm_fence_context_free(ring->fctx);

 msm_gem_kernel_put(ring->bo, ring->gpu->aspace, 0);

 kfree(ring);
}
