
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int num_instances; } ;
struct amdgpu_device {int cg_flags; TYPE_1__ sdma; } ;
typedef enum amd_clockgating_state { ____Placeholder_amd_clockgating_state } amd_clockgating_state ;


 int AMD_CG_STATE_GATE ;
 int AMD_CG_SUPPORT_SDMA_MGCG ;
 int DMA0_REGISTER_OFFSET ;
 int DMA1_REGISTER_OFFSET ;
 int DMA_CLK_CTRL ;
 int DMA_POWER_CNTL ;
 int MEM_POWER_OVERRIDE ;
 int RREG32 (int) ;
 int WREG32 (int,int) ;

__attribute__((used)) static int si_dma_set_clockgating_state(void *handle,
       enum amd_clockgating_state state)
{
 u32 orig, data, offset;
 int i;
 bool enable;
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;

 enable = (state == AMD_CG_STATE_GATE) ? 1 : 0;

 if (enable && (adev->cg_flags & AMD_CG_SUPPORT_SDMA_MGCG)) {
  for (i = 0; i < adev->sdma.num_instances; i++) {
   if (i == 0)
    offset = DMA0_REGISTER_OFFSET;
   else
    offset = DMA1_REGISTER_OFFSET;
   orig = data = RREG32(DMA_POWER_CNTL + offset);
   data &= ~MEM_POWER_OVERRIDE;
   if (data != orig)
    WREG32(DMA_POWER_CNTL + offset, data);
   WREG32(DMA_CLK_CTRL + offset, 0x00000100);
  }
 } else {
  for (i = 0; i < adev->sdma.num_instances; i++) {
   if (i == 0)
    offset = DMA0_REGISTER_OFFSET;
   else
    offset = DMA1_REGISTER_OFFSET;
   orig = data = RREG32(DMA_POWER_CNTL + offset);
   data |= MEM_POWER_OVERRIDE;
   if (data != orig)
    WREG32(DMA_POWER_CNTL + offset, data);

   orig = data = RREG32(DMA_CLK_CTRL + offset);
   data = 0xff000000;
   if (data != orig)
    WREG32(DMA_CLK_CTRL + offset, data);
  }
 }

 return 0;
}
