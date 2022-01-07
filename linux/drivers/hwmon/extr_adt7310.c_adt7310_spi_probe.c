
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct spi_device {int irq; int dev; } ;
struct TYPE_2__ {int name; } ;


 int adt7310_spi_ops ;
 int adt7x10_probe (int *,int ,int ,int *) ;
 TYPE_1__* spi_get_device_id (struct spi_device*) ;

__attribute__((used)) static int adt7310_spi_probe(struct spi_device *spi)
{
 return adt7x10_probe(&spi->dev, spi_get_device_id(spi)->name, spi->irq,
   &adt7310_spi_ops);
}
