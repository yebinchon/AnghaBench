
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct policy_work {int dummy; } ;
struct dm_cache_policy {int (* lookup_with_work ) (struct dm_cache_policy*,int ,int *,int,int,struct policy_work**) ;int (* lookup ) (struct dm_cache_policy*,int ,int *,int,int,int *) ;} ;
typedef int dm_oblock_t ;
typedef int dm_cblock_t ;


 int stub1 (struct dm_cache_policy*,int ,int *,int,int,int *) ;
 int stub2 (struct dm_cache_policy*,int ,int *,int,int,struct policy_work**) ;

__attribute__((used)) static inline int policy_lookup_with_work(struct dm_cache_policy *p,
       dm_oblock_t oblock, dm_cblock_t *cblock,
       int data_dir, bool fast_copy,
       struct policy_work **work)
{
 if (!p->lookup_with_work) {
  *work = ((void*)0);
  return p->lookup(p, oblock, cblock, data_dir, fast_copy, ((void*)0));
 }

 return p->lookup_with_work(p, oblock, cblock, data_dir, fast_copy, work);
}
