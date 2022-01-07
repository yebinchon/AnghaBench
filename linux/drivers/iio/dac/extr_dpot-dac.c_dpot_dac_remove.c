
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct iio_dev {int dummy; } ;
struct dpot_dac {int vref; } ;


 int iio_device_unregister (struct iio_dev*) ;
 struct dpot_dac* iio_priv (struct iio_dev*) ;
 struct iio_dev* platform_get_drvdata (struct platform_device*) ;
 int regulator_disable (int ) ;

__attribute__((used)) static int dpot_dac_remove(struct platform_device *pdev)
{
 struct iio_dev *indio_dev = platform_get_drvdata(pdev);
 struct dpot_dac *dac = iio_priv(indio_dev);

 iio_device_unregister(indio_dev);
 regulator_disable(dac->vref);

 return 0;
}
