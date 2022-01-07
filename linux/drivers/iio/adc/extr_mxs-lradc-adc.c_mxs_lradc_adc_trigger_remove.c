
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mxs_lradc_adc {int trig; } ;
struct iio_dev {int dummy; } ;


 struct mxs_lradc_adc* iio_priv (struct iio_dev*) ;
 int iio_trigger_unregister (int ) ;

__attribute__((used)) static void mxs_lradc_adc_trigger_remove(struct iio_dev *iio)
{
 struct mxs_lradc_adc *adc = iio_priv(iio);

 iio_trigger_unregister(adc->trig);
}
