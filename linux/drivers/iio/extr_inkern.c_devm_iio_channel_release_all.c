
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_channel {int dummy; } ;
struct device {int dummy; } ;


 int WARN_ON (int ) ;
 int devm_iio_channel_free_all ;
 int devm_iio_channel_match ;
 int devres_release (struct device*,int ,int ,struct iio_channel*) ;

void devm_iio_channel_release_all(struct device *dev,
      struct iio_channel *channels)
{
 WARN_ON(devres_release(dev, devm_iio_channel_free_all,
          devm_iio_channel_match, channels));
}
