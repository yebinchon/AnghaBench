
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int * notifier_call; } ;
struct sht15_data {int supply_uv; void* reg; TYPE_1__ nb; void* hwmon_dev; TYPE_3__* dev; void* data; void* sck; int wait_queue; int read_lock; int update_supply_work; int read_work; } ;
struct TYPE_10__ {int kobj; } ;
struct platform_device {TYPE_3__ dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int GPIOD_IN ;
 int GPIOD_OUT_LOW ;
 int INIT_WORK (int *,int ) ;
 int IRQF_TRIGGER_FALLING ;
 scalar_t__ IS_ERR (void*) ;
 int PTR_ERR (void*) ;
 int dev_err (TYPE_3__*,char*,...) ;
 void* devm_gpiod_get (TYPE_3__*,char*,int ) ;
 struct sht15_data* devm_kzalloc (TYPE_3__*,int,int ) ;
 void* devm_regulator_get_optional (TYPE_3__*,char*) ;
 int devm_request_irq (TYPE_3__*,int ,int ,int ,char*,struct sht15_data*) ;
 int disable_irq_nosync (int ) ;
 int gpiod_to_irq (void*) ;
 void* hwmon_device_register (TYPE_3__*) ;
 int init_waitqueue_head (int *) ;
 int mutex_init (int *) ;
 int platform_set_drvdata (struct platform_device*,struct sht15_data*) ;
 int regulator_disable (void*) ;
 int regulator_enable (void*) ;
 int regulator_get_voltage (void*) ;
 int regulator_register_notifier (void*,TYPE_1__*) ;
 int regulator_unregister_notifier (void*,TYPE_1__*) ;
 int sht15_attr_group ;
 int sht15_bh_read_data ;
 int sht15_connection_reset (struct sht15_data*) ;
 int sht15_interrupt_fired ;
 int sht15_invalidate_voltage ;
 int sht15_soft_reset (struct sht15_data*) ;
 int sht15_update_voltage ;
 int sysfs_create_group (int *,int *) ;
 int sysfs_remove_group (int *,int *) ;

__attribute__((used)) static int sht15_probe(struct platform_device *pdev)
{
 int ret;
 struct sht15_data *data;

 data = devm_kzalloc(&pdev->dev, sizeof(*data), GFP_KERNEL);
 if (!data)
  return -ENOMEM;

 INIT_WORK(&data->read_work, sht15_bh_read_data);
 INIT_WORK(&data->update_supply_work, sht15_update_voltage);
 platform_set_drvdata(pdev, data);
 mutex_init(&data->read_lock);
 data->dev = &pdev->dev;
 init_waitqueue_head(&data->wait_queue);





 data->reg = devm_regulator_get_optional(data->dev, "vcc");
 if (!IS_ERR(data->reg)) {
  int voltage;

  voltage = regulator_get_voltage(data->reg);
  if (voltage)
   data->supply_uv = voltage;

  ret = regulator_enable(data->reg);
  if (ret != 0) {
   dev_err(&pdev->dev,
    "failed to enable regulator: %d\n", ret);
   return ret;
  }





  data->nb.notifier_call = &sht15_invalidate_voltage;
  ret = regulator_register_notifier(data->reg, &data->nb);
  if (ret) {
   dev_err(&pdev->dev,
    "regulator notifier request failed\n");
   regulator_disable(data->reg);
   return ret;
  }
 }


 data->sck = devm_gpiod_get(&pdev->dev, "clk", GPIOD_OUT_LOW);
 if (IS_ERR(data->sck)) {
  ret = PTR_ERR(data->sck);
  dev_err(&pdev->dev, "clock line GPIO request failed\n");
  goto err_release_reg;
 }
 data->data = devm_gpiod_get(&pdev->dev, "data", GPIOD_IN);
 if (IS_ERR(data->data)) {
  ret = PTR_ERR(data->data);
  dev_err(&pdev->dev, "data line GPIO request failed\n");
  goto err_release_reg;
 }

 ret = devm_request_irq(&pdev->dev, gpiod_to_irq(data->data),
          sht15_interrupt_fired,
          IRQF_TRIGGER_FALLING,
          "sht15 data",
          data);
 if (ret) {
  dev_err(&pdev->dev, "failed to get irq for data line\n");
  goto err_release_reg;
 }
 disable_irq_nosync(gpiod_to_irq(data->data));
 ret = sht15_connection_reset(data);
 if (ret)
  goto err_release_reg;
 ret = sht15_soft_reset(data);
 if (ret)
  goto err_release_reg;

 ret = sysfs_create_group(&pdev->dev.kobj, &sht15_attr_group);
 if (ret) {
  dev_err(&pdev->dev, "sysfs create failed\n");
  goto err_release_reg;
 }

 data->hwmon_dev = hwmon_device_register(data->dev);
 if (IS_ERR(data->hwmon_dev)) {
  ret = PTR_ERR(data->hwmon_dev);
  goto err_release_sysfs_group;
 }

 return 0;

err_release_sysfs_group:
 sysfs_remove_group(&pdev->dev.kobj, &sht15_attr_group);
err_release_reg:
 if (!IS_ERR(data->reg)) {
  regulator_unregister_notifier(data->reg, &data->nb);
  regulator_disable(data->reg);
 }
 return ret;
}
