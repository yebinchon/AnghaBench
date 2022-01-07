
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct octeon_i2c {int irq; int int_enable_cnt; } ;


 int atomic_inc_return (int *) ;
 int enable_irq (int ) ;

__attribute__((used)) static void octeon_i2c_int_enable78(struct octeon_i2c *i2c)
{
 atomic_inc_return(&i2c->int_enable_cnt);
 enable_irq(i2c->irq);
}
