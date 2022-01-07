
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regmap {int dummy; } ;
struct mxc6255_data {struct regmap* regmap; struct i2c_client* client; } ;
struct TYPE_2__ {int * parent; } ;
struct iio_dev {int * info; int modes; int num_channels; int channels; TYPE_1__ dev; int name; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int dev; } ;


 int ARRAY_SIZE (int ) ;
 int ENODEV ;
 int ENOMEM ;
 int INDIO_DIRECT_MODE ;
 scalar_t__ IS_ERR (struct regmap*) ;
 unsigned int MXC6255_CHIP_ID ;
 int MXC6255_DRV_NAME ;
 int MXC6255_REG_CHIP_ID ;
 int PTR_ERR (struct regmap*) ;
 int dev_dbg (int *,char*,unsigned int) ;
 int dev_err (int *,char*,...) ;
 struct iio_dev* devm_iio_device_alloc (int *,int) ;
 int devm_iio_device_register (int *,struct iio_dev*) ;
 struct regmap* devm_regmap_init_i2c (struct i2c_client*,int *) ;
 int i2c_set_clientdata (struct i2c_client*,struct iio_dev*) ;
 struct mxc6255_data* iio_priv (struct iio_dev*) ;
 int mxc6255_channels ;
 int mxc6255_info ;
 int mxc6255_regmap_config ;
 int regmap_read (struct regmap*,int ,unsigned int*) ;

__attribute__((used)) static int mxc6255_probe(struct i2c_client *client,
    const struct i2c_device_id *id)
{
 struct mxc6255_data *data;
 struct iio_dev *indio_dev;
 struct regmap *regmap;
 unsigned int chip_id;
 int ret;

 indio_dev = devm_iio_device_alloc(&client->dev, sizeof(*data));
 if (!indio_dev)
  return -ENOMEM;

 regmap = devm_regmap_init_i2c(client, &mxc6255_regmap_config);
 if (IS_ERR(regmap)) {
  dev_err(&client->dev, "Error initializing regmap\n");
  return PTR_ERR(regmap);
 }

 data = iio_priv(indio_dev);
 i2c_set_clientdata(client, indio_dev);
 data->client = client;
 data->regmap = regmap;

 indio_dev->name = MXC6255_DRV_NAME;
 indio_dev->dev.parent = &client->dev;
 indio_dev->channels = mxc6255_channels;
 indio_dev->num_channels = ARRAY_SIZE(mxc6255_channels);
 indio_dev->modes = INDIO_DIRECT_MODE;
 indio_dev->info = &mxc6255_info;

 ret = regmap_read(data->regmap, MXC6255_REG_CHIP_ID, &chip_id);
 if (ret < 0) {
  dev_err(&client->dev, "Error reading chip id %d\n", ret);
  return ret;
 }

 if ((chip_id & 0x1f) != MXC6255_CHIP_ID) {
  dev_err(&client->dev, "Invalid chip id %x\n", chip_id);
  return -ENODEV;
 }

 dev_dbg(&client->dev, "Chip id %x\n", chip_id);

 ret = devm_iio_device_register(&client->dev, indio_dev);
 if (ret < 0) {
  dev_err(&client->dev, "Could not register IIO device\n");
  return ret;
 }

 return 0;
}
