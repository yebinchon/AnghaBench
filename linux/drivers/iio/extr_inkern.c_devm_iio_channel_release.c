
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_channel {int dummy; } ;
struct device {int dummy; } ;


 int WARN_ON (int ) ;
 int devm_iio_channel_free ;
 int devm_iio_channel_match ;
 int devres_release (struct device*,int ,int ,struct iio_channel*) ;

void devm_iio_channel_release(struct device *dev, struct iio_channel *channel)
{
 WARN_ON(devres_release(dev, devm_iio_channel_free,
          devm_iio_channel_match, channel));
}
