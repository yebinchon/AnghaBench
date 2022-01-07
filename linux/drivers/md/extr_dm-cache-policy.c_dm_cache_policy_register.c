
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_cache_policy_type {int hint_size; unsigned long long name; int list; } ;


 int DMWARN (char*,unsigned long long) ;
 int EINVAL ;
 scalar_t__ __find_policy (unsigned long long) ;
 int list_add (int *,int *) ;
 int register_list ;
 int register_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int dm_cache_policy_register(struct dm_cache_policy_type *type)
{
 int r;


 if (type->hint_size != 0 && type->hint_size != 4) {
  DMWARN("hint size must be 0 or 4 but %llu supplied.", (unsigned long long) type->hint_size);
  return -EINVAL;
 }

 spin_lock(&register_lock);
 if (__find_policy(type->name)) {
  DMWARN("attempt to register policy under duplicate name %s", type->name);
  r = -EINVAL;
 } else {
  list_add(&type->list, &register_list);
  r = 0;
 }
 spin_unlock(&register_lock);

 return r;
}
