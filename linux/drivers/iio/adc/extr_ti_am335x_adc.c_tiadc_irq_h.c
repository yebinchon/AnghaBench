
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tiadc_device {int dummy; } ;
struct iio_dev {int dummy; } ;
typedef int irqreturn_t ;


 unsigned int CNTRLREG_TSCSSENB ;
 unsigned int IRQENB_FIFO1OVRRUN ;
 unsigned int IRQENB_FIFO1THRES ;
 unsigned int IRQENB_FIFO1UNDRFLW ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int IRQ_WAKE_THREAD ;
 int REG_ADCFSM ;
 int REG_CTRL ;
 int REG_IRQCLR ;
 int REG_IRQSTATUS ;
 struct tiadc_device* iio_priv (struct iio_dev*) ;
 unsigned int tiadc_readl (struct tiadc_device*,int ) ;
 int tiadc_writel (struct tiadc_device*,int ,unsigned int) ;

__attribute__((used)) static irqreturn_t tiadc_irq_h(int irq, void *private)
{
 struct iio_dev *indio_dev = private;
 struct tiadc_device *adc_dev = iio_priv(indio_dev);
 unsigned int status, config, adc_fsm;
 unsigned short count = 0;

 status = tiadc_readl(adc_dev, REG_IRQSTATUS);





 if (status & IRQENB_FIFO1OVRRUN) {

  config = tiadc_readl(adc_dev, REG_CTRL);
  config &= ~(CNTRLREG_TSCSSENB);
  tiadc_writel(adc_dev, REG_CTRL, config);
  tiadc_writel(adc_dev, REG_IRQSTATUS, IRQENB_FIFO1OVRRUN
    | IRQENB_FIFO1UNDRFLW | IRQENB_FIFO1THRES);





  do {
   adc_fsm = tiadc_readl(adc_dev, REG_ADCFSM);
  } while (adc_fsm != 0x10 && count++ < 100);

  tiadc_writel(adc_dev, REG_CTRL, (config | CNTRLREG_TSCSSENB));
  return IRQ_HANDLED;
 } else if (status & IRQENB_FIFO1THRES) {

  tiadc_writel(adc_dev, REG_IRQCLR, IRQENB_FIFO1THRES);
  return IRQ_WAKE_THREAD;
 }

 return IRQ_NONE;
}
