
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rv7xx_power_info {int pcie_gen2; } ;
struct radeon_device {int dummy; } ;


 int LC_OTHER_SIDE_EVER_SENT_GEN2 ;
 int LC_OTHER_SIDE_SUPPORTS_GEN2 ;
 int PCIE_LC_SPEED_CNTL ;
 int PCIE_PERF_REQ_PECI_GEN2 ;
 int RREG32_PCIE_PORT (int ) ;
 int ni_pcie_performance_request (struct radeon_device*,int ,int) ;
 struct rv7xx_power_info* rv770_get_pi (struct radeon_device*) ;

__attribute__((used)) static int ni_advertise_gen2_capability(struct radeon_device *rdev)
{
 struct rv7xx_power_info *pi = rv770_get_pi(rdev);
 u32 tmp;

 tmp = RREG32_PCIE_PORT(PCIE_LC_SPEED_CNTL);

 if ((tmp & LC_OTHER_SIDE_EVER_SENT_GEN2) &&
     (tmp & LC_OTHER_SIDE_SUPPORTS_GEN2))
  pi->pcie_gen2 = 1;
 else
  pi->pcie_gen2 = 0;

 if (!pi->pcie_gen2)
  ni_pcie_performance_request(rdev, PCIE_PERF_REQ_PECI_GEN2, 1);

 return 0;
}
