
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_fence_context {int dummy; } ;


 int kfree (struct msm_fence_context*) ;

void msm_fence_context_free(struct msm_fence_context *fctx)
{
 kfree(fctx);
}
