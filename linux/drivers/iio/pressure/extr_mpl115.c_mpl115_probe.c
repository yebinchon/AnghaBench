
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mpl115_ops {int (* init ) (struct device*) ;int (* read ) (struct device*,int ) ;} ;
struct mpl115_data {int a0; int b1; int b2; int c12; struct device* dev; struct mpl115_ops const* ops; int lock; } ;
struct TYPE_2__ {struct device* parent; } ;
struct iio_dev {char const* name; int num_channels; int channels; int modes; TYPE_1__ dev; int * info; } ;
struct device {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int ENOMEM ;
 int INDIO_DIRECT_MODE ;
 int MPL115_A0 ;
 int MPL115_B1 ;
 int MPL115_B2 ;
 int MPL115_C12 ;
 struct iio_dev* devm_iio_device_alloc (struct device*,int) ;
 int devm_iio_device_register (struct device*,struct iio_dev*) ;
 struct mpl115_data* iio_priv (struct iio_dev*) ;
 int mpl115_channels ;
 int mpl115_info ;
 int mutex_init (int *) ;
 int stub1 (struct device*) ;
 int stub2 (struct device*,int ) ;
 int stub3 (struct device*,int ) ;
 int stub4 (struct device*,int ) ;
 int stub5 (struct device*,int ) ;

int mpl115_probe(struct device *dev, const char *name,
   const struct mpl115_ops *ops)
{
 struct mpl115_data *data;
 struct iio_dev *indio_dev;
 int ret;

 indio_dev = devm_iio_device_alloc(dev, sizeof(*data));
 if (!indio_dev)
  return -ENOMEM;

 data = iio_priv(indio_dev);
 data->dev = dev;
 data->ops = ops;
 mutex_init(&data->lock);

 indio_dev->info = &mpl115_info;
 indio_dev->name = name;
 indio_dev->dev.parent = dev;
 indio_dev->modes = INDIO_DIRECT_MODE;
 indio_dev->channels = mpl115_channels;
 indio_dev->num_channels = ARRAY_SIZE(mpl115_channels);

 ret = data->ops->init(data->dev);
 if (ret)
  return ret;

 ret = data->ops->read(data->dev, MPL115_A0);
 if (ret < 0)
  return ret;
 data->a0 = ret;
 ret = data->ops->read(data->dev, MPL115_B1);
 if (ret < 0)
  return ret;
 data->b1 = ret;
 ret = data->ops->read(data->dev, MPL115_B2);
 if (ret < 0)
  return ret;
 data->b2 = ret;
 ret = data->ops->read(data->dev, MPL115_C12);
 if (ret < 0)
  return ret;
 data->c12 = ret;

 return devm_iio_device_register(dev, indio_dev);
}
