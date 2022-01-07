
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct iio_dev {int dummy; } ;


 int DLN2_ADC_CONDITION_MET_EV ;
 int dln2_unregister_event_cb (struct platform_device*,int ) ;
 int iio_device_unregister (struct iio_dev*) ;
 struct iio_dev* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int dln2_adc_remove(struct platform_device *pdev)
{
 struct iio_dev *indio_dev = platform_get_drvdata(pdev);

 iio_device_unregister(indio_dev);
 dln2_unregister_event_cb(pdev, DLN2_ADC_CONDITION_MET_EV);
 return 0;
}
