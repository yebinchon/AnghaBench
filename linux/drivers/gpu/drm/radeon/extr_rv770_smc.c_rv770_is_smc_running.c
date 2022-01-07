
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int dummy; } ;


 int RREG32 (int ) ;
 int SMC_CLK_EN ;
 int SMC_IO ;
 int SMC_RST_N ;

bool rv770_is_smc_running(struct radeon_device *rdev)
{
 u32 tmp;

 tmp = RREG32(SMC_IO);

 if ((tmp & SMC_RST_N) && (tmp & SMC_CLK_EN))
  return 1;
 else
  return 0;
}
