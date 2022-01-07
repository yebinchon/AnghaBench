
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int dummy; } ;


 int CG_FTV_0 ;
 int CG_FTV_1 ;
 int CG_FTV_2 ;
 int CG_FTV_3 ;
 int CG_FTV_4 ;
 int CG_FTV_5 ;
 int CG_FTV_6 ;
 int CG_FTV_7 ;
 int CISLANDS_VRC_DFLT0 ;
 int CISLANDS_VRC_DFLT1 ;
 int CISLANDS_VRC_DFLT2 ;
 int CISLANDS_VRC_DFLT3 ;
 int CISLANDS_VRC_DFLT4 ;
 int CISLANDS_VRC_DFLT5 ;
 int CISLANDS_VRC_DFLT6 ;
 int CISLANDS_VRC_DFLT7 ;
 int RESET_BUSY_CNT ;
 int RESET_SCLK_CNT ;
 int RREG32_SMC (int ) ;
 int SCLK_PWRMGT_CNTL ;
 int WREG32_SMC (int ,int) ;

__attribute__((used)) static void ci_program_vc(struct radeon_device *rdev)
{
 u32 tmp;

 tmp = RREG32_SMC(SCLK_PWRMGT_CNTL);
 tmp &= ~(RESET_SCLK_CNT | RESET_BUSY_CNT);
 WREG32_SMC(SCLK_PWRMGT_CNTL, tmp);

 WREG32_SMC(CG_FTV_0, CISLANDS_VRC_DFLT0);
 WREG32_SMC(CG_FTV_1, CISLANDS_VRC_DFLT1);
 WREG32_SMC(CG_FTV_2, CISLANDS_VRC_DFLT2);
 WREG32_SMC(CG_FTV_3, CISLANDS_VRC_DFLT3);
 WREG32_SMC(CG_FTV_4, CISLANDS_VRC_DFLT4);
 WREG32_SMC(CG_FTV_5, CISLANDS_VRC_DFLT5);
 WREG32_SMC(CG_FTV_6, CISLANDS_VRC_DFLT6);
 WREG32_SMC(CG_FTV_7, CISLANDS_VRC_DFLT7);
}
