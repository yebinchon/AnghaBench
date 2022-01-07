
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttm_place {int dummy; } ;
struct ttm_mem_type_manager {int dummy; } ;
struct ttm_mem_reg {void* mm_node; } ;
struct ttm_buffer_object {int dummy; } ;



__attribute__((used)) static int ttm_bo_man_get_node(struct ttm_mem_type_manager *man,
          struct ttm_buffer_object *bo,
          const struct ttm_place *place,
          struct ttm_mem_reg *mem)
{
 mem->mm_node = (void *)1;
 return 0;
}
