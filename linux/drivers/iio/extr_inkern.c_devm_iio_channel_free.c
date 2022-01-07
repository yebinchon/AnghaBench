
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_channel {int dummy; } ;
struct device {int dummy; } ;


 int iio_channel_release (struct iio_channel*) ;

__attribute__((used)) static void devm_iio_channel_free(struct device *dev, void *res)
{
 struct iio_channel *channel = *(struct iio_channel **)res;

 iio_channel_release(channel);
}
