
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dev; } ;


 int bmg160_core_remove (int *) ;

__attribute__((used)) static int bmg160_spi_remove(struct spi_device *spi)
{
 bmg160_core_remove(&spi->dev);

 return 0;
}
