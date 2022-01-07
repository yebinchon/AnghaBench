
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tsc2007_iio {struct tsc2007* ts; } ;
struct tsc2007 {TYPE_2__* client; } ;
struct TYPE_3__ {int * parent; } ;
struct iio_dev {char* name; int num_channels; int channels; int modes; int * info; TYPE_1__ dev; } ;
struct TYPE_4__ {int dev; } ;


 int ARRAY_SIZE (int ) ;
 int ENOMEM ;
 int INDIO_DIRECT_MODE ;
 int dev_err (int *,char*,...) ;
 struct iio_dev* devm_iio_device_alloc (int *,int) ;
 int devm_iio_device_register (int *,struct iio_dev*) ;
 struct tsc2007_iio* iio_priv (struct iio_dev*) ;
 int tsc2007_iio_channel ;
 int tsc2007_iio_info ;

int tsc2007_iio_configure(struct tsc2007 *ts)
{
 struct iio_dev *indio_dev;
 struct tsc2007_iio *iio;
 int error;

 indio_dev = devm_iio_device_alloc(&ts->client->dev, sizeof(*iio));
 if (!indio_dev) {
  dev_err(&ts->client->dev, "iio_device_alloc failed\n");
  return -ENOMEM;
 }

 iio = iio_priv(indio_dev);
 iio->ts = ts;

 indio_dev->name = "tsc2007";
 indio_dev->dev.parent = &ts->client->dev;
 indio_dev->info = &tsc2007_iio_info;
 indio_dev->modes = INDIO_DIRECT_MODE;
 indio_dev->channels = tsc2007_iio_channel;
 indio_dev->num_channels = ARRAY_SIZE(tsc2007_iio_channel);

 error = devm_iio_device_register(&ts->client->dev, indio_dev);
 if (error) {
  dev_err(&ts->client->dev,
   "iio_device_register() failed: %d\n", error);
  return error;
 }

 return 0;
}
