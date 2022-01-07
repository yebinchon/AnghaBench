
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct da9055_hwmon {int irq_lock; int done; struct da9055* da9055; } ;
struct da9055 {int dev; } ;


 int DA9055_ADC_LSB_MASK ;
 unsigned char DA9055_ADC_MAN_CONV ;
 unsigned char DA9055_ADC_TJUNC ;
 int DA9055_REG_ADC_MAN ;
 int DA9055_REG_ADC_RES_H ;
 int DA9055_REG_ADC_RES_L ;
 int EINVAL ;
 int ETIMEDOUT ;
 unsigned char* chan_mux ;
 int da9055_reg_read (struct da9055*,int ) ;
 int da9055_reg_write (struct da9055*,int ,unsigned char) ;
 int dev_err (int ,char*) ;
 int msecs_to_jiffies (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static int da9055_adc_manual_read(struct da9055_hwmon *hwmon,
     unsigned char channel)
{
 int ret;
 unsigned short calc_data;
 unsigned short data;
 unsigned char mux_sel;
 struct da9055 *da9055 = hwmon->da9055;

 if (channel > DA9055_ADC_TJUNC)
  return -EINVAL;

 mutex_lock(&hwmon->irq_lock);


 mux_sel = chan_mux[channel] | DA9055_ADC_MAN_CONV;

 ret = da9055_reg_write(da9055, DA9055_REG_ADC_MAN, mux_sel);
 if (ret < 0)
  goto err;


 if (!wait_for_completion_timeout(&hwmon->done,
     msecs_to_jiffies(500))) {
  dev_err(da9055->dev,
   "timeout waiting for ADC conversion interrupt\n");
  ret = -ETIMEDOUT;
  goto err;
 }

 ret = da9055_reg_read(da9055, DA9055_REG_ADC_RES_H);
 if (ret < 0)
  goto err;

 calc_data = (unsigned short)ret;
 data = calc_data << 2;

 ret = da9055_reg_read(da9055, DA9055_REG_ADC_RES_L);
 if (ret < 0)
  goto err;

 calc_data = (unsigned short)(ret & DA9055_ADC_LSB_MASK);
 data |= calc_data;

 ret = data;

err:
 mutex_unlock(&hwmon->irq_lock);
 return ret;
}
