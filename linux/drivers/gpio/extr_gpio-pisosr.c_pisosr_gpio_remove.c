
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dummy; } ;
struct pisosr_gpio {int lock; int chip; } ;


 int gpiochip_remove (int *) ;
 int mutex_destroy (int *) ;
 struct pisosr_gpio* spi_get_drvdata (struct spi_device*) ;

__attribute__((used)) static int pisosr_gpio_remove(struct spi_device *spi)
{
 struct pisosr_gpio *gpio = spi_get_drvdata(spi);

 gpiochip_remove(&gpio->chip);

 mutex_destroy(&gpio->lock);

 return 0;
}
