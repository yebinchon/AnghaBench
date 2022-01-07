
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct policy_work {int dummy; } ;
struct dm_cache_policy {int (* get_background_work ) (struct dm_cache_policy*,int,struct policy_work**) ;} ;


 int stub1 (struct dm_cache_policy*,int,struct policy_work**) ;

__attribute__((used)) static inline int policy_get_background_work(struct dm_cache_policy *p,
          bool idle, struct policy_work **result)
{
 return p->get_background_work(p, idle, result);
}
