
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_address_handler {int link; } ;


 int address_handler_list_lock ;
 int list_del_rcu (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int synchronize_rcu () ;

void fw_core_remove_address_handler(struct fw_address_handler *handler)
{
 spin_lock(&address_handler_list_lock);
 list_del_rcu(&handler->link);
 spin_unlock(&address_handler_list_lock);
 synchronize_rcu();
}
