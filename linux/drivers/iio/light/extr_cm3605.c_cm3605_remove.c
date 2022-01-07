
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct iio_dev {int dummy; } ;
struct cm3605 {int vdd; int aset; int led; } ;


 int LED_OFF ;
 int gpiod_set_value_cansleep (int ,int ) ;
 int iio_device_unregister (struct iio_dev*) ;
 struct cm3605* iio_priv (struct iio_dev*) ;
 int led_trigger_event (int ,int ) ;
 int led_trigger_unregister_simple (int ) ;
 struct iio_dev* platform_get_drvdata (struct platform_device*) ;
 int regulator_disable (int ) ;

__attribute__((used)) static int cm3605_remove(struct platform_device *pdev)
{
 struct iio_dev *indio_dev = platform_get_drvdata(pdev);
 struct cm3605 *cm3605 = iio_priv(indio_dev);

 led_trigger_event(cm3605->led, LED_OFF);
 led_trigger_unregister_simple(cm3605->led);
 gpiod_set_value_cansleep(cm3605->aset, 0);
 iio_device_unregister(indio_dev);
 regulator_disable(cm3605->vdd);

 return 0;
}
