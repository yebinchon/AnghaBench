
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int dummy; } ;


 int CG_SPLL_FUNC_CNTL ;
 int RREG32 (int ) ;
 int SPLL_CNTL_MODE ;
 int SPLL_RESET ;
 int SPLL_SLEEP ;
 int SPLL_SW_DIR_CONTROL ;
 int WREG32 (int ,int ) ;

__attribute__((used)) static void si_spll_powerdown(struct radeon_device *rdev)
{
 u32 tmp;

 tmp = RREG32(SPLL_CNTL_MODE);
 tmp |= SPLL_SW_DIR_CONTROL;
 WREG32(SPLL_CNTL_MODE, tmp);

 tmp = RREG32(CG_SPLL_FUNC_CNTL);
 tmp |= SPLL_RESET;
 WREG32(CG_SPLL_FUNC_CNTL, tmp);

 tmp = RREG32(CG_SPLL_FUNC_CNTL);
 tmp |= SPLL_SLEEP;
 WREG32(CG_SPLL_FUNC_CNTL, tmp);

 tmp = RREG32(SPLL_CNTL_MODE);
 tmp &= ~SPLL_SW_DIR_CONTROL;
 WREG32(SPLL_CNTL_MODE, tmp);
}
