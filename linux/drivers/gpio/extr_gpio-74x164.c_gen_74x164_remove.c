
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dummy; } ;
struct gen_74x164_chip {int lock; int gpio_chip; int gpiod_oe; } ;


 int gpiochip_remove (int *) ;
 int gpiod_set_value_cansleep (int ,int ) ;
 int mutex_destroy (int *) ;
 struct gen_74x164_chip* spi_get_drvdata (struct spi_device*) ;

__attribute__((used)) static int gen_74x164_remove(struct spi_device *spi)
{
 struct gen_74x164_chip *chip = spi_get_drvdata(spi);

 gpiod_set_value_cansleep(chip->gpiod_oe, 0);
 gpiochip_remove(&chip->gpio_chip);
 mutex_destroy(&chip->lock);

 return 0;
}
