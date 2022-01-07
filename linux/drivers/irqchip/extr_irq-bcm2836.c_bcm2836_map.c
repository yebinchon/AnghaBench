
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_domain {int host_data; } ;
struct irq_chip {int dummy; } ;
typedef int irq_hw_number_t ;


 int EINVAL ;
 int IRQ_NOAUTOEN ;






 struct irq_chip bcm2836_arm_irqchip_gpu ;
 struct irq_chip bcm2836_arm_irqchip_pmu ;
 struct irq_chip bcm2836_arm_irqchip_timer ;
 int handle_percpu_devid_irq ;
 int irq_domain_set_info (struct irq_domain*,unsigned int,int ,struct irq_chip*,int ,int ,int *,int *) ;
 int irq_set_percpu_devid (unsigned int) ;
 int irq_set_status_flags (unsigned int,int ) ;
 int pr_warn_once (char*,int ) ;

__attribute__((used)) static int bcm2836_map(struct irq_domain *d, unsigned int irq,
         irq_hw_number_t hw)
{
 struct irq_chip *chip;

 switch (hw) {
 case 131:
 case 132:
 case 133:
 case 130:
  chip = &bcm2836_arm_irqchip_timer;
  break;
 case 129:
  chip = &bcm2836_arm_irqchip_gpu;
  break;
 case 128:
  chip = &bcm2836_arm_irqchip_pmu;
  break;
 default:
  pr_warn_once("Unexpected hw irq: %lu\n", hw);
  return -EINVAL;
 }

 irq_set_percpu_devid(irq);
 irq_domain_set_info(d, irq, hw, chip, d->host_data,
       handle_percpu_devid_irq, ((void*)0), ((void*)0));
 irq_set_status_flags(irq, IRQ_NOAUTOEN);

 return 0;
}
