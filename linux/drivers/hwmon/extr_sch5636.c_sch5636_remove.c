
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sch5636_data {scalar_t__ hwmon_dev; scalar_t__ watchdog; } ;
struct platform_device {int dev; } ;
struct TYPE_7__ {int dev_attr; } ;
struct TYPE_6__ {int dev_attr; } ;
struct TYPE_5__ {int dev_attr; } ;


 int ARRAY_SIZE (TYPE_3__*) ;
 int SCH5636_NO_FANS ;
 int SCH5636_NO_TEMPS ;
 int device_remove_file (int *,int *) ;
 int hwmon_device_unregister (scalar_t__) ;
 struct sch5636_data* platform_get_drvdata (struct platform_device*) ;
 TYPE_3__* sch5636_attr ;
 TYPE_2__* sch5636_fan_attr ;
 TYPE_1__* sch5636_temp_attr ;
 int sch56xx_watchdog_unregister (scalar_t__) ;

__attribute__((used)) static int sch5636_remove(struct platform_device *pdev)
{
 struct sch5636_data *data = platform_get_drvdata(pdev);
 int i;

 if (data->watchdog)
  sch56xx_watchdog_unregister(data->watchdog);

 if (data->hwmon_dev)
  hwmon_device_unregister(data->hwmon_dev);

 for (i = 0; i < ARRAY_SIZE(sch5636_attr); i++)
  device_remove_file(&pdev->dev, &sch5636_attr[i].dev_attr);

 for (i = 0; i < SCH5636_NO_TEMPS * 3; i++)
  device_remove_file(&pdev->dev,
       &sch5636_temp_attr[i].dev_attr);

 for (i = 0; i < SCH5636_NO_FANS * 3; i++)
  device_remove_file(&pdev->dev,
       &sch5636_fan_attr[i].dev_attr);

 return 0;
}
