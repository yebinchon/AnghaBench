
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct octeon_i2c {int irq; int int_enable_cnt; } ;


 int __octeon_i2c_irq_disable (int *,int ) ;

__attribute__((used)) static void octeon_i2c_int_disable78(struct octeon_i2c *i2c)
{
 __octeon_i2c_irq_disable(&i2c->int_enable_cnt, i2c->irq);
}
