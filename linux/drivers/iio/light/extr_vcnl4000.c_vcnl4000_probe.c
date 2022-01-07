
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vcnl4000_data {size_t id; int rev; TYPE_2__* chip_spec; struct i2c_client* client; } ;
struct TYPE_3__ {int * parent; } ;
struct iio_dev {int modes; int name; int num_channels; int channels; int * info; TYPE_1__ dev; } ;
struct i2c_device_id {size_t driver_data; } ;
struct i2c_client {int dev; } ;
struct TYPE_4__ {int (* init ) (struct vcnl4000_data*) ;int prod; } ;


 int ARRAY_SIZE (int ) ;
 int ENOMEM ;
 int INDIO_DIRECT_MODE ;
 int VCNL4000_DRV_NAME ;
 int dev_dbg (int *,char*,int ,int ) ;
 struct iio_dev* devm_iio_device_alloc (int *,int) ;
 int devm_iio_device_register (int *,struct iio_dev*) ;
 int i2c_set_clientdata (struct i2c_client*,struct iio_dev*) ;
 struct vcnl4000_data* iio_priv (struct iio_dev*) ;
 int stub1 (struct vcnl4000_data*) ;
 int vcnl4000_channels ;
 TYPE_2__* vcnl4000_chip_spec_cfg ;
 int vcnl4000_info ;

__attribute__((used)) static int vcnl4000_probe(struct i2c_client *client,
     const struct i2c_device_id *id)
{
 struct vcnl4000_data *data;
 struct iio_dev *indio_dev;
 int ret;

 indio_dev = devm_iio_device_alloc(&client->dev, sizeof(*data));
 if (!indio_dev)
  return -ENOMEM;

 data = iio_priv(indio_dev);
 i2c_set_clientdata(client, indio_dev);
 data->client = client;
 data->id = id->driver_data;
 data->chip_spec = &vcnl4000_chip_spec_cfg[data->id];

 ret = data->chip_spec->init(data);
 if (ret < 0)
  return ret;

 dev_dbg(&client->dev, "%s Ambient light/proximity sensor, Rev: %02x\n",
  data->chip_spec->prod, data->rev);

 indio_dev->dev.parent = &client->dev;
 indio_dev->info = &vcnl4000_info;
 indio_dev->channels = vcnl4000_channels;
 indio_dev->num_channels = ARRAY_SIZE(vcnl4000_channels);
 indio_dev->name = VCNL4000_DRV_NAME;
 indio_dev->modes = INDIO_DIRECT_MODE;

 return devm_iio_device_register(&client->dev, indio_dev);
}
