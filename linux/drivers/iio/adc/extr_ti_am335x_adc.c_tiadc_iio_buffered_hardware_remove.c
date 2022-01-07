
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tiadc_device {TYPE_1__* mfd_tscadc; } ;
struct iio_dev {int buffer; } ;
struct TYPE_2__ {int irq; } ;


 int free_irq (int ,struct iio_dev*) ;
 int iio_kfifo_free (int ) ;
 struct tiadc_device* iio_priv (struct iio_dev*) ;

__attribute__((used)) static void tiadc_iio_buffered_hardware_remove(struct iio_dev *indio_dev)
{
 struct tiadc_device *adc_dev = iio_priv(indio_dev);

 free_irq(adc_dev->mfd_tscadc->irq, indio_dev);
 iio_kfifo_free(indio_dev->buffer);
}
