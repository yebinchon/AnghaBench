
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_cache_policy_type {unsigned int const* version; } ;
struct dm_cache_policy {struct dm_cache_policy_type* private; } ;



const unsigned *dm_cache_policy_get_version(struct dm_cache_policy *p)
{
 struct dm_cache_policy_type *t = p->private;

 return t->version;
}
