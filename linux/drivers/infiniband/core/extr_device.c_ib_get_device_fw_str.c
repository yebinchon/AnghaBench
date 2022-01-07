
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* get_dev_fw_str ) (struct ib_device*,char*) ;} ;
struct ib_device {TYPE_1__ ops; } ;


 int stub1 (struct ib_device*,char*) ;

void ib_get_device_fw_str(struct ib_device *dev, char *str)
{
 if (dev->ops.get_dev_fw_str)
  dev->ops.get_dev_fw_str(dev, str);
 else
  str[0] = '\0';
}
