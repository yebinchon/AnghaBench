
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint32_t ;
struct psp_context {int fw_pri_mc_addr; int sos_bin_size; int sos_start_addr; int fw_pri_buf; struct amdgpu_device* adev; } ;
struct amdgpu_device {int dummy; } ;


 int MP0 ;
 int PSP_1_MEG ;
 int RREG32_SOC15 (int ,int ,int ) ;
 int SOC15_REG_OFFSET (int ,int ,int ) ;
 int WREG32_SOC15 (int ,int ,int ,unsigned int) ;
 int mdelay (int) ;
 int memcpy (int ,int ,int ) ;
 int memset (int ,int ,int ) ;
 int mmMP0_SMN_C2PMSG_35 ;
 int mmMP0_SMN_C2PMSG_36 ;
 int mmMP0_SMN_C2PMSG_81 ;
 int psp_wait_for (struct psp_context*,int ,int,int,int) ;

__attribute__((used)) static int psp_v12_0_bootloader_load_sos(struct psp_context *psp)
{
 int ret;
 unsigned int psp_gfxdrv_command_reg = 0;
 struct amdgpu_device *adev = psp->adev;
 uint32_t sol_reg;




 sol_reg = RREG32_SOC15(MP0, 0, mmMP0_SMN_C2PMSG_81);
 if (sol_reg)
  return 0;


 ret = psp_wait_for(psp, SOC15_REG_OFFSET(MP0, 0, mmMP0_SMN_C2PMSG_35),
      0x80000000, 0x80000000, 0);
 if (ret)
  return ret;

 memset(psp->fw_pri_buf, 0, PSP_1_MEG);


 memcpy(psp->fw_pri_buf, psp->sos_start_addr, psp->sos_bin_size);


 WREG32_SOC15(MP0, 0, mmMP0_SMN_C2PMSG_36,
        (uint32_t)(psp->fw_pri_mc_addr >> 20));
 psp_gfxdrv_command_reg = 2 << 16;
 WREG32_SOC15(MP0, 0, mmMP0_SMN_C2PMSG_35,
        psp_gfxdrv_command_reg);


 mdelay(20);
 ret = psp_wait_for(psp, SOC15_REG_OFFSET(MP0, 0, mmMP0_SMN_C2PMSG_81),
      RREG32_SOC15(MP0, 0, mmMP0_SMN_C2PMSG_81),
      0, 1);

 return ret;
}
