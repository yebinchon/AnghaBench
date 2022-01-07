
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rk3x_i2c {int dummy; } ;


 int REG_INT_ALL ;
 int REG_IPD ;
 int i2c_writel (struct rk3x_i2c*,int ,int ) ;

__attribute__((used)) static inline void rk3x_i2c_clean_ipd(struct rk3x_i2c *i2c)
{
 i2c_writel(i2c, REG_INT_ALL, REG_IPD);
}
