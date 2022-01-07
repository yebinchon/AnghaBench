
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;


 int BACKBIAS_PAD_EN ;
 int BACKBIAS_VALUE ;
 int GENERAL_PWRMGT ;
 int WREG32_P (int ,int,int) ;

void rv770_enable_backbias(struct radeon_device *rdev,
      bool enable)
{
 if (enable)
  WREG32_P(GENERAL_PWRMGT, BACKBIAS_PAD_EN, ~BACKBIAS_PAD_EN);
 else
  WREG32_P(GENERAL_PWRMGT, 0, ~(BACKBIAS_VALUE | BACKBIAS_PAD_EN));
}
