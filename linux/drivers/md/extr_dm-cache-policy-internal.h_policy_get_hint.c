
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct dm_cache_policy {int (* get_hint ) (struct dm_cache_policy*,int ) ;} ;
typedef int dm_cblock_t ;


 int stub1 (struct dm_cache_policy*,int ) ;

__attribute__((used)) static inline uint32_t policy_get_hint(struct dm_cache_policy *p,
           dm_cblock_t cblock)
{
 return p->get_hint ? p->get_hint(p, cblock) : 0;
}
