
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct rpr0521_data {int regmap; } ;
typedef enum iio_chan_type { ____Placeholder_iio_chan_type } iio_chan_type ;
struct TYPE_3__ {int als_hz; int als_uhz; int pxs_hz; int pxs_uhz; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int EINVAL ;


 int RPR0521_MODE_MEAS_TIME_MASK ;
 int RPR0521_REG_MODE_CTRL ;
 int regmap_read (int ,int ,int*) ;
 TYPE_1__* rpr0521_samp_freq_i ;

__attribute__((used)) static int rpr0521_read_samp_freq(struct rpr0521_data *data,
    enum iio_chan_type chan_type,
       int *val, int *val2)
{
 int reg, ret;

 ret = regmap_read(data->regmap, RPR0521_REG_MODE_CTRL, &reg);
 if (ret < 0)
  return ret;

 reg &= RPR0521_MODE_MEAS_TIME_MASK;
 if (reg >= ARRAY_SIZE(rpr0521_samp_freq_i))
  return -EINVAL;

 switch (chan_type) {
 case 129:
  *val = rpr0521_samp_freq_i[reg].als_hz;
  *val2 = rpr0521_samp_freq_i[reg].als_uhz;
  return 0;

 case 128:
  *val = rpr0521_samp_freq_i[reg].pxs_hz;
  *val2 = rpr0521_samp_freq_i[reg].pxs_uhz;
  return 0;

 default:
  return -EINVAL;
 }
}
