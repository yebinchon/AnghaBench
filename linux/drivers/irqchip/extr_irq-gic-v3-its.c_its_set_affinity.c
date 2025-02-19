
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u32 ;
struct TYPE_4__ {unsigned int* col_map; } ;
struct its_device {TYPE_2__ event_map; TYPE_1__* its; } ;
struct its_collection {int dummy; } ;
struct irq_data {int dummy; } ;
struct cpumask {int dummy; } ;
struct TYPE_3__ {int flags; scalar_t__ numa_node; struct its_collection* collections; } ;


 int EINVAL ;
 int IRQ_SET_MASK_OK_DONE ;
 int ITS_FLAGS_WORKAROUND_CAVIUM_23144 ;
 struct cpumask* cpu_online_mask ;
 unsigned int cpumask_any_and (struct cpumask const*,struct cpumask const*) ;
 int cpumask_intersects (struct cpumask const*,struct cpumask const*) ;
 int cpumask_of (unsigned int) ;
 struct cpumask* cpumask_of_node (scalar_t__) ;
 struct its_device* irq_data_get_irq_chip_data (struct irq_data*) ;
 int irq_data_update_effective_affinity (struct irq_data*,int ) ;
 scalar_t__ irqd_is_forwarded_to_vcpu (struct irq_data*) ;
 size_t its_get_event_id (struct irq_data*) ;
 int its_send_movi (struct its_device*,struct its_collection*,size_t) ;
 unsigned int nr_cpu_ids ;

__attribute__((used)) static int its_set_affinity(struct irq_data *d, const struct cpumask *mask_val,
       bool force)
{
 unsigned int cpu;
 const struct cpumask *cpu_mask = cpu_online_mask;
 struct its_device *its_dev = irq_data_get_irq_chip_data(d);
 struct its_collection *target_col;
 u32 id = its_get_event_id(d);


 if (irqd_is_forwarded_to_vcpu(d))
  return -EINVAL;


 if (its_dev->its->flags & ITS_FLAGS_WORKAROUND_CAVIUM_23144) {
  if (its_dev->its->numa_node >= 0) {
   cpu_mask = cpumask_of_node(its_dev->its->numa_node);
   if (!cpumask_intersects(mask_val, cpu_mask))
    return -EINVAL;
  }
 }

 cpu = cpumask_any_and(mask_val, cpu_mask);

 if (cpu >= nr_cpu_ids)
  return -EINVAL;


 if (cpu != its_dev->event_map.col_map[id]) {
  target_col = &its_dev->its->collections[cpu];
  its_send_movi(its_dev, target_col, id);
  its_dev->event_map.col_map[id] = cpu;
  irq_data_update_effective_affinity(d, cpumask_of(cpu));
 }

 return IRQ_SET_MASK_OK_DONE;
}
