
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct zx2967_i2c {scalar_t__ reg_base; } ;


 int readl_relaxed (scalar_t__) ;

__attribute__((used)) static u32 zx2967_i2c_readl(struct zx2967_i2c *i2c, unsigned long reg)
{
 return readl_relaxed(i2c->reg_base + reg);
}
