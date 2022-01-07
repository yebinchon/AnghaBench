
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct lg_drv_data {struct lg4ff_device_entry* device_props; } ;
struct TYPE_2__ {int product_id; scalar_t__ combine; } ;
struct lg4ff_device_entry {TYPE_1__ wdata; } ;
struct hid_report {int dummy; } ;
struct hid_device {int dummy; } ;
int lg4ff_raw_event(struct hid_device *hdev, struct hid_report *report,
  u8 *rd, int size, struct lg_drv_data *drv_data)
{
 int offset;
 struct lg4ff_device_entry *entry = drv_data->device_props;

 if (!entry)
  return 0;


 if (entry->wdata.combine) {
  switch (entry->wdata.product_id) {
  case 131:
   rd[5] = rd[3];
   rd[6] = 0x7F;
   return 1;
  case 128:
  case 129:
  case 133:
  case 132:
   rd[4] = rd[3];
   rd[5] = 0x7F;
   return 1;
  case 137:
   rd[5] = rd[4];
   rd[6] = 0x7F;
   return 1;
  case 136:
  case 135:
   offset = 5;
   break;
  case 138:
  case 134:
   offset = 6;
   break;
  case 130:
   offset = 3;
   break;
  default:
   return 0;
  }


  rd[offset] = (0xFF + rd[offset] - rd[offset+1]) >> 1;
  rd[offset+1] = 0x7F;
  return 1;
 }

 return 0;
}
