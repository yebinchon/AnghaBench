
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sensor_hub_data {int hid_sensor_client_cnt; int mutex; int lock; TYPE_1__* hid_sensor_hub_client_devs; } ;
struct TYPE_4__ {int ready; scalar_t__ status; } ;
struct hid_sensor_hub_device {TYPE_2__ pending; } ;
struct hid_device {int dev; } ;
struct TYPE_3__ {struct hid_sensor_hub_device* platform_data; } ;


 int complete (int *) ;
 int hid_dbg (struct hid_device*,char*) ;
 struct sensor_hub_data* hid_get_drvdata (struct hid_device*) ;
 int hid_hw_close (struct hid_device*) ;
 int hid_hw_stop (struct hid_device*) ;
 int mfd_remove_devices (int *) ;
 int mutex_destroy (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void sensor_hub_remove(struct hid_device *hdev)
{
 struct sensor_hub_data *data = hid_get_drvdata(hdev);
 unsigned long flags;
 int i;

 hid_dbg(hdev, " hardware removed\n");
 hid_hw_close(hdev);
 hid_hw_stop(hdev);
 spin_lock_irqsave(&data->lock, flags);
 for (i = 0; i < data->hid_sensor_client_cnt; ++i) {
  struct hid_sensor_hub_device *hsdev =
   data->hid_sensor_hub_client_devs[i].platform_data;
  if (hsdev->pending.status)
   complete(&hsdev->pending.ready);
 }
 spin_unlock_irqrestore(&data->lock, flags);
 mfd_remove_devices(&hdev->dev);
 mutex_destroy(&data->mutex);
}
