
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;


 int atomic_notifier_chain_unregister (int *,struct notifier_block*) ;
 int imx_scu_irq_notifier_chain ;

int imx_scu_irq_unregister_notifier(struct notifier_block *nb)
{
 return atomic_notifier_chain_unregister(
  &imx_scu_irq_notifier_chain, nb);
}
