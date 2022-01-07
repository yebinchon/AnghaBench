
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dummy; } ;
struct max3191x_chip {int lock; int gpio; } ;


 int gpiochip_remove (int *) ;
 int mutex_destroy (int *) ;
 struct max3191x_chip* spi_get_drvdata (struct spi_device*) ;

__attribute__((used)) static int max3191x_remove(struct spi_device *spi)
{
 struct max3191x_chip *max3191x = spi_get_drvdata(spi);

 gpiochip_remove(&max3191x->gpio);
 mutex_destroy(&max3191x->lock);

 return 0;
}
