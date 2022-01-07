
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct its_vpe {struct its_vm* its_vm; } ;
struct its_vm {int vprop_page; int nr_db_lpis; int db_lpi_base; int db_bitmap; } ;
struct irq_domain {struct its_vm* host_data; } ;
struct irq_data {int hwirq; } ;


 int BUG_ON (int) ;
 scalar_t__ bitmap_empty (int ,int ) ;
 int clear_bit (int ,int ) ;
 struct its_vpe* irq_data_get_irq_chip_data (struct irq_data*) ;
 int irq_domain_free_irqs_parent (struct irq_domain*,unsigned int,unsigned int) ;
 struct irq_data* irq_domain_get_irq_data (struct irq_domain*,unsigned int) ;
 int irq_domain_reset_irq_data (struct irq_data*) ;
 int its_free_prop_table (int ) ;
 int its_lpi_free (int ,int ,int ) ;
 int its_vpe_teardown (struct its_vpe*) ;

__attribute__((used)) static void its_vpe_irq_domain_free(struct irq_domain *domain,
        unsigned int virq,
        unsigned int nr_irqs)
{
 struct its_vm *vm = domain->host_data;
 int i;

 irq_domain_free_irqs_parent(domain, virq, nr_irqs);

 for (i = 0; i < nr_irqs; i++) {
  struct irq_data *data = irq_domain_get_irq_data(domain,
        virq + i);
  struct its_vpe *vpe = irq_data_get_irq_chip_data(data);

  BUG_ON(vm != vpe->its_vm);

  clear_bit(data->hwirq, vm->db_bitmap);
  its_vpe_teardown(vpe);
  irq_domain_reset_irq_data(data);
 }

 if (bitmap_empty(vm->db_bitmap, vm->nr_db_lpis)) {
  its_lpi_free(vm->db_bitmap, vm->db_lpi_base, vm->nr_db_lpis);
  its_free_prop_table(vm->vprop_page);
 }
}
