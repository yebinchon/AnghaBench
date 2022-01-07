
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device_id {int driver_data; int name; } ;
struct spi_device {int irq; int dev; } ;
struct ad7606_bus_ops {int dummy; } ;




 struct ad7606_bus_ops ad7606B_spi_bops ;
 int ad7606_probe (int *,int ,int *,int ,int,struct ad7606_bus_ops const*) ;
 struct ad7606_bus_ops ad7606_spi_bops ;
 struct ad7606_bus_ops ad7616_spi_bops ;
 struct spi_device_id* spi_get_device_id (struct spi_device*) ;

__attribute__((used)) static int ad7606_spi_probe(struct spi_device *spi)
{
 const struct spi_device_id *id = spi_get_device_id(spi);
 const struct ad7606_bus_ops *bops;

 switch (id->driver_data) {
 case 128:
  bops = &ad7616_spi_bops;
  break;
 case 129:
  bops = &ad7606B_spi_bops;
  break;
 default:
  bops = &ad7606_spi_bops;
  break;
 }

 return ad7606_probe(&spi->dev, spi->irq, ((void*)0),
       id->name, id->driver_data,
       bops);
}
