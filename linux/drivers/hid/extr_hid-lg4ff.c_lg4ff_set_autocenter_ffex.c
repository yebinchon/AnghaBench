
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct lg_drv_data {struct lg4ff_device_entry* device_props; } ;
struct lg4ff_device_entry {int report_lock; TYPE_2__* report; } ;
struct input_dev {int dummy; } ;
struct hid_device {int dummy; } ;
typedef int s32 ;
struct TYPE_4__ {TYPE_1__** field; } ;
struct TYPE_3__ {int* value; } ;


 int HID_REQ_SET_REPORT ;
 int hid_err (struct hid_device*,char*) ;
 struct lg_drv_data* hid_get_drvdata (struct hid_device*) ;
 int hid_hw_request (struct hid_device*,TYPE_2__*,int ) ;
 struct hid_device* input_get_drvdata (struct input_dev*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void lg4ff_set_autocenter_ffex(struct input_dev *dev, u16 magnitude)
{
 struct hid_device *hid = input_get_drvdata(dev);
 struct lg4ff_device_entry *entry;
 struct lg_drv_data *drv_data;
 unsigned long flags;
 s32 *value;
 magnitude = magnitude * 90 / 65535;

 drv_data = hid_get_drvdata(hid);
 if (!drv_data) {
  hid_err(hid, "Private driver data not found!\n");
  return;
 }

 entry = drv_data->device_props;
 if (!entry) {
  hid_err(hid, "Device properties not found!\n");
  return;
 }
 value = entry->report->field[0]->value;

 spin_lock_irqsave(&entry->report_lock, flags);
 value[0] = 0xfe;
 value[1] = 0x03;
 value[2] = magnitude >> 14;
 value[3] = magnitude >> 14;
 value[4] = magnitude;
 value[5] = 0x00;
 value[6] = 0x00;

 hid_hw_request(hid, entry->report, HID_REQ_SET_REPORT);
 spin_unlock_irqrestore(&entry->report_lock, flags);
}
