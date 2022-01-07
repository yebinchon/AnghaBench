
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dm_cache_policy_type {char const* name; TYPE_1__* real; } ;
struct dm_cache_policy {struct dm_cache_policy_type* private; } ;
struct TYPE_2__ {char const* name; } ;



const char *dm_cache_policy_get_name(struct dm_cache_policy *p)
{
 struct dm_cache_policy_type *t = p->private;


 if (t->real)
  return t->real->name;

 return t->name;
}
