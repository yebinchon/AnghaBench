
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_channel {int channel; int indio_dev; } ;
struct iio_chan_spec_ext_info {int private; int (* write ) (int ,int ,int ,char const*,size_t) ;} ;
typedef int ssize_t ;


 int EINVAL ;
 struct iio_chan_spec_ext_info* iio_lookup_ext_info (struct iio_channel*,char const*) ;
 int stub1 (int ,int ,int ,char const*,size_t) ;

ssize_t iio_write_channel_ext_info(struct iio_channel *chan, const char *attr,
       const char *buf, size_t len)
{
 const struct iio_chan_spec_ext_info *ext_info;

 ext_info = iio_lookup_ext_info(chan, attr);
 if (!ext_info)
  return -EINVAL;

 return ext_info->write(chan->indio_dev, ext_info->private,
          chan->channel, buf, len);
}
