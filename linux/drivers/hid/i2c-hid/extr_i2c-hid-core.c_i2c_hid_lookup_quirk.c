
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef scalar_t__ u16 ;
typedef scalar_t__ __u16 ;
struct TYPE_2__ {scalar_t__ const idVendor; scalar_t__ idProduct; int quirks; } ;


 scalar_t__ HID_ANY_ID ;
 TYPE_1__* i2c_hid_quirks ;

__attribute__((used)) static u32 i2c_hid_lookup_quirk(const u16 idVendor, const u16 idProduct)
{
 u32 quirks = 0;
 int n;

 for (n = 0; i2c_hid_quirks[n].idVendor; n++)
  if (i2c_hid_quirks[n].idVendor == idVendor &&
      (i2c_hid_quirks[n].idProduct == (__u16)HID_ANY_ID ||
       i2c_hid_quirks[n].idProduct == idProduct))
   quirks = i2c_hid_quirks[n].quirks;

 return quirks;
}
