
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct iio_chan_spec {int dummy; } ;
struct adc5_chip {int lock; int complete; scalar_t__ poll_eoc; } ;
struct adc5_channel_prop {int dummy; } ;


 int ADC5_CONV_TIMEOUT ;
 int adc5_configure (struct adc5_chip*,struct adc5_channel_prop*) ;
 int adc5_poll_wait_eoc (struct adc5_chip*) ;
 int adc5_read_voltage_data (struct adc5_chip*,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_debug (char*) ;
 int pr_err (char*,...) ;
 int wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static int adc5_do_conversion(struct adc5_chip *adc,
   struct adc5_channel_prop *prop,
   struct iio_chan_spec const *chan,
   u16 *data_volt, u16 *data_cur)
{
 int ret;

 mutex_lock(&adc->lock);

 ret = adc5_configure(adc, prop);
 if (ret) {
  pr_err("ADC configure failed with %d\n", ret);
  goto unlock;
 }

 if (adc->poll_eoc) {
  ret = adc5_poll_wait_eoc(adc);
  if (ret < 0) {
   pr_err("EOC bit not set\n");
   goto unlock;
  }
 } else {
  ret = wait_for_completion_timeout(&adc->complete,
       ADC5_CONV_TIMEOUT);
  if (!ret) {
   pr_debug("Did not get completion timeout.\n");
   ret = adc5_poll_wait_eoc(adc);
   if (ret < 0) {
    pr_err("EOC bit not set\n");
    goto unlock;
   }
  }
 }

 ret = adc5_read_voltage_data(adc, data_volt);
unlock:
 mutex_unlock(&adc->lock);

 return ret;
}
