
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct psp_context {struct amdgpu_device* adev; } ;
struct amdgpu_device {int dummy; } ;


 int CLIENT_TYPE ;
 int CREDIT_RETURN_ADDR ;
 int GFX_CTRL_CMD_ID_GBR_IH_SET ;
 int IH_CLIENT_CFG_DATA ;
 int MP0 ;
 int REG_SET_FIELD (int,int ,int ,int) ;
 int RING_ID ;
 int SOC15_REG_OFFSET (int ,int ,int ) ;
 int WREG32_SOC15 (int ,int ,int ,int) ;
 int mdelay (int) ;
 int mmMP0_SMN_C2PMSG_64 ;
 int mmMP0_SMN_C2PMSG_69 ;
 int mmMP0_SMN_C2PMSG_70 ;
 int psp_wait_for (struct psp_context*,int ,int,int,int) ;

__attribute__((used)) static void psp_v11_0_reroute_ih(struct psp_context *psp)
{
 struct amdgpu_device *adev = psp->adev;
 uint32_t tmp;


 tmp = REG_SET_FIELD(0, IH_CLIENT_CFG_DATA, CREDIT_RETURN_ADDR, 0x1244b);
 tmp = REG_SET_FIELD(tmp, IH_CLIENT_CFG_DATA, CLIENT_TYPE, 1);
 tmp = REG_SET_FIELD(tmp, IH_CLIENT_CFG_DATA, RING_ID, 1);

 WREG32_SOC15(MP0, 0, mmMP0_SMN_C2PMSG_69, 3);
 WREG32_SOC15(MP0, 0, mmMP0_SMN_C2PMSG_70, tmp);
 WREG32_SOC15(MP0, 0, mmMP0_SMN_C2PMSG_64, GFX_CTRL_CMD_ID_GBR_IH_SET);

 mdelay(20);
 psp_wait_for(psp, SOC15_REG_OFFSET(MP0, 0, mmMP0_SMN_C2PMSG_64),
       0x80000000, 0x8000FFFF, 0);


 tmp = REG_SET_FIELD(0, IH_CLIENT_CFG_DATA, CREDIT_RETURN_ADDR, 0x1216b);
 tmp = REG_SET_FIELD(tmp, IH_CLIENT_CFG_DATA, RING_ID, 1);

 WREG32_SOC15(MP0, 0, mmMP0_SMN_C2PMSG_69, 4);
 WREG32_SOC15(MP0, 0, mmMP0_SMN_C2PMSG_70, tmp);
 WREG32_SOC15(MP0, 0, mmMP0_SMN_C2PMSG_64, GFX_CTRL_CMD_ID_GBR_IH_SET);

 mdelay(20);
 psp_wait_for(psp, SOC15_REG_OFFSET(MP0, 0, mmMP0_SMN_C2PMSG_64),
       0x80000000, 0x8000FFFF, 0);
}
