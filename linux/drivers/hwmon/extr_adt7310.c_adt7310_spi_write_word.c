
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct spi_device {int dummy; } ;
struct device {int dummy; } ;
typedef int buf ;


 int AD7310_COMMAND (int ) ;
 int put_unaligned_be16 (int ,int *) ;
 int spi_write (struct spi_device*,int *,int) ;
 struct spi_device* to_spi_device (struct device*) ;

__attribute__((used)) static int adt7310_spi_write_word(struct device *dev, u8 reg, u16 data)
{
 struct spi_device *spi = to_spi_device(dev);
 u8 buf[3];

 buf[0] = AD7310_COMMAND(reg);
 put_unaligned_be16(data, &buf[1]);

 return spi_write(spi, buf, sizeof(buf));
}
