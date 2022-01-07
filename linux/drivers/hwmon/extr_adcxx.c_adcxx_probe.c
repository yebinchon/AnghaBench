
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct spi_device {int dev; } ;
struct adcxx {int reference; int channels; int lock; int hwmon_dev; } ;
struct TYPE_4__ {int dev_attr; } ;
struct TYPE_3__ {int driver_data; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 TYPE_2__* ad_input ;
 int dev_err (int *,char*) ;
 int device_create_file (int *,int *) ;
 int device_remove_file (int *,int *) ;
 struct adcxx* devm_kzalloc (int *,int,int ) ;
 int hwmon_device_register (int *) ;
 int mutex_init (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 TYPE_1__* spi_get_device_id (struct spi_device*) ;
 int spi_set_drvdata (struct spi_device*,struct adcxx*) ;

__attribute__((used)) static int adcxx_probe(struct spi_device *spi)
{
 int channels = spi_get_device_id(spi)->driver_data;
 struct adcxx *adc;
 int status;
 int i;

 adc = devm_kzalloc(&spi->dev, sizeof(*adc), GFP_KERNEL);
 if (!adc)
  return -ENOMEM;


 adc->reference = 3300;
 adc->channels = channels;
 mutex_init(&adc->lock);

 mutex_lock(&adc->lock);

 spi_set_drvdata(spi, adc);

 for (i = 0; i < 3 + adc->channels; i++) {
  status = device_create_file(&spi->dev, &ad_input[i].dev_attr);
  if (status) {
   dev_err(&spi->dev, "device_create_file failed.\n");
   goto out_err;
  }
 }

 adc->hwmon_dev = hwmon_device_register(&spi->dev);
 if (IS_ERR(adc->hwmon_dev)) {
  dev_err(&spi->dev, "hwmon_device_register failed.\n");
  status = PTR_ERR(adc->hwmon_dev);
  goto out_err;
 }

 mutex_unlock(&adc->lock);
 return 0;

out_err:
 for (i--; i >= 0; i--)
  device_remove_file(&spi->dev, &ad_input[i].dev_attr);

 mutex_unlock(&adc->lock);
 return status;
}
