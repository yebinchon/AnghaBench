
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lg_drv_data {int quirks; } ;
struct hid_usage {scalar_t__ code; int type; } ;
struct hid_field {TYPE_1__* hidinput; } ;
struct hid_device {int dummy; } ;
typedef int __s32 ;
struct TYPE_2__ {int input; } ;


 int LG_FF4 ;
 int LG_INVERT_HWHEEL ;
 scalar_t__ REL_HWHEEL ;
 struct lg_drv_data* hid_get_drvdata (struct hid_device*) ;
 int input_event (int ,int ,scalar_t__,int ) ;
 int lg4ff_adjust_input_event (struct hid_device*,struct hid_field*,struct hid_usage*,int ,struct lg_drv_data*) ;

__attribute__((used)) static int lg_event(struct hid_device *hdev, struct hid_field *field,
  struct hid_usage *usage, __s32 value)
{
 struct lg_drv_data *drv_data = hid_get_drvdata(hdev);

 if ((drv_data->quirks & LG_INVERT_HWHEEL) && usage->code == REL_HWHEEL) {
  input_event(field->hidinput->input, usage->type, usage->code,
    -value);
  return 1;
 }
 if (drv_data->quirks & LG_FF4) {
  return lg4ff_adjust_input_event(hdev, field, usage, value, drv_data);
 }

 return 0;
}
