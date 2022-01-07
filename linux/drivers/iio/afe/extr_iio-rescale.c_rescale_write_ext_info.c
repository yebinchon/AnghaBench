
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rescale {TYPE_1__* ext_info; int source; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int name; } ;


 struct rescale* iio_priv (struct iio_dev*) ;
 int iio_write_channel_ext_info (int ,int ,char const*,size_t) ;

__attribute__((used)) static ssize_t rescale_write_ext_info(struct iio_dev *indio_dev,
          uintptr_t private,
          struct iio_chan_spec const *chan,
          const char *buf, size_t len)
{
 struct rescale *rescale = iio_priv(indio_dev);

 return iio_write_channel_ext_info(rescale->source,
       rescale->ext_info[private].name,
       buf, len);
}
