
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef void* u32 ;
typedef int u16 ;
struct sensor_hub_data {int mutex; int lock; } ;
struct TYPE_2__ {int raw_size; int status; scalar_t__ raw_data; int ready; void* attr_usage_id; void* usage_id; } ;
struct hid_sensor_hub_device {int * mutex_ptr; TYPE_1__ pending; int hdev; } ;
struct hid_report {int dummy; } ;
typedef int s8 ;
typedef int s16 ;
typedef enum sensor_hub_read_flags { ____Placeholder_sensor_hub_read_flags } sensor_hub_read_flags ;


 int EINVAL ;
 int HID_INPUT_REPORT ;
 int HID_REQ_GET_REPORT ;
 int HZ ;
 int SENSOR_HUB_SYNC ;
 struct sensor_hub_data* hid_get_drvdata (int ) ;
 int hid_hw_request (int ,struct hid_report*,int ) ;
 int init_completion (int *) ;
 int kfree (scalar_t__) ;
 int memset (TYPE_1__*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct hid_report* sensor_hub_report (void*,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wait_for_completion_interruptible_timeout (int *,int) ;

int sensor_hub_input_attr_get_raw_value(struct hid_sensor_hub_device *hsdev,
     u32 usage_id,
     u32 attr_usage_id, u32 report_id,
     enum sensor_hub_read_flags flag,
     bool is_signed)
{
 struct sensor_hub_data *data = hid_get_drvdata(hsdev->hdev);
 unsigned long flags;
 struct hid_report *report;
 int ret_val = 0;

 report = sensor_hub_report(report_id, hsdev->hdev,
       HID_INPUT_REPORT);
 if (!report)
  return -EINVAL;

 mutex_lock(hsdev->mutex_ptr);
 if (flag == SENSOR_HUB_SYNC) {
  memset(&hsdev->pending, 0, sizeof(hsdev->pending));
  init_completion(&hsdev->pending.ready);
  hsdev->pending.usage_id = usage_id;
  hsdev->pending.attr_usage_id = attr_usage_id;
  hsdev->pending.raw_size = 0;

  spin_lock_irqsave(&data->lock, flags);
  hsdev->pending.status = 1;
  spin_unlock_irqrestore(&data->lock, flags);
 }
 mutex_lock(&data->mutex);
 hid_hw_request(hsdev->hdev, report, HID_REQ_GET_REPORT);
 mutex_unlock(&data->mutex);
 if (flag == SENSOR_HUB_SYNC) {
  wait_for_completion_interruptible_timeout(
      &hsdev->pending.ready, HZ*5);
  switch (hsdev->pending.raw_size) {
  case 1:
   if (is_signed)
    ret_val = *(s8 *)hsdev->pending.raw_data;
   else
    ret_val = *(u8 *)hsdev->pending.raw_data;
   break;
  case 2:
   if (is_signed)
    ret_val = *(s16 *)hsdev->pending.raw_data;
   else
    ret_val = *(u16 *)hsdev->pending.raw_data;
   break;
  case 4:
   ret_val = *(u32 *)hsdev->pending.raw_data;
   break;
  default:
   ret_val = 0;
  }
  kfree(hsdev->pending.raw_data);
  hsdev->pending.status = 0;
 }
 mutex_unlock(hsdev->mutex_ptr);

 return ret_val;
}
