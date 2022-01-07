
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;


 int blocking_notifier_chain_unregister (int *,struct notifier_block*) ;
 int ctr_notifier_list ;

int unregister_capictr_notifier(struct notifier_block *nb)
{
 return blocking_notifier_chain_unregister(&ctr_notifier_list, nb);
}
