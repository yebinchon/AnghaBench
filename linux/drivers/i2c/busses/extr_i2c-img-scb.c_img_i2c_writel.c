
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct img_i2c {scalar_t__ base; } ;


 int writel (scalar_t__,scalar_t__) ;

__attribute__((used)) static void img_i2c_writel(struct img_i2c *i2c, u32 offset, u32 value)
{
 writel(value, i2c->base + offset);
}
