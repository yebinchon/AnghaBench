
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;


 int SMC_CLK_EN ;
 int SMC_IO ;
 int WREG32_P (int ,int ,int ) ;

void rv770_stop_smc_clock(struct radeon_device *rdev)
{
 WREG32_P(SMC_IO, 0, ~SMC_CLK_EN);
}
