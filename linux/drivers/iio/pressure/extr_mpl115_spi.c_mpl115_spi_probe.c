
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device_id {int name; } ;
struct spi_device {int dev; } ;


 int mpl115_probe (int *,int ,int *) ;
 int mpl115_spi_ops ;
 struct spi_device_id* spi_get_device_id (struct spi_device*) ;

__attribute__((used)) static int mpl115_spi_probe(struct spi_device *spi)
{
 const struct spi_device_id *id = spi_get_device_id(spi);

 return mpl115_probe(&spi->dev, id->name, &mpl115_spi_ops);
}
