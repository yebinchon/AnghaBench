
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int dev_attr; } ;
struct TYPE_3__ {int dev_attr; } ;
struct s3c_hwmon_attr {TYPE_2__ label; TYPE_1__ in; } ;
struct device {int dummy; } ;


 int device_remove_file (struct device*,int *) ;

__attribute__((used)) static void s3c_hwmon_remove_attr(struct device *dev,
      struct s3c_hwmon_attr *attrs)
{
 device_remove_file(dev, &attrs->in.dev_attr);
 device_remove_file(dev, &attrs->label.dev_attr);
}
