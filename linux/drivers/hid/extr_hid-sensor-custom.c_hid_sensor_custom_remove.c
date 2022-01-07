
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct hid_sensor_hub_device* platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;
struct hid_sensor_hub_device {int usage; } ;
struct hid_sensor_custom {TYPE_3__* pdev; } ;
struct TYPE_5__ {int kobj; } ;
struct TYPE_6__ {TYPE_2__ dev; } ;


 int enable_sensor_attr_group ;
 int hid_sensor_custom_dev_if_remove (struct hid_sensor_custom*) ;
 int hid_sensor_custom_remove_attributes (struct hid_sensor_custom*) ;
 struct hid_sensor_custom* platform_get_drvdata (struct platform_device*) ;
 int sensor_hub_remove_callback (struct hid_sensor_hub_device*,int ) ;
 int sysfs_remove_group (int *,int *) ;

__attribute__((used)) static int hid_sensor_custom_remove(struct platform_device *pdev)
{
 struct hid_sensor_custom *sensor_inst = platform_get_drvdata(pdev);
 struct hid_sensor_hub_device *hsdev = pdev->dev.platform_data;

 hid_sensor_custom_dev_if_remove(sensor_inst);
 hid_sensor_custom_remove_attributes(sensor_inst);
 sysfs_remove_group(&sensor_inst->pdev->dev.kobj,
      &enable_sensor_attr_group);
 sensor_hub_remove_callback(hsdev, hsdev->usage);

 return 0;
}
