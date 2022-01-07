
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef int u32 ;
struct i40iw_pble_level2 {int leaf_cnt; struct i40iw_pble_info* leaf; } ;
struct i40iw_pble_info {int cnt; scalar_t__ addr; } ;
struct TYPE_2__ {scalar_t__ addr; } ;
struct i40iw_pble_alloc {scalar_t__ level; int total_cnt; TYPE_1__ level1; struct i40iw_pble_level2 level2; } ;


 scalar_t__ I40IW_LEVEL_1 ;
 int PBLE_PER_PAGE ;
 int i40iw_check_mem_contiguous (scalar_t__*,int ,int) ;

__attribute__((used)) static bool i40iw_check_mr_contiguous(struct i40iw_pble_alloc *palloc, u32 pg_size)
{
 struct i40iw_pble_level2 *lvl2 = &palloc->level2;
 struct i40iw_pble_info *leaf = lvl2->leaf;
 u64 *arr = ((void*)0);
 u64 *start_addr = ((void*)0);
 int i;
 bool ret;

 if (palloc->level == I40IW_LEVEL_1) {
  arr = (u64 *)palloc->level1.addr;
  ret = i40iw_check_mem_contiguous(arr, palloc->total_cnt, pg_size);
  return ret;
 }

 start_addr = (u64 *)leaf->addr;

 for (i = 0; i < lvl2->leaf_cnt; i++, leaf++) {
  arr = (u64 *)leaf->addr;
  if ((*start_addr + (i * pg_size * PBLE_PER_PAGE)) != *arr)
   return 0;
  ret = i40iw_check_mem_contiguous(arr, leaf->cnt, pg_size);
  if (!ret)
   return 0;
 }

 return 1;
}
