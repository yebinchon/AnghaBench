
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct zx2967_i2c {int clk_freq; int clk; } ;


 int I2C_FIFO_MAX ;
 int I2C_IRQ_MSK_ENABLE ;
 int I2C_MASTER ;
 int REG_CLK_DIV_FS ;
 int REG_CLK_DIV_HS ;
 int REG_CMD ;
 int REG_RDCONF ;
 int REG_WRCONF ;
 int clk_get_rate (int ) ;
 int zx2967_i2c_flush_fifos (struct zx2967_i2c*) ;
 int zx2967_i2c_writel (struct zx2967_i2c*,int,int ) ;

__attribute__((used)) static int zx2967_i2c_reset_hardware(struct zx2967_i2c *i2c)
{
 u32 val;
 u32 clk_div;

 val = I2C_MASTER | I2C_IRQ_MSK_ENABLE;
 zx2967_i2c_writel(i2c, val, REG_CMD);

 clk_div = clk_get_rate(i2c->clk) / i2c->clk_freq - 1;
 zx2967_i2c_writel(i2c, clk_div, REG_CLK_DIV_FS);
 zx2967_i2c_writel(i2c, clk_div, REG_CLK_DIV_HS);

 zx2967_i2c_writel(i2c, I2C_FIFO_MAX - 1, REG_WRCONF);
 zx2967_i2c_writel(i2c, I2C_FIFO_MAX - 1, REG_RDCONF);
 zx2967_i2c_writel(i2c, 1, REG_RDCONF);

 zx2967_i2c_flush_fifos(i2c);

 return 0;
}
