
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tsys01_dev {int (* reset ) (int ,int ,int) ;int client; int lock; } ;
struct TYPE_4__ {struct device* parent; } ;
struct iio_dev {int num_channels; int channels; int modes; TYPE_2__ dev; int name; int * info; } ;
struct device {TYPE_1__* driver; } ;
struct TYPE_3__ {int name; } ;


 int ARRAY_SIZE (int ) ;
 int INDIO_DIRECT_MODE ;
 int TSYS01_RESET ;
 int devm_iio_device_register (struct device*,struct iio_dev*) ;
 struct tsys01_dev* iio_priv (struct iio_dev*) ;
 int mutex_init (int *) ;
 int stub1 (int ,int ,int) ;
 int tsys01_channels ;
 int tsys01_info ;
 int tsys01_read_prom (struct iio_dev*) ;

__attribute__((used)) static int tsys01_probe(struct iio_dev *indio_dev, struct device *dev)
{
 int ret;
 struct tsys01_dev *dev_data = iio_priv(indio_dev);

 mutex_init(&dev_data->lock);

 indio_dev->info = &tsys01_info;
 indio_dev->name = dev->driver->name;
 indio_dev->dev.parent = dev;
 indio_dev->modes = INDIO_DIRECT_MODE;
 indio_dev->channels = tsys01_channels;
 indio_dev->num_channels = ARRAY_SIZE(tsys01_channels);

 ret = dev_data->reset(dev_data->client, TSYS01_RESET, 3000);
 if (ret)
  return ret;

 ret = tsys01_read_prom(indio_dev);
 if (ret)
  return ret;

 return devm_iio_device_register(dev, indio_dev);
}
