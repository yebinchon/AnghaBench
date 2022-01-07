
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rk3x_i2c {scalar_t__ regs; } ;


 int writel (int ,scalar_t__) ;

__attribute__((used)) static inline void i2c_writel(struct rk3x_i2c *i2c, u32 value,
         unsigned int offset)
{
 writel(value, i2c->regs + offset);
}
