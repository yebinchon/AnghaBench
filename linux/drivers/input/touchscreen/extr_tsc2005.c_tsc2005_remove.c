
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dev; } ;


 int tsc200x_remove (int *) ;

__attribute__((used)) static int tsc2005_remove(struct spi_device *spi)
{
 return tsc200x_remove(&spi->dev);
}
