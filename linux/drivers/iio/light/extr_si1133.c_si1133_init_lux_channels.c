
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct si1133_data {int dummy; } ;


 int SI1133_ADCCONFIG_DECIM_RATE (int) ;
 int SI1133_ADCPOST_24BIT_EN ;
 int SI1133_ADCPOST_POSTSHIFT_BITQTY (int) ;
 int SI1133_ADCSENS_HSIG_MASK ;
 int SI1133_ADCSENS_NB_MEAS (int) ;
 int SI1133_PARAM_ADCMUX_LARGE_WHITE ;
 int SI1133_PARAM_ADCMUX_MED_IR ;
 int SI1133_PARAM_REG_ADCPOST (int) ;
 int _3_120_0_us ;
 int _48_8_us ;
 int si1133_chan_set_adcconfig (struct si1133_data*,int,int) ;
 int si1133_chan_set_adcsens (struct si1133_data*,int,int) ;
 int si1133_param_set (struct si1133_data*,int ,int) ;

__attribute__((used)) static int si1133_init_lux_channels(struct si1133_data *data)
{
 int err;

 err = si1133_chan_set_adcconfig(data, 1,
     SI1133_ADCCONFIG_DECIM_RATE(1) |
     SI1133_PARAM_ADCMUX_LARGE_WHITE);
 if (err)
  return err;

 err = si1133_param_set(data, SI1133_PARAM_REG_ADCPOST(1),
          SI1133_ADCPOST_24BIT_EN |
          SI1133_ADCPOST_POSTSHIFT_BITQTY(0));
 if (err)
  return err;
 err = si1133_chan_set_adcsens(data, 1, SI1133_ADCSENS_HSIG_MASK |
          SI1133_ADCSENS_NB_MEAS(64) | _48_8_us);
 if (err)
  return err;

 err = si1133_chan_set_adcconfig(data, 2,
     SI1133_ADCCONFIG_DECIM_RATE(1) |
     SI1133_PARAM_ADCMUX_LARGE_WHITE);
 if (err)
  return err;

 err = si1133_param_set(data, SI1133_PARAM_REG_ADCPOST(2),
          SI1133_ADCPOST_24BIT_EN |
          SI1133_ADCPOST_POSTSHIFT_BITQTY(2));
 if (err)
  return err;

 err = si1133_chan_set_adcsens(data, 2, SI1133_ADCSENS_HSIG_MASK |
          SI1133_ADCSENS_NB_MEAS(1) | _3_120_0_us);
 if (err)
  return err;

 err = si1133_chan_set_adcconfig(data, 3,
     SI1133_ADCCONFIG_DECIM_RATE(1) |
     SI1133_PARAM_ADCMUX_MED_IR);
 if (err)
  return err;

 err = si1133_param_set(data, SI1133_PARAM_REG_ADCPOST(3),
          SI1133_ADCPOST_24BIT_EN |
          SI1133_ADCPOST_POSTSHIFT_BITQTY(2));
 if (err)
  return err;

 return si1133_chan_set_adcsens(data, 3, SI1133_ADCSENS_HSIG_MASK |
     SI1133_ADCSENS_NB_MEAS(64) | _48_8_us);
}
