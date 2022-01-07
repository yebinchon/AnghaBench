
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct ras_err_data {int dummy; } ;
struct amdgpu_device {int dummy; } ;


 int EccErrCntCsSel ;
 int EccErrInt ;
 scalar_t__ REG_SET_FIELD (scalar_t__,int ,int ,int) ;
 scalar_t__ RREG32 (scalar_t__) ;
 scalar_t__ SOC15_REG_OFFSET (int ,int ,int ) ;
 int UMC ;
 int UMCCH0_0_EccErrCntSel ;
 scalar_t__ UMC_V6_1_CE_CNT_INIT ;
 int WREG32 (scalar_t__,scalar_t__) ;
 int mmUMCCH0_0_EccErrCnt ;
 int mmUMCCH0_0_EccErrCntSel ;

__attribute__((used)) static void umc_v6_1_ras_init_per_channel(struct amdgpu_device *adev,
      struct ras_err_data *err_data,
      uint32_t umc_reg_offset, uint32_t channel_index)
{
 uint32_t ecc_err_cnt_sel, ecc_err_cnt_sel_addr;
 uint32_t ecc_err_cnt_addr;

 ecc_err_cnt_sel_addr =
  SOC15_REG_OFFSET(UMC, 0, mmUMCCH0_0_EccErrCntSel);
 ecc_err_cnt_addr =
  SOC15_REG_OFFSET(UMC, 0, mmUMCCH0_0_EccErrCnt);


 ecc_err_cnt_sel = RREG32(ecc_err_cnt_sel_addr + umc_reg_offset);
 ecc_err_cnt_sel = REG_SET_FIELD(ecc_err_cnt_sel, UMCCH0_0_EccErrCntSel,
     EccErrCntCsSel, 0);

 ecc_err_cnt_sel = REG_SET_FIELD(ecc_err_cnt_sel, UMCCH0_0_EccErrCntSel,
     EccErrInt, 0x1);
 WREG32(ecc_err_cnt_sel_addr + umc_reg_offset, ecc_err_cnt_sel);

 WREG32(ecc_err_cnt_addr + umc_reg_offset, UMC_V6_1_CE_CNT_INIT);


 ecc_err_cnt_sel = REG_SET_FIELD(ecc_err_cnt_sel, UMCCH0_0_EccErrCntSel,
     EccErrCntCsSel, 1);
 WREG32(ecc_err_cnt_sel_addr + umc_reg_offset, ecc_err_cnt_sel);
 WREG32(ecc_err_cnt_addr + umc_reg_offset, UMC_V6_1_CE_CNT_INIT);
}
