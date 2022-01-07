
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int priority; } ;
struct vmw_buffer_object {TYPE_1__ base; scalar_t__* res_prios; } ;


 int ARRAY_SIZE (scalar_t__*) ;

__attribute__((used)) static inline void vmw_bo_prio_adjust(struct vmw_buffer_object *vbo)
{
 int i = ARRAY_SIZE(vbo->res_prios);

 while (i--) {
  if (vbo->res_prios[i]) {
   vbo->base.priority = i;
   return;
  }
 }

 vbo->base.priority = 3;
}
