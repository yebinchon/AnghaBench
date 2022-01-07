
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct picolcd_data {int lock; TYPE_1__* pending; scalar_t__ input_keys; } ;
struct hid_report {scalar_t__ id; } ;
struct hid_device {int dummy; } ;
struct TYPE_2__ {int raw_size; int ready; struct hid_report* in_report; int raw_data; } ;


 scalar_t__ REPORT_IR_DATA ;
 scalar_t__ REPORT_KEY_STATE ;
 int complete (int *) ;
 struct picolcd_data* hid_get_drvdata (struct hid_device*) ;
 int hid_warn (struct hid_device*,char*,int,scalar_t__) ;
 int memcpy (int ,int *,int) ;
 int picolcd_debug_raw_event (struct picolcd_data*,struct hid_device*,struct hid_report*,int *,int) ;
 int picolcd_raw_cir (struct picolcd_data*,struct hid_report*,int *,int) ;
 int picolcd_raw_keypad (struct picolcd_data*,struct hid_report*,int *,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int picolcd_raw_event(struct hid_device *hdev,
  struct hid_report *report, u8 *raw_data, int size)
{
 struct picolcd_data *data = hid_get_drvdata(hdev);
 unsigned long flags;
 int ret = 0;

 if (!data)
  return 1;

 if (size > 64) {
  hid_warn(hdev, "invalid size value (%d) for picolcd raw event (%d)\n",
    size, report->id);
  return 0;
 }

 if (report->id == REPORT_KEY_STATE) {
  if (data->input_keys)
   ret = picolcd_raw_keypad(data, report, raw_data+1, size-1);
 } else if (report->id == REPORT_IR_DATA) {
  ret = picolcd_raw_cir(data, report, raw_data+1, size-1);
 } else {
  spin_lock_irqsave(&data->lock, flags);




  if (data->pending) {
   memcpy(data->pending->raw_data, raw_data+1, size-1);
   data->pending->raw_size = size-1;
   data->pending->in_report = report;
   complete(&data->pending->ready);
  }
  spin_unlock_irqrestore(&data->lock, flags);
 }

 picolcd_debug_raw_event(data, hdev, report, raw_data, size);
 return 1;
}
