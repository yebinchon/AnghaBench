
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rv7xx_power_info {int boot_in_gen2; } ;
struct radeon_device {int dummy; } ;


 int CG_BIF_REQ_AND_RSP ;
 int CG_CLIENT_REQ (int) ;
 int CG_CLIENT_REQ_MASK ;
 int LC_CLR_FAILED_SPD_CHANGE_CNT ;
 int LC_GEN2_EN_STRAP ;
 int LC_HW_VOLTAGE_IF_CONTROL (int) ;
 int LC_HW_VOLTAGE_IF_CONTROL_MASK ;
 int LC_OTHER_SIDE_EVER_SENT_GEN2 ;
 int LC_OTHER_SIDE_SUPPORTS_GEN2 ;
 int PCIE_LC_SPEED_CNTL ;
 int RREG32 (int ) ;
 int RREG32_PCIE_PORT (int ) ;
 int WREG32 (int ,int) ;
 int WREG32_PCIE_PORT (int ,int) ;
 struct rv7xx_power_info* rv770_get_pi (struct radeon_device*) ;
 int udelay (int) ;

__attribute__((used)) static void btc_enable_bif_dynamic_pcie_gen2(struct radeon_device *rdev,
          bool enable)
{
 struct rv7xx_power_info *pi = rv770_get_pi(rdev);
 u32 tmp, bif;

 tmp = RREG32_PCIE_PORT(PCIE_LC_SPEED_CNTL);
 if (enable) {
  if ((tmp & LC_OTHER_SIDE_EVER_SENT_GEN2) &&
      (tmp & LC_OTHER_SIDE_SUPPORTS_GEN2)) {
   if (!pi->boot_in_gen2) {
    bif = RREG32(CG_BIF_REQ_AND_RSP) & ~CG_CLIENT_REQ_MASK;
    bif |= CG_CLIENT_REQ(0xd);
    WREG32(CG_BIF_REQ_AND_RSP, bif);

    tmp &= ~LC_HW_VOLTAGE_IF_CONTROL_MASK;
    tmp |= LC_HW_VOLTAGE_IF_CONTROL(1);
    tmp |= LC_GEN2_EN_STRAP;

    tmp |= LC_CLR_FAILED_SPD_CHANGE_CNT;
    WREG32_PCIE_PORT(PCIE_LC_SPEED_CNTL, tmp);
    udelay(10);
    tmp &= ~LC_CLR_FAILED_SPD_CHANGE_CNT;
    WREG32_PCIE_PORT(PCIE_LC_SPEED_CNTL, tmp);
   }
  }
 } else {
  if ((tmp & LC_OTHER_SIDE_EVER_SENT_GEN2) ||
      (tmp & LC_OTHER_SIDE_SUPPORTS_GEN2)) {
   if (!pi->boot_in_gen2) {
    bif = RREG32(CG_BIF_REQ_AND_RSP) & ~CG_CLIENT_REQ_MASK;
    bif |= CG_CLIENT_REQ(0xd);
    WREG32(CG_BIF_REQ_AND_RSP, bif);

    tmp &= ~LC_HW_VOLTAGE_IF_CONTROL_MASK;
    tmp &= ~LC_GEN2_EN_STRAP;
   }
   WREG32_PCIE_PORT(PCIE_LC_SPEED_CNTL, tmp);
  }
 }
}
