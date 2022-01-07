
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;


 int atomic_notifier_chain_unregister (int *,struct notifier_block*) ;
 int ipc_notifier ;

int pl320_ipc_unregister_notifier(struct notifier_block *nb)
{
 return atomic_notifier_chain_unregister(&ipc_notifier, nb);
}
