
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef size_t u32 ;
struct sensor_hub_data {int mutex; } ;
struct hid_sensor_hub_device {int hdev; } ;
struct hid_report {size_t maxfield; TYPE_1__** field; } ;
typedef int __s32 ;
struct TYPE_2__ {int report_count; int report_size; scalar_t__ value; } ;


 int DIV_ROUND_UP (int,int) ;
 int EINVAL ;
 int HID_FEATURE_REPORT ;
 int HID_REQ_GET_REPORT ;
 struct sensor_hub_data* hid_get_drvdata (int ) ;
 int hid_hw_request (int ,struct hid_report*,int ) ;
 int hid_hw_wait (int ) ;
 int memcpy (int *,int *,int) ;
 int memset (void*,int ,int) ;
 int min (int,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct hid_report* sensor_hub_report (size_t,int ,int ) ;

int sensor_hub_get_feature(struct hid_sensor_hub_device *hsdev, u32 report_id,
      u32 field_index, int buffer_size, void *buffer)
{
 struct hid_report *report;
 struct sensor_hub_data *data = hid_get_drvdata(hsdev->hdev);
 int report_size;
 int ret = 0;
 u8 *val_ptr;
 int buffer_index = 0;
 int i;

 memset(buffer, 0, buffer_size);

 mutex_lock(&data->mutex);
 report = sensor_hub_report(report_id, hsdev->hdev, HID_FEATURE_REPORT);
 if (!report || (field_index >= report->maxfield) ||
     report->field[field_index]->report_count < 1) {
  ret = -EINVAL;
  goto done_proc;
 }
 hid_hw_request(hsdev->hdev, report, HID_REQ_GET_REPORT);
 hid_hw_wait(hsdev->hdev);


 report_size = DIV_ROUND_UP(report->field[field_index]->report_size,
       8) *
       report->field[field_index]->report_count;
 if (!report_size) {
  ret = -EINVAL;
  goto done_proc;
 }
 ret = min(report_size, buffer_size);

 val_ptr = (u8 *)report->field[field_index]->value;
 for (i = 0; i < report->field[field_index]->report_count; ++i) {
  if (buffer_index >= ret)
   break;

  memcpy(&((u8 *)buffer)[buffer_index], val_ptr,
         report->field[field_index]->report_size / 8);
  val_ptr += sizeof(__s32);
  buffer_index += (report->field[field_index]->report_size / 8);
 }

done_proc:
 mutex_unlock(&data->mutex);

 return ret;
}
