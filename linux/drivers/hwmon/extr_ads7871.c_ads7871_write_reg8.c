
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int tmp ;
struct spi_device {int dummy; } ;


 int spi_write (struct spi_device*,int*,int) ;

__attribute__((used)) static int ads7871_write_reg8(struct spi_device *spi, int reg, u8 val)
{
 u8 tmp[2] = {reg, val};
 return spi_write(spi, tmp, sizeof(tmp));
}
