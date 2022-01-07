
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int dummy; } ;
struct cpumask {int dummy; } ;


 int EINVAL ;

__attribute__((used)) static int ti_sci_inta_set_affinity(struct irq_data *d,
        const struct cpumask *mask_val, bool force)
{
 return -EINVAL;
}
