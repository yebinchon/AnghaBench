
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct spi_device {int dummy; } ;


 int repaper_spi_transfer (struct spi_device*,int,int *,int*,int) ;

__attribute__((used)) static int repaper_read_id(struct spi_device *spi)
{
 int ret;
 u8 id;

 ret = repaper_spi_transfer(spi, 0x71, ((void*)0), &id, 1);

 return ret ? ret : id;
}
