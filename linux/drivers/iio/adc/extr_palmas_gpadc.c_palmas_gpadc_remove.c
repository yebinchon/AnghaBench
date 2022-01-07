
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct palmas_gpadc {int irq_auto_1; scalar_t__ wakeup2_enable; int irq_auto_0; scalar_t__ wakeup1_enable; int irq; } ;
struct iio_dev {int dummy; } ;


 struct iio_dev* dev_to_iio_dev (int *) ;
 int device_wakeup_disable (int *) ;
 int free_irq (int ,struct palmas_gpadc*) ;
 int iio_device_unregister (struct iio_dev*) ;
 struct palmas_gpadc* iio_priv (struct iio_dev*) ;

__attribute__((used)) static int palmas_gpadc_remove(struct platform_device *pdev)
{
 struct iio_dev *indio_dev = dev_to_iio_dev(&pdev->dev);
 struct palmas_gpadc *adc = iio_priv(indio_dev);

 if (adc->wakeup1_enable || adc->wakeup2_enable)
  device_wakeup_disable(&pdev->dev);
 iio_device_unregister(indio_dev);
 free_irq(adc->irq, adc);
 if (adc->wakeup1_enable)
  free_irq(adc->irq_auto_0, adc);
 if (adc->wakeup2_enable)
  free_irq(adc->irq_auto_1, adc);

 return 0;
}
