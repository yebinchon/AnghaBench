
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ pointer; } ;
union acpi_object {TYPE_1__ buffer; } ;
typedef int u32 ;
typedef size_t u16 ;
struct atpx_px_params {int flags; int valid_flags; } ;
struct TYPE_5__ {int i2c_mux_cntl; int disp_mux_cntl; int power_cntl; scalar_t__ px_params; } ;
struct amdgpu_atpx {int is_hybrid; int dgpu_req_power_for_displays; TYPE_2__ functions; int handle; } ;
typedef int output ;
struct TYPE_6__ {int quirks; int bridge_pm_usable; } ;


 int AMDGPU_PX_QUIRK_FORCE_ATPX ;
 int ATPX_CRT1_RGB_SIGNAL_MUXED ;
 int ATPX_DFP_SIGNAL_MUXED ;
 int ATPX_DGPU_REQ_POWER_FOR_DISPLAYS ;
 int ATPX_DYNAMIC_DGPU_POWER_OFF_SUPPORTED ;
 int ATPX_DYNAMIC_PX_SUPPORTED ;
 int ATPX_FUNCTION_GET_PX_PARAMETERS ;
 int ATPX_MS_HYBRID_GFX_SUPPORTED ;
 int ATPX_SEPARATE_MUX_FOR_I2C ;
 int ATPX_TV_SIGNAL_MUXED ;
 int EINVAL ;
 int EIO ;
 union acpi_object* amdgpu_atpx_call (int ,int ,int *) ;
 TYPE_3__ amdgpu_atpx_priv ;
 int kfree (union acpi_object*) ;
 int memcpy (struct atpx_px_params*,scalar_t__,size_t) ;
 int memset (struct atpx_px_params*,int ,int) ;
 size_t min (int,size_t) ;
 int printk (char*,...) ;

__attribute__((used)) static int amdgpu_atpx_validate(struct amdgpu_atpx *atpx)
{
 u32 valid_bits = 0;

 if (atpx->functions.px_params) {
  union acpi_object *info;
  struct atpx_px_params output;
  size_t size;

  info = amdgpu_atpx_call(atpx->handle, ATPX_FUNCTION_GET_PX_PARAMETERS, ((void*)0));
  if (!info)
   return -EIO;

  memset(&output, 0, sizeof(output));

  size = *(u16 *) info->buffer.pointer;
  if (size < 10) {
   printk("ATPX buffer is too small: %zu\n", size);
   kfree(info);
   return -EINVAL;
  }
  size = min(sizeof(output), size);

  memcpy(&output, info->buffer.pointer, size);

  valid_bits = output.flags & output.valid_flags;

  kfree(info);
 }


 if (valid_bits & ATPX_SEPARATE_MUX_FOR_I2C) {
  atpx->functions.i2c_mux_cntl = 1;
  atpx->functions.disp_mux_cntl = 1;
 }

 if (valid_bits & (ATPX_CRT1_RGB_SIGNAL_MUXED |
     ATPX_TV_SIGNAL_MUXED |
     ATPX_DFP_SIGNAL_MUXED))
  atpx->functions.disp_mux_cntl = 1;



 if (valid_bits & (ATPX_DYNAMIC_PX_SUPPORTED |
     ATPX_DYNAMIC_DGPU_POWER_OFF_SUPPORTED))
  atpx->functions.power_cntl = 1;

 atpx->is_hybrid = 0;
 if (valid_bits & ATPX_MS_HYBRID_GFX_SUPPORTED) {
  if (amdgpu_atpx_priv.quirks & AMDGPU_PX_QUIRK_FORCE_ATPX) {
   printk("ATPX Hybrid Graphics, forcing to ATPX\n");
   atpx->functions.power_cntl = 1;
   atpx->is_hybrid = 0;
  } else {
   printk("ATPX Hybrid Graphics\n");




   atpx->functions.power_cntl = !amdgpu_atpx_priv.bridge_pm_usable;
   atpx->is_hybrid = 1;
  }
 }

 atpx->dgpu_req_power_for_displays = 0;
 if (valid_bits & ATPX_DGPU_REQ_POWER_FOR_DISPLAYS)
  atpx->dgpu_req_power_for_displays = 1;

 return 0;
}
