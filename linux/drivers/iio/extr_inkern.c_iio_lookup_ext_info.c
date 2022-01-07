
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iio_channel {TYPE_1__* channel; } ;
struct iio_chan_spec_ext_info {scalar_t__ name; } ;
struct TYPE_2__ {struct iio_chan_spec_ext_info* ext_info; } ;


 int strcmp (char const*,scalar_t__) ;

__attribute__((used)) static const struct iio_chan_spec_ext_info *iio_lookup_ext_info(
      const struct iio_channel *chan,
      const char *attr)
{
 const struct iio_chan_spec_ext_info *ext_info;

 if (!chan->channel->ext_info)
  return ((void*)0);

 for (ext_info = chan->channel->ext_info; ext_info->name; ++ext_info) {
  if (!strcmp(attr, ext_info->name))
   return ext_info;
 }

 return ((void*)0);
}
