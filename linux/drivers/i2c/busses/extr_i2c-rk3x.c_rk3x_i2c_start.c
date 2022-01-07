
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct rk3x_i2c {TYPE_1__* msg; int mode; } ;
struct TYPE_2__ {int flags; } ;


 int I2C_M_IGNORE_NAK ;
 int REG_CON ;
 int REG_CON_ACTACK ;
 int REG_CON_EN ;
 int REG_CON_MOD (int ) ;
 int REG_CON_START ;
 int REG_CON_TUNING_MASK ;
 int REG_IEN ;
 int REG_INT_START ;
 int i2c_readl (struct rk3x_i2c*,int ) ;
 int i2c_writel (struct rk3x_i2c*,int,int ) ;

__attribute__((used)) static void rk3x_i2c_start(struct rk3x_i2c *i2c)
{
 u32 val = i2c_readl(i2c, REG_CON) & REG_CON_TUNING_MASK;

 i2c_writel(i2c, REG_INT_START, REG_IEN);


 val |= REG_CON_EN | REG_CON_MOD(i2c->mode) | REG_CON_START;


 if (!(i2c->msg->flags & I2C_M_IGNORE_NAK))
  val |= REG_CON_ACTACK;

 i2c_writel(i2c, val, REG_CON);
}
