
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_channel {int dummy; } ;
typedef int s64 ;


 int EINVAL ;
 int IIO_CHAN_INFO_OFFSET ;
 int IIO_CHAN_INFO_SCALE ;





 int div_s64 (int,int) ;
 int iio_channel_read (struct iio_channel*,int*,int*,int ) ;

__attribute__((used)) static int iio_convert_raw_to_processed_unlocked(struct iio_channel *chan,
 int raw, int *processed, unsigned int scale)
{
 int scale_type, scale_val, scale_val2, offset;
 s64 raw64 = raw;
 int ret;

 ret = iio_channel_read(chan, &offset, ((void*)0), IIO_CHAN_INFO_OFFSET);
 if (ret >= 0)
  raw64 += offset;

 scale_type = iio_channel_read(chan, &scale_val, &scale_val2,
     IIO_CHAN_INFO_SCALE);
 if (scale_type < 0) {




  *processed = raw;
  return 0;
 }

 switch (scale_type) {
 case 130:
  *processed = raw64 * scale_val;
  break;
 case 129:
  if (scale_val2 < 0)
   *processed = -raw64 * scale_val;
  else
   *processed = raw64 * scale_val;
  *processed += div_s64(raw64 * (s64)scale_val2 * scale,
          1000000LL);
  break;
 case 128:
  if (scale_val2 < 0)
   *processed = -raw64 * scale_val;
  else
   *processed = raw64 * scale_val;
  *processed += div_s64(raw64 * (s64)scale_val2 * scale,
          1000000000LL);
  break;
 case 132:
  *processed = div_s64(raw64 * (s64)scale_val * scale,
         scale_val2);
  break;
 case 131:
  *processed = (raw64 * (s64)scale_val * scale) >> scale_val2;
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
