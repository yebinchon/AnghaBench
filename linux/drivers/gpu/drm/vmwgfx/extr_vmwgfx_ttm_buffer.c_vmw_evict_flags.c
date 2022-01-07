
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttm_placement {int dummy; } ;
struct ttm_buffer_object {int dummy; } ;


 struct ttm_placement vmw_sys_placement ;

__attribute__((used)) static void vmw_evict_flags(struct ttm_buffer_object *bo,
       struct ttm_placement *placement)
{
 *placement = vmw_sys_placement;
}
