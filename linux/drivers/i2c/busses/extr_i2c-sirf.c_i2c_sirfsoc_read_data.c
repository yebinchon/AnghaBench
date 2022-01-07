
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
struct sirfsoc_i2c {int read_cmd_len; int finished_len; scalar_t__* buf; scalar_t__ base; } ;


 scalar_t__ SIRFSOC_I2C_DATA_BUF ;
 int SIRFSOC_I2C_DATA_MASK (int) ;
 int SIRFSOC_I2C_DATA_SHIFT (int) ;
 int readl (scalar_t__) ;

__attribute__((used)) static void i2c_sirfsoc_read_data(struct sirfsoc_i2c *siic)
{
 u32 data = 0;
 int i;

 for (i = 0; i < siic->read_cmd_len; i++) {
  if (!(i & 0x3))
   data = readl(siic->base + SIRFSOC_I2C_DATA_BUF + i);
  siic->buf[siic->finished_len++] =
   (u8)((data & SIRFSOC_I2C_DATA_MASK(i)) >>
    SIRFSOC_I2C_DATA_SHIFT(i));
 }
}
