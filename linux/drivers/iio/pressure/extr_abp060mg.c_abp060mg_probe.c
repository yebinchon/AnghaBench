
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * parent; } ;
struct iio_dev {int num_channels; int channels; int * info; int modes; int name; TYPE_1__ dev; } ;
struct i2c_device_id {unsigned long driver_data; } ;
struct i2c_client {int dev; int adapter; } ;
struct abp_state {int mreq_len; int lock; struct i2c_client* client; } ;


 int ARRAY_SIZE (int ) ;
 int ENOMEM ;
 int I2C_FUNC_SMBUS_QUICK ;
 int INDIO_DIRECT_MODE ;
 int abp060mg_channels ;
 int abp060mg_info ;
 int abp060mg_init_device (struct iio_dev*,unsigned long) ;
 int dev_name (int *) ;
 struct iio_dev* devm_iio_device_alloc (int *,int) ;
 int devm_iio_device_register (int *,struct iio_dev*) ;
 int i2c_check_functionality (int ,int ) ;
 int i2c_set_clientdata (struct i2c_client*,struct abp_state*) ;
 struct abp_state* iio_priv (struct iio_dev*) ;
 int mutex_init (int *) ;

__attribute__((used)) static int abp060mg_probe(struct i2c_client *client,
   const struct i2c_device_id *id)
{
 struct iio_dev *indio_dev;
 struct abp_state *state;
 unsigned long cfg_id = id->driver_data;

 indio_dev = devm_iio_device_alloc(&client->dev, sizeof(*state));
 if (!indio_dev)
  return -ENOMEM;

 state = iio_priv(indio_dev);
 i2c_set_clientdata(client, state);
 state->client = client;

 if (!i2c_check_functionality(client->adapter, I2C_FUNC_SMBUS_QUICK))
  state->mreq_len = 1;

 abp060mg_init_device(indio_dev, cfg_id);

 indio_dev->dev.parent = &client->dev;
 indio_dev->name = dev_name(&client->dev);
 indio_dev->modes = INDIO_DIRECT_MODE;
 indio_dev->info = &abp060mg_info;

 indio_dev->channels = abp060mg_channels;
 indio_dev->num_channels = ARRAY_SIZE(abp060mg_channels);

 mutex_init(&state->lock);

 return devm_iio_device_register(&client->dev, indio_dev);
}
