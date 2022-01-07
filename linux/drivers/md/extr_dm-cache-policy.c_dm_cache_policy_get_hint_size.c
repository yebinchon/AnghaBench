
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_cache_policy_type {size_t hint_size; } ;
struct dm_cache_policy {struct dm_cache_policy_type* private; } ;



size_t dm_cache_policy_get_hint_size(struct dm_cache_policy *p)
{
 struct dm_cache_policy_type *t = p->private;

 return t->hint_size;
}
