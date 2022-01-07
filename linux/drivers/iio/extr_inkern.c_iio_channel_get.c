
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_channel {int dummy; } ;
struct device {int of_node; } ;


 char* dev_name (struct device*) ;
 struct iio_channel* iio_channel_get_sys (char const*,char const*) ;
 struct iio_channel* of_iio_channel_get_by_name (int ,char const*) ;

struct iio_channel *iio_channel_get(struct device *dev,
        const char *channel_name)
{
 const char *name = dev ? dev_name(dev) : ((void*)0);
 struct iio_channel *channel;

 if (dev) {
  channel = of_iio_channel_get_by_name(dev->of_node,
           channel_name);
  if (channel != ((void*)0))
   return channel;
 }

 return iio_channel_get_sys(name, channel_name);
}
