
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ads1015_data {unsigned int comp_mode; int conv_invalid; int regmap; int * data_rate; TYPE_2__* thresh_data; TYPE_1__* channel_data; } ;
struct TYPE_4__ {unsigned int comp_queue; } ;
struct TYPE_3__ {int pga; int data_rate; } ;


 unsigned int ADS1015_CFG_COMP_MODE_MASK ;
 unsigned int ADS1015_CFG_COMP_MODE_SHIFT ;
 unsigned int ADS1015_CFG_COMP_QUE_MASK ;
 unsigned int ADS1015_CFG_COMP_QUE_SHIFT ;
 unsigned int ADS1015_CFG_DR_MASK ;
 int ADS1015_CFG_DR_SHIFT ;
 unsigned int ADS1015_CFG_MUX_MASK ;
 int ADS1015_CFG_MUX_SHIFT ;
 unsigned int ADS1015_CFG_PGA_MASK ;
 int ADS1015_CFG_PGA_SHIFT ;
 int ADS1015_CFG_REG ;
 int ADS1015_CHANNELS ;
 int ADS1015_CONV_REG ;
 int DIV_ROUND_UP (int ,int ) ;
 int EINVAL ;
 int USEC_PER_SEC ;
 scalar_t__ ads1015_event_channel_enabled (struct ads1015_data*) ;
 int regmap_read (int ,int ,...) ;
 int regmap_write (int ,int ,unsigned int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static
int ads1015_get_adc_result(struct ads1015_data *data, int chan, int *val)
{
 int ret, pga, dr, dr_old, conv_time;
 unsigned int old, mask, cfg;

 if (chan < 0 || chan >= ADS1015_CHANNELS)
  return -EINVAL;

 ret = regmap_read(data->regmap, ADS1015_CFG_REG, &old);
 if (ret)
  return ret;

 pga = data->channel_data[chan].pga;
 dr = data->channel_data[chan].data_rate;
 mask = ADS1015_CFG_MUX_MASK | ADS1015_CFG_PGA_MASK |
  ADS1015_CFG_DR_MASK;
 cfg = chan << ADS1015_CFG_MUX_SHIFT | pga << ADS1015_CFG_PGA_SHIFT |
  dr << ADS1015_CFG_DR_SHIFT;

 if (ads1015_event_channel_enabled(data)) {
  mask |= ADS1015_CFG_COMP_QUE_MASK | ADS1015_CFG_COMP_MODE_MASK;
  cfg |= data->thresh_data[chan].comp_queue <<
    ADS1015_CFG_COMP_QUE_SHIFT |
   data->comp_mode <<
    ADS1015_CFG_COMP_MODE_SHIFT;
 }

 cfg = (old & ~mask) | (cfg & mask);
 if (old != cfg) {
  ret = regmap_write(data->regmap, ADS1015_CFG_REG, cfg);
  if (ret)
   return ret;
  data->conv_invalid = 1;
 }
 if (data->conv_invalid) {
  dr_old = (old & ADS1015_CFG_DR_MASK) >> ADS1015_CFG_DR_SHIFT;
  conv_time = DIV_ROUND_UP(USEC_PER_SEC, data->data_rate[dr_old]);
  conv_time += DIV_ROUND_UP(USEC_PER_SEC, data->data_rate[dr]);
  conv_time += conv_time / 10;
  usleep_range(conv_time, conv_time + 1);
  data->conv_invalid = 0;
 }

 return regmap_read(data->regmap, ADS1015_CONV_REG, val);
}
