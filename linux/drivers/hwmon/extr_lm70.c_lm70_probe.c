
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct spi_device {int mode; int modalias; int dev; } ;
struct of_device_id {scalar_t__ data; } ;
struct lm70 {int chip; struct spi_device* spi; int lock; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int driver_data; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int PTR_ERR_OR_ZERO (struct device*) ;
 int SPI_CPHA ;
 int SPI_CPOL ;
 struct device* devm_hwmon_device_register_with_groups (int *,int ,struct lm70*,int ) ;
 struct lm70* devm_kzalloc (int *,int,int ) ;
 int lm70_groups ;
 int lm70_of_ids ;
 int mutex_init (int *) ;
 struct of_device_id* of_match_device (int ,int *) ;
 TYPE_1__* spi_get_device_id (struct spi_device*) ;

__attribute__((used)) static int lm70_probe(struct spi_device *spi)
{
 const struct of_device_id *match;
 struct device *hwmon_dev;
 struct lm70 *p_lm70;
 int chip;

 match = of_match_device(lm70_of_ids, &spi->dev);
 if (match)
  chip = (int)(uintptr_t)match->data;
 else
  chip = spi_get_device_id(spi)->driver_data;


 if (spi->mode & (SPI_CPOL | SPI_CPHA))
  return -EINVAL;



 p_lm70 = devm_kzalloc(&spi->dev, sizeof(*p_lm70), GFP_KERNEL);
 if (!p_lm70)
  return -ENOMEM;

 mutex_init(&p_lm70->lock);
 p_lm70->chip = chip;
 p_lm70->spi = spi;

 hwmon_dev = devm_hwmon_device_register_with_groups(&spi->dev,
          spi->modalias,
          p_lm70, lm70_groups);
 return PTR_ERR_OR_ZERO(hwmon_dev);
}
