
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct hv_device {TYPE_4__* channel; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_5__ {int b; } ;
struct TYPE_6__ {TYPE_1__ if_instance; } ;
struct TYPE_7__ {TYPE_2__ offer; } ;
struct TYPE_8__ {TYPE_3__ offermsg; } ;


 int ENODEV ;
 struct hv_device* device_to_hv_device (struct device*) ;
 int sprintf (char*,char*,int ) ;

__attribute__((used)) static ssize_t device_id_show(struct device *dev,
         struct device_attribute *dev_attr, char *buf)
{
 struct hv_device *hv_dev = device_to_hv_device(dev);

 if (!hv_dev->channel)
  return -ENODEV;
 return sprintf(buf, "{%pUl}\n",
         hv_dev->channel->offermsg.offer.if_instance.b);
}
