
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct meson_gpio_irq_controller {int dummy; } ;
struct irq_fwspec {int dummy; } ;
struct irq_domain {struct meson_gpio_irq_controller* host_data; } ;


 int EINVAL ;
 scalar_t__ WARN_ON (int) ;
 int irq_domain_set_hwirq_and_chip (struct irq_domain*,unsigned int,unsigned long,int *,int *) ;
 int meson_gpio_irq_allocate_gic_irq (struct irq_domain*,unsigned int,int ,unsigned int) ;
 int meson_gpio_irq_chip ;
 int meson_gpio_irq_domain_translate (struct irq_domain*,struct irq_fwspec*,unsigned long*,unsigned int*) ;
 int meson_gpio_irq_release_channel (struct meson_gpio_irq_controller*,int *) ;
 int meson_gpio_irq_request_channel (struct meson_gpio_irq_controller*,unsigned long,int **) ;
 int pr_err (char*,int ) ;

__attribute__((used)) static int meson_gpio_irq_domain_alloc(struct irq_domain *domain,
           unsigned int virq,
           unsigned int nr_irqs,
           void *data)
{
 struct irq_fwspec *fwspec = data;
 struct meson_gpio_irq_controller *ctl = domain->host_data;
 unsigned long hwirq;
 u32 *channel_hwirq;
 unsigned int type;
 int ret;

 if (WARN_ON(nr_irqs != 1))
  return -EINVAL;

 ret = meson_gpio_irq_domain_translate(domain, fwspec, &hwirq, &type);
 if (ret)
  return ret;

 ret = meson_gpio_irq_request_channel(ctl, hwirq, &channel_hwirq);
 if (ret)
  return ret;

 ret = meson_gpio_irq_allocate_gic_irq(domain, virq,
           *channel_hwirq, type);
 if (ret < 0) {
  pr_err("failed to allocate gic irq %u\n", *channel_hwirq);
  meson_gpio_irq_release_channel(ctl, channel_hwirq);
  return ret;
 }

 irq_domain_set_hwirq_and_chip(domain, virq, hwirq,
          &meson_gpio_irq_chip, channel_hwirq);

 return 0;
}
