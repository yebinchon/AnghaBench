
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mmio; int cfg_space; int firmware_loaded; } ;
struct intel_gvt {TYPE_1__ firmware; } ;


 int clean_firmware_sysfs (struct intel_gvt*) ;
 int kfree (int ) ;

void intel_gvt_free_firmware(struct intel_gvt *gvt)
{
 if (!gvt->firmware.firmware_loaded)
  clean_firmware_sysfs(gvt);

 kfree(gvt->firmware.cfg_space);
 kfree(gvt->firmware.mmio);
}
