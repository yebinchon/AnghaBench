
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct TYPE_2__ {scalar_t__ handle; char* bank; char* device; } ;


 TYPE_1__* dmi_memdev ;
 int dmi_memdev_nr ;

void dmi_memdev_name(u16 handle, const char **bank, const char **device)
{
 int n;

 if (dmi_memdev == ((void*)0))
  return;

 for (n = 0; n < dmi_memdev_nr; n++) {
  if (handle == dmi_memdev[n].handle) {
   *bank = dmi_memdev[n].bank;
   *device = dmi_memdev[n].device;
   break;
  }
 }
}
