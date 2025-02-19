
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct platform_device {int dev; } ;
struct abituguru3_data {TYPE_2__* sysfs_attr; int hwmon_dev; } ;
struct TYPE_6__ {scalar_t__ name; } ;
struct TYPE_8__ {TYPE_1__ attr; } ;
struct TYPE_9__ {TYPE_3__ dev_attr; } ;
struct TYPE_7__ {TYPE_3__ dev_attr; } ;


 int ARRAY_SIZE (TYPE_4__*) ;
 TYPE_4__* abituguru3_sysfs_attr ;
 int device_remove_file (int *,TYPE_3__*) ;
 int hwmon_device_unregister (int ) ;
 struct abituguru3_data* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int abituguru3_remove(struct platform_device *pdev)
{
 int i;
 struct abituguru3_data *data = platform_get_drvdata(pdev);

 hwmon_device_unregister(data->hwmon_dev);
 for (i = 0; data->sysfs_attr[i].dev_attr.attr.name; i++)
  device_remove_file(&pdev->dev, &data->sysfs_attr[i].dev_attr);
 for (i = 0; i < ARRAY_SIZE(abituguru3_sysfs_attr); i++)
  device_remove_file(&pdev->dev,
   &abituguru3_sysfs_attr[i].dev_attr);
 return 0;
}
