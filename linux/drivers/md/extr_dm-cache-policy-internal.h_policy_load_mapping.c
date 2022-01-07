
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct dm_cache_policy {int (* load_mapping ) (struct dm_cache_policy*,int ,int ,int,int ,int) ;} ;
typedef int dm_oblock_t ;
typedef int dm_cblock_t ;


 int stub1 (struct dm_cache_policy*,int ,int ,int,int ,int) ;

__attribute__((used)) static inline int policy_load_mapping(struct dm_cache_policy *p,
          dm_oblock_t oblock, dm_cblock_t cblock,
          bool dirty, uint32_t hint, bool hint_valid)
{
 return p->load_mapping(p, oblock, cblock, dirty, hint, hint_valid);
}
