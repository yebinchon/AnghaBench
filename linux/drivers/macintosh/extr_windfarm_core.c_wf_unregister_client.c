
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;


 int blocking_notifier_chain_unregister (int *,struct notifier_block*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ wf_client_count ;
 int wf_client_list ;
 int wf_lock ;
 int wf_stop_thread () ;

int wf_unregister_client(struct notifier_block *nb)
{
 mutex_lock(&wf_lock);
 blocking_notifier_chain_unregister(&wf_client_list, nb);
 wf_client_count--;
 if (wf_client_count == 0)
  wf_stop_thread();
 mutex_unlock(&wf_lock);

 return 0;
}
