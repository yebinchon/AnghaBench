
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_cache_policy_type {int dummy; } ;
struct dm_cache_policy {int (* destroy ) (struct dm_cache_policy*) ;struct dm_cache_policy_type* private; } ;


 int put_policy (struct dm_cache_policy_type*) ;
 int stub1 (struct dm_cache_policy*) ;

void dm_cache_policy_destroy(struct dm_cache_policy *p)
{
 struct dm_cache_policy_type *t = p->private;

 p->destroy(p);
 put_policy(t);
}
