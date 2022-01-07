
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct zx2967_i2c {scalar_t__ msg_rd; } ;


 int I2C_RFIFO_RESET ;
 int I2C_WFIFO_RESET ;
 int REG_RDCONF ;
 int REG_WRCONF ;
 int zx2967_i2c_readl (struct zx2967_i2c*,int ) ;
 int zx2967_i2c_writel (struct zx2967_i2c*,int ,int ) ;

__attribute__((used)) static void zx2967_i2c_flush_fifos(struct zx2967_i2c *i2c)
{
 u32 offset;
 u32 val;

 if (i2c->msg_rd) {
  offset = REG_RDCONF;
  val = I2C_RFIFO_RESET;
 } else {
  offset = REG_WRCONF;
  val = I2C_WFIFO_RESET;
 }

 val |= zx2967_i2c_readl(i2c, offset);
 zx2967_i2c_writel(i2c, val, offset);
}
