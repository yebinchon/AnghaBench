
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct device* parent; } ;
struct iio_dev {int modes; int * info; int num_channels; int channels; int name; TYPE_1__ dev; } ;
struct i2c_device_id {int name; } ;
struct device {int dummy; } ;
struct i2c_client {int adapter; struct device dev; } ;
struct hp03_priv {int eeprom_client; int eeprom_regmap; int xclr_gpio; int lock; struct i2c_client* client; } ;


 int ARRAY_SIZE (int ) ;
 int ENOMEM ;
 int GPIOD_OUT_HIGH ;
 int HP03_EEPROM_ADDR ;
 int INDIO_DIRECT_MODE ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (struct device*,char*) ;
 int devm_gpiod_get_index (struct device*,char*,int ,int ) ;
 struct iio_dev* devm_iio_device_alloc (struct device*,int) ;
 int hp03_channels ;
 int hp03_info ;
 int hp03_regmap_config ;
 int i2c_new_dummy_device (int ,int ) ;
 int i2c_set_clientdata (struct i2c_client*,struct iio_dev*) ;
 int i2c_unregister_device (int ) ;
 int iio_device_register (struct iio_dev*) ;
 struct hp03_priv* iio_priv (struct iio_dev*) ;
 int mutex_init (int *) ;
 int regmap_exit (int ) ;
 int regmap_init_i2c (int ,int *) ;

__attribute__((used)) static int hp03_probe(struct i2c_client *client,
        const struct i2c_device_id *id)
{
 struct device *dev = &client->dev;
 struct iio_dev *indio_dev;
 struct hp03_priv *priv;
 int ret;

 indio_dev = devm_iio_device_alloc(dev, sizeof(*priv));
 if (!indio_dev)
  return -ENOMEM;

 priv = iio_priv(indio_dev);
 priv->client = client;
 mutex_init(&priv->lock);

 indio_dev->dev.parent = dev;
 indio_dev->name = id->name;
 indio_dev->channels = hp03_channels;
 indio_dev->num_channels = ARRAY_SIZE(hp03_channels);
 indio_dev->info = &hp03_info;
 indio_dev->modes = INDIO_DIRECT_MODE;

 priv->xclr_gpio = devm_gpiod_get_index(dev, "xclr", 0, GPIOD_OUT_HIGH);
 if (IS_ERR(priv->xclr_gpio)) {
  dev_err(dev, "Failed to claim XCLR GPIO\n");
  ret = PTR_ERR(priv->xclr_gpio);
  return ret;
 }






 priv->eeprom_client = i2c_new_dummy_device(client->adapter, HP03_EEPROM_ADDR);
 if (IS_ERR(priv->eeprom_client)) {
  dev_err(dev, "New EEPROM I2C device failed\n");
  return PTR_ERR(priv->eeprom_client);
 }

 priv->eeprom_regmap = regmap_init_i2c(priv->eeprom_client,
           &hp03_regmap_config);
 if (IS_ERR(priv->eeprom_regmap)) {
  dev_err(dev, "Failed to allocate EEPROM regmap\n");
  ret = PTR_ERR(priv->eeprom_regmap);
  goto err_cleanup_eeprom_client;
 }

 ret = iio_device_register(indio_dev);
 if (ret) {
  dev_err(dev, "Failed to register IIO device\n");
  goto err_cleanup_eeprom_regmap;
 }

 i2c_set_clientdata(client, indio_dev);

 return 0;

err_cleanup_eeprom_regmap:
 regmap_exit(priv->eeprom_regmap);

err_cleanup_eeprom_client:
 i2c_unregister_device(priv->eeprom_client);
 return ret;
}
