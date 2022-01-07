
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device_id {int name; } ;
struct spi_device {int dev; } ;


 int ad5592r_probe (int *,int ,int *) ;
 int ad5592r_rw_ops ;
 struct spi_device_id* spi_get_device_id (struct spi_device*) ;

__attribute__((used)) static int ad5592r_spi_probe(struct spi_device *spi)
{
 const struct spi_device_id *id = spi_get_device_id(spi);

 return ad5592r_probe(&spi->dev, id->name, &ad5592r_rw_ops);
}
