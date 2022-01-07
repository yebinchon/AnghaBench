
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct its_vpe {int col_idx; } ;
struct irq_data {int dummy; } ;
struct cpumask {int dummy; } ;


 int IRQ_SET_MASK_OK_DONE ;
 int cpumask_first (struct cpumask const*) ;
 int cpumask_of (int) ;
 struct its_vpe* irq_data_get_irq_chip_data (struct irq_data*) ;
 int irq_data_update_effective_affinity (struct irq_data*,int ) ;
 int its_send_vmovp (struct its_vpe*) ;
 int its_vpe_db_proxy_move (struct its_vpe*,int,int) ;

__attribute__((used)) static int its_vpe_set_affinity(struct irq_data *d,
    const struct cpumask *mask_val,
    bool force)
{
 struct its_vpe *vpe = irq_data_get_irq_chip_data(d);
 int cpu = cpumask_first(mask_val);







 if (vpe->col_idx != cpu) {
  int from = vpe->col_idx;

  vpe->col_idx = cpu;
  its_send_vmovp(vpe);
  its_vpe_db_proxy_move(vpe, from, cpu);
 }

 irq_data_update_effective_affinity(d, cpumask_of(cpu));

 return IRQ_SET_MASK_OK_DONE;
}
