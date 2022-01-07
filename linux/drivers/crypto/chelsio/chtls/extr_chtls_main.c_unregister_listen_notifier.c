
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;


 int listen_notify_list ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int notify_mutex ;
 int raw_notifier_chain_unregister (int *,struct notifier_block*) ;

__attribute__((used)) static void unregister_listen_notifier(struct notifier_block *nb)
{
 mutex_lock(&notify_mutex);
 raw_notifier_chain_unregister(&listen_notify_list, nb);
 mutex_unlock(&notify_mutex);
}
