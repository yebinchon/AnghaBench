
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct odmi_data {int spi_base; } ;
struct irq_fwspec {int param_count; int* param; int fwnode; } ;
struct irq_domain {TYPE_2__* parent; } ;
struct irq_data {TYPE_1__* chip; } ;
struct TYPE_4__ {int fwnode; } ;
struct TYPE_3__ {int (* irq_set_type ) (struct irq_data*,int) ;} ;


 int ENOSPC ;
 int GIC_SPI ;
 int IRQ_TYPE_EDGE_RISING ;
 unsigned int NODMIS_MASK ;
 unsigned int NODMIS_PER_FRAME ;
 unsigned int NODMIS_SHIFT ;
 int __clear_bit (unsigned int,int ) ;
 int __set_bit (unsigned int,int ) ;
 unsigned int find_first_zero_bit (int ,unsigned int) ;
 int irq_domain_alloc_irqs_parent (struct irq_domain*,unsigned int,int,struct irq_fwspec*) ;
 struct irq_data* irq_domain_get_irq_data (TYPE_2__*,unsigned int) ;
 int irq_domain_set_hwirq_and_chip (struct irq_domain*,unsigned int,unsigned int,int *,int *) ;
 int odmi_irq_chip ;
 struct odmi_data* odmis ;
 int odmis_bm ;
 int odmis_bm_lock ;
 unsigned int odmis_count ;
 int pr_err (char*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct irq_data*,int) ;

__attribute__((used)) static int odmi_irq_domain_alloc(struct irq_domain *domain, unsigned int virq,
     unsigned int nr_irqs, void *args)
{
 struct odmi_data *odmi = ((void*)0);
 struct irq_fwspec fwspec;
 struct irq_data *d;
 unsigned int hwirq, odmin;
 int ret;

 spin_lock(&odmis_bm_lock);
 hwirq = find_first_zero_bit(odmis_bm, NODMIS_PER_FRAME * odmis_count);
 if (hwirq >= NODMIS_PER_FRAME * odmis_count) {
  spin_unlock(&odmis_bm_lock);
  return -ENOSPC;
 }

 __set_bit(hwirq, odmis_bm);
 spin_unlock(&odmis_bm_lock);

 odmi = &odmis[hwirq >> NODMIS_SHIFT];
 odmin = hwirq & NODMIS_MASK;

 fwspec.fwnode = domain->parent->fwnode;
 fwspec.param_count = 3;
 fwspec.param[0] = GIC_SPI;
 fwspec.param[1] = odmi->spi_base - 32 + odmin;
 fwspec.param[2] = IRQ_TYPE_EDGE_RISING;

 ret = irq_domain_alloc_irqs_parent(domain, virq, 1, &fwspec);
 if (ret) {
  pr_err("Cannot allocate parent IRQ\n");
  spin_lock(&odmis_bm_lock);
  __clear_bit(odmin, odmis_bm);
  spin_unlock(&odmis_bm_lock);
  return ret;
 }


 d = irq_domain_get_irq_data(domain->parent, virq);
 d->chip->irq_set_type(d, IRQ_TYPE_EDGE_RISING);

 irq_domain_set_hwirq_and_chip(domain, virq, hwirq,
          &odmi_irq_chip, ((void*)0));

 return 0;
}
