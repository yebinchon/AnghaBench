
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttm_mem_reg {int dummy; } ;
struct ttm_buffer_object {int dummy; } ;


 int vmw_bo_move_notify (struct ttm_buffer_object*,struct ttm_mem_reg*) ;
 int vmw_query_move_notify (struct ttm_buffer_object*,struct ttm_mem_reg*) ;

__attribute__((used)) static void vmw_move_notify(struct ttm_buffer_object *bo,
       bool evict,
       struct ttm_mem_reg *mem)
{
 vmw_bo_move_notify(bo, mem);
 vmw_query_move_notify(bo, mem);
}
