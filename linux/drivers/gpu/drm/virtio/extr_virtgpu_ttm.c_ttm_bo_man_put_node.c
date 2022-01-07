
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttm_mem_type_manager {int dummy; } ;
struct ttm_mem_reg {void* mm_node; } ;



__attribute__((used)) static void ttm_bo_man_put_node(struct ttm_mem_type_manager *man,
    struct ttm_mem_reg *mem)
{
 mem->mm_node = (void *)((void*)0);
}
