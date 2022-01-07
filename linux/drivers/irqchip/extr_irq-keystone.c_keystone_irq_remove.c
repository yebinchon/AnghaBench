
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct keystone_irq_device {int irqd; int irq; } ;


 int KEYSTONE_N_IRQ ;
 int free_irq (int ,struct keystone_irq_device*) ;
 int irq_dispose_mapping (int ) ;
 int irq_domain_remove (int ) ;
 int irq_find_mapping (int ,int) ;
 struct keystone_irq_device* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int keystone_irq_remove(struct platform_device *pdev)
{
 struct keystone_irq_device *kirq = platform_get_drvdata(pdev);
 int hwirq;

 free_irq(kirq->irq, kirq);

 for (hwirq = 0; hwirq < KEYSTONE_N_IRQ; hwirq++)
  irq_dispose_mapping(irq_find_mapping(kirq->irqd, hwirq));

 irq_domain_remove(kirq->irqd);
 return 0;
}
