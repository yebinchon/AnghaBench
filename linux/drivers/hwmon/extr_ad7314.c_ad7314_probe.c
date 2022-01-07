
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int modalias; int dev; } ;
struct device {int dummy; } ;
struct ad7314_data {struct spi_device* spi_dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int PTR_ERR_OR_ZERO (struct device*) ;
 int ad7314_groups ;
 struct device* devm_hwmon_device_register_with_groups (int *,int ,struct ad7314_data*,int ) ;
 struct ad7314_data* devm_kzalloc (int *,int,int ) ;

__attribute__((used)) static int ad7314_probe(struct spi_device *spi_dev)
{
 struct ad7314_data *chip;
 struct device *hwmon_dev;

 chip = devm_kzalloc(&spi_dev->dev, sizeof(*chip), GFP_KERNEL);
 if (chip == ((void*)0))
  return -ENOMEM;

 chip->spi_dev = spi_dev;
 hwmon_dev = devm_hwmon_device_register_with_groups(&spi_dev->dev,
          spi_dev->modalias,
          chip, ad7314_groups);
 return PTR_ERR_OR_ZERO(hwmon_dev);
}
