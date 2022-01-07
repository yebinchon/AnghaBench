
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int irq; int dev; } ;


 int adt7x10_remove (int *,int ) ;

__attribute__((used)) static int adt7310_spi_remove(struct spi_device *spi)
{
 return adt7x10_remove(&spi->dev, spi->irq);
}
