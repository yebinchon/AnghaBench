
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i2c_smbus_alert_setup {int irq; } ;
struct i2c_smbus_alert {struct i2c_client* ara; int alert; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int dev; struct i2c_adapter* adapter; } ;
struct TYPE_2__ {int of_node; } ;
struct i2c_adapter {TYPE_1__ dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_WORK (int *,int ) ;
 int IRQF_ONESHOT ;
 int IRQF_SHARED ;
 struct i2c_smbus_alert_setup* dev_get_platdata (int *) ;
 int dev_info (TYPE_1__*,char*) ;
 struct i2c_smbus_alert* devm_kzalloc (int *,int,int ) ;
 int devm_request_threaded_irq (int *,int,int *,int ,int,char*,struct i2c_smbus_alert*) ;
 int i2c_set_clientdata (struct i2c_client*,struct i2c_smbus_alert*) ;
 int of_irq_get_byname (int ,char*) ;
 int smbalert_work ;
 int smbus_alert ;

__attribute__((used)) static int smbalert_probe(struct i2c_client *ara,
     const struct i2c_device_id *id)
{
 struct i2c_smbus_alert_setup *setup = dev_get_platdata(&ara->dev);
 struct i2c_smbus_alert *alert;
 struct i2c_adapter *adapter = ara->adapter;
 int res, irq;

 alert = devm_kzalloc(&ara->dev, sizeof(struct i2c_smbus_alert),
        GFP_KERNEL);
 if (!alert)
  return -ENOMEM;

 if (setup) {
  irq = setup->irq;
 } else {
  irq = of_irq_get_byname(adapter->dev.of_node, "smbus_alert");
  if (irq <= 0)
   return irq;
 }

 INIT_WORK(&alert->alert, smbalert_work);
 alert->ara = ara;

 if (irq > 0) {
  res = devm_request_threaded_irq(&ara->dev, irq,
      ((void*)0), smbus_alert,
      IRQF_SHARED | IRQF_ONESHOT,
      "smbus_alert", alert);
  if (res)
   return res;
 }

 i2c_set_clientdata(ara, alert);
 dev_info(&adapter->dev, "supports SMBALERT#\n");

 return 0;
}
