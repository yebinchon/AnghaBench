
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct aspeed_i2c_bus {int (* get_clk_reg_val ) (int ,int) ;scalar_t__ base; int dev; int bus_frequency; int parent_clk_frequency; } ;


 int ASPEED_I2CD_TIME_TACST_MASK ;
 int ASPEED_I2CD_TIME_TBUF_MASK ;
 int ASPEED_I2CD_TIME_THDSTA_MASK ;
 scalar_t__ ASPEED_I2C_AC_TIMING_REG1 ;
 scalar_t__ ASPEED_I2C_AC_TIMING_REG2 ;
 int ASPEED_NO_TIMEOUT_CTRL ;
 int DIV_ROUND_UP (int ,int ) ;
 int readl (scalar_t__) ;
 int stub1 (int ,int) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int aspeed_i2c_init_clk(struct aspeed_i2c_bus *bus)
{
 u32 divisor, clk_reg_val;

 divisor = DIV_ROUND_UP(bus->parent_clk_frequency, bus->bus_frequency);
 clk_reg_val = readl(bus->base + ASPEED_I2C_AC_TIMING_REG1);
 clk_reg_val &= (ASPEED_I2CD_TIME_TBUF_MASK |
   ASPEED_I2CD_TIME_THDSTA_MASK |
   ASPEED_I2CD_TIME_TACST_MASK);
 clk_reg_val |= bus->get_clk_reg_val(bus->dev, divisor);
 writel(clk_reg_val, bus->base + ASPEED_I2C_AC_TIMING_REG1);
 writel(ASPEED_NO_TIMEOUT_CTRL, bus->base + ASPEED_I2C_AC_TIMING_REG2);

 return 0;
}
