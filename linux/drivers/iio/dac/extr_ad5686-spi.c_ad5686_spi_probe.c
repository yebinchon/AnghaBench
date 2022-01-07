
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device_id {int name; int driver_data; } ;
struct spi_device {int dev; } ;


 int ad5686_probe (int *,int ,int ,int ,int ) ;
 int ad5686_spi_read ;
 int ad5686_spi_write ;
 struct spi_device_id* spi_get_device_id (struct spi_device*) ;

__attribute__((used)) static int ad5686_spi_probe(struct spi_device *spi)
{
 const struct spi_device_id *id = spi_get_device_id(spi);

 return ad5686_probe(&spi->dev, id->driver_data, id->name,
       ad5686_spi_write, ad5686_spi_read);
}
