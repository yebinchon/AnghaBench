
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct picolcd_data {int opmode_delay; int status; int lock; int hdev; } ;
struct hid_report {int maxfield; int * field; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 int HID_REQ_SET_REPORT ;
 int PICOLCD_BOOTLOADER ;
 int REPORT_EXIT_FLASHER ;
 int REPORT_EXIT_KEYBOARD ;
 struct picolcd_data* dev_get_drvdata (struct device*) ;
 int hid_hw_request (int ,struct hid_report*,int ) ;
 int hid_set_field (int ,int,int) ;
 struct hid_report* picolcd_out_report (int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ sysfs_streq (char const*,char*) ;

__attribute__((used)) static ssize_t picolcd_operation_mode_store(struct device *dev,
  struct device_attribute *attr, const char *buf, size_t count)
{
 struct picolcd_data *data = dev_get_drvdata(dev);
 struct hid_report *report = ((void*)0);
 int timeout = data->opmode_delay;
 unsigned long flags;

 if (sysfs_streq(buf, "lcd")) {
  if (data->status & PICOLCD_BOOTLOADER)
   report = picolcd_out_report(REPORT_EXIT_FLASHER, data->hdev);
 } else if (sysfs_streq(buf, "bootloader")) {
  if (!(data->status & PICOLCD_BOOTLOADER))
   report = picolcd_out_report(REPORT_EXIT_KEYBOARD, data->hdev);
 } else {
  return -EINVAL;
 }

 if (!report || report->maxfield != 1)
  return -EINVAL;

 spin_lock_irqsave(&data->lock, flags);
 hid_set_field(report->field[0], 0, timeout & 0xff);
 hid_set_field(report->field[0], 1, (timeout >> 8) & 0xff);
 hid_hw_request(data->hdev, report, HID_REQ_SET_REPORT);
 spin_unlock_irqrestore(&data->lock, flags);
 return count;
}
