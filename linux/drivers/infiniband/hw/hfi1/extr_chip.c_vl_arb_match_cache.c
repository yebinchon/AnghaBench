
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vl_arb_cache {int table; } ;
struct ib_vl_weight_elem {int dummy; } ;


 int VL_ARB_TABLE_SIZE ;
 int memcmp (int ,struct ib_vl_weight_elem*,int) ;

__attribute__((used)) static int vl_arb_match_cache(struct vl_arb_cache *cache,
         struct ib_vl_weight_elem *vl)
{
 return !memcmp(cache->table, vl, VL_ARB_TABLE_SIZE * sizeof(*vl));
}
