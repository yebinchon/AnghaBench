
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct platform_device {int dummy; } ;
struct iio_dev {int dummy; } ;
struct dln2_adc {int trig; } ;


 struct dln2_adc* iio_priv (struct iio_dev*) ;
 int iio_trigger_poll (int ) ;
 struct iio_dev* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static void dln2_adc_event(struct platform_device *pdev, u16 echo,
      const void *data, int len)
{
 struct iio_dev *indio_dev = platform_get_drvdata(pdev);
 struct dln2_adc *dln2 = iio_priv(indio_dev);


 iio_trigger_poll(dln2->trig);
}
