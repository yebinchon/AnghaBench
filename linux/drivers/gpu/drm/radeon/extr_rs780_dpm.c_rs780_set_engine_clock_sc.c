
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;


 int FB_DIV_TIMER_VAL (int ) ;
 int FB_DIV_TIMER_VAL_MASK ;
 int FVTHROT_CNTRL_REG ;
 int FVTHROT_FBDIV_REG2 ;
 int MINIMUM_CIP (int) ;
 int MINIMUM_CIP_MASK ;
 int REFRESH_RATE_DIVISOR (int ) ;
 int REFRESH_RATE_DIVISOR_MASK ;
 int RS780_FBDIVTIMERVAL_DFLT ;
 int WREG32_P (int ,int,int) ;

__attribute__((used)) static void rs780_set_engine_clock_sc(struct radeon_device *rdev)
{
 WREG32_P(FVTHROT_FBDIV_REG2,
   FB_DIV_TIMER_VAL(RS780_FBDIVTIMERVAL_DFLT),
   ~FB_DIV_TIMER_VAL_MASK);

 WREG32_P(FVTHROT_CNTRL_REG,
   REFRESH_RATE_DIVISOR(0) | MINIMUM_CIP(0xf),
   ~(REFRESH_RATE_DIVISOR_MASK | MINIMUM_CIP_MASK));
}
