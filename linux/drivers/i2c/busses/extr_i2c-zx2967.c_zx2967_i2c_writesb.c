
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zx2967_i2c {scalar_t__ reg_base; } ;


 int writesb (scalar_t__,void*,int) ;

__attribute__((used)) static void zx2967_i2c_writesb(struct zx2967_i2c *i2c,
          void *data, unsigned long reg, int len)
{
 writesb(i2c->reg_base + reg, data, len);
}
