
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int kobj; struct hid_sensor_hub_device* platform_data; } ;
struct platform_device {TYPE_2__ dev; } ;
struct hid_sensor_hub_device {int usage; } ;
struct TYPE_4__ {struct platform_device* pdev; int send_event; int capture_sample; } ;
struct hid_sensor_custom {struct platform_device* pdev; TYPE_1__ callbacks; int mutex; struct hid_sensor_hub_device* hsdev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_err (TYPE_2__*,char*) ;
 struct hid_sensor_custom* devm_kzalloc (TYPE_2__*,int,int ) ;
 int enable_sensor_attr_group ;
 int hid_sensor_capture_sample ;
 int hid_sensor_custom_add_attributes (struct hid_sensor_custom*) ;
 int hid_sensor_custom_dev_if_add (struct hid_sensor_custom*) ;
 int hid_sensor_custom_remove_attributes (struct hid_sensor_custom*) ;
 int hid_sensor_send_event ;
 int mutex_init (int *) ;
 int platform_set_drvdata (struct platform_device*,struct hid_sensor_custom*) ;
 int sensor_hub_register_callback (struct hid_sensor_hub_device*,int ,TYPE_1__*) ;
 int sensor_hub_remove_callback (struct hid_sensor_hub_device*,int ) ;
 int sysfs_create_group (int *,int *) ;
 int sysfs_remove_group (int *,int *) ;

__attribute__((used)) static int hid_sensor_custom_probe(struct platform_device *pdev)
{
 struct hid_sensor_custom *sensor_inst;
 struct hid_sensor_hub_device *hsdev = pdev->dev.platform_data;
 int ret;

 sensor_inst = devm_kzalloc(&pdev->dev, sizeof(*sensor_inst),
       GFP_KERNEL);
 if (!sensor_inst)
  return -ENOMEM;

 sensor_inst->callbacks.capture_sample = hid_sensor_capture_sample;
 sensor_inst->callbacks.send_event = hid_sensor_send_event;
 sensor_inst->callbacks.pdev = pdev;
 sensor_inst->hsdev = hsdev;
 sensor_inst->pdev = pdev;
 mutex_init(&sensor_inst->mutex);
 platform_set_drvdata(pdev, sensor_inst);
 ret = sensor_hub_register_callback(hsdev, hsdev->usage,
        &sensor_inst->callbacks);
 if (ret < 0) {
  dev_err(&pdev->dev, "callback reg failed\n");
  return ret;
 }

 ret = sysfs_create_group(&sensor_inst->pdev->dev.kobj,
     &enable_sensor_attr_group);
 if (ret)
  goto err_remove_callback;

 ret = hid_sensor_custom_add_attributes(sensor_inst);
 if (ret)
  goto err_remove_group;

 ret = hid_sensor_custom_dev_if_add(sensor_inst);
 if (ret)
  goto err_remove_attributes;

 return 0;

err_remove_attributes:
 hid_sensor_custom_remove_attributes(sensor_inst);
err_remove_group:
 sysfs_remove_group(&sensor_inst->pdev->dev.kobj,
      &enable_sensor_attr_group);
err_remove_callback:
 sensor_hub_remove_callback(hsdev, hsdev->usage);

 return ret;
}
