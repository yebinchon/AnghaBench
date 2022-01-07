
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct spi_device {int dev; } ;
struct adcxx {int channels; int lock; int hwmon_dev; } ;
struct TYPE_2__ {int dev_attr; } ;


 TYPE_1__* ad_input ;
 int device_remove_file (int *,int *) ;
 int hwmon_device_unregister (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct adcxx* spi_get_drvdata (struct spi_device*) ;

__attribute__((used)) static int adcxx_remove(struct spi_device *spi)
{
 struct adcxx *adc = spi_get_drvdata(spi);
 int i;

 mutex_lock(&adc->lock);
 hwmon_device_unregister(adc->hwmon_dev);
 for (i = 0; i < 3 + adc->channels; i++)
  device_remove_file(&spi->dev, &ad_input[i].dev_attr);

 mutex_unlock(&adc->lock);

 return 0;
}
