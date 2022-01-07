
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int atomic_t ;


 int atomic_dec_if_positive (int *) ;
 int disable_irq_nosync (int) ;

__attribute__((used)) static void __octeon_i2c_irq_disable(atomic_t *cnt, int irq)
{
 int count;






 count = atomic_dec_if_positive(cnt);
 if (count >= 0)
  disable_irq_nosync(irq);
}
