
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
struct TYPE_5__ {int pcie_perf_req; } ;
struct radeon_atcs {TYPE_1__ functions; } ;
struct radeon_device {TYPE_3__* pdev; struct radeon_atcs atcs; } ;
struct atcs_pref_req_output {int ret_val; } ;
struct atcs_pref_req_input {int size; int client_id; int perf_req; int req_type; int flags; int valid_flags_mask; } ;
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
 int kfree (union acpi_object*) ;
 int memcpy (struct atcs_pref_req_output*,scalar_t__,size_t) ;
 int memset (struct atcs_pref_req_output*,int ,int) ;
 size_t min (int,size_t) ;
 union acpi_object* radeon_atcs_call (int ,int ,struct acpi_buffer*) ;
 int udelay (int) ;

int radeon_acpi_pcie_performance_request(struct radeon_device *rdev,
      u8 perf_req, bool advertise)
{
 acpi_handle handle;
 union acpi_object *info;
 struct radeon_atcs *atcs = &rdev->atcs;
 struct atcs_pref_req_input atcs_input;
 struct atcs_pref_req_output atcs_output;
 struct acpi_buffer params;
 size_t size;
 u32 retry = 3;


 handle = ACPI_HANDLE(&rdev->pdev->dev);
 if (!handle)
  return -EINVAL;

 if (!atcs->functions.pcie_perf_req)
  return -EINVAL;

 atcs_input.size = sizeof(struct atcs_pref_req_input);

 atcs_input.client_id = rdev->pdev->devfn | (rdev->pdev->bus->number << 8);
 atcs_input.valid_flags_mask = ATCS_VALID_FLAGS_MASK;
 atcs_input.flags = ATCS_WAIT_FOR_COMPLETION;
 if (advertise)
  atcs_input.flags |= ATCS_ADVERTISE_CAPS;
 atcs_input.req_type = ATCS_PCIE_LINK_SPEED;
 atcs_input.perf_req = perf_req;

 params.length = sizeof(struct atcs_pref_req_input);
 params.pointer = &atcs_input;

 while (retry--) {
  info = radeon_atcs_call(handle, ATCS_FUNCTION_PCIE_PERFORMANCE_REQUEST, &params);
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
