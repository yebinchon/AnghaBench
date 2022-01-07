
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int crt; int tv; int panel; } ;
struct TYPE_6__ {TYPE_2__ i2c_indices; } ;
struct TYPE_4__ {scalar_t__ output1_script_ptr; scalar_t__ output0_script_ptr; } ;
struct dcb_table {int dummy; } ;
struct nvbios {TYPE_3__ legacy; TYPE_1__ tmds; struct dcb_table dcb; } ;
struct drm_device {int dummy; } ;


 int DCB_OUTPUT_ANALOG ;
 int DCB_OUTPUT_TMDS ;
 int DCB_OUTPUT_TV ;
 int fabricate_dcb_output (struct dcb_table*,int ,int,int,int) ;
 scalar_t__ nv04_tv_identify (struct drm_device*,int) ;
 scalar_t__ nv_two_heads (struct drm_device*) ;
 scalar_t__ of_machine_is_compatible (char*) ;

__attribute__((used)) static void
fabricate_dcb_encoder_table(struct drm_device *dev, struct nvbios *bios)
{
 struct dcb_table *dcb = &bios->dcb;
 int all_heads = (nv_two_heads(dev) ? 3 : 1);
 fabricate_dcb_output(dcb, DCB_OUTPUT_ANALOG,
        bios->legacy.i2c_indices.crt, 1, 1);

 if (nv04_tv_identify(dev, bios->legacy.i2c_indices.tv) >= 0)
  fabricate_dcb_output(dcb, DCB_OUTPUT_TV,
         bios->legacy.i2c_indices.tv,
         all_heads, 0);

 else if (bios->tmds.output0_script_ptr ||
   bios->tmds.output1_script_ptr)
  fabricate_dcb_output(dcb, DCB_OUTPUT_TMDS,
         bios->legacy.i2c_indices.panel,
         all_heads, 1);
}
