
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_cache_policy {int (* lookup ) (struct dm_cache_policy*,int ,int *,int,int,int*) ;} ;
typedef int dm_oblock_t ;
typedef int dm_cblock_t ;


 int stub1 (struct dm_cache_policy*,int ,int *,int,int,int*) ;

__attribute__((used)) static inline int policy_lookup(struct dm_cache_policy *p, dm_oblock_t oblock, dm_cblock_t *cblock,
    int data_dir, bool fast_copy, bool *background_queued)
{
 return p->lookup(p, oblock, cblock, data_dir, fast_copy, background_queued);
}
