
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int dummy; } ;


 int LOAD_BALANCE_ENABLE ;
 int RLC_LB_CNTL ;
 int RREG32 (int ) ;
 int SPI_LB_CU_MASK ;
 int WREG32 (int ,int) ;
 int si_select_se_sh (struct radeon_device*,int,int) ;

__attribute__((used)) static void si_enable_lbpw(struct radeon_device *rdev, bool enable)
{
 u32 tmp;

 tmp = RREG32(RLC_LB_CNTL);
 if (enable)
  tmp |= LOAD_BALANCE_ENABLE;
 else
  tmp &= ~LOAD_BALANCE_ENABLE;
 WREG32(RLC_LB_CNTL, tmp);

 if (!enable) {
  si_select_se_sh(rdev, 0xffffffff, 0xffffffff);
  WREG32(SPI_LB_CU_MASK, 0x00ff);
 }
}
