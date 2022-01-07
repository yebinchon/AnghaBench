
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct zx2967_i2c {scalar_t__ reg_base; } ;


 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static void zx2967_i2c_writel(struct zx2967_i2c *i2c,
         u32 val, unsigned long reg)
{
 writel_relaxed(val, i2c->reg_base + reg);
}
