
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct spi_device {int dummy; } ;


 int spi_write (struct spi_device*,void const*,int) ;

__attribute__((used)) static int max5487_write_cmd(struct spi_device *spi, u16 cmd)
{
 return spi_write(spi, (const void *) &cmd, sizeof(u16));
}
