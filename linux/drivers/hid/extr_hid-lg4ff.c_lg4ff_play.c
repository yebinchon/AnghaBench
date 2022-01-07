
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct lg_drv_data {struct lg4ff_device_entry* device_props; } ;
struct lg4ff_device_entry {int report_lock; TYPE_4__* report; } ;
struct input_dev {int dummy; } ;
struct hid_device {int dummy; } ;
struct TYPE_6__ {int start_level; } ;
struct TYPE_7__ {TYPE_2__ ramp; } ;
struct ff_effect {int type; TYPE_3__ u; } ;
typedef int s32 ;
struct TYPE_8__ {TYPE_1__** field; } ;
struct TYPE_5__ {int* value; } ;


 int CLAMP (int) ;
 int EINVAL ;

 int HID_REQ_SET_REPORT ;
 int hid_err (struct hid_device*,char*) ;
 struct lg_drv_data* hid_get_drvdata (struct hid_device*) ;
 int hid_hw_request (struct hid_device*,TYPE_4__*,int ) ;
 struct hid_device* input_get_drvdata (struct input_dev*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int lg4ff_play(struct input_dev *dev, void *data, struct ff_effect *effect)
{
 struct hid_device *hid = input_get_drvdata(dev);
 struct lg4ff_device_entry *entry;
 struct lg_drv_data *drv_data;
 unsigned long flags;
 s32 *value;
 int x;

 drv_data = hid_get_drvdata(hid);
 if (!drv_data) {
  hid_err(hid, "Private driver data not found!\n");
  return -EINVAL;
 }

 entry = drv_data->device_props;
 if (!entry) {
  hid_err(hid, "Device properties not found!\n");
  return -EINVAL;
 }
 value = entry->report->field[0]->value;



 switch (effect->type) {
 case 128:
  x = effect->u.ramp.start_level + 0x80;
  do { if (x < 0) x = 0; else if (x > 0xff) x = 0xff; } while (0);

  spin_lock_irqsave(&entry->report_lock, flags);
  if (x == 0x80) {

   value[0] = 0x13;
   value[1] = 0x00;
   value[2] = 0x00;
   value[3] = 0x00;
   value[4] = 0x00;
   value[5] = 0x00;
   value[6] = 0x00;

   hid_hw_request(hid, entry->report, HID_REQ_SET_REPORT);
   spin_unlock_irqrestore(&entry->report_lock, flags);
   return 0;
  }

  value[0] = 0x11;
  value[1] = 0x08;
  value[2] = x;
  value[3] = 0x80;
  value[4] = 0x00;
  value[5] = 0x00;
  value[6] = 0x00;

  hid_hw_request(hid, entry->report, HID_REQ_SET_REPORT);
  spin_unlock_irqrestore(&entry->report_lock, flags);
  break;
 }
 return 0;
}
