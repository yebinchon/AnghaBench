
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct spi_device {int dummy; } ;


 int repaper_spi_transfer (struct spi_device*,int,int*,int*,int) ;

__attribute__((used)) static int repaper_read_val(struct spi_device *spi, u8 reg)
{
 int ret;
 u8 val;

 ret = repaper_spi_transfer(spi, 0x70, &reg, ((void*)0), 1);
 if (ret)
  return ret;

 ret = repaper_spi_transfer(spi, 0x73, ((void*)0), &val, 1);

 return ret ? ret : val;
}
