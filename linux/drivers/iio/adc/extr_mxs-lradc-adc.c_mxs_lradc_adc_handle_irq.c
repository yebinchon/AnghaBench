
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mxs_lradc_adc {scalar_t__ base; int completion; int lock; struct mxs_lradc* lradc; } ;
struct mxs_lradc {unsigned long buffer_vchans; } ;
struct iio_dev {int trig; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 scalar_t__ LRADC_CTRL1 ;
 unsigned long LRADC_CTRL1_LRADC_IRQ (int ) ;
 scalar_t__ STMP_OFFSET_REG_CLR ;
 int complete (int *) ;
 scalar_t__ iio_buffer_enabled (struct iio_dev*) ;
 struct mxs_lradc_adc* iio_priv (struct iio_dev*) ;
 int iio_trigger_poll (int ) ;
 unsigned long mxs_lradc_irq_mask (struct mxs_lradc*) ;
 unsigned long readl (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writel (unsigned long,scalar_t__) ;

__attribute__((used)) static irqreturn_t mxs_lradc_adc_handle_irq(int irq, void *data)
{
 struct iio_dev *iio = data;
 struct mxs_lradc_adc *adc = iio_priv(iio);
 struct mxs_lradc *lradc = adc->lradc;
 unsigned long reg = readl(adc->base + LRADC_CTRL1);
 unsigned long flags;

 if (!(reg & mxs_lradc_irq_mask(lradc)))
  return IRQ_NONE;

 if (iio_buffer_enabled(iio)) {
  if (reg & lradc->buffer_vchans) {
   spin_lock_irqsave(&adc->lock, flags);
   iio_trigger_poll(iio->trig);
   spin_unlock_irqrestore(&adc->lock, flags);
  }
 } else if (reg & LRADC_CTRL1_LRADC_IRQ(0)) {
  complete(&adc->completion);
 }

 writel(reg & mxs_lradc_irq_mask(lradc),
        adc->base + LRADC_CTRL1 + STMP_OFFSET_REG_CLR);

 return IRQ_HANDLED;
}
