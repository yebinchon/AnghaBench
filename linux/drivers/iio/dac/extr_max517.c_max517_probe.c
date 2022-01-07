
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct max517_platform_data {int* vref_mv; } ;
struct max517_data {int* vref_mv; struct i2c_client* client; } ;
struct TYPE_3__ {TYPE_2__* parent; } ;
struct iio_dev {int num_channels; int * info; int modes; int channels; TYPE_1__ dev; } ;
struct i2c_device_id {int driver_data; } ;
struct TYPE_4__ {struct max517_platform_data* platform_data; } ;
struct i2c_client {TYPE_2__ dev; } ;


 int ENOMEM ;




 int INDIO_DIRECT_MODE ;
 struct iio_dev* devm_iio_device_alloc (TYPE_2__*,int) ;
 int i2c_set_clientdata (struct i2c_client*,struct iio_dev*) ;
 int iio_device_register (struct iio_dev*) ;
 struct max517_data* iio_priv (struct iio_dev*) ;
 int max517_channels ;
 int max517_info ;

__attribute__((used)) static int max517_probe(struct i2c_client *client,
   const struct i2c_device_id *id)
{
 struct max517_data *data;
 struct iio_dev *indio_dev;
 struct max517_platform_data *platform_data = client->dev.platform_data;
 int chan;

 indio_dev = devm_iio_device_alloc(&client->dev, sizeof(*data));
 if (!indio_dev)
  return -ENOMEM;
 data = iio_priv(indio_dev);
 i2c_set_clientdata(client, indio_dev);
 data->client = client;


 indio_dev->dev.parent = &client->dev;

 switch (id->driver_data) {
 case 128:
  indio_dev->num_channels = 8;
  break;
 case 129:
  indio_dev->num_channels = 4;
  break;
 case 130:
 case 131:
  indio_dev->num_channels = 2;
  break;
 default:
  indio_dev->num_channels = 1;
  break;
 }
 indio_dev->channels = max517_channels;
 indio_dev->modes = INDIO_DIRECT_MODE;
 indio_dev->info = &max517_info;





 for (chan = 0; chan < indio_dev->num_channels; chan++) {
  if (id->driver_data == 131 || !platform_data)
   data->vref_mv[chan] = 5000;
  else
   data->vref_mv[chan] = platform_data->vref_mv[chan];
 }

 return iio_device_register(indio_dev);
}
