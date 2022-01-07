
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct amdgpu_device {int dummy; } ;
typedef enum amd_powergating_state { ____Placeholder_amd_powergating_state } amd_powergating_state ;


 int DMA_PGFSM_CONFIG ;
 int DMA_PGFSM_WRITE ;
 int WREG32 (int ,int) ;

__attribute__((used)) static int si_dma_set_powergating_state(void *handle,
       enum amd_powergating_state state)
{
 u32 tmp;

 struct amdgpu_device *adev = (struct amdgpu_device *)handle;

 WREG32(DMA_PGFSM_WRITE, 0x00002000);
 WREG32(DMA_PGFSM_CONFIG, 0x100010ff);

 for (tmp = 0; tmp < 5; tmp++)
  WREG32(DMA_PGFSM_WRITE, 0);

 return 0;
}
