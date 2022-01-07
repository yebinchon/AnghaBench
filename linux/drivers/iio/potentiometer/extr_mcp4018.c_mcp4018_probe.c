
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mcp4018_data {int * cfg; struct i2c_client* client; } ;
struct TYPE_3__ {struct device* parent; } ;
struct iio_dev {int num_channels; int name; int * channels; int * info; TYPE_1__ dev; } ;
struct device {int dummy; } ;
struct i2c_client {int name; int adapter; struct device dev; } ;
struct TYPE_4__ {size_t driver_data; } ;


 int ENOMEM ;
 int EOPNOTSUPP ;
 int I2C_FUNC_SMBUS_BYTE ;
 int dev_err (struct device*,char*) ;
 struct iio_dev* devm_iio_device_alloc (struct device*,int) ;
 int devm_iio_device_register (struct device*,struct iio_dev*) ;
 int i2c_check_functionality (int ,int ) ;
 TYPE_2__* i2c_match_id (int ,struct i2c_client*) ;
 int i2c_set_clientdata (struct i2c_client*,struct iio_dev*) ;
 struct mcp4018_data* iio_priv (struct iio_dev*) ;
 int * mcp4018_cfg ;
 int mcp4018_channel ;
 int mcp4018_id ;
 int mcp4018_info ;
 int * of_device_get_match_data (struct device*) ;

__attribute__((used)) static int mcp4018_probe(struct i2c_client *client)
{
 struct device *dev = &client->dev;
 struct mcp4018_data *data;
 struct iio_dev *indio_dev;

 if (!i2c_check_functionality(client->adapter,
         I2C_FUNC_SMBUS_BYTE)) {
  dev_err(dev, "SMBUS Byte transfers not supported\n");
  return -EOPNOTSUPP;
 }

 indio_dev = devm_iio_device_alloc(dev, sizeof(*data));
 if (!indio_dev)
  return -ENOMEM;
 data = iio_priv(indio_dev);
 i2c_set_clientdata(client, indio_dev);
 data->client = client;

 data->cfg = of_device_get_match_data(dev);
 if (!data->cfg)
  data->cfg = &mcp4018_cfg[i2c_match_id(mcp4018_id, client)->driver_data];

 indio_dev->dev.parent = dev;
 indio_dev->info = &mcp4018_info;
 indio_dev->channels = &mcp4018_channel;
 indio_dev->num_channels = 1;
 indio_dev->name = client->name;

 return devm_iio_device_register(dev, indio_dev);
}
