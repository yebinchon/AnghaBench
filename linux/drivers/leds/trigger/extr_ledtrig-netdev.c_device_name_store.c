
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct led_netdev_data {char* device_name; int lock; scalar_t__ last_activity; int mode; int * net_dev; int work; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 size_t IFNAMSIZ ;
 int NETDEV_LED_MODE_LINKUP ;
 int cancel_delayed_work_sync (int *) ;
 int clear_bit (int ,int *) ;
 int * dev_get_by_name (int *,char*) ;
 int dev_put (int *) ;
 int init_net ;
 struct led_netdev_data* led_trigger_get_drvdata (struct device*) ;
 int memcpy (char*,char const*,size_t) ;
 scalar_t__ netif_carrier_ok (int *) ;
 int set_baseline_state (struct led_netdev_data*) ;
 int set_bit (int ,int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static ssize_t device_name_store(struct device *dev,
     struct device_attribute *attr, const char *buf,
     size_t size)
{
 struct led_netdev_data *trigger_data = led_trigger_get_drvdata(dev);

 if (size >= IFNAMSIZ)
  return -EINVAL;

 cancel_delayed_work_sync(&trigger_data->work);

 spin_lock_bh(&trigger_data->lock);

 if (trigger_data->net_dev) {
  dev_put(trigger_data->net_dev);
  trigger_data->net_dev = ((void*)0);
 }

 memcpy(trigger_data->device_name, buf, size);
 trigger_data->device_name[size] = 0;
 if (size > 0 && trigger_data->device_name[size - 1] == '\n')
  trigger_data->device_name[size - 1] = 0;

 if (trigger_data->device_name[0] != 0)
  trigger_data->net_dev =
      dev_get_by_name(&init_net, trigger_data->device_name);

 clear_bit(NETDEV_LED_MODE_LINKUP, &trigger_data->mode);
 if (trigger_data->net_dev != ((void*)0))
  if (netif_carrier_ok(trigger_data->net_dev))
   set_bit(NETDEV_LED_MODE_LINKUP, &trigger_data->mode);

 trigger_data->last_activity = 0;

 set_baseline_state(trigger_data);
 spin_unlock_bh(&trigger_data->lock);

 return size;
}
