
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct msm_fence_context {scalar_t__ completed_fence; } ;
typedef scalar_t__ int32_t ;



__attribute__((used)) static inline bool fence_completed(struct msm_fence_context *fctx, uint32_t fence)
{
 return (int32_t)(fctx->completed_fence - fence) >= 0;
}
