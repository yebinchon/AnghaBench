
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mma7455_data {int regmap; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;


 int EINVAL ;


 int MMA7455_10BIT_SCALE ;
 int MMA7455_CTL1_DFBW_125HZ ;
 int MMA7455_CTL1_DFBW_62_5HZ ;
 int MMA7455_CTL1_DFBW_MASK ;
 int MMA7455_REG_CTL1 ;
 struct mma7455_data* iio_priv (struct iio_dev*) ;
 int regmap_update_bits (int ,int ,int ,int) ;

__attribute__((used)) static int mma7455_write_raw(struct iio_dev *indio_dev,
        struct iio_chan_spec const *chan,
        int val, int val2, long mask)
{
 struct mma7455_data *mma7455 = iio_priv(indio_dev);
 int i;

 switch (mask) {
 case 129:
  if (val == 250 && val2 == 0)
   i = MMA7455_CTL1_DFBW_125HZ;
  else if (val == 125 && val2 == 0)
   i = MMA7455_CTL1_DFBW_62_5HZ;
  else
   return -EINVAL;

  return regmap_update_bits(mma7455->regmap, MMA7455_REG_CTL1,
       MMA7455_CTL1_DFBW_MASK, i);

 case 128:

  if (val == 0 && val2 == MMA7455_10BIT_SCALE)
   return 0;
  break;
 }

 return -EINVAL;
}
