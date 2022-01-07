
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rv7xx_power_info {int pcie_gen2; int boot_in_gen2; } ;
struct radeon_device {int dummy; } ;


 int LC_CURRENT_DATA_RATE ;
 int LC_OTHER_SIDE_EVER_SENT_GEN2 ;
 int LC_OTHER_SIDE_SUPPORTS_GEN2 ;
 int PCIE_LC_SPEED_CNTL ;
 int RREG32_PCIE_PORT (int ) ;
 struct rv7xx_power_info* rv770_get_pi (struct radeon_device*) ;

void rv770_get_pcie_gen2_status(struct radeon_device *rdev)
{
 struct rv7xx_power_info *pi = rv770_get_pi(rdev);
 u32 tmp;

 tmp = RREG32_PCIE_PORT(PCIE_LC_SPEED_CNTL);

 if ((tmp & LC_OTHER_SIDE_EVER_SENT_GEN2) &&
     (tmp & LC_OTHER_SIDE_SUPPORTS_GEN2))
  pi->pcie_gen2 = 1;
 else
  pi->pcie_gen2 = 0;

 if (pi->pcie_gen2) {
  if (tmp & LC_CURRENT_DATA_RATE)
   pi->boot_in_gen2 = 1;
  else
   pi->boot_in_gen2 = 0;
 } else
  pi->boot_in_gen2 = 0;
}
