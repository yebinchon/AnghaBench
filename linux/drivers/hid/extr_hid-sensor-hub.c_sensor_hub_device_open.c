
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_hub_data {int mutex; int ref_cnt; } ;
struct hid_sensor_hub_device {int hdev; } ;


 int hid_err (int ,char*) ;
 struct sensor_hub_data* hid_get_drvdata (int ) ;
 int hid_hw_open (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int sensor_hub_device_open(struct hid_sensor_hub_device *hsdev)
{
 int ret = 0;
 struct sensor_hub_data *data = hid_get_drvdata(hsdev->hdev);

 mutex_lock(&data->mutex);
 if (!data->ref_cnt) {
  ret = hid_hw_open(hsdev->hdev);
  if (ret) {
   hid_err(hsdev->hdev, "failed to open hid device\n");
   mutex_unlock(&data->mutex);
   return ret;
  }
 }
 data->ref_cnt++;
 mutex_unlock(&data->mutex);

 return ret;
}
