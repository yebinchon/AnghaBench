
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union i2c_smbus_data {int byte; int word; } ;
typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct zx2967_i2c {int dummy; } ;


 int I2C_RFIFO_RESET ;
 int I2C_RW_READ ;



 char I2C_SMBUS_WRITE ;
 int REG_CMD ;
 int REG_DATA ;
 int REG_RDCONF ;
 int zx2967_i2c_readl (struct zx2967_i2c*,int ) ;
 int zx2967_i2c_writel (struct zx2967_i2c*,int,int ) ;
 int zx2967_set_addr (struct zx2967_i2c*,int ) ;

__attribute__((used)) static void
zx2967_smbus_xfer_prepare(struct zx2967_i2c *i2c, u16 addr,
     char read_write, u8 command, int size,
     union i2c_smbus_data *data)
{
 u32 val;

 val = zx2967_i2c_readl(i2c, REG_RDCONF);
 val |= I2C_RFIFO_RESET;
 zx2967_i2c_writel(i2c, val, REG_RDCONF);
 zx2967_set_addr(i2c, addr);
 val = zx2967_i2c_readl(i2c, REG_CMD);
 val &= ~I2C_RW_READ;
 zx2967_i2c_writel(i2c, val, REG_CMD);

 switch (size) {
 case 130:
  zx2967_i2c_writel(i2c, command, REG_DATA);
  break;
 case 129:
  zx2967_i2c_writel(i2c, command, REG_DATA);
  if (read_write == I2C_SMBUS_WRITE)
   zx2967_i2c_writel(i2c, data->byte, REG_DATA);
  break;
 case 128:
  zx2967_i2c_writel(i2c, command, REG_DATA);
  if (read_write == I2C_SMBUS_WRITE) {
   zx2967_i2c_writel(i2c, (data->word >> 8), REG_DATA);
   zx2967_i2c_writel(i2c, (data->word & 0xff),
       REG_DATA);
  }
  break;
 }
}
