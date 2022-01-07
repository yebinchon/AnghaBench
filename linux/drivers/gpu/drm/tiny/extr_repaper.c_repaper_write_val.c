
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct spi_device {int dummy; } ;


 int repaper_write_buf (struct spi_device*,int ,int *,int) ;

__attribute__((used)) static int repaper_write_val(struct spi_device *spi, u8 reg, u8 val)
{
 return repaper_write_buf(spi, reg, &val, 1);
}
