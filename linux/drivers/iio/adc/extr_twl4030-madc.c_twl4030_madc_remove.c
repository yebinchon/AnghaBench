
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct twl4030_madc_data {int usb3v1; } ;
struct platform_device {int dummy; } ;
struct iio_dev {int dummy; } ;


 int iio_device_unregister (struct iio_dev*) ;
 struct twl4030_madc_data* iio_priv (struct iio_dev*) ;
 struct iio_dev* platform_get_drvdata (struct platform_device*) ;
 int regulator_disable (int ) ;
 int twl4030_madc_set_current_generator (struct twl4030_madc_data*,int ,int ) ;
 int twl4030_madc_set_power (struct twl4030_madc_data*,int ) ;

__attribute__((used)) static int twl4030_madc_remove(struct platform_device *pdev)
{
 struct iio_dev *iio_dev = platform_get_drvdata(pdev);
 struct twl4030_madc_data *madc = iio_priv(iio_dev);

 iio_device_unregister(iio_dev);

 twl4030_madc_set_current_generator(madc, 0, 0);
 twl4030_madc_set_power(madc, 0);

 regulator_disable(madc->usb3v1);

 return 0;
}
