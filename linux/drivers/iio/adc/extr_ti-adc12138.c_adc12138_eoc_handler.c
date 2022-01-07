
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct adc12138 {int complete; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int complete (int *) ;
 struct adc12138* iio_priv (struct iio_dev*) ;

__attribute__((used)) static irqreturn_t adc12138_eoc_handler(int irq, void *p)
{
 struct iio_dev *indio_dev = p;
 struct adc12138 *adc = iio_priv(indio_dev);

 complete(&adc->complete);

 return IRQ_HANDLED;
}
