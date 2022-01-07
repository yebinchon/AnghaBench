
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int dummy; } ;


 int CG_SPLL_FUNC_CNTL ;
 int FORCED_FEEDBACK_DIV (int) ;
 int FORCED_FEEDBACK_DIV_MASK ;
 int FORCE_FEEDBACK_DIV ;
 int FVTHROT_FBDIV_REG1 ;
 int FVTHROT_FBDIV_REG2 ;
 int RREG32 (int ) ;
 int SPLL_FB_DIV_MASK ;
 int SPLL_FB_DIV_SHIFT ;
 int STARTING_FEEDBACK_DIV (int) ;
 int STARTING_FEEDBACK_DIV_MASK ;
 int WREG32_P (int ,int ,int ) ;

__attribute__((used)) static void rs780_preset_starting_fbdiv(struct radeon_device *rdev)
{
 u32 fbdiv = (RREG32(CG_SPLL_FUNC_CNTL) & SPLL_FB_DIV_MASK) >> SPLL_FB_DIV_SHIFT;

 WREG32_P(FVTHROT_FBDIV_REG1, STARTING_FEEDBACK_DIV(fbdiv),
   ~STARTING_FEEDBACK_DIV_MASK);

 WREG32_P(FVTHROT_FBDIV_REG2, FORCED_FEEDBACK_DIV(fbdiv),
   ~FORCED_FEEDBACK_DIV_MASK);

 WREG32_P(FVTHROT_FBDIV_REG1, FORCE_FEEDBACK_DIV, ~FORCE_FEEDBACK_DIV);
}
