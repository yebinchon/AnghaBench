
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned long long u64 ;
typedef scalar_t__ u16 ;
struct TYPE_2__ {scalar_t__ handle; unsigned long long size; } ;


 TYPE_1__* dmi_memdev ;
 int dmi_memdev_nr ;

u64 dmi_memdev_size(u16 handle)
{
 int n;

 if (dmi_memdev) {
  for (n = 0; n < dmi_memdev_nr; n++) {
   if (handle == dmi_memdev[n].handle)
    return dmi_memdev[n].size;
  }
 }
 return ~0ull;
}
