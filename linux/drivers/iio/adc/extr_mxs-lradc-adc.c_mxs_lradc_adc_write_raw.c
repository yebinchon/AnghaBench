
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mxs_lradc_scale {int integer; int nano; } ;
struct mxs_lradc_adc {int is_divided; struct mxs_lradc_scale** scale_avail; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {size_t channel; } ;


 int EINVAL ;

 size_t MXS_LRADC_DIV_DISABLED ;
 size_t MXS_LRADC_DIV_ENABLED ;
 int clear_bit (size_t,int *) ;
 int iio_device_claim_direct_mode (struct iio_dev*) ;
 int iio_device_release_direct_mode (struct iio_dev*) ;
 struct mxs_lradc_adc* iio_priv (struct iio_dev*) ;
 int set_bit (size_t,int *) ;

__attribute__((used)) static int mxs_lradc_adc_write_raw(struct iio_dev *iio_dev,
       const struct iio_chan_spec *chan,
       int val, int val2, long m)
{
 struct mxs_lradc_adc *adc = iio_priv(iio_dev);
 struct mxs_lradc_scale *scale_avail =
   adc->scale_avail[chan->channel];
 int ret;

 ret = iio_device_claim_direct_mode(iio_dev);
 if (ret)
  return ret;

 switch (m) {
 case 128:
  ret = -EINVAL;
  if (val == scale_avail[MXS_LRADC_DIV_DISABLED].integer &&
      val2 == scale_avail[MXS_LRADC_DIV_DISABLED].nano) {

   clear_bit(chan->channel, &adc->is_divided);
   ret = 0;
  } else if (val == scale_avail[MXS_LRADC_DIV_ENABLED].integer &&
      val2 == scale_avail[MXS_LRADC_DIV_ENABLED].nano) {

   set_bit(chan->channel, &adc->is_divided);
   ret = 0;
  }

  break;
 default:
  ret = -EINVAL;
  break;
 }

 iio_device_release_direct_mode(iio_dev);

 return ret;
}
