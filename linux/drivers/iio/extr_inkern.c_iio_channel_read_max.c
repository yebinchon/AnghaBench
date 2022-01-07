
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_channel {int dummy; } ;
typedef enum iio_chan_info_enum { ____Placeholder_iio_chan_info_enum } iio_chan_info_enum ;


 int EINVAL ;



 int iio_channel_read_avail (struct iio_channel*,int const**,int*,int*,int) ;

__attribute__((used)) static int iio_channel_read_max(struct iio_channel *chan,
    int *val, int *val2, int *type,
    enum iio_chan_info_enum info)
{
 int unused;
 const int *vals;
 int length;
 int ret;

 if (!val2)
  val2 = &unused;

 ret = iio_channel_read_avail(chan, &vals, type, &length, info);
 switch (ret) {
 case 129:
  switch (*type) {
  case 128:
   *val = vals[2];
   break;
  default:
   *val = vals[4];
   *val2 = vals[5];
  }
  return 0;

 case 130:
  if (length <= 0)
   return -EINVAL;
  switch (*type) {
  case 128:
   *val = vals[--length];
   while (length) {
    if (vals[--length] > *val)
     *val = vals[length];
   }
   break;
  default:

   return -EINVAL;
  }
  return 0;

 default:
  return ret;
 }
}
