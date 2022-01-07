
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct page {int dummy; } ;
struct its_vm {unsigned long* db_bitmap; int db_lpi_base; int nr_db_lpis; TYPE_1__** vpes; struct page* vprop_page; } ;
struct irq_domain {int dummy; } ;
struct TYPE_3__ {int vpe_db_lpi; } ;


 int BUG_ON (int) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int irq_domain_set_hwirq_and_chip (struct irq_domain*,unsigned int,int,int *,TYPE_1__*) ;
 struct page* its_allocate_prop_table (int ) ;
 int its_free_prop_table (struct page*) ;
 int its_irq_gic_domain_alloc (struct irq_domain*,unsigned int,int) ;
 unsigned long* its_lpi_alloc (int ,int*,int*) ;
 int its_lpi_free (unsigned long*,int,int) ;
 int its_vpe_init (TYPE_1__*) ;
 int its_vpe_irq_chip ;
 int its_vpe_irq_domain_free (struct irq_domain*,unsigned int,int) ;
 int roundup_pow_of_two (unsigned int) ;
 int set_bit (int,unsigned long*) ;

__attribute__((used)) static int its_vpe_irq_domain_alloc(struct irq_domain *domain, unsigned int virq,
        unsigned int nr_irqs, void *args)
{
 struct its_vm *vm = args;
 unsigned long *bitmap;
 struct page *vprop_page;
 int base, nr_ids, i, err = 0;

 BUG_ON(!vm);

 bitmap = its_lpi_alloc(roundup_pow_of_two(nr_irqs), &base, &nr_ids);
 if (!bitmap)
  return -ENOMEM;

 if (nr_ids < nr_irqs) {
  its_lpi_free(bitmap, base, nr_ids);
  return -ENOMEM;
 }

 vprop_page = its_allocate_prop_table(GFP_KERNEL);
 if (!vprop_page) {
  its_lpi_free(bitmap, base, nr_ids);
  return -ENOMEM;
 }

 vm->db_bitmap = bitmap;
 vm->db_lpi_base = base;
 vm->nr_db_lpis = nr_ids;
 vm->vprop_page = vprop_page;

 for (i = 0; i < nr_irqs; i++) {
  vm->vpes[i]->vpe_db_lpi = base + i;
  err = its_vpe_init(vm->vpes[i]);
  if (err)
   break;
  err = its_irq_gic_domain_alloc(domain, virq + i,
            vm->vpes[i]->vpe_db_lpi);
  if (err)
   break;
  irq_domain_set_hwirq_and_chip(domain, virq + i, i,
           &its_vpe_irq_chip, vm->vpes[i]);
  set_bit(i, bitmap);
 }

 if (err) {
  if (i > 0)
   its_vpe_irq_domain_free(domain, virq, i - 1);

  its_lpi_free(bitmap, base, nr_ids);
  its_free_prop_table(vprop_page);
 }

 return err;
}
