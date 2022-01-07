
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct policy_work {int dummy; } ;
struct dm_cache_policy {void (* complete_background_work ) (struct dm_cache_policy*,struct policy_work*,int) ;} ;


 void stub1 (struct dm_cache_policy*,struct policy_work*,int) ;

__attribute__((used)) static inline void policy_complete_background_work(struct dm_cache_policy *p,
         struct policy_work *work,
         bool success)
{
 return p->complete_background_work(p, work, success);
}
