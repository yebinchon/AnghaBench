
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct spi_device {int dummy; } ;


 int spi_write (struct spi_device*,int const*,int) ;

__attribute__((used)) static void repaper_spi_mosi_low(struct spi_device *spi)
{
 const u8 buf[1] = { 0 };

 spi_write(spi, buf, 1);
}
