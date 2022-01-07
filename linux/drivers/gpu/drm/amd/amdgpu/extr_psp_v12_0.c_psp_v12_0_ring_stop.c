
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psp_context {struct amdgpu_device* adev; } ;
struct amdgpu_device {int dummy; } ;
typedef enum psp_ring_type { ____Placeholder_psp_ring_type } psp_ring_type ;


 int GFX_CTRL_CMD_ID_DESTROY_GPCOM_RING ;
 int GFX_CTRL_CMD_ID_DESTROY_RINGS ;
 int MP0 ;
 int SOC15_REG_OFFSET (int ,int ,int ) ;
 int WREG32_SOC15 (int ,int ,int ,int ) ;
 int mdelay (int) ;
 int mmMP0_SMN_C2PMSG_101 ;
 int mmMP0_SMN_C2PMSG_64 ;
 scalar_t__ psp_v12_0_support_vmr_ring (struct psp_context*) ;
 int psp_wait_for (struct psp_context*,int ,int,int,int) ;

__attribute__((used)) static int psp_v12_0_ring_stop(struct psp_context *psp,
         enum psp_ring_type ring_type)
{
 int ret = 0;
 struct amdgpu_device *adev = psp->adev;


 if (psp_v12_0_support_vmr_ring(psp))
  WREG32_SOC15(MP0, 0, mmMP0_SMN_C2PMSG_101,
         GFX_CTRL_CMD_ID_DESTROY_GPCOM_RING);
 else
  WREG32_SOC15(MP0, 0, mmMP0_SMN_C2PMSG_64,
         GFX_CTRL_CMD_ID_DESTROY_RINGS);


 mdelay(20);


 if (psp_v12_0_support_vmr_ring(psp))
  ret = psp_wait_for(psp, SOC15_REG_OFFSET(MP0, 0, mmMP0_SMN_C2PMSG_101),
       0x80000000, 0x80000000, 0);
 else
  ret = psp_wait_for(psp, SOC15_REG_OFFSET(MP0, 0, mmMP0_SMN_C2PMSG_64),
       0x80000000, 0x80000000, 0);

 return ret;
}
