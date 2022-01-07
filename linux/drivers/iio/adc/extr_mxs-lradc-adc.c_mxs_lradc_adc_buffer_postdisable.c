
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mxs_lradc_adc {scalar_t__ base; struct mxs_lradc* lradc; } ;
struct mxs_lradc {int buffer_vchans; scalar_t__ soc; } ;
struct iio_dev {int dummy; } ;


 scalar_t__ IMX28_LRADC ;
 scalar_t__ LRADC_CTRL0 ;
 scalar_t__ LRADC_CTRL1 ;
 int LRADC_CTRL1_LRADC_IRQ_EN_OFFSET ;
 scalar_t__ LRADC_DELAY (int ) ;
 int LRADC_DELAY_KICK ;
 int LRADC_DELAY_TRIGGER_LRADCS_MASK ;
 scalar_t__ STMP_OFFSET_REG_CLR ;
 struct mxs_lradc_adc* iio_priv (struct iio_dev*) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int mxs_lradc_adc_buffer_postdisable(struct iio_dev *iio)
{
 struct mxs_lradc_adc *adc = iio_priv(iio);
 struct mxs_lradc *lradc = adc->lradc;

 writel(LRADC_DELAY_TRIGGER_LRADCS_MASK | LRADC_DELAY_KICK,
        adc->base + LRADC_DELAY(0) + STMP_OFFSET_REG_CLR);

 writel(lradc->buffer_vchans,
        adc->base + LRADC_CTRL0 + STMP_OFFSET_REG_CLR);
 if (lradc->soc == IMX28_LRADC)
  writel(lradc->buffer_vchans << LRADC_CTRL1_LRADC_IRQ_EN_OFFSET,
         adc->base + LRADC_CTRL1 + STMP_OFFSET_REG_CLR);

 return 0;
}
