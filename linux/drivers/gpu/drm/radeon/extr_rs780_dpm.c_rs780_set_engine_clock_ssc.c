
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;


 int FVTHROT_FBDIV_REG1 ;
 int FVTHROT_FB_DS_REG0 ;
 int FVTHROT_FB_DS_REG1 ;
 int FVTHROT_FB_US_REG0 ;
 int FVTHROT_FB_US_REG1 ;
 int MAX_FEEDBACK_STEP (int) ;
 int MAX_FEEDBACK_STEP_MASK ;
 int RS780_FVTHROTFBDSREG0_DFLT ;
 int RS780_FVTHROTFBDSREG1_DFLT ;
 int RS780_FVTHROTFBUSREG0_DFLT ;
 int RS780_FVTHROTFBUSREG1_DFLT ;
 int WREG32 (int ,int ) ;
 int WREG32_P (int ,int ,int ) ;

__attribute__((used)) static void rs780_set_engine_clock_ssc(struct radeon_device *rdev)
{
 WREG32(FVTHROT_FB_US_REG0, RS780_FVTHROTFBUSREG0_DFLT);
 WREG32(FVTHROT_FB_US_REG1, RS780_FVTHROTFBUSREG1_DFLT);
 WREG32(FVTHROT_FB_DS_REG0, RS780_FVTHROTFBDSREG0_DFLT);
 WREG32(FVTHROT_FB_DS_REG1, RS780_FVTHROTFBDSREG1_DFLT);

 WREG32_P(FVTHROT_FBDIV_REG1, MAX_FEEDBACK_STEP(1), ~MAX_FEEDBACK_STEP_MASK);
}
