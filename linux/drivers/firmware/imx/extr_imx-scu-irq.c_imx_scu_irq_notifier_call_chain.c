
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int atomic_notifier_call_chain (int *,unsigned long,void*) ;
 int imx_scu_irq_notifier_chain ;

__attribute__((used)) static int imx_scu_irq_notifier_call_chain(unsigned long status, u8 *group)
{
 return atomic_notifier_call_chain(&imx_scu_irq_notifier_chain,
  status, (void *)group);
}
