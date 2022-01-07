
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pm8xxx_xoadc {int complete; } ;
struct iio_dev {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int complete (int *) ;
 struct pm8xxx_xoadc* iio_priv (struct iio_dev*) ;

__attribute__((used)) static irqreturn_t pm8xxx_eoc_irq(int irq, void *d)
{
 struct iio_dev *indio_dev = d;
 struct pm8xxx_xoadc *adc = iio_priv(indio_dev);

 complete(&adc->complete);

 return IRQ_HANDLED;
}
