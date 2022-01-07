
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct z188_adc {int mem; int base; } ;
struct mcb_device {int dummy; } ;
struct iio_dev {int dummy; } ;


 int iio_device_unregister (struct iio_dev*) ;
 struct z188_adc* iio_priv (struct iio_dev*) ;
 int iounmap (int ) ;
 struct iio_dev* mcb_get_drvdata (struct mcb_device*) ;
 int mcb_release_mem (int ) ;

__attribute__((used)) static void men_z188_remove(struct mcb_device *dev)
{
 struct iio_dev *indio_dev = mcb_get_drvdata(dev);
 struct z188_adc *adc = iio_priv(indio_dev);

 iio_device_unregister(indio_dev);
 iounmap(adc->base);
 mcb_release_mem(adc->mem);
}
