
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct iio_dev {int dummy; } ;


 int TWL6030_GPADC_RT_SW1_EOC_MASK ;
 int iio_device_unregister (struct iio_dev*) ;
 struct iio_dev* platform_get_drvdata (struct platform_device*) ;
 int twl6030_gpadc_disable_irq (int ) ;

__attribute__((used)) static int twl6030_gpadc_remove(struct platform_device *pdev)
{
 struct iio_dev *indio_dev = platform_get_drvdata(pdev);

 twl6030_gpadc_disable_irq(TWL6030_GPADC_RT_SW1_EOC_MASK);
 iio_device_unregister(indio_dev);

 return 0;
}
