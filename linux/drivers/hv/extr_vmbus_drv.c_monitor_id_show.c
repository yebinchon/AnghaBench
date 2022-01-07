
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hv_device {TYPE_2__* channel; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_3__ {int monitorid; } ;
struct TYPE_4__ {TYPE_1__ offermsg; } ;


 int ENODEV ;
 struct hv_device* device_to_hv_device (struct device*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t monitor_id_show(struct device *dev,
          struct device_attribute *dev_attr, char *buf)
{
 struct hv_device *hv_dev = device_to_hv_device(dev);

 if (!hv_dev->channel)
  return -ENODEV;
 return sprintf(buf, "%d\n", hv_dev->channel->offermsg.monitorid);
}
