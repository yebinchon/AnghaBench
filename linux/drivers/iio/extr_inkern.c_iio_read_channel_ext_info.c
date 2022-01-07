
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_channel {int channel; int indio_dev; } ;
struct iio_chan_spec_ext_info {int private; int (* read ) (int ,int ,int ,char*) ;} ;
typedef int ssize_t ;


 int EINVAL ;
 struct iio_chan_spec_ext_info* iio_lookup_ext_info (struct iio_channel*,char const*) ;
 int stub1 (int ,int ,int ,char*) ;

ssize_t iio_read_channel_ext_info(struct iio_channel *chan,
      const char *attr, char *buf)
{
 const struct iio_chan_spec_ext_info *ext_info;

 ext_info = iio_lookup_ext_info(chan, attr);
 if (!ext_info)
  return -EINVAL;

 return ext_info->read(chan->indio_dev, ext_info->private,
         chan->channel, buf);
}
