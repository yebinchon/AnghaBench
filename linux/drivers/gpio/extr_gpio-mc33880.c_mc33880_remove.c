
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dummy; } ;
struct mc33880 {int lock; int chip; } ;


 int ENODEV ;
 int gpiochip_remove (int *) ;
 int mutex_destroy (int *) ;
 struct mc33880* spi_get_drvdata (struct spi_device*) ;

__attribute__((used)) static int mc33880_remove(struct spi_device *spi)
{
 struct mc33880 *mc;

 mc = spi_get_drvdata(spi);
 if (!mc)
  return -ENODEV;

 gpiochip_remove(&mc->chip);
 mutex_destroy(&mc->lock);

 return 0;
}
