
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int word ;
typedef unsigned int u16 ;
struct spi_device {int dummy; } ;
struct device {int dummy; } ;


 int spi_write_then_read (struct spi_device*,unsigned int*,int,int *,int ) ;
 struct spi_device* to_spi_device (struct device*) ;

__attribute__((used)) static int max7301_spi_write(struct device *dev, unsigned int reg,
    unsigned int val)
{
 struct spi_device *spi = to_spi_device(dev);
 u16 word = ((reg & 0x7F) << 8) | (val & 0xFF);

 return spi_write_then_read(spi, &word, sizeof(word), ((void*)0), 0);
}
