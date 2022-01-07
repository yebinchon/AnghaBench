
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int irq_remap_broken ;

void set_irq_remapping_broken(void)
{
 irq_remap_broken = 1;
}
