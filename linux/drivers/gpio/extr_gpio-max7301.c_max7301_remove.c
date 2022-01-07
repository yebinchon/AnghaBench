
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dev; } ;


 int __max730x_remove (int *) ;

__attribute__((used)) static int max7301_remove(struct spi_device *spi)
{
 return __max730x_remove(&spi->dev);
}
