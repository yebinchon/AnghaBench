
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct radeon_device {int dummy; } ;
struct evergreen_power_info {int pcie_performance_request_registered; } ;


 scalar_t__ PCIE_PERF_REQ_PECI_GEN1 ;
 scalar_t__ PCIE_PERF_REQ_PECI_GEN2 ;
 scalar_t__ PCIE_PERF_REQ_REMOVE_REGISTRY ;
 struct evergreen_power_info* evergreen_get_pi (struct radeon_device*) ;
 int radeon_acpi_pcie_notify_device_ready (struct radeon_device*) ;
 int radeon_acpi_pcie_performance_request (struct radeon_device*,scalar_t__,int) ;

__attribute__((used)) static int ni_pcie_performance_request(struct radeon_device *rdev,
           u8 perf_req, bool advertise)
{
 return 0;
}
