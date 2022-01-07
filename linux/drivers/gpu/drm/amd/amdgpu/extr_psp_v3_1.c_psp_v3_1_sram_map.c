
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int dummy; } ;
typedef enum AMDGPU_UCODE_ID { ____Placeholder_AMDGPU_UCODE_ID } AMDGPU_UCODE_ID ;
 int EINVAL ;
 int GC ;
 int SDMA0 ;
 unsigned int SOC15_REG_OFFSET (int ,int ,int ) ;
 int mmCP_CE_UCODE_ADDR ;
 int mmCP_CE_UCODE_DATA ;
 int mmCP_HYP_MEC2_UCODE_ADDR ;
 int mmCP_HYP_MEC2_UCODE_DATA ;
 int mmCP_HYP_ME_UCODE_ADDR ;
 int mmCP_HYP_ME_UCODE_DATA ;
 int mmCP_MEC_ME1_UCODE_ADDR ;
 int mmCP_MEC_ME1_UCODE_DATA ;
 int mmCP_PFP_UCODE_ADDR ;
 int mmCP_PFP_UCODE_DATA ;
 int mmRLC_GPM_UCODE_ADDR ;
 int mmRLC_GPM_UCODE_DATA ;
 int mmSDMA0_UCODE_ADDR ;
 int mmSDMA0_UCODE_DATA ;

__attribute__((used)) static int
psp_v3_1_sram_map(struct amdgpu_device *adev,
    unsigned int *sram_offset, unsigned int *sram_addr_reg_offset,
    unsigned int *sram_data_reg_offset,
    enum AMDGPU_UCODE_ID ucode_id)
{
 int ret = 0;

 switch(ucode_id) {
 case 139:
  *sram_offset = 0x0;
  *sram_addr_reg_offset = SOC15_REG_OFFSET(GC, 0, mmCP_CE_UCODE_ADDR);
  *sram_data_reg_offset = SOC15_REG_OFFSET(GC, 0, mmCP_CE_UCODE_DATA);
  break;

 case 135:
  *sram_offset = 0x0;
  *sram_addr_reg_offset = SOC15_REG_OFFSET(GC, 0, mmCP_PFP_UCODE_ADDR);
  *sram_data_reg_offset = SOC15_REG_OFFSET(GC, 0, mmCP_PFP_UCODE_DATA);
  break;

 case 138:
  *sram_offset = 0x0;
  *sram_addr_reg_offset = SOC15_REG_OFFSET(GC, 0, mmCP_HYP_ME_UCODE_ADDR);
  *sram_data_reg_offset = SOC15_REG_OFFSET(GC, 0, mmCP_HYP_ME_UCODE_DATA);
  break;

 case 137:
  *sram_offset = 0x10000;
  *sram_addr_reg_offset = SOC15_REG_OFFSET(GC, 0, mmCP_MEC_ME1_UCODE_ADDR);
  *sram_data_reg_offset = SOC15_REG_OFFSET(GC, 0, mmCP_MEC_ME1_UCODE_DATA);
  break;

 case 136:
  *sram_offset = 0x10000;
  *sram_addr_reg_offset = SOC15_REG_OFFSET(GC, 0, mmCP_HYP_MEC2_UCODE_ADDR);
  *sram_data_reg_offset = SOC15_REG_OFFSET(GC, 0, mmCP_HYP_MEC2_UCODE_DATA);
  break;

 case 133:
  *sram_offset = 0x2000;
  *sram_addr_reg_offset = SOC15_REG_OFFSET(GC, 0, mmRLC_GPM_UCODE_ADDR);
  *sram_data_reg_offset = SOC15_REG_OFFSET(GC, 0, mmRLC_GPM_UCODE_DATA);
  break;

 case 132:
  *sram_offset = 0x0;
  *sram_addr_reg_offset = SOC15_REG_OFFSET(SDMA0, 0, mmSDMA0_UCODE_ADDR);
  *sram_data_reg_offset = SOC15_REG_OFFSET(SDMA0, 0, mmSDMA0_UCODE_DATA);
  break;
 case 134:
 default:
  ret = -EINVAL;
  break;
 }

 return ret;
}
