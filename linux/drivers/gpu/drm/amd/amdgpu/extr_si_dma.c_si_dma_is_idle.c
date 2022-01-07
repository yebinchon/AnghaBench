
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct amdgpu_device {int dummy; } ;


 int DMA1_BUSY_MASK ;
 int DMA_BUSY_MASK ;
 int RREG32 (int ) ;
 int SRBM_STATUS2 ;

__attribute__((used)) static bool si_dma_is_idle(void *handle)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;
 u32 tmp = RREG32(SRBM_STATUS2);

 if (tmp & (DMA_BUSY_MASK | DMA1_BUSY_MASK))
     return 0;

 return 1;
}
