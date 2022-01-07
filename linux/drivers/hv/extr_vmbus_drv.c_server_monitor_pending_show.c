
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hv_device {int channel; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int * monitor_pages; } ;


 int ENODEV ;
 int channel_pending (int ,int ) ;
 struct hv_device* device_to_hv_device (struct device*) ;
 int sprintf (char*,char*,int) ;
 TYPE_1__ vmbus_connection ;

__attribute__((used)) static ssize_t server_monitor_pending_show(struct device *dev,
        struct device_attribute *dev_attr,
        char *buf)
{
 struct hv_device *hv_dev = device_to_hv_device(dev);

 if (!hv_dev->channel)
  return -ENODEV;
 return sprintf(buf, "%d\n",
         channel_pending(hv_dev->channel,
           vmbus_connection.monitor_pages[0]));
}
