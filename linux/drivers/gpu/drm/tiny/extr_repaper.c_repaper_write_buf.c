
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const u8 ;
struct spi_device {int dummy; } ;


 int repaper_spi_transfer (struct spi_device*,int,int const*,int *,size_t) ;

__attribute__((used)) static int repaper_write_buf(struct spi_device *spi, u8 reg,
        const u8 *buf, size_t len)
{
 int ret;

 ret = repaper_spi_transfer(spi, 0x70, &reg, ((void*)0), 1);
 if (ret)
  return ret;

 return repaper_spi_transfer(spi, 0x72, buf, ((void*)0), len);
}
