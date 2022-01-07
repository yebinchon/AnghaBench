
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_cache_policy_type {int list; } ;


 int list_del_init (int *) ;
 int register_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void dm_cache_policy_unregister(struct dm_cache_policy_type *type)
{
 spin_lock(&register_lock);
 list_del_init(&type->list);
 spin_unlock(&register_lock);
}
