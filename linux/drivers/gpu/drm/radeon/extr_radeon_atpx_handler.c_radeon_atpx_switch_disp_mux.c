
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union acpi_object {int dummy; } acpi_object ;
typedef int u16 ;
struct TYPE_2__ {scalar_t__ disp_mux_cntl; } ;
struct radeon_atpx {int handle; TYPE_1__ functions; } ;
struct atpx_mux {int size; int mux; } ;
struct acpi_buffer {int length; struct atpx_mux* pointer; } ;


 int ATPX_FUNCTION_DISPLAY_MUX_CONTROL ;
 int EIO ;
 int kfree (union acpi_object*) ;
 union acpi_object* radeon_atpx_call (int ,int ,struct acpi_buffer*) ;

__attribute__((used)) static int radeon_atpx_switch_disp_mux(struct radeon_atpx *atpx, u16 mux_id)
{
 struct acpi_buffer params;
 union acpi_object *info;
 struct atpx_mux input;

 if (atpx->functions.disp_mux_cntl) {
  input.size = 4;
  input.mux = mux_id;
  params.length = input.size;
  params.pointer = &input;
  info = radeon_atpx_call(atpx->handle,
     ATPX_FUNCTION_DISPLAY_MUX_CONTROL,
     &params);
  if (!info)
   return -EIO;
  kfree(info);
 }
 return 0;
}
