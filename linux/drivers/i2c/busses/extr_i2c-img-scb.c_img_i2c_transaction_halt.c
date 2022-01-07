
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct img_i2c {int t_halt; } ;


 int SCB_CONTROL_REG ;
 int SCB_CONTROL_TRANSACTION_HALT ;
 int img_i2c_readl (struct img_i2c*,int ) ;
 int img_i2c_writel (struct img_i2c*,int ,int ) ;

__attribute__((used)) static void img_i2c_transaction_halt(struct img_i2c *i2c, bool t_halt)
{
 u32 val;

 if (i2c->t_halt == t_halt)
  return;
 i2c->t_halt = t_halt;
 val = img_i2c_readl(i2c, SCB_CONTROL_REG);
 if (t_halt)
  val |= SCB_CONTROL_TRANSACTION_HALT;
 else
  val &= ~SCB_CONTROL_TRANSACTION_HALT;
 img_i2c_writel(i2c, SCB_CONTROL_REG, val);
}
