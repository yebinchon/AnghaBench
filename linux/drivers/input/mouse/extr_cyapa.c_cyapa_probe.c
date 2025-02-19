
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union i2c_smbus_data {int dummy; } i2c_smbus_data ;
typedef scalar_t__ u8 ;
struct i2c_device_id {int dummy; } ;
struct device {int dummy; } ;
struct i2c_client {int addr; int irq; TYPE_1__* adapter; struct device dev; } ;
struct cyapa {int smbus; scalar_t__ operational; int vcc; int phys; struct i2c_client* client; } ;
struct TYPE_2__ {int nr; } ;


 scalar_t__ CYAPA_ADAPTER_FUNC_NONE ;
 scalar_t__ CYAPA_ADAPTER_FUNC_SMBUS ;
 int EIO ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int I2C_SMBUS_BYTE ;
 int I2C_SMBUS_READ ;
 int IRQF_ONESHOT ;
 int IRQF_TRIGGER_FALLING ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 scalar_t__ cyapa_check_adapter_functionality (struct i2c_client*) ;
 int cyapa_create_input_dev (struct cyapa*) ;
 int cyapa_disable_regulator (struct cyapa*) ;
 int cyapa_initialize (struct cyapa*) ;
 int cyapa_irq ;
 int cyapa_prepare_wakeup_controls (struct cyapa*) ;
 int cyapa_start_runtime (struct cyapa*) ;
 int cyapa_sysfs_group ;
 int dev_err (struct device*,char*,...) ;
 int devm_add_action (struct device*,int (*) (struct cyapa*),struct cyapa*) ;
 int devm_device_add_group (struct device*,int *) ;
 struct cyapa* devm_kzalloc (struct device*,int,int ) ;
 int devm_regulator_get (struct device*,char*) ;
 int devm_request_threaded_irq (struct device*,int ,int *,int ,int,char*,struct cyapa*) ;
 int disable_irq (int ) ;
 int i2c_set_clientdata (struct i2c_client*,struct cyapa*) ;
 scalar_t__ i2c_smbus_xfer (TYPE_1__*,int,int ,int ,int ,int ,union i2c_smbus_data*) ;
 int regulator_enable (int ) ;
 int sprintf (int ,char*,int,int) ;

__attribute__((used)) static int cyapa_probe(struct i2c_client *client,
         const struct i2c_device_id *dev_id)
{
 struct device *dev = &client->dev;
 struct cyapa *cyapa;
 u8 adapter_func;
 union i2c_smbus_data dummy;
 int error;

 adapter_func = cyapa_check_adapter_functionality(client);
 if (adapter_func == CYAPA_ADAPTER_FUNC_NONE) {
  dev_err(dev, "not a supported I2C/SMBus adapter\n");
  return -EIO;
 }


 if (i2c_smbus_xfer(client->adapter, client->addr, 0,
   I2C_SMBUS_READ, 0, I2C_SMBUS_BYTE, &dummy) < 0)
  return -ENODEV;

 cyapa = devm_kzalloc(dev, sizeof(struct cyapa), GFP_KERNEL);
 if (!cyapa)
  return -ENOMEM;


 if (adapter_func == CYAPA_ADAPTER_FUNC_SMBUS)
  cyapa->smbus = 1;

 cyapa->client = client;
 i2c_set_clientdata(client, cyapa);
 sprintf(cyapa->phys, "i2c-%d-%04x/input0", client->adapter->nr,
  client->addr);

 cyapa->vcc = devm_regulator_get(dev, "vcc");
 if (IS_ERR(cyapa->vcc)) {
  error = PTR_ERR(cyapa->vcc);
  dev_err(dev, "failed to get vcc regulator: %d\n", error);
  return error;
 }

 error = regulator_enable(cyapa->vcc);
 if (error) {
  dev_err(dev, "failed to enable regulator: %d\n", error);
  return error;
 }

 error = devm_add_action(dev, cyapa_disable_regulator, cyapa);
 if (error) {
  cyapa_disable_regulator(cyapa);
  dev_err(dev, "failed to add disable regulator action: %d\n",
   error);
  return error;
 }

 error = cyapa_initialize(cyapa);
 if (error) {
  dev_err(dev, "failed to detect and initialize tp device.\n");
  return error;
 }

 error = devm_device_add_group(dev, &cyapa_sysfs_group);
 if (error) {
  dev_err(dev, "failed to create sysfs entries: %d\n", error);
  return error;
 }

 error = cyapa_prepare_wakeup_controls(cyapa);
 if (error) {
  dev_err(dev, "failed to prepare wakeup controls: %d\n", error);
  return error;
 }

 error = cyapa_start_runtime(cyapa);
 if (error) {
  dev_err(dev, "failed to start pm_runtime: %d\n", error);
  return error;
 }

 error = devm_request_threaded_irq(dev, client->irq,
       ((void*)0), cyapa_irq,
       IRQF_TRIGGER_FALLING | IRQF_ONESHOT,
       "cyapa", cyapa);
 if (error) {
  dev_err(dev, "failed to request threaded irq: %d\n", error);
  return error;
 }


 disable_irq(client->irq);






 if (cyapa->operational) {
  error = cyapa_create_input_dev(cyapa);
  if (error) {
   dev_err(dev, "create input_dev instance failed: %d\n",
     error);
   return error;
  }
 }

 return 0;
}
