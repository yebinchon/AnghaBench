
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_cache_policy {void (* allow_migrations ) (struct dm_cache_policy*,int) ;} ;


 void stub1 (struct dm_cache_policy*,int) ;

__attribute__((used)) static inline void policy_allow_migrations(struct dm_cache_policy *p, bool allow)
{
 return p->allow_migrations(p, allow);
}
