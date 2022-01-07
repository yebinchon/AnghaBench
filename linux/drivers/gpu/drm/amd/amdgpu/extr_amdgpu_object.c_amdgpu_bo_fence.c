
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dma_resv {int dummy; } ;
struct dma_fence {int dummy; } ;
struct TYPE_3__ {struct dma_resv* resv; } ;
struct TYPE_4__ {TYPE_1__ base; } ;
struct amdgpu_bo {TYPE_2__ tbo; } ;


 int dma_resv_add_excl_fence (struct dma_resv*,struct dma_fence*) ;
 int dma_resv_add_shared_fence (struct dma_resv*,struct dma_fence*) ;

void amdgpu_bo_fence(struct amdgpu_bo *bo, struct dma_fence *fence,
       bool shared)
{
 struct dma_resv *resv = bo->tbo.base.resv;

 if (shared)
  dma_resv_add_shared_fence(resv, fence);
 else
  dma_resv_add_excl_fence(resv, fence);
}
