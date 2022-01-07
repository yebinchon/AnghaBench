
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef union acpi_object {int dummy; } acpi_object ;
struct TYPE_4__ {int pcie_dev_rdy; } ;
struct amdgpu_atcs {TYPE_2__ functions; } ;
struct amdgpu_device {TYPE_1__* pdev; struct amdgpu_atcs atcs; } ;
typedef int acpi_handle ;
struct TYPE_3__ {int dev; } ;


 int ACPI_HANDLE (int *) ;
 int ATCS_FUNCTION_PCIE_DEVICE_READY_NOTIFICATION ;
 int EINVAL ;
 int EIO ;
 union acpi_object* amdgpu_atcs_call (int ,int ,int *) ;
 int kfree (union acpi_object*) ;

int amdgpu_acpi_pcie_notify_device_ready(struct amdgpu_device *adev)
{
 acpi_handle handle;
 union acpi_object *info;
 struct amdgpu_atcs *atcs = &adev->atcs;


 handle = ACPI_HANDLE(&adev->pdev->dev);
 if (!handle)
  return -EINVAL;

 if (!atcs->functions.pcie_dev_rdy)
  return -EINVAL;

 info = amdgpu_atcs_call(handle, ATCS_FUNCTION_PCIE_DEVICE_READY_NOTIFICATION, ((void*)0));
 if (!info)
  return -EIO;

 kfree(info);

 return 0;
}
