
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct led_netdev_data {int interval; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int atomic_read (int *) ;
 int jiffies_to_msecs (int ) ;
 struct led_netdev_data* led_trigger_get_drvdata (struct device*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t interval_show(struct device *dev,
        struct device_attribute *attr, char *buf)
{
 struct led_netdev_data *trigger_data = led_trigger_get_drvdata(dev);

 return sprintf(buf, "%u\n",
         jiffies_to_msecs(atomic_read(&trigger_data->interval)));
}
