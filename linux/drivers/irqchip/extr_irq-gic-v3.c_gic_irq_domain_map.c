
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_domain {int host_data; } ;
struct irq_chip {int dummy; } ;
typedef int irq_hw_number_t ;


 int EPERM ;


 int IRQ_NOAUTOEN ;



 int __get_intid_range (int ) ;
 struct irq_chip gic_chip ;
 int gic_dist_supports_lpis () ;
 struct irq_chip gic_eoimode1_chip ;
 int handle_fasteoi_irq ;
 int handle_percpu_devid_irq ;
 int irq_desc_get_irq_data (int ) ;
 int irq_domain_set_info (struct irq_domain*,unsigned int,int ,struct irq_chip*,int ,int ,int *,int *) ;
 int irq_set_percpu_devid (unsigned int) ;
 int irq_set_probe (unsigned int) ;
 int irq_set_status_flags (unsigned int,int ) ;
 int irq_to_desc (unsigned int) ;
 int irqd_set_single_target (int ) ;
 scalar_t__ static_branch_likely (int *) ;
 int supports_deactivate_key ;

__attribute__((used)) static int gic_irq_domain_map(struct irq_domain *d, unsigned int irq,
         irq_hw_number_t hw)
{
 struct irq_chip *chip = &gic_chip;

 if (static_branch_likely(&supports_deactivate_key))
  chip = &gic_eoimode1_chip;

 switch (__get_intid_range(hw)) {
 case 129:
 case 132:
  irq_set_percpu_devid(irq);
  irq_domain_set_info(d, irq, hw, chip, d->host_data,
        handle_percpu_devid_irq, ((void*)0), ((void*)0));
  irq_set_status_flags(irq, IRQ_NOAUTOEN);
  break;

 case 128:
 case 131:
  irq_domain_set_info(d, irq, hw, chip, d->host_data,
        handle_fasteoi_irq, ((void*)0), ((void*)0));
  irq_set_probe(irq);
  irqd_set_single_target(irq_desc_get_irq_data(irq_to_desc(irq)));
  break;

 case 130:
  if (!gic_dist_supports_lpis())
   return -EPERM;
  irq_domain_set_info(d, irq, hw, chip, d->host_data,
        handle_fasteoi_irq, ((void*)0), ((void*)0));
  break;

 default:
  return -EPERM;
 }

 return 0;
}
