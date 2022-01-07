
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct i40iw_pble_info {int cnt; scalar_t__ addr; } ;
struct i40iw_pble_level2 {scalar_t__ leaf_cnt; struct i40iw_pble_info* leaf; struct i40iw_pble_info root; } ;
struct i40iw_pble_alloc {struct i40iw_pble_level2 level2; } ;
struct TYPE_2__ {struct gen_pool* pool; } ;
struct i40iw_hmc_pble_rsrc {TYPE_1__ pinfo; } ;
struct gen_pool {int dummy; } ;


 int gen_pool_free (struct gen_pool*,scalar_t__,int) ;
 int kfree (struct i40iw_pble_info*) ;

__attribute__((used)) static void free_lvl2(struct i40iw_hmc_pble_rsrc *pble_rsrc,
        struct i40iw_pble_alloc *palloc)
{
 u32 i;
 struct gen_pool *pool;
 struct i40iw_pble_level2 *lvl2 = &palloc->level2;
 struct i40iw_pble_info *root = &lvl2->root;
 struct i40iw_pble_info *leaf = lvl2->leaf;

 pool = pble_rsrc->pinfo.pool;

 for (i = 0; i < lvl2->leaf_cnt; i++, leaf++) {
  if (leaf->addr)
   gen_pool_free(pool, leaf->addr, (leaf->cnt << 3));
  else
   break;
 }

 if (root->addr)
  gen_pool_free(pool, root->addr, (root->cnt << 3));

 kfree(lvl2->leaf);
 lvl2->leaf = ((void*)0);
}
