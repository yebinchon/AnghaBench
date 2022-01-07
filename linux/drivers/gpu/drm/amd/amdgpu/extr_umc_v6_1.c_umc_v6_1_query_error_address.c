
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
struct ras_err_data {int* err_addr; size_t err_addr_cnt; } ;
struct amdgpu_device {int dummy; } ;


 int ADDR_OF_256B_BLOCK (int) ;
 int ADDR_OF_8KB_BLOCK (int) ;
 int CECC ;
 int ErrorAddr ;
 int LSB ;
 int MCA_UMC_UMC0_MCUMC_ADDRT0 ;
 int MCA_UMC_UMC0_MCUMC_STATUST0 ;
 int OFFSET_IN_256B_BLOCK (int) ;
 int REG_GET_FIELD (int,int ,int ) ;
 int RREG64_PCIE (scalar_t__) ;
 int RREG64_UMC (int) ;
 int SOC15_REG_OFFSET (int ,int ,int ) ;
 int UECC ;
 int UMC ;
 int Val ;
 int WREG64_UMC (int,int) ;
 int mmMCA_UMC_UMC0_MCUMC_STATUST0 ;
 scalar_t__ smnMCA_UMC0_MCUMC_ADDRT0 ;

__attribute__((used)) static void umc_v6_1_query_error_address(struct amdgpu_device *adev,
      struct ras_err_data *err_data,
      uint32_t umc_reg_offset, uint32_t channel_index)
{
 uint32_t lsb, mc_umc_status_addr;
 uint64_t mc_umc_status, err_addr;

 mc_umc_status_addr =
  SOC15_REG_OFFSET(UMC, 0, mmMCA_UMC_UMC0_MCUMC_STATUST0);


 if (!err_data->err_addr) {

  WREG64_UMC(mc_umc_status_addr + umc_reg_offset, 0x0ULL);
  return;
 }

 mc_umc_status = RREG64_UMC(mc_umc_status_addr + umc_reg_offset);


 if (REG_GET_FIELD(mc_umc_status, MCA_UMC_UMC0_MCUMC_STATUST0, Val) == 1 &&
     (REG_GET_FIELD(mc_umc_status, MCA_UMC_UMC0_MCUMC_STATUST0, UECC) == 1 ||
     REG_GET_FIELD(mc_umc_status, MCA_UMC_UMC0_MCUMC_STATUST0, CECC) == 1)) {
  err_addr = RREG64_PCIE(smnMCA_UMC0_MCUMC_ADDRT0 + umc_reg_offset * 4);


  lsb = REG_GET_FIELD(err_addr, MCA_UMC_UMC0_MCUMC_ADDRT0, LSB);
  err_addr = REG_GET_FIELD(err_addr, MCA_UMC_UMC0_MCUMC_ADDRT0, ErrorAddr);
  err_addr &= ~((0x1ULL << lsb) - 1);


  err_data->err_addr[err_data->err_addr_cnt] =
      ADDR_OF_8KB_BLOCK(err_addr) |
      ADDR_OF_256B_BLOCK(channel_index) |
      OFFSET_IN_256B_BLOCK(err_addr);

  err_data->err_addr_cnt++;
 }


 WREG64_UMC(mc_umc_status_addr + umc_reg_offset, 0x0ULL);
}
