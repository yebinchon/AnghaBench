
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_hub_data {int mutex; int ref_cnt; } ;
struct hid_sensor_hub_device {int hdev; } ;


 struct sensor_hub_data* hid_get_drvdata (int ) ;
 int hid_hw_close (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void sensor_hub_device_close(struct hid_sensor_hub_device *hsdev)
{
 struct sensor_hub_data *data = hid_get_drvdata(hsdev->hdev);

 mutex_lock(&data->mutex);
 data->ref_cnt--;
 if (!data->ref_cnt)
  hid_hw_close(hsdev->hdev);
 mutex_unlock(&data->mutex);
}
