
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;


 int ENABLE_FV_THROT ;
 int ENABLE_FV_UPDATE ;
 int FVTHROT_CNTRL_REG ;
 int WREG32_P (int ,int,int) ;

__attribute__((used)) static void rs780_clk_scaling_enable(struct radeon_device *rdev, bool enable)
{
 if (enable)
  WREG32_P(FVTHROT_CNTRL_REG, ENABLE_FV_THROT | ENABLE_FV_UPDATE,
    ~(ENABLE_FV_THROT | ENABLE_FV_UPDATE));
 else
  WREG32_P(FVTHROT_CNTRL_REG, 0,
    ~(ENABLE_FV_THROT | ENABLE_FV_UPDATE));
}
