
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
struct radeon_device {int dummy; } ;
struct evergreen_power_info {int pcie_performance_request_registered; } ;


 int LC_CURRENT_DATA_RATE ;
 int PCIE_LC_SPEED_CNTL ;
 scalar_t__ PCIE_PERF_REQ_PECI_GEN1 ;
 scalar_t__ PCIE_PERF_REQ_PECI_GEN2 ;
 scalar_t__ PCIE_PERF_REQ_REMOVE_REGISTRY ;
 int RREG32_PCIE_PORT (int ) ;
 struct evergreen_power_info* evergreen_get_pi (struct radeon_device*) ;
 int radeon_acpi_pcie_performance_request (struct radeon_device*,scalar_t__,int) ;
 int udelay (int) ;

__attribute__((used)) static int cypress_pcie_performance_request(struct radeon_device *rdev,
         u8 perf_req, bool advertise)
{



 u32 tmp;

 udelay(10);
 tmp = RREG32_PCIE_PORT(PCIE_LC_SPEED_CNTL);
 if ((perf_req == PCIE_PERF_REQ_PECI_GEN1) && (tmp & LC_CURRENT_DATA_RATE))
  return 0;
 return 0;
}
