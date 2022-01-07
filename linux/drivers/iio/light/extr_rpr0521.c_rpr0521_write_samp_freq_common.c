
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpr0521_data {int regmap; } ;
typedef enum iio_chan_type { ____Placeholder_iio_chan_type } iio_chan_type ;


 int EINVAL ;
 int RPR0521_MODE_MEAS_TIME_MASK ;
 int RPR0521_REG_MODE_CTRL ;
 int regmap_update_bits (int ,int ,int ,int) ;

__attribute__((used)) static int rpr0521_write_samp_freq_common(struct rpr0521_data *data,
    enum iio_chan_type chan_type,
    int val, int val2)
{
 int i;





 switch (val) {
 case 0:
  i = 0;
  break;

 case 2:
  if (val2 != 500000)
   return -EINVAL;

  i = 11;
  break;

 case 10:
  i = 6;
  break;

 default:
  return -EINVAL;
 }

 return regmap_update_bits(data->regmap,
  RPR0521_REG_MODE_CTRL,
  RPR0521_MODE_MEAS_TIME_MASK,
  i);
}
