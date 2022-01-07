
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pm8xxx_xoadc {int vref; } ;
struct platform_device {int dummy; } ;
struct iio_dev {int dummy; } ;


 int iio_device_unregister (struct iio_dev*) ;
 struct pm8xxx_xoadc* iio_priv (struct iio_dev*) ;
 struct iio_dev* platform_get_drvdata (struct platform_device*) ;
 int regulator_disable (int ) ;

__attribute__((used)) static int pm8xxx_xoadc_remove(struct platform_device *pdev)
{
 struct iio_dev *indio_dev = platform_get_drvdata(pdev);
 struct pm8xxx_xoadc *adc = iio_priv(indio_dev);

 iio_device_unregister(indio_dev);

 regulator_disable(adc->vref);

 return 0;
}
