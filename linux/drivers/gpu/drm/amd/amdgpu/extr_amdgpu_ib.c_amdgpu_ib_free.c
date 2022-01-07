
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_fence {int dummy; } ;
struct amdgpu_ib {int sa_bo; } ;
struct amdgpu_device {int dummy; } ;


 int amdgpu_sa_bo_free (struct amdgpu_device*,int *,struct dma_fence*) ;

void amdgpu_ib_free(struct amdgpu_device *adev, struct amdgpu_ib *ib,
      struct dma_fence *f)
{
 amdgpu_sa_bo_free(adev, &ib->sa_bo, f);
}
