
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct stmpe_adc {scalar_t__ channel; int value; int lock; int stmpe; int completion; } ;
struct iio_chan_spec {scalar_t__ channel; } ;


 int EINVAL ;
 int ETIMEDOUT ;
 int STMPE_ADC_CH (scalar_t__) ;
 scalar_t__ STMPE_ADC_LAST_NR ;
 int STMPE_ADC_TIMEOUT ;
 int STMPE_REG_ADC_CAPT ;
 int STMPE_REG_ADC_INT_STA ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int reinit_completion (int *) ;
 int stmpe_reg_write (int ,int ,int ) ;
 long wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static int stmpe_read_voltage(struct stmpe_adc *info,
  struct iio_chan_spec const *chan, int *val)
{
 long ret;

 mutex_lock(&info->lock);

 reinit_completion(&info->completion);

 info->channel = (u8)chan->channel;

 if (info->channel > STMPE_ADC_LAST_NR) {
  mutex_unlock(&info->lock);
  return -EINVAL;
 }

 stmpe_reg_write(info->stmpe, STMPE_REG_ADC_CAPT,
   STMPE_ADC_CH(info->channel));

 ret = wait_for_completion_timeout(&info->completion, STMPE_ADC_TIMEOUT);

 if (ret <= 0) {
  stmpe_reg_write(info->stmpe, STMPE_REG_ADC_INT_STA,
    STMPE_ADC_CH(info->channel));
  mutex_unlock(&info->lock);
  return -ETIMEDOUT;
 }

 *val = info->value;

 mutex_unlock(&info->lock);

 return 0;
}
