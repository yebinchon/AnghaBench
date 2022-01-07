
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tiadc_device {int dummy; } ;
struct iio_dev {int dummy; } ;


 int IRQENB_FIFO1OVRRUN ;
 int IRQENB_FIFO1THRES ;
 int IRQENB_FIFO1UNDRFLW ;
 int REG_FIFO1 ;
 int REG_FIFO1CNT ;
 int REG_IRQCLR ;
 struct tiadc_device* iio_priv (struct iio_dev*) ;
 int tiadc_readl (struct tiadc_device*,int ) ;
 int tiadc_writel (struct tiadc_device*,int ,int) ;

__attribute__((used)) static int tiadc_buffer_preenable(struct iio_dev *indio_dev)
{
 struct tiadc_device *adc_dev = iio_priv(indio_dev);
 int i, fifo1count, read;

 tiadc_writel(adc_dev, REG_IRQCLR, (IRQENB_FIFO1THRES |
    IRQENB_FIFO1OVRRUN |
    IRQENB_FIFO1UNDRFLW));


 fifo1count = tiadc_readl(adc_dev, REG_FIFO1CNT);
 for (i = 0; i < fifo1count; i++)
  read = tiadc_readl(adc_dev, REG_FIFO1);

 return 0;
}
