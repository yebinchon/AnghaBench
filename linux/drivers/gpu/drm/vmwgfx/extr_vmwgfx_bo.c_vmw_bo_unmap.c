
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * bo; } ;
struct vmw_buffer_object {TYPE_1__ map; } ;


 int ttm_bo_kunmap (TYPE_1__*) ;

void vmw_bo_unmap(struct vmw_buffer_object *vbo)
{
 if (vbo->map.bo == ((void*)0))
  return;

 ttm_bo_kunmap(&vbo->map);
}
