
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned char u8 ;
struct nl8048_panel {TYPE_1__* spi; } ;
typedef int data ;
struct TYPE_2__ {int dev; } ;


 int dev_err (int *,char*,unsigned char,int) ;
 int spi_write (TYPE_1__*,unsigned char*,int) ;

__attribute__((used)) static int nl8048_write(struct nl8048_panel *lcd, unsigned char addr,
   unsigned char value)
{
 u8 data[4] = { value, 0x01, addr, 0x00 };
 int ret;

 ret = spi_write(lcd->spi, data, sizeof(data));
 if (ret)
  dev_err(&lcd->spi->dev, "SPI write to %u failed: %d\n",
   addr, ret);

 return ret;
}
