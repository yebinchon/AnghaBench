
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ GIC_PIN_TO_VEC_OFFSET ;
 int write_gic_vl_eic_shadow_set (int,int) ;

__attribute__((used)) static void gic_bind_eic_interrupt(int irq, int set)
{

 irq -= GIC_PIN_TO_VEC_OFFSET;


 write_gic_vl_eic_shadow_set(irq, set);
}
