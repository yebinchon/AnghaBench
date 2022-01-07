
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ pointer; } ;
union acpi_object {TYPE_4__ buffer; } ;
typedef int u8 ;
typedef int u32 ;
typedef size_t u16 ;
struct atcs_pref_req_output {int ret_val; } ;
struct atcs_pref_req_input {int size; int client_id; int perf_req; int req_type; int flags; int valid_flags_mask; } ;
struct TYPE_5__ {int pcie_perf_req; } ;
struct amdgpu_atcs {TYPE_1__ functions; } ;
struct amdgpu_device {TYPE_3__* pdev; struct amdgpu_atcs atcs; } ;
struct acpi_buffer {int length; struct atcs_pref_req_input* pointer; } ;
typedef int atcs_output ;
typedef int acpi_handle ;
struct TYPE_7__ {int devfn; TYPE_2__* bus; int dev; } ;
struct TYPE_6__ {int number; } ;


 int ACPI_HANDLE (int *) ;
 int ATCS_ADVERTISE_CAPS ;
 int ATCS_FUNCTION_PCIE_PERFORMANCE_REQUEST ;
 int ATCS_PCIE_LINK_SPEED ;



 int ATCS_VALID_FLAGS_MASK ;
 int ATCS_WAIT_FOR_COMPLETION ;
 int DRM_INFO (char*,size_t) ;
 int EINVAL ;
 int EIO ;
 scalar_t__ amdgpu_acpi_pcie_notify_device_ready (struct amdgpu_device*) ;
 union acpi_object* amdgpu_atcs_call (int ,int ,struct acpi_buffer*) ;
 int kfree (union acpi_object*) ;
 int memcpy (struct atcs_pref_req_output*,scalar_t__,size_t) ;
 int memset (struct atcs_pref_req_output*,int ,int) ;
 size_t min (int,size_t) ;
 int udelay (int) ;

int amdgpu_acpi_pcie_performance_request(struct amdgpu_device *adev,
      u8 perf_req, bool advertise)
{
 acpi_handle handle;
 union acpi_object *info;
 struct amdgpu_atcs *atcs = &adev->atcs;
 struct atcs_pref_req_input atcs_input;
 struct atcs_pref_req_output atcs_output;
 struct acpi_buffer params;
 size_t size;
 u32 retry = 3;

 if (amdgpu_acpi_pcie_notify_device_ready(adev))
  return -EINVAL;


 handle = ACPI_HANDLE(&adev->pdev->dev);
 if (!handle)
  return -EINVAL;

 if (!atcs->functions.pcie_perf_req)
  return -EINVAL;

 atcs_input.size = sizeof(struct atcs_pref_req_input);

 atcs_input.client_id = adev->pdev->devfn | (adev->pdev->bus->number << 8);
 atcs_input.valid_flags_mask = ATCS_VALID_FLAGS_MASK;
 atcs_input.flags = ATCS_WAIT_FOR_COMPLETION;
 if (advertise)
  atcs_input.flags |= ATCS_ADVERTISE_CAPS;
 atcs_input.req_type = ATCS_PCIE_LINK_SPEED;
 atcs_input.perf_req = perf_req;

 params.length = sizeof(struct atcs_pref_req_input);
 params.pointer = &atcs_input;

 while (retry--) {
  info = amdgpu_atcs_call(handle, ATCS_FUNCTION_PCIE_PERFORMANCE_REQUEST, &params);
  if (!info)
   return -EIO;

  memset(&atcs_output, 0, sizeof(atcs_output));

  size = *(u16 *) info->buffer.pointer;
  if (size < 3) {
   DRM_INFO("ATCS buffer is too small: %zu\n", size);
   kfree(info);
   return -EINVAL;
  }
  size = min(sizeof(atcs_output), size);

  memcpy(&atcs_output, info->buffer.pointer, size);

  kfree(info);

  switch (atcs_output.ret_val) {
  case 128:
  default:
   return -EINVAL;
  case 130:
   return 0;
  case 129:
   udelay(10);
   break;
  }
 }

 return 0;
}
