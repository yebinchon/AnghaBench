
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dev; } ;


 int zpa2326_remove (int *) ;

__attribute__((used)) static int zpa2326_remove_spi(struct spi_device *spi)
{
 zpa2326_remove(&spi->dev);

 return 0;
}
