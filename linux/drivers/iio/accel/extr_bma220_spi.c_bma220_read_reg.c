
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct spi_device {int dummy; } ;


 int BMA220_READ_MASK ;
 int spi_w8r8 (struct spi_device*,int) ;

__attribute__((used)) static inline int bma220_read_reg(struct spi_device *spi, u8 reg)
{
 return spi_w8r8(spi, reg | BMA220_READ_MASK);
}
