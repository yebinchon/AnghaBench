
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u32 ;
struct TYPE_4__ {int* col_map; } ;
struct its_device {TYPE_2__ event_map; TYPE_1__* its; } ;
struct irq_domain {int dummy; } ;
struct irq_data {int hwirq; } ;
struct cpumask {int dummy; } ;
struct TYPE_3__ {scalar_t__ numa_node; int flags; } ;


 int EINVAL ;
 int ITS_FLAGS_WORKAROUND_CAVIUM_23144 ;
 struct cpumask* cpu_online_mask ;
 int cpumask_first (struct cpumask*) ;
 int cpumask_first_and (struct cpumask const*,struct cpumask*) ;
 int cpumask_of (int) ;
 struct cpumask* cpumask_of_node (scalar_t__) ;
 struct its_device* irq_data_get_irq_chip_data (struct irq_data*) ;
 int irq_data_update_effective_affinity (struct irq_data*,int ) ;
 size_t its_get_event_id (struct irq_data*) ;
 int its_send_mapti (struct its_device*,int ,size_t) ;
 int nr_cpu_ids ;

__attribute__((used)) static int its_irq_domain_activate(struct irq_domain *domain,
       struct irq_data *d, bool reserve)
{
 struct its_device *its_dev = irq_data_get_irq_chip_data(d);
 u32 event = its_get_event_id(d);
 const struct cpumask *cpu_mask = cpu_online_mask;
 int cpu;


 if (its_dev->its->numa_node >= 0)
  cpu_mask = cpumask_of_node(its_dev->its->numa_node);


 cpu = cpumask_first_and(cpu_mask, cpu_online_mask);
 if (cpu >= nr_cpu_ids) {
  if (its_dev->its->flags & ITS_FLAGS_WORKAROUND_CAVIUM_23144)
   return -EINVAL;

  cpu = cpumask_first(cpu_online_mask);
 }

 its_dev->event_map.col_map[event] = cpu;
 irq_data_update_effective_affinity(d, cpumask_of(cpu));


 its_send_mapti(its_dev, d->hwirq, event);
 return 0;
}
