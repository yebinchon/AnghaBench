
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct lg_drv_data {struct lg4ff_device_entry* device_props; } ;
struct TYPE_4__ {int product_id; int range; } ;
struct lg4ff_device_entry {TYPE_2__ wdata; } ;
struct hid_usage {int code; int type; } ;
struct hid_field {TYPE_1__* hidinput; } ;
struct hid_device {int dummy; } ;
typedef int s32 ;
struct TYPE_3__ {int input; } ;




 int hid_err (struct hid_device*,char*) ;
 int input_event (int ,int ,int ,int ) ;
 int lg4ff_adjust_dfp_x_axis (int ,int ) ;

int lg4ff_adjust_input_event(struct hid_device *hid, struct hid_field *field,
        struct hid_usage *usage, s32 value, struct lg_drv_data *drv_data)
{
 struct lg4ff_device_entry *entry = drv_data->device_props;
 s32 new_value = 0;

 if (!entry) {
  hid_err(hid, "Device properties not found");
  return 0;
 }

 switch (entry->wdata.product_id) {
 case 128:
  switch (usage->code) {
  case 129:
   new_value = lg4ff_adjust_dfp_x_axis(value, entry->wdata.range);
   input_event(field->hidinput->input, usage->type, usage->code, new_value);
   return 1;
  default:
   return 0;
  }
 default:
  return 0;
 }
}
