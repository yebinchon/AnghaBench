
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct mxt_data {scalar_t__ reset_gpio; int suspend_mode; int crc_completion; int reset_completion; int bl_completion; int irq; struct i2c_client* client; int phys; } ;
struct i2c_device_id {int dummy; } ;
struct TYPE_9__ {int kobj; } ;
struct i2c_client {int addr; TYPE_2__ dev; int irq; int name; TYPE_1__* adapter; } ;
struct TYPE_8__ {int nr; } ;


 scalar_t__ ACPI_COMPANION (TYPE_2__*) ;
 int ENOMEM ;
 int ENXIO ;
 int GFP_KERNEL ;
 int GPIOD_OUT_LOW ;
 int IRQF_ONESHOT ;
 scalar_t__ IS_ERR (scalar_t__) ;
 int MXT_RESET_GPIO_TIME ;
 int MXT_RESET_INVALID_CHG ;
 int MXT_SUSPEND_DEEP_SLEEP ;
 int MXT_SUSPEND_T9_CTRL ;
 int PTR_ERR (scalar_t__) ;
 int chromebook_T9_suspend_dmi ;
 int dev_err (TYPE_2__*,char*,...) ;
 int device_property_present (TYPE_2__*,char*) ;
 scalar_t__ devm_gpiod_get_optional (TYPE_2__*,char*,int ) ;
 struct mxt_data* devm_kzalloc (TYPE_2__*,int,int ) ;
 int devm_request_threaded_irq (TYPE_2__*,int ,int *,int ,int ,int ,struct mxt_data*) ;
 int disable_irq (int ) ;
 scalar_t__ dmi_check_system (int ) ;
 int gpiod_set_value (scalar_t__,int) ;
 int i2c_set_clientdata (struct i2c_client*,struct mxt_data*) ;
 int init_completion (int *) ;
 int msleep (int ) ;
 int mxt_attr_group ;
 int mxt_free_input_device (struct mxt_data*) ;
 int mxt_free_object_table (struct mxt_data*) ;
 int mxt_initialize (struct mxt_data*) ;
 int mxt_interrupt ;
 int mxt_parse_device_properties (struct mxt_data*) ;
 int snprintf (int ,int,char*,int,int) ;
 int sysfs_create_group (int *,int *) ;

__attribute__((used)) static int mxt_probe(struct i2c_client *client, const struct i2c_device_id *id)
{
 struct mxt_data *data;
 int error;
 if (!device_property_present(&client->dev, "compatible"))
  return -ENXIO;
 if (ACPI_COMPANION(&client->dev) && client->addr < 0x40)
  return -ENXIO;

 data = devm_kzalloc(&client->dev, sizeof(struct mxt_data), GFP_KERNEL);
 if (!data)
  return -ENOMEM;

 snprintf(data->phys, sizeof(data->phys), "i2c-%u-%04x/input0",
   client->adapter->nr, client->addr);

 data->client = client;
 data->irq = client->irq;
 i2c_set_clientdata(client, data);

 init_completion(&data->bl_completion);
 init_completion(&data->reset_completion);
 init_completion(&data->crc_completion);

 data->suspend_mode = dmi_check_system(chromebook_T9_suspend_dmi) ?
  MXT_SUSPEND_T9_CTRL : MXT_SUSPEND_DEEP_SLEEP;

 error = mxt_parse_device_properties(data);
 if (error)
  return error;

 data->reset_gpio = devm_gpiod_get_optional(&client->dev,
         "reset", GPIOD_OUT_LOW);
 if (IS_ERR(data->reset_gpio)) {
  error = PTR_ERR(data->reset_gpio);
  dev_err(&client->dev, "Failed to get reset gpio: %d\n", error);
  return error;
 }

 error = devm_request_threaded_irq(&client->dev, client->irq,
       ((void*)0), mxt_interrupt, IRQF_ONESHOT,
       client->name, data);
 if (error) {
  dev_err(&client->dev, "Failed to register interrupt\n");
  return error;
 }

 disable_irq(client->irq);

 if (data->reset_gpio) {
  msleep(MXT_RESET_GPIO_TIME);
  gpiod_set_value(data->reset_gpio, 1);
  msleep(MXT_RESET_INVALID_CHG);
 }

 error = mxt_initialize(data);
 if (error)
  return error;

 error = sysfs_create_group(&client->dev.kobj, &mxt_attr_group);
 if (error) {
  dev_err(&client->dev, "Failure %d creating sysfs group\n",
   error);
  goto err_free_object;
 }

 return 0;

err_free_object:
 mxt_free_input_device(data);
 mxt_free_object_table(data);
 return error;
}
