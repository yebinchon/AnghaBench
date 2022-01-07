
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ pcie_dev_rdy; scalar_t__ pcie_perf_req; } ;
struct amdgpu_atcs {TYPE_1__ functions; } ;
struct amdgpu_device {struct amdgpu_atcs atcs; } ;



bool amdgpu_acpi_is_pcie_performance_request_supported(struct amdgpu_device *adev)
{
 struct amdgpu_atcs *atcs = &adev->atcs;

 if (atcs->functions.pcie_perf_req && atcs->functions.pcie_dev_rdy)
  return 1;

 return 0;
}
