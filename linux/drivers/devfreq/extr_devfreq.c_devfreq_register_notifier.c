
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;
struct devfreq {int transition_notifier_list; } ;



 int EINVAL ;
 int srcu_notifier_chain_register (int *,struct notifier_block*) ;

int devfreq_register_notifier(struct devfreq *devfreq,
         struct notifier_block *nb,
         unsigned int list)
{
 int ret = 0;

 if (!devfreq)
  return -EINVAL;

 switch (list) {
 case 128:
  ret = srcu_notifier_chain_register(
    &devfreq->transition_notifier_list, nb);
  break;
 default:
  ret = -EINVAL;
 }

 return ret;
}
