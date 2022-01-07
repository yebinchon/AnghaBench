
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct mxs_lradc_adc {scalar_t__ const base; } ;
struct iio_trigger {int dummy; } ;
struct iio_dev {int dummy; } ;


 scalar_t__ const LRADC_DELAY (int ) ;
 int LRADC_DELAY_KICK ;
 scalar_t__ STMP_OFFSET_REG_CLR ;
 scalar_t__ STMP_OFFSET_REG_SET ;
 struct mxs_lradc_adc* iio_priv (struct iio_dev*) ;
 struct iio_dev* iio_trigger_get_drvdata (struct iio_trigger*) ;
 int writel (int ,scalar_t__ const) ;

__attribute__((used)) static int mxs_lradc_adc_configure_trigger(struct iio_trigger *trig, bool state)
{
 struct iio_dev *iio = iio_trigger_get_drvdata(trig);
 struct mxs_lradc_adc *adc = iio_priv(iio);
 const u32 st = state ? STMP_OFFSET_REG_SET : STMP_OFFSET_REG_CLR;

 writel(LRADC_DELAY_KICK, adc->base + (LRADC_DELAY(0) + st));

 return 0;
}
