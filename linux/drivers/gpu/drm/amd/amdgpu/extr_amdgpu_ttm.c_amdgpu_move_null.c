
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttm_mem_reg {int * mm_node; } ;
struct ttm_buffer_object {struct ttm_mem_reg mem; } ;


 int BUG_ON (int ) ;

__attribute__((used)) static void amdgpu_move_null(struct ttm_buffer_object *bo,
        struct ttm_mem_reg *new_mem)
{
 struct ttm_mem_reg *old_mem = &bo->mem;

 BUG_ON(old_mem->mm_node != ((void*)0));
 *old_mem = *new_mem;
 new_mem->mm_node = ((void*)0);
}
