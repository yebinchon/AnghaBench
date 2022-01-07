
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dev; } ;


 int bmc150_magn_remove (int *) ;

__attribute__((used)) static int bmc150_magn_spi_remove(struct spi_device *spi)
{
 bmc150_magn_remove(&spi->dev);

 return 0;
}
