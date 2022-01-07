
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int dummy; } ;
struct atk_data {int hwmon_dev; int attr_groups; TYPE_1__* acpi_dev; } ;
struct TYPE_2__ {struct device dev; } ;


 int PTR_ERR_OR_ZERO (int ) ;
 int dev_dbg (struct device*,char*) ;
 int hwmon_device_register_with_groups (struct device*,char*,struct atk_data*,int ) ;

__attribute__((used)) static int atk_register_hwmon(struct atk_data *data)
{
 struct device *dev = &data->acpi_dev->dev;

 dev_dbg(dev, "registering hwmon device\n");
 data->hwmon_dev = hwmon_device_register_with_groups(dev, "atk0110",
           data,
           data->attr_groups);

 return PTR_ERR_OR_ZERO(data->hwmon_dev);
}
