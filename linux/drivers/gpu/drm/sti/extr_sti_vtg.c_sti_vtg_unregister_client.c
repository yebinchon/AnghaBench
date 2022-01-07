
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sti_vtg {int notifier_list; } ;
struct notifier_block {int dummy; } ;


 int raw_notifier_chain_unregister (int *,struct notifier_block*) ;

int sti_vtg_unregister_client(struct sti_vtg *vtg, struct notifier_block *nb)
{
 return raw_notifier_chain_unregister(&vtg->notifier_list, nb);
}
