
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hid_device_id {void* product; void* vendor; void* bus; int member_0; } ;
typedef void* __u16 ;


 scalar_t__ hid_modify_dquirk (struct hid_device_id*,int ) ;
 int pr_warn (char*,char*) ;
 int sscanf (char*,char*,unsigned short*,unsigned short*,int *) ;

int hid_quirks_init(char **quirks_param, __u16 bus, int count)
{
 struct hid_device_id id = { 0 };
 int n = 0, m;
 unsigned short int vendor, product;
 u32 quirks;

 id.bus = bus;

 for (; n < count && quirks_param[n]; n++) {

  m = sscanf(quirks_param[n], "0x%hx:0x%hx:0x%x",
    &vendor, &product, &quirks);

  id.vendor = (__u16)vendor;
  id.product = (__u16)product;

  if (m != 3 ||
      hid_modify_dquirk(&id, quirks) != 0) {
   pr_warn("Could not parse HID quirk module param %s\n",
    quirks_param[n]);
  }
 }

 return 0;
}
