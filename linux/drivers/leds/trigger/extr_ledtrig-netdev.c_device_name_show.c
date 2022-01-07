
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct led_netdev_data {char* device_name; int lock; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct led_netdev_data* led_trigger_get_drvdata (struct device*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int sprintf (char*,char*,char*) ;

__attribute__((used)) static ssize_t device_name_show(struct device *dev,
    struct device_attribute *attr, char *buf)
{
 struct led_netdev_data *trigger_data = led_trigger_get_drvdata(dev);
 ssize_t len;

 spin_lock_bh(&trigger_data->lock);
 len = sprintf(buf, "%s\n", trigger_data->device_name);
 spin_unlock_bh(&trigger_data->lock);

 return len;
}
