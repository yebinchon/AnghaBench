
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_cache_policy {int (* set_dirty ) (struct dm_cache_policy*,int ) ;} ;
typedef int dm_cblock_t ;


 int stub1 (struct dm_cache_policy*,int ) ;

__attribute__((used)) static inline void policy_set_dirty(struct dm_cache_policy *p, dm_cblock_t cblock)
{
 p->set_dirty(p, cblock);
}
