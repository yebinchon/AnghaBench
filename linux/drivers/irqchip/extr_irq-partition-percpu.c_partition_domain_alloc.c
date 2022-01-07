
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct partition_desc {TYPE_2__* parts; int chained_desc; int bitmap; } ;
struct irq_fwspec {int dummy; } ;
struct irq_domain {struct partition_desc* host_data; TYPE_1__* ops; } ;
typedef size_t irq_hw_number_t ;
struct TYPE_4__ {int mask; } ;
struct TYPE_3__ {int (* translate ) (struct irq_domain*,struct irq_fwspec*,size_t*,unsigned int*) ;} ;


 int BUG_ON (int) ;
 int IRQ_NOAUTOEN ;
 int handle_percpu_devid_irq ;
 int irq_desc_get_irq (int ) ;
 int irq_domain_set_info (struct irq_domain*,unsigned int,size_t,int *,struct partition_desc*,int ,int *,int *) ;
 int irq_set_chained_handler_and_data (int ,int ,struct partition_desc*) ;
 int irq_set_percpu_devid_partition (unsigned int,int *) ;
 int irq_set_status_flags (unsigned int,int ) ;
 int partition_handle_irq ;
 int partition_irq_chip ;
 int set_bit (size_t,int ) ;
 int stub1 (struct irq_domain*,struct irq_fwspec*,size_t*,unsigned int*) ;

__attribute__((used)) static int partition_domain_alloc(struct irq_domain *domain, unsigned int virq,
      unsigned int nr_irqs, void *arg)
{
 int ret;
 irq_hw_number_t hwirq;
 unsigned int type;
 struct irq_fwspec *fwspec = arg;
 struct partition_desc *part;

 BUG_ON(nr_irqs != 1);
 ret = domain->ops->translate(domain, fwspec, &hwirq, &type);
 if (ret)
  return ret;

 part = domain->host_data;

 set_bit(hwirq, part->bitmap);
 irq_set_chained_handler_and_data(irq_desc_get_irq(part->chained_desc),
      partition_handle_irq, part);
 irq_set_percpu_devid_partition(virq, &part->parts[hwirq].mask);
 irq_domain_set_info(domain, virq, hwirq, &partition_irq_chip, part,
       handle_percpu_devid_irq, ((void*)0), ((void*)0));
 irq_set_status_flags(virq, IRQ_NOAUTOEN);

 return 0;
}
