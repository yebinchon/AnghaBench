
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tiadc_dma {scalar_t__ chan; } ;
struct tiadc_device {scalar_t__ total_ch_enabled; scalar_t__ buffer_en_ch_steps; int mfd_tscadc; struct tiadc_dma dma; } ;
struct iio_dev {int dummy; } ;


 int IRQENB_FIFO1OVRRUN ;
 int IRQENB_FIFO1THRES ;
 int IRQENB_FIFO1UNDRFLW ;
 int REG_DMAENABLE_CLEAR ;
 int REG_FIFO1 ;
 int REG_FIFO1CNT ;
 int REG_IRQCLR ;
 int am335x_tsc_se_clr (int ,scalar_t__) ;
 int dmaengine_terminate_async (scalar_t__) ;
 struct tiadc_device* iio_priv (struct iio_dev*) ;
 int tiadc_readl (struct tiadc_device*,int ) ;
 int tiadc_writel (struct tiadc_device*,int ,int) ;

__attribute__((used)) static int tiadc_buffer_predisable(struct iio_dev *indio_dev)
{
 struct tiadc_device *adc_dev = iio_priv(indio_dev);
 struct tiadc_dma *dma = &adc_dev->dma;
 int fifo1count, i, read;

 tiadc_writel(adc_dev, REG_IRQCLR, (IRQENB_FIFO1THRES |
    IRQENB_FIFO1OVRRUN | IRQENB_FIFO1UNDRFLW));
 am335x_tsc_se_clr(adc_dev->mfd_tscadc, adc_dev->buffer_en_ch_steps);
 adc_dev->buffer_en_ch_steps = 0;
 adc_dev->total_ch_enabled = 0;
 if (dma->chan) {
  tiadc_writel(adc_dev, REG_DMAENABLE_CLEAR, 0x2);
  dmaengine_terminate_async(dma->chan);
 }


 fifo1count = tiadc_readl(adc_dev, REG_FIFO1CNT);
 for (i = 0; i < fifo1count; i++)
  read = tiadc_readl(adc_dev, REG_FIFO1);

 return 0;
}
