
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_cache_policy_type {int dummy; } ;


 struct dm_cache_policy_type* __get_policy_once (char const*) ;
 int register_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static struct dm_cache_policy_type *get_policy_once(const char *name)
{
 struct dm_cache_policy_type *t;

 spin_lock(&register_lock);
 t = __get_policy_once(name);
 spin_unlock(&register_lock);

 return t;
}
