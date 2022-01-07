
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regmap {int dummy; } ;
struct mmc35240_data {int mutex; int res; struct regmap* regmap; struct i2c_client* client; } ;
struct TYPE_2__ {int * parent; } ;
struct iio_dev {int modes; int num_channels; int channels; int name; int * info; TYPE_1__ dev; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int dev; } ;


 int ARRAY_SIZE (int ) ;
 int ENOMEM ;
 int INDIO_DIRECT_MODE ;
 scalar_t__ IS_ERR (struct regmap*) ;
 int MMC35240_16_BITS_SLOW ;
 int MMC35240_DRV_NAME ;
 int PTR_ERR (struct regmap*) ;
 int dev_err (int *,char*) ;
 struct iio_dev* devm_iio_device_alloc (int *,int) ;
 int devm_iio_device_register (int *,struct iio_dev*) ;
 struct regmap* devm_regmap_init_i2c (struct i2c_client*,int *) ;
 int i2c_set_clientdata (struct i2c_client*,struct iio_dev*) ;
 struct mmc35240_data* iio_priv (struct iio_dev*) ;
 int mmc35240_channels ;
 int mmc35240_info ;
 int mmc35240_init (struct mmc35240_data*) ;
 int mmc35240_regmap_config ;
 int mutex_init (int *) ;

__attribute__((used)) static int mmc35240_probe(struct i2c_client *client,
     const struct i2c_device_id *id)
{
 struct mmc35240_data *data;
 struct iio_dev *indio_dev;
 struct regmap *regmap;
 int ret;

 indio_dev = devm_iio_device_alloc(&client->dev, sizeof(*data));
 if (!indio_dev)
  return -ENOMEM;

 regmap = devm_regmap_init_i2c(client, &mmc35240_regmap_config);
 if (IS_ERR(regmap)) {
  dev_err(&client->dev, "regmap initialization failed\n");
  return PTR_ERR(regmap);
 }

 data = iio_priv(indio_dev);
 i2c_set_clientdata(client, indio_dev);
 data->client = client;
 data->regmap = regmap;
 data->res = MMC35240_16_BITS_SLOW;

 mutex_init(&data->mutex);

 indio_dev->dev.parent = &client->dev;
 indio_dev->info = &mmc35240_info;
 indio_dev->name = MMC35240_DRV_NAME;
 indio_dev->channels = mmc35240_channels;
 indio_dev->num_channels = ARRAY_SIZE(mmc35240_channels);
 indio_dev->modes = INDIO_DIRECT_MODE;

 ret = mmc35240_init(data);
 if (ret < 0) {
  dev_err(&client->dev, "mmc35240 chip init failed\n");
  return ret;
 }
 return devm_iio_device_register(&client->dev, indio_dev);
}
