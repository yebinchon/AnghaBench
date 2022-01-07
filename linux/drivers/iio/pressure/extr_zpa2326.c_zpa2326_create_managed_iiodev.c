
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct zpa2326_private {int dummy; } ;
struct regmap {int dummy; } ;
struct TYPE_2__ {struct device* parent; } ;
struct iio_dev {char const* name; int * info; int num_channels; int channels; TYPE_1__ dev; int modes; } ;
struct device {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int INDIO_DIRECT_MODE ;
 struct iio_dev* devm_iio_device_alloc (struct device*,int) ;
 int zpa2326_channels ;
 int zpa2326_info ;

__attribute__((used)) static struct iio_dev *zpa2326_create_managed_iiodev(struct device *device,
           const char *name,
           struct regmap *regmap)
{
 struct iio_dev *indio_dev;


 indio_dev = devm_iio_device_alloc(device,
       sizeof(struct zpa2326_private));
 if (!indio_dev)
  return ((void*)0);


 indio_dev->modes = INDIO_DIRECT_MODE;
 indio_dev->dev.parent = device;
 indio_dev->channels = zpa2326_channels;
 indio_dev->num_channels = ARRAY_SIZE(zpa2326_channels);
 indio_dev->name = name;
 indio_dev->info = &zpa2326_info;

 return indio_dev;
}
