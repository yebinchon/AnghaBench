
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int of_node; TYPE_3__* parent; } ;
struct iio_dev {int num_channels; int channels; int * info; int modes; int name; TYPE_2__ dev; } ;
struct i2c_device_id {size_t driver_data; } ;
struct TYPE_11__ {int of_node; TYPE_1__* driver; } ;
struct i2c_client {TYPE_3__ dev; int adapter; } ;
struct adcxx1c_model {int channels; int bits; } ;
struct adc081c {int ref; int bits; struct i2c_client* i2c; } ;
struct acpi_device_id {size_t driver_data; } ;
struct TYPE_9__ {int acpi_match_table; } ;


 scalar_t__ ACPI_COMPANION (TYPE_3__*) ;
 int ADC081C_NUM_CHANNELS ;
 int ENODEV ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 int I2C_FUNC_SMBUS_WORD_DATA ;
 int INDIO_DIRECT_MODE ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 struct acpi_device_id* acpi_match_device (int ,TYPE_3__*) ;
 int adc081c_info ;
 int adc081c_trigger_handler ;
 struct adcxx1c_model* adcxx1c_models ;
 int dev_err (TYPE_3__*,char*) ;
 int dev_name (TYPE_3__*) ;
 struct iio_dev* devm_iio_device_alloc (TYPE_3__*,int) ;
 int devm_regulator_get (TYPE_3__*,char*) ;
 int i2c_check_functionality (int ,int ) ;
 int i2c_set_clientdata (struct i2c_client*,struct iio_dev*) ;
 int iio_device_register (struct iio_dev*) ;
 struct adc081c* iio_priv (struct iio_dev*) ;
 int iio_triggered_buffer_cleanup (struct iio_dev*) ;
 int iio_triggered_buffer_setup (struct iio_dev*,int *,int ,int *) ;
 int regulator_disable (int ) ;
 int regulator_enable (int ) ;

__attribute__((used)) static int adc081c_probe(struct i2c_client *client,
    const struct i2c_device_id *id)
{
 struct iio_dev *iio;
 struct adc081c *adc;
 struct adcxx1c_model *model;
 int err;

 if (!i2c_check_functionality(client->adapter, I2C_FUNC_SMBUS_WORD_DATA))
  return -EOPNOTSUPP;

 if (ACPI_COMPANION(&client->dev)) {
  const struct acpi_device_id *ad_id;

  ad_id = acpi_match_device(client->dev.driver->acpi_match_table,
       &client->dev);
  if (!ad_id)
   return -ENODEV;
  model = &adcxx1c_models[ad_id->driver_data];
 } else {
  model = &adcxx1c_models[id->driver_data];
 }

 iio = devm_iio_device_alloc(&client->dev, sizeof(*adc));
 if (!iio)
  return -ENOMEM;

 adc = iio_priv(iio);
 adc->i2c = client;
 adc->bits = model->bits;

 adc->ref = devm_regulator_get(&client->dev, "vref");
 if (IS_ERR(adc->ref))
  return PTR_ERR(adc->ref);

 err = regulator_enable(adc->ref);
 if (err < 0)
  return err;

 iio->dev.parent = &client->dev;
 iio->dev.of_node = client->dev.of_node;
 iio->name = dev_name(&client->dev);
 iio->modes = INDIO_DIRECT_MODE;
 iio->info = &adc081c_info;

 iio->channels = model->channels;
 iio->num_channels = ADC081C_NUM_CHANNELS;

 err = iio_triggered_buffer_setup(iio, ((void*)0), adc081c_trigger_handler, ((void*)0));
 if (err < 0) {
  dev_err(&client->dev, "iio triggered buffer setup failed\n");
  goto err_regulator_disable;
 }

 err = iio_device_register(iio);
 if (err < 0)
  goto err_buffer_cleanup;

 i2c_set_clientdata(client, iio);

 return 0;

err_buffer_cleanup:
 iio_triggered_buffer_cleanup(iio);
err_regulator_disable:
 regulator_disable(adc->ref);

 return err;
}
