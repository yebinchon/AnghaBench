
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct spi_device {int dummy; } ;
struct device {int dummy; } ;


 int AD7310_COMMAND (int ) ;
 int ADT7310_CMD_READ ;
 int spi_w8r16be (struct spi_device*,int) ;
 struct spi_device* to_spi_device (struct device*) ;

__attribute__((used)) static int adt7310_spi_read_word(struct device *dev, u8 reg)
{
 struct spi_device *spi = to_spi_device(dev);

 return spi_w8r16be(spi, AD7310_COMMAND(reg) | ADT7310_CMD_READ);
}
